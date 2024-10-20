STK1 SEGMENT PARA STACK 'STACK'
	db 100 dup(0)
STK1 ENDS

DATA1 SEGMENT PARA PUBLIC 'DATA'
    N db 0
    M db 0
    arr db 9*9 dup(0)
DATA1 ENDS

CSEG SEGMENT PARA PUBLIC 'CODE'
    assume CS:CSEG, DS:DATA1, SS:STK1

MAIN:                      ; Определяем точку входа в программу
    MOV AX, DATA1              ; Загружаем адрес сегмента данных в регистр AX
    MOV DS, AX                 ; Копируем адрес сегмента данных в регистр DS
    
    ; Ввод массива
input_data:
    xor ax, ax
    mov ah, 01h
    int 21h
    mov al, N
    int 21h
    mov al, M
    mov cx, 0
label_i:
    xor ax, ax
    mov ah, 01h
    int 21h
    mov [arr + cx], al
    inc cx
    mov ax, M
    mul N
    cmp cx, ax
    jnz label_i
    
    ; Обработка массива
    MOV AL, N                  ; AL = N
    CMP AL, 1                  ; cmp(N, 1)
    JLE END_LOOP               ; if N <= 1: goto END_LOOP
    MOV CL, M                  ; CL = M
    MOV CH, 0                  ; CH = 0
    XOR BX, BX                 ; BX = 0 (счетчик цикла)
FOR_J:                                 ; Метка начала цикла для j
    MOV AL, [arr + BX + M]   ; AL = ARR[BX + M] (байт)
    XOR AH, AH
    MOV DX, 10
    DIV DX                            ; AH = AL % 10
    MOV [arr + BX], AH       ; ARR[BX + M] = AH
    INC BX                             ; BX++
    CMP BX, CL                         ; cmp(BX, M)
    JL FOR_J                           ; if BX < M: goto FOR_J
MOV CX, 2                           ; CX = 2 (счетчик цикла)
MOV AL, N - 1                       ; AL = N - 1
FOR_I:                                  ; Метка начала цикла для i
    PUSH CX                             ; Сохраняем текущее значение CX в стек
    MOV BX, CX                          ; BX = CX
    MUL M                               ; AX *= M
    ADD BX, AX                          ; BX += AX
    MOV AL, [arr + BX + M + 1]   ; AL = ARR[i * (M + 1) + j] (байт)
    ADD AL, [arr + BX + M - 1]   ; AL += ARR[i * (M - 1) + j] (байт)
    XOR AH, AH
    MOV DX, 10
    DIV DX                             ; AH = AL % 10
    MOV [arr + BX], AH        ; [ARR + BX] = AH
    POP CX                              ; Восстанавливаем значение CX из стека
    ADD CX, 2                           ; CX += 2
    CMP CX, AL                          ; cmp(CX, N-1)
    JL FOR_I                            ; if CX < (N-1): goto FOR_I
MOV AL, N - 1             ; AL = N - 1
XOR AH, AH
MOV DX, 2
DIV DX                    ; AH = (N - 1) % 2
CMP AH, 0                 ; cmp((N - 1) % 2, 0)
JNZ END_LOOP               ; if (N - 1) % 2 != 0: goto END_LOOP
MOV CL, M                  ; CL = M
MOV CH, 0                  ; CH = 0
XOR BX, BX                 ; BX = 0 (счетчик цикла)
FOR_K:                                 ; Метка начала цикла для k
    MOV AL, [arr + BX + M]   ; AL = ARR[BX + M + AL - 1] (байт)
    XOR AH, AH
    MOV DX, 10
    DIV DX                            ; AH = AL % 10
    MOV [arr + BX], AH       ; ARR[BX + M + AL] = AH
    INC BX                             ; BX++
    CMP BX, CL                         ; cmp(BX, M)
    JL FOR_K                           ; if BX < M: goto FOR_K
   
END_LOOP:                     ; Метка конца цикла
    ; Вывод массива
output_data:
    mov cx, 0
label_i:
    xor ax, ax
    mov ah, 02h
    mov dl, [arr + cx]
    int 21h
    inc cx
    mov ax, M
    mul N
    cmp cx, ax
    jnz label_i
    
    MOV AH, 4CH                ; Устанавливаем значение AH для вызова функции завершения программы
    INT 21H                    ; Вызываем прерывание 21H для завершения программы
CSEG ENDS
END MAIN
