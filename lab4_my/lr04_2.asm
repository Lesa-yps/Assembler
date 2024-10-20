PUBLIC input_data
PUBLIC output_data
EXTERN DATA1:SEGMENT

CSEG SEGMENT PARA PUBLIC 'CODE'
    assume CS:CSEG, DS:DATA1

input_data proc near
    xor ax, ax
    mov ah, 01h
    int 21h
    mov al, N       ; Загружаем N из глобальной переменной
    int 21h
    mov al, M       ; Загружаем M из глобальной переменной
    mov cx, 0
label_i:
    xor ax, ax
    mov ah, 01h
    int 21h
    mov [arr + cx], al
    inc cx
    mov ax, M
    mul N
    cmp cx, ax
    jnz label_i
    ret
input_data endp

output_data proc near
    mov cx, 0
label_i:
    xor ax, ax
    mov ah, 02h
    mov dl, [arr + cx]
    int 21h
    inc cx
    mov ax, M
    mul N
    cmp cx, ax
    jnz label_i
    ret
output_data endp

CSEG ENDS
END
