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
 
    mov cx, 320 * 200    
    xor di, di               
    mov bx, 64h

fill_screen:
    mov word ptr es:[di], bx
    add di, 10
    mov word ptr es:[di], bx
    dec cx
    jnz fill_screen                         
 
    mov ah, 0 
    int 16h
    cmp al, 71h     ;текст кончается enter'ом, или люб др символом по твоему желанию
  
    je finish
    jne new
new:
  inc bx
  mov cx, 2
  jmp fill_screen
finish:
    mov ax, 3h           
    int 10h 
    mov ax, 4C00h        
    int 21h 
main endp 
 
end main