EXTRN input_data: near
EXTRN output_data: near
PUBLIC DATA1

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
MAIN PROC                      ; Определяем точку входа в программу
    MOV AX, @DATA              ; Загружаем адрес сегмента данных в регистр AX
    MOV DS, AX                 ; Копируем адрес сегмента данных в регистр DS
    
    ; Ввод массива
    CALL INPUT_DATA            ; Вызываем процедуру ввода данных
    
    ; Обработка массива
    MOV AL, N                  ; AL = N
    CMP AL, 1                  ; cmp(N, 1)
    JLE END_LOOP               ; if N <= 1: goto END_LOOP
    MOV CL, M                  ; CL = M
    MOV CH, 0                  ; CH = 0
    XOR BX, BX                 ; BX = 0 (счетчик цикла)
    FOR_J:                                 ; Метка начала цикла для j
        MOV EAX, BYTE PTR [ARR + BX + M]   ; EAX = ARR[BX + M] (байт)
        XOR EDX, EDX
        MOV ECX, 10
        DIV ECX                            ; EDX = EAX % 10
        MOV BYTE PTR [ARR + BX], EDX       ; ARR[BX + M] = EDX
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
        MOV EAX, BYTE PTR [ARR + BX + M + 1]; EAX = ARR[i * (M + 1) + j] (байт)
        ADD EAX, BYTE PTR [ARR + BX + M - 1]; EAX += ARR[i * (M - 1) + j] (байт)
        XOR EDX, EDX
        MOV ECX, 10
        DIV ECX                             ; EDX = EAX % 10
        MOV BYTE PTR [ARR + BX], EDX        ; [ARR + BX] = EDX
        POP CX                              ; Восстанавливаем значение CX из стека
        ADD CX, 2                           ; CX += 2
        CMP CX, AL                          ; cmp(CX, N-1)
        JL FOR_I                            ; if CX < (N-1): goto FOR_I
    MOV EAX, N - 1             ; EAX = N - 1
    XOR EDX, EDX
    MOV ECX, 2
    DIV ECX                    ; EDX = (N - 1) % 2
    CMP EDX, 0                 ; cmp((N - 1) % 2, 0)
    JNZ END_LOOP               ; if (N - 1) % 2 != 0: goto END_LOOP
    MOV CL, M                  ; CL = M
    MOV CH, 0                  ; CH = 0
    XOR BX, BX                 ; BX = 0 (счетчик цикла)
    FOR_K:                                 ; Метка начала цикла для k
        MOV EAX, BYTE PTR [ARR + BX + M]   ; EAX = ARR[BX + M + AL - 1] (байт)
        XOR EDX, EDX
        MOV ECX, 10
        DIV ECX                            ; EDX = EAX % 10
        MOV BYTE PTR [ARR + BX], EDX       ; ARR[BX + M + AL] = EDX
        INC BX                             ; BX++
        CMP BX, CL                         ; cmp(BX, M)
        JL FOR_K                           ; if BX < M: goto FOR_K
    
    ; Вывод массива
    CALL OUTPUT_DATA           ; Вызываем процедуру вывода данных
    
END_LOOP:                     ; Метка конца цикла
    MOV AH, 4CH                ; Устанавливаем значение AH для вызова функции завершения программы
    INT 21H                    ; Вызываем прерывание 21H для завершения программы
MAIN ENDP                     ; Конец процедуры MAIN
CSEG ENDS
END MAIN