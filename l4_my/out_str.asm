PUBLIC do_enter
PUBLIC do_space
PUBLIC echo_str
PUBLIC output
PUBLIC off_str
PUBLIC err_str
PUBLIC res_str
PUBLIC input_N_str
PUBLIC input_M_str
PUBLIC input_arr_str

DATA1 SEGMENT PARA PUBLIC 'DATA'
    err_str	DB	'Error!$'                   ; Строка для вывода ошибки
    res_str	DB	'Result:$'                  ; Строка для вывода результата
    input_N_str	DB	'Input N:$'             ; Строка для запроса ввода количества строк
    input_M_str	DB	'Input M:$'             ; Строка для запроса ввода количества столбцов
    input_arr_str	DB	'Input arr:$'       ; Строка для запроса ввода массива
    off_str dw 0                            ; Переменная для хранения адреса строки для вывода
DATA1 ENDS

CSEG1 SEGMENT PARA PUBLIC 'CODE'
    assume CS:CSEG1, DS:DATA1

; Процедура вывода символа перевода строки и возврата каретки ("enter")
do_enter:
    mov ah, 2
    mov dl, 10
	int 21h
	mov dl, 13
	int 21h
	ret

; Процедура вывода пробела
do_space:
    mov ah, 2
    mov dl, 20h
	int 21h
    ret

; Процедура вывода строки
echo_str:
    call do_enter
    MOV	AH,	09h             ; Функция вывода строки
    MOV	DX,	off_str         ; Адрес строки для вывода
    INT	21h
    RET

; Процедура вывода содержимого регистра DL
output:
	mov ah, 2
	int 21h
	call do_space
	ret

CSEG1 ENDS
END
