.model small 
.stack 100h 
 
.data 
    video_mode equ 13h  
 
.code 
main proc 
    mov ax, @data 
    mov ds, ax 
 
    mov ax, video_mode 
    int 10h 
 
    mov ax, 0A000h    
    mov es, ax 

	mov si, 1
go: 
    mov cx, 33    
    mov di, 320 * 10 + 50
	add di, si  
	dec di
fill_screen_: 
    mov word ptr es:[di], 00h
    add di, 320
	add di, 1
    loop fill_screen_
inc di
fill_screen: 
    mov word ptr es:[di], 0Ch
    add di, 320
	add di, 1
    loop fill_screen           

mov cx, 33  
mov di, 320 * 215 + 50
add di, si  
dec di      
fill_screen1_: 
    mov word ptr es:[di], 00h
    add di, 320
	sub di, 1
    loop fill_screen1_
inc di         
fill_screen1: 
    mov word ptr es:[di], 0Ch
    add di, 320
	sub di, 1
    loop fill_screen1


	mov cx, 100    
    mov di, 320 * 25 + 82
	add di, si  
	dec di    
fill_screen2_: 
    mov word ptr es:[di], 00h
    add di, 320
    loop fill_screen2_
inc di
fill_screen2: 
    mov word ptr es:[di], 0Ch
    add di, 320
    loop fill_screen2

	mov ah, 0 
    int 16h
    cmp al, 71h     ;текст кончается enter'ом, или люб др символом по твоему желанию
  
    je finish
    jne new
new:
  inc si
  jmp go
finish:

    mov ah, 0 
    int 16h             
 
    mov ax, 3h           
    int 10h 
 
    mov ax, 4C00h        
    int 21h 
main endp 
 
end main