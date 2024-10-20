PUBLIC input_X

CSEG SEGMENT PARA PUBLIC 'CODE'
	assume CS:CSEG

input_X proc near
    xor ax, ax
	mov ah, 08h
	int 21h
	ret
input_X endp

CSEG ENDS
END