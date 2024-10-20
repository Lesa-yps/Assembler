; модель памяти для com-файла
.model tiny

N = 5

; сегмент кода
CSEG SEGMENT 'CODE'
    ASSUME CS:CSEG
    ORG 100h ; смещение для com-файла
main:
    mov ax, 4800h  ; Функция 0x48 - Выделение блока памяти
    mov bx, (N / 16) + 1 ; размер памяти для выделения (в байтах)
    int 21h        ; Вызов прерывания 21h для выделения памяти

    ; Успешное выделение памяти
    mov es, ax  ; Сохраняем сегмент

    ; Заполнение массива числами от 0 до 5
    mov cx, N            ; Количество элементов в массиве
    lea si, es:0              ; Загружаем смещение массива
fill_array_loop:
    mov [si], cl  ; Заполняем текущий элемент массива значением из cx
    inc si                ; Переходим к следующему элементу
    loop fill_array_loop  ; Повторяем для оставшихся элементов


    mov ah, 49h     ; Функция освобождения памяти на куче
    int 21h         ; Вызов прерывания для освобождения памяти

    mov ah, 4ch
    int 21h
CSEG ENDS
END main