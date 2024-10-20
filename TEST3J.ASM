StkSeg SEGMENT STACK 'STACK'
    DB 200h DUP (?)
StkSeg ENDS

DataS1 SEGMENT DWORD 'DATA'
	db 3 dub(0)
	X DB 33h
DataS1 ENDS

DataS SEGMENT DWORD 'DATA'
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
    mov cx, 3
label1:
    mov AH, 9
    int 21h
    dec cx
    jnz label1
    ;mov AH, 7
    ;int 21h
    mov AH, 4Ch
    int 21h
Code ENDS
END DispMsg
