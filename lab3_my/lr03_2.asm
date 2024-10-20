PUBLIC input_X
EXTRN X: byte

CSEG SEGMENT PARA PUBLIC 'CODE'
	assume CS:CSEG

input_X proc near
    xor ax, ax
	mov ah, 08h
	int 21h
	mov X, al
	ret
input_X endp

CSEG ENDS
END