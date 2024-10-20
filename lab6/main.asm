comment @ О программе
"Частота автоповтора" - это та частота, с которой клавиша посылает свой код, когда  она постоянно
держится нажатой. Получается работу программы можно увидеть, удерживая какую-то клавишу нажатой.
Символы будут появляться c каждой секундой всё быстрее потом сбросится до минимальной и так по циклу.
Эффект будет проявляться во всей системе (в данном случае DOS)
Программа перехватывает прерывание таймера и привязывает к нему изменение частоты автоповтора,
вызывает сам таймер командой дальнего вызова подпрограммы CALL в начале обработчика
прерывания с предварительным сохранением регистра флагов в стеке
@

; модель памяти для com-файла
.model tiny

; сегмент кода
CSEG SEGMENT 'CODE'
    ASSUME CS:CSEG
    ORG 100h ; смещение для com-файла
main:
    jmp INIT

    ; программа уже работает (0 - нет, 1 - да)
    is_work db 0
    ; Частота автоповтора сейчас
    period_now db 1Fh
    ; Время сохранённое с предыдущей итерации (секунды будут сохраняться, чтобы не поменять 2 раза в 1 секунду частоту)
    seconds_save db 0
    ; адрес старого обработчика
    old_handler dd 0

; Новый таймер + изменение частоты автоповтора - сама резидентная программа
new_timer proc near
    ; сохраняем в стеке значения регистров, которые могут поменяться в процессе выполнения функции
    push ax                                                 ; сохраняем значения регистров, которые могут поменяться в процессе выполнения процедуры
    push cx			    
    push dx
    ; Вызов старого обработчика (таймера) командой дальнего вызова подпрограммы CALL в начале обработчика
    ; прерывания с предварительным сохранением регистра флагов в стеке (pushf) (потому что call закончится popf)
    call_old_handler:
        pushf
        call cs:old_handler
    ; АН = 02h — чтение времени из RTC. Возвращает время в : час (в регистре СН), минуту (CL), секунду (DH)
    ;mov ah, 02h
    ; 1Ah - прерывание BIOS для работы с таймером                                             
    ;int 1Ah
    xor ax, ax
    MOV AH, 2Ch
    INT 21h
    ; Сравниваем секунды из считанного времени с сохранёнными в переменной
    cmp seconds_save, dh
    je skeep_change_period ; если это та же секунда пропускаем изменение частоты автоповтора
    ; с уменьшением period_now увеличивается скорость автоповтора ввода
    dec period_now
    mov seconds_save, dh
    ; сравниваем текущую частоту с 0
    cmp period_now, 1Fh
    jbe set_period ; if 0 <= частота <= 1Fh: goto set_period
    ; if частота > 1Fh: частота = максимуму (скорость соответственно минимальна) (тут частота просто стала отрицательной и соответственно первый бит = 1)
    mov period_now, 1Fh
    ; Устанавливаем новую частоту автоповтора
    set_period:
        ; порт 60h предназначен для работы с клавиатурой и обычно принимает пары байтов последовательно:
        ; первый - код команды, второй - данные   
        ; команда F3h отвечает за параметры режима автоповтора нажатой клавиши                                 
        mov al, 0F3h             ; Загружаем команду F3h в DX
        out 60h, al             ; Отправляем команду в порт 60h   
        mov al, period_now      ; Загружаем данные о частоте в младший байт
        out 60h, al             ; Отправляем данные в порт 60h                                         
    skeep_change_period:
        ; восстанавливаем в стеке значения регистров
        pop dx						   
        pop cx
        pop ax
        ; iret завершает выполнение обработчика прерывания и возвращает управление к месту, откуда было вызвано прерывание.
        iret
new_timer endp

; секция инициализации (тут старт программы)
; Основная задача секции инициализации — установить резидент в памяти
; (она нужна лишь при установке программы, потом её из памяти удаляют)
INIT:
    ; считать адрес обработчика прерывания
    mov ax, 351Ch ; АН = 35h, AL = номер прерывания (тут таймер)
    int 21h ; функция DOS: считать адрес обработчика прерывания
    ; прооверяем: а не наш ли это уже обработчик?
    cmp es:is_work, 1
    jz exit ; если наш, переходим к его стиранию
    ; иначе копируем адрес предыдущего обработчика в переменную old_handler
    mov word ptr old_handler, bx ; возвратить смещение в ВХ
    mov word ptr old_handler[2], es  ; и сегментный адрес в ES
    ; установить наш обработчик
    mov ax, 251Ch ; АН = 25h, AL = номер прерывания (тут таймер)
    mov dx, offset new_timer ; смещение в DX нового обработчика прерывания (таймера)
    int 21h ; функция DOS: установить
    ; Запоминаем в is_work, что установили свой обработчик
    mov is_work, 1
    ; выводим сообщение об успешной загрузке
    mov ah, 9
    mov dx, offset load_mess
    int 21h
    ; Завершаем программу, оставляя резидентную часть
    mov dx, (init - main + 10Fh) / 16
    ;int 27h
    mov ax, 3100h
    int 21h
    ; DX должен указывать на последний байт, остающийся в памяти (это как раз метка Init).
    ; Т.е. в памяти остается от 0000h до адреса, по которому находится метка Init.

; Функция выводит сообщение о завершении, восстанавливает старый обработчик (таймер) и 
; завершает работу программы без резидента
exit:
    ; выводим сообщение, что резидент уже был загружен
    mov ah, 9 
    mov dx, offset unload_mess 
    int 21h
    ; Восстанавливаем значения частоты автоповтора по умолчанию
    mov ah, 3       ; Вызов функции для установки частоты автоповтора
    mov al, 0       ; Установка AL в 0 для возврата к частоте автоповтора по умолчанию
    int 16h         ; Вызов прерывания 16H
    ; Восстанавливаем старый обработчик (таймер) в таблице векторов прерываний
    mov dx, word ptr es:old_handler                       
    mov ds, word ptr es:old_handler[2]
    mov ax, 251Ch
    int 21h
    ; Завершаем программу без резидента
    mov ax, 4C00h
    int 21h
    
    load_mess db 'Rezident loaded', 13, 10, '$'
    unload_mess db 'Rezident unloaded', 13, 10, '$'

CSEG ENDS
END main