STK SEGMENT PARA STACK 'STACK'
    db 100 dup(0)
STK ENDS

DATA1 SEGMENT PARA PUBLIC 'DATA'
    N db 0
    M db 0
    arr db 9*9 dup(0)
    MAX_N db 0009h
    err_str	DB	'Error!$'  ;Строка для вывода ошибки
    res_str	DB	'Result:$'  ;Строка для вывода результата
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

echo_err:
    call do_enter
    MOV	AH,	09h             ;Номер функции 09h
    MOV	DX,	offset err_str   ;Адрес строки записываем в DX
    INT	21h
    RET

echo_res:
    call do_enter
    MOV	AH,	09h             ;Номер функции 09h
    MOV	DX,	offset res_str   ;Адрес строки записываем в DX
    INT	21h
    RET

output:
	mov ah, 2
	int 21h
	call do_space
	ret

main:
    mov ax, DATA1
    mov ds, ax

    ; Ввод M и N
    mov ah, 01h ; функция ввода символа с клавиатуры
    int 21h ; ввод символа
    sub al, 30h  ; конвертация из символа в десятичное число
    cmp al, 0
    je ERR_END_PROGA ; if N == 0: print("Error!") exit
    mov N, al ; сохраняем N
    call do_space
    mov ah, 01h ; функция ввода символа с клавиатуры
    int 21h ; ввод символа
	sub al, 30h  ; конвертация из символа в десятичное число
    cmp al, 0
    je ERR_END_PROGA ; if M == 0: print("Error!") exit
    mov M, al ; сохраняем M

    ; Ввод массива
    mov si, 0 ; счетчик
NEW_STR_IN:
    call do_enter
label_i:
    MOV ax, si                         ; AX = si
    XOR dx, dx
    MOV Dl, MAX_N
    DIV Dl                             ; AH = si % 9
    CMP AH, M
    jae inc_i                          ; if (si % 9) >= M: goto inc_i
    ; if (SI % MAX_N) >= M: SI++ goto label_i
    mov ah, 01h                        ; функция ввода символа с клавиатуры
    int 21h                            ; ввод символа
	sub al, 30h                        ; конвертация из символа в десятичное число
    mov arr[si], al                    ; сохраняем символ в массив
    call do_space
inc_i:
    inc si ; увеличиваем счетчик
	xor ax, ax
    mov al, N
    mul MAX_N ; умножаем N на MAX_N
    cmp si, ax ; сравниваем счетчик с результатом умножения
    jnz label_i ; если не равно, продолжаем ввод элементов массива


; Обработка массива
; первая строка
    xor ax, ax
    MOV Al, N                  ; AL = N
    CMP Al, 1                  ; cmp(N, 1)
    JLE END_LOOP               ; if N <= 1: goto END_LOOP
    XOR cx, cx
    MOV Cl, M                  ; CL = M
    XOR si, si                 ; si = 0 (счетчик цикла)
FOR_J1:                         ; Метка начала цикла для j1
    XOR ax, ax
    MOV al, MAX_N
    ADD si, ax
    xor ax, ax
    MOV al, arr[si]                    ; AL = ARR[si + 9] (байт)
    XOR dx, dx
    MOV Dl, 10
    DIV Dl                             ; AH = AX % 10
    MOV dl, MAX_N
    SUB si, dx
    MOV arr[si], Ah                    ; ARR[si] = AH
    INC si                             ; si++
    CMP si, cx                         ; cmp(si, M)
    JL FOR_J1                          ; if SI < M: goto FOR_J1


    xor ax, ax
    MOV Al, N                  ; AL = N
    CMP Al, 2                  ; cmp(N, 2)
    JE END_LOOP                ; if N == 2: goto END_LOOP
    CMP Al, 3                  ; cmp(N, 3)
    JE LAST                    ; if N == 3: goto LAST
; строки посередине (четные)
    XOR cx, cx
    MOV Cl, MAX_N                  ; CX = MAX_N    
    MOV si, cx                  ; si = MAX_N
