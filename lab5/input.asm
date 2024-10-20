PUBLIC do_space
PUBLIC do_enter
PUBLIC input_unsign_10
PUBLIC NUM

DSEG SEGMENT PARA PUBLIC USE16 'DATA'
    ; выделяем место для числа на 16 бит (пока оно нуль)
    NUM dw 0
    ; строка-запрос на ввод числа
	input_str db "Enter an unsigned decimal number [0, 65535]: $"
    ; строка-сообщение об ошибке при неверном вводе числа
    err_num_str db "The number is invalid. Please, try enter again.$"
DSEG ENDS

CSEG SEGMENT PARA PUBLIC USE16 'CODE'
    assume CS:CSEG, DS:DSEG
; Процедура вывода символа перевода строки и возврата каретки ("enter")
do_enter proc near
    mov ah, 2
    mov dl, 10
	int 21h
	mov dl, 13
	int 21h
	ret
do_enter endp
; Процедура вывода пробела
do_space proc near
    mov ah, 2
    mov dl, 20h
	int 21h
    ret
do_space endp

input_unsign_10 proc near
    xor bx, bx                          ; BX = 0 (сюда будет вводится число)
    mov dx, offset input_str            
    mov ah, 09h                         ; установка функции вывода строки
    int 21h                             ; Выводится запрос ввода
    call do_enter                       ; Выводится "enter"
    mov si, 10                          ; устанавливаем на сколько будем умножать
    for_input_dig:                      ; бесконечный цикл с внутренними "break"-ами
        mov ah, 01h                     ; выставляется функцию ввода символа
        int 21h                         ; читаем символ
        cmp al, 13
        je ok_exit                      ; при нажатии "enter" (='\r'\n'='13'10') ввод завершается
        ; проверка а точно ли это цифра?
        cmp al, '9'                     ;сравниваем введенный символ с '9' (39h)
        ja err_exit                     ; если это не цифра (символ > 9), завершаем выполнение функции с выводом ошибки
        cmp al, '0'                     ;сравниваем введенный символ с '0' (30h)
        jl err_exit                     ; если это не цифра (символ < 0), завершаем выполнение функции с выводом ошибки
        ; если это цифра от 0 до 9
        sub al, '0'                     ; переводим ASCII код символа в цифру
        xor ah, ah                      ; AH = 0
        mov cx, ax                      ; сохранили введенную цифру в регистр CX = AX
        mov ax, si                      ; AX = 10
        mul bx                          ; умножаем 10 на уже введенное число из регистра BX
        add ax, cx                      ; на освободившееся место (в конец старого числа) записываем новую цифру
        jc err_exit                     ; Проверка флага переполнения 
        mov bx, ax                      ; возвращаем введённое число в BX
        jmp for_input_dig               ; переход в начало цикла
    err_exit:
        call do_enter                   ; Выводится "enter"
        mov ah, 09h                     ; Вывод строки
        mov dx, offset err_num_str 
        int 21h                         ; выводится сообщение об ошибке ввода числа
        call do_enter                   ; Выводится "enter"
        ret
    ok_exit:
    	mov NUM, bx                     ; при успешном вводе записываем получившееся число в переменную
        ret
input_unsign_10 endp

CSEG ENDS
END