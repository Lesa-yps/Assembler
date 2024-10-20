STK SEGMENT PARA STACK 'STACK'
    db 100 dup(0)
STK ENDS

DATA1 SEGMENT PARA PUBLIC 'DATA'
    N db 0
    M db 0
    arr db 9*9 dup(0)
    ROWS db 0
    COLS db 0
    I db 0
DATA1 ENDS

CSEG SEGMENT PARA PUBLIC 'CODE'
    assume CS:CSEG, DS:DATA1, SS:STK

do_enter:
    mov ah, 2
    mov dl, 10
	int 21h
	mov dl, 13
	int 21h
	ret

do_space:
    mov ah, 2
    mov dl, 20h
	int 21h
    ret

output:
	mov ah, 2
	int 21h
	call do_enter
	ret

main:
    mov ax, DATA1
    mov ds, ax

    ; Ввод M и N
    mov ah, 01h ; функция ввода символа с клавиатуры
    int 21h ; ввод символа
    sub al, 30h  ; конвертация из символа в десятичное число
    mov N, al ; сохраняем N
    call do_space
    mov ah, 01h ; функция ввода символа с клавиатуры
    int 21h ; ввод символа
	sub al, 30h  ; конвертация из символа в десятичное число
    mov M, al ; сохраняем M
    call do_enter

    ; Ввод массива
    mov si, 0 ; счетчик
label_i:
    mov ah, 01h ; функция ввода символа с клавиатуры
    int 21h ; ввод символа
	sub al, 30h  ; конвертация из символа в десятичное число
    mov arr[si], al ; сохраняем символ в массив
    inc si ; увеличиваем счетчик
    call do_space
	xor ax, ax
    mov al, M
    mul N ; умножаем M на N
    cmp si, ax ; сравниваем счетчик с результатом умножения
    jnz label_i ; если не равно, продолжаем ввод элементов массива


; Обработка массива
; первая строка
    XOR cx, cx
    MOV Al, N                  ; AL = N
    CMP Al, 1                  ; cmp(N, 1)
    JLE END_LOOP               ; if N <= 1: goto END_LOOP
    MOV Cl, M                  ; CL = M
    XOR si, si                 ; si = 0 (счетчик цикла)
FOR_J:                         ; Метка начала цикла для j
    XOR ax, ax
    MOV al, M
    ADD si, ax
    xor ax, ax
    MOV al, arr[si]   ; AL = ARR[si + M] (байт)
    XOR dx, dx
    MOV Dl, 10
    DIV Dl                            ; AH = AX % 10
    MOV dl, M
    SUB si, dx
    MOV arr[si], Ah       ; ARR[si] = AH
    INC si                             ; si++
    CMP si, cx                         ; cmp(si, M)
    JL FOR_J                           ; if BX < M: goto FOR_J

XOR bx, bx
mov bl, M
add si, bx
XOR ax, ax
MOV AL, N
mul M
sub al, M
mov cx, ax
cmp cx, si
JE END_LOOP
FOR_I:                                  ; Метка начала цикла для i
    mov ax, si
    add ax, M                               ; AX = si + M
    MOV AL, arr[ax]   ; AL = ARR[si + M] (байт)
    sub ax, M
    sub ax, M
    ADD AL, arr[ax]   ; AL += ARR[si - M] (байт)
    XOR dx, dx
    MOV dl, M
    SUB si, dx
    MOV Dl, 10
    DIV Dl                            ; AH = AX % 10
    MOV arr[si], Ah       ; ARR[si] = AH
    INC si                             ; si++
    cmp si, cx 
    JL FOR_I             
   


END_LOOP:                     ; Метка конца цикла
    ; Вывод массива
    call do_enter
    mov si, 0
label_j:
    xor ax, ax
    mov dl, arr[si]
    add dl, 30h ; конвертация из десятичного числа в символ
    call output
    inc si
	xor ax, ax
    mov al, M
    mul N
    cmp si, ax
    jnz label_j

    mov ax, 4c00h
    int 21h
CSEG ENDS

END main
