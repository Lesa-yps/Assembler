.model small
.stack 100h
.code
start:
	mov ax, DGROUP
	mov ds, ax
	mov dx, offset message
	mov ah, 9
	int 21h
	mov ax, 4C00h
	int 21h
.data
	message db "Hello World!", 00h, 0Ah, '$'
end start