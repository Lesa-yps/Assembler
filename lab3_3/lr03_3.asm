SD1 SEGMENT para public 'DATA'
	S4 db 'T'
	S1 db 'Y'
	db 5535 - 2 dup (0)
SD1 ENDS
;YS                            
SD1 SEGMENT para public 'DATA'
	S2 db 'E'
	db 5535 - 2 dup (0)
SD1 ENDS

SD1 SEGMENT para public 'DATA'
	db 5535 - 2 dup (0)
	;ORG 0
	FA1 label byte
	ORG 1
	FA2 label byte
	S3 db 'S'
	db 5534h - 2 dup (0)
SD1 ENDS

char test[9][9];
test[0][0] = 1
test[0][1] = 2
test[1][0] = 3
test[1][1] = 4

CSEG SEGMENT para public 'CODE'
	assume CS:CSEG, DS:SD1
output:
	mov ah, 2
	int 21h
	mov dl, 10
	int 21h
	mov dl, 13
	int 21h
	ret
main:
	mov ax, SD1
	mov ds, ax
	mov dl, S1
	call output
assume DS:SD1
	mov ax, SD1
	mov ds, ax
	mov dl, S2
	call output
assume DS:SD1
	mov ax, SD1
	mov ds, ax
	mov dl, FA1
	call output
	
	mov ax, 4c00h
	int 21h
CSEG ENDS
END main