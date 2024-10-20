.model small
.stack 100h
.386
.data
; Тестовые данные
test_data1 db 5, 'hello'   ; длина строки 5, строка "hello"
test_data2 db 3, 'abc'     ; длина строки 3, строка "abc"
test_data3 db 11, 'assembly test' ; длина строки 11, строка "assembly test"
; Ожидаемые результаты
expected_result1 dw 0D26Eh ; ожидаемый результат для "hello"
expected_result2 dw 0514Ah ; ожидаемый результат для "abc"
expected_result3 dw 01FDBh ; ожидаемый результат для "assembly test"

.code
main proc
    mov ax, @data
    mov ds, ax

    ; Тест 1
    lea dx, test_data1
    call check_sum
    cmp ax, expected_result1
    je test1_passed
    ; Если не совпадает
    mov ah, 09h
    lea dx, fail_msg
    int 21h
    jmp exit

test1_passed:
    ; Тест 2
    lea dx, test_data2
    call check_sum
    cmp ax, expected_result2
    je test2_passed
    ; Если не совпадает
    mov ah, 09h
    lea dx, fail_msg
    int 21h
    jmp exit

test2_passed:
    ; Тест 3
    lea dx, test_data3
    call check_sum
    cmp ax, expected_result3
    je test3_passed
    ; Если не совпадает
    mov ah, 09h
    lea dx, fail_msg
    int 21h
    jmp exit

test3_passed:
    ; Все тесты пройдены
    mov ah, 09h
    lea dx, pass_msg
    int 21h

exit:
    ; Завершение программы
    mov ax, 4C00h
    int 21h
main endp

check_sum proc uses ds si di bx
    mov si, dx 
    mov cx, [si] 
    add si, 2 
    mov di, si
    mov ax, 0ffffh  
    xor bx, bx  
crc_loop: 
    test cx, cx 
    jz crc_done 
    mov bl, [di]  
    xor bl, ah  
    mov bh, bl 
    xor bh, bl 
    shl bx, 4 
    xor bx, 1021h 
    xor bl, bl 
    shl bx, 3  
    xor ah, bl  
    shl ax, 8  
    xor ax, bx 
    inc di 
    loop crc_loop 
crc_done: 
    ret 
check_sum endp

pass_msg db 'All tests passed!', 0Dh, 0Ah, '$'
fail_msg db 'Test failed!', 0Dh, 0Ah, '$'

end main
