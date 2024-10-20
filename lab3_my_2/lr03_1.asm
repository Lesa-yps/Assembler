EXTRN input_X: near
PUBLIC X

STK1 SEGMENT PARA STACK 'STACK'
	db 100 dup(0)
STK1 ENDS

DATA1 SEGMENT PARA PUBLIC 'DATA'
	X db 0
DATA1 ENDS

CSEG SEGMENT PARA PUBLIC 'CODE'
	assume CS:CSEG, DS:DATA1, SS:STK1
main:
	mov ax, DATA1
	mov ds, ax

	call input_X

	mov dl, X
	mov ah, 2
	int 21h

	mov ah, 4ch
	int 21h
CSEG ENDS
END main