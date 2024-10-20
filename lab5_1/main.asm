comment @
автор - Талышева Олеся Николаевна
группа - ИУ7-45Б
лабораторная №5 по ассемблеру
Требуется составить программу, которая будет осуществлять:
● ввод 16-разрядного беззнакового числа в 10 системе счисления;
● вывод его в беззнаковом представлении в 2 системе счисления;
● усечённое до 8 разрядов значение в знаковом представлении в 16 системе счисления;
● степень двойки, которой кратно введённое число
@
 ; импорт функций
EXTRN input_unsign_10: near
;EXTRN output_unsign_2: near
;EXTRN output_trunc_sign_16: near
;EXTRN output_power_2: near
EXTRN do_enter: near
EXTRN do_space: near

STK SEGMENT PARA STACK 'STACK'
    db 100 dup(0)
STK ENDS

DSEG SEGMENT PARA PUBLIC 'DATA'
    menu_str db "1. Enter a number" ; 1. Ввести число
              db 10
              db 13
              db "2. Print unsigned in 2 s\s" ; 2. Вывести беззнаковое в 2 с\с
              db 10
              db 13
              db "3. Output truncated (8 bits) signed 16 s\s" ; 3. Вывести усеченное (8 разрядов) знаковое 16 с\с
              db 10
              db 13
              db "4. Print the power of 2 that is a multiple of the entered number" ; 4. Вывести степень двойки, которой кратно введённое число
              db 10
              db 13
              db "5. Exit the program" ; 5. Выход из программы
              db 10
              db 13
              db "Enter selected action: $" ; Введите выбранное действие:

    arr_func_ptr dw 6 DUP (0)
DSEG ENDS

CSEG SEGMENT PARA PUBLIC 'CODE'
    assume CS:CSEG, DS:DSEG, SS:STK
main:
    ; Начало программы
    mov ax, DSEG
    mov ds, ax
    ; Заполняем массив указателями на рабочие функции
    mov arr_func_ptr[0], input_unsign_10
    ;mov arr_func_ptr[2], output_unsign_2
    ;mov arr_func_ptr[4], output_trunc_sign_16
    ;mov arr_func_ptr[6], output_power_2
    mov arr_func_ptr[8], exit_proga

    ; Вывод меню, запрос выбора действия и переход на обработку
    menu:
        mov ah, 9 ; Вывод строки в stdout
        mov dx, offset menu_str ; DS:DX - адрес строки, заканчивающейся символом $
        int 21h

        mov ah, 1 ; 01 Считать символ из stdin с эхом, AL - ASCII-код символа
        int 21h

        mov ah, 0
        sub al, "1" ; перевели ASCII символ в цифру, причем на 1 меньше для нумерации массива с нуля
        mov dl, 2
        mul dl     
        mov bx, ax  ; bx = ax * 2 (так как arr_func_ptr dw)

        call do_enter ; Выводится "enter"
        call arr_func_ptr[bx] ; Вызов функции по указателю из массива
        call do_enter ; Выводится "enter"
    jmp menu  ; Снова идем к выводу меню

exit_proga proc near ; Завешение программы
    mov ax, 4c00h
    int 21h
exit_proga endp
CSEG ENDS

END main
