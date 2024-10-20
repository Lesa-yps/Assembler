.MODEL SMALL
.STACK 100h

.DATA
msg DB 'a$'

.CODE
MAIN PROC

    ; Получение текущего времени
    XOR AX, AX
    MOV AH, 2Ch
    INT 21h

    ; Увеличение
    INC CL

    ; Установка будильника
    MOV AH, 06h
    INT 1Ah

    ; Установка обработчика прерывания для 0x4A
    MOV AX, @DATA
    MOV DS, AX
    MOV WORD PTR NEW_INT, OLD_INT
    MOV WORD PTR NEW_INT[2], CS
    CLI
    MOV AX, 3524h ; Указатель нового обработчика
    MOV DX, OFFSET NEW_INT
    MOV WORD PTR DX, CS
    MOV WORD PTR DX[2], 0
    STI

    ; Бесконечный цикл ожидания
WAIT_LOOP:
    NOP
    JMP WAIT_LOOP

MAIN ENDP

OLD_INT PROC FAR
    ; Старый обработчик прерывания
    IRET
OLD_INT ENDP

NEW_INT PROC FAR
    ; Новый обработчик прерывания для 0x4A
    MOV AH, 09h
    LEA DX, msg
    INT 21h  ; Вывод символа "a"
    IRET
NEW_INT ENDP

END MAIN
