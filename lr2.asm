StkSeg SEGMENT STACK 'STACK'
    DB 200h DUP (?)
StkSeg ENDS

DataS SEGMENT DWORD 'DATA'
X DB 3
HelloMessage    DB 13
                DB 10
                DB 'Hello, world !'
                DB 10
                DB '$'
DataS ENDS

Code SEGMENT WORD 'CODE'
    ASSUME CS:Code, DS:DataS
DispMsg:
    mov AX, DataS
    mov DS, AX
    mov DX, OFFSET HelloMessage
    xor cx, cx
    mov cl, X
label1:
    mov AH, 9
    int 21h
    dec cx
    jnz label1
    mov AH, 4Ch
    int 21h
Code ENDS
END DispMsg
