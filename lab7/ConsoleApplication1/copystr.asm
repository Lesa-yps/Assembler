section .data USE64
    temp_buffer db 100 DUP(0) ; Выделение участка памяти (буфера) размером 100 байт

SECTION .text USE64
global str_copy

str_copy:
    ; Первый параметр (str2) передается в регистр RDX
    mov rdx, rcx
    ; Второй параметр (str1) передается в регистр RCX
    mov rcx, r8
    ; Третий параметр (len) передается в регистр R8
    mov r8, r9

    ; Сохраняем указатель на начало str1
    mov rsi, rcx
    ; Сохраняем указатель на начало str2
    lea rdi, [temp_buffer]
    ; Увеличиваем длину на 1 для учета символа конца строки
    inc r8
    ; Копируем строку из str1 в temp_buffer
    rep movsb

    ; Восстанавливаем длину строки
    mov r8, r9
    ; Указываем источник как temp_buffer
    lea rsi, [temp_buffer]
    ; Указываем назначение как str2
    mov rdi, rdx
    ; Копируем строку из temp_buffer в str2
    rep movsb

    ret
