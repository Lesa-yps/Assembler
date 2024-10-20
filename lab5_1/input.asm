PUBLIC do_space
PUBLIC do_enter
PUBLIC input_unsign_10
PUBLIC NUM

DSEG SEGMENT PARA PUBLIC 'DATA'
    NUM dw 0 ; выделяем место для числа на 16 бит (пока оно нуль)
	input_str db "Enter an unsigned decimal number: $" ; запрос на ввод числа
    err_num_str db "The number is invalid. Please, try enter again.$" ; вывод ошибки при неверном вводе числа
DSEG ENDS

CSEG SEGMENT PARA PUBLIC 'CODE'
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
    xor bx, bx ; BX = 0 (сюда будет вводится число)
    mov dx, offset input_str
    mov ah, 09h
    int 21h ; Выводится запрос ввода
    call do_enter ; Выводится "enter"
    mov cx, 4 ; 16 бит это максимум 4 десятичные цифры (по 4 бита каждая 9 = 1001)
    mov ah, 01h ; выставляется функцию ввода символа
    int 21h ; читаем символ
    for_input_dig:
        cmp al, 13
        je ok_exit ; при нажатии "enter" (='\r'\n'='13'10') ввод завершается
        ; проверка а точно ли это цифра?
        cmp al, 39h
        ja err_exit ; если это не цифра (символ > 9), завершаем выполнение функции с выводом ошибки
        cmp al, 30h
        jl err_exit ; если это не цифра (символ < 0), завершаем выполнение функции с выводом ошибки
        ; если это цифра от 0 до 9
        sub al, '0' ; переводим ASCII код символа в цифру
        mov dx, cx ; сохранили значение счётчика
        mov cl, 4
        shl bx, cl ; побитовый сдвиг влево числа на 4 разряда
        mov cx, dx ; восстановили значение счётчика
        add bl, al ; на освободившееся место (в конец старого числа) записываем новую цифру
        int 21h ; читаем новый символ
        loop for_input_dig
    cmp al, 13 ; после введённого числа ожидаем "enter" (='\r'\n'='13'10')
    jne err_exit ; если после числа ввели не "enter", а что-то другое -> ошибка
    err_exit:
        call do_enter ; Выводится "enter"
        mov ah, 09h
        mov dx, offset err_num_str 
        int 21h ; выводится сообщение об ошибке ввода числа
        call do_enter ; Выводится "enter"
        ret
    ok_exit:
    	mov NUM, bx ; при успешном вводе записываем получившееся число в переменную
    ret
input_unsign_10 endp

CSEG ENDS
END