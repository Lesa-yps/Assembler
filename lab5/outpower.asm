.386
EXTRN Num: word
EXTRN do_enter: near

PUBLIC output_power_2

DSEG SEGMENT PARA PUBLIC USE16 'DATA'
    ; "Вывод степени двойки, которой кратно введённое число: "
	out_power_str db "Print the power of 2 that is a multiple of the entered number: $"
    ; "Введённое число нулевое."
    zero_num_str db "Entered number is zero.$"
DSEG ENDS

CSEG SEGMENT PARA PUBLIC USE16 'CODE'
	assume CS:CSEG, DS:DSEG
	; Вывод степени двойки, которой кратно введённое число
	output_power_2 proc near
		mov dx, offset out_power_str            ; Вывод сообщения о выводимом числе
		mov ah, 09h
		int 21h
		call do_enter                           ; Вывод "enter"   
    	mov bx, Num                         	; Записываем обрабатываемое число в регистр bx
        mov cx, 16                              ; Длина числа 16 бит = максимальное число повторений цикла
        mov ax, 0                               ; Инициализируем счетчик степени AX
    for_calc_power:
        test bx, 1                              ; Проверяем младший бит числа на равенство 1
        jnz print_power                         ; if (bx & ...001) != 0: goto done_calc (дальше число не кратно 2)
        inc ax                                  ; Увеличиваем счетчик степени AX += 1
        shr bx, 1                               ; Сдвигаем число вправо на 1 бит
        loop for_calc_power                     ; Продолжаем цикл до проверки всех 16 бит (или пока кратность не кончится)
    ; Вывод сообщения о равенстве нулю введённого числа
    zero_num:
        mov dx, offset zero_num_str             
		mov ah, 09h
		int 21h
        jmp FIN_PROC                            ; Пропускаем вывод степени
    ; Вывод вычисленной степени двойки, которой кратно введённое число (из AX)
    print_power:
        mov bl, 10                              ; BL = 10 (на что будем делить, основание системы счисления)
        div bl                                  ; AL = AX / 10 (AH - остаток)
        mov dh, ah                              ; DH = AX % 10
        mov ah, 02h                             ; AH = функция вывода символа
        cmp al, 0                               ; AX / 10 <=> 0 (были ли десятки в выводимом числе?)
        jz print_sec_part                       ; если десятков не было, сразу переходим к выводу единиц
    ; Вывод десятков в выводимом числе
    print_first_part:
        mov dl, al                              ; DL = AX / 10
        add dl, '0'                    	        ; конвертируем цифру в её в ASCII код
        int 21h                                 ; Вывод цифры из DL
    ; Вывод единиц в выводимом числе
    print_sec_part:
        mov dl, dh                              ; DL = AX % 10
        add dl, '0'                    	        ; конвертируем цифру в её в ASCII код
        int 21h                                 ; Вывод цифры из DL
    ; Завершение функции
    FIN_PROC:
        call do_enter                           ; Вывод "enter"
        ret							            ; Возврат из функции
	output_power_2 endp

CSEG ENDS
END