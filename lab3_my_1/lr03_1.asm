EXTRN input_X: near

STK1 SEGMENT PARA STACK 'STACK'
	db 100 dup(0)
STK1 ENDS

CSEG SEGMENT PARA PUBLIC 'CODE'
	assume CS:CSEG, SS:STK1
main:
	call input_X

	mov dl, al
	mov ah, 2
	int 21h

	mov ah, 4ch
	int 21h
CSEG ENDS
END main