NEXT_STR:
    add si, cx                  ; si += MAX_N
    ; si >= (N - 1) * MAX_N: goto LAST
    xor ax, ax
    mov al, N
    dec al
    mul cx
    cmp si, ax
    jae LAST
FOR_J2:                         ; Метка начала цикла для j2
    XOR dx, dx
    MOV dl, MAX_N
    SUB si, dx
    xor ax, ax
    MOV al, arr[si]                    ; AL = ARR[si - M] (байт)
    ADD si, dx
    ADD si, dx
    ADD al, arr[si]                    ; AL = ARR[si - M] + ARR[si + M]
    SUB si, dx
    XOR dx, dx
    MOV Dl, 10
    DIV Dl                             ; AH = AX % 10
    MOV arr[si], Ah                    ; ARR[si] = AH
    INC si                             ; si++
    mov ax, si
    xor dx, dx
    mov dl, MAX_N
    div dl                             ; AH = SI % 9
    CMP ah, 0                          ; cmp(SI % 9, 0)
    JE NEXT_STR                        ; if SI % 9 == 0: goto NEXT_STR
    JMP FOR_J2                         ; else: goto FOR_J2


LAST:
; последняя строка (если четная)
    XOR cx, cx
    xor ax, ax
    MOV Al, N
    DEC AL                     ; AX = N - 1
    CMP AL, 0                  ; если первая строка совпадает с последней
    JE END_LOOP                ; if (N - 1) == 0: goto END_LOOP
    MOV Dl, 2
    DIV Dl                     ; AH = AX % 2 = (N - 1) % 2
    CMP AH, 1                  ; cmp((N - 1) % 2, 1) или (N - 1) % 2 == 1?
    JE END_LOOP                ; if (N - 1) % 2 == 1: goto END_LOOP (если последняя строка нечетная)
    MOV Cl, M                  ; CL = M
    xor ax, ax
    MOV Al, N
    DEC AL                     ; AX = N - 1
    mul MAX_N                  ; умножаем (N - 1) на MAX_N
    mov si, ax                 ; si = (N - 1)*9 (счетчик цикла на начало последней строки)
FOR_J3:                         ; Метка начала цикла для j2
    XOR ax, ax
    MOV al, MAX_N
    SUB si, ax
    xor ax, ax
    MOV al, arr[si]                    ; AL = ARR[si - MAX_N] (байт)
    XOR dx, dx
    MOV Dl, 10
    DIV Dl                             ; AH = AX % 10
    MOV dl, MAX_N
    ADD si, dx
    MOV arr[si], Ah                    ; ARR[si] = AH
    INC si                             ; si++
    mov ax, si
    XOR dx, dx
    MOV Dl, MAX_N
    DIV Dl                             ; AH = SI % MAX_N
    CMP ah, cl                         ; cmp(SI % MAX_N, M)
    JL FOR_J3                          ; if SI % MAX_N < M: goto FOR_J3


END_LOOP:                     ; Метка конца цикла
    ; Вывод массива
    call echo_res
    mov si, 0
NEW_STR_OUT:
    call do_enter
label_j:
    xor ax, ax
    mov dl, arr[si]
    add dl, 30h ; конвертация из десятичного числа в символ
    call output
inc_si:
    inc si
	xor ax, ax
    mov al, MAX_N
    mul N
    cmp si, ax
    jae END_PROGA ; программа выводит массив пока si < N * 9
    ; if (si % MAX_N > M): goto inc_si
    MOV ax, si
    XOR dx, dx
    MOV Dl, MAX_N
    DIV Dl                             ; AH = si % MAX_N
    cmp ah, M
    jae inc_si
    cmp ah, 0
    je NEW_STR_OUT
    jmp label_j

ERR_END_PROGA:
    call echo_err
END_PROGA:
    call do_enter
    mov ax, 4c00h
    int 21h
CSEG ENDS

END main
