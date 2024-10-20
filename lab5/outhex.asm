EXTRN Num: word
EXTRN do_enter: near
EXTRN do_space: near

PUBLIC output_trunc_sign_16

DSEG SEGMENT PARA PUBLIC USE16 'DATA'
	; Вывод усеченного (8 разрядного) знакового числа в 16 с\с
    out_hex_str db "Print a truncated (8-bit) signed number in 16s\s: $"
DSEG ENDS

CSEG SEGMENT PARA PUBLIC USE16 'CODE'
	assume CS:CSEG, DS:DSEG

	output_trunc_sign_16 proc near
		mov dx, offset out_hex_str         	; Вывод сообщения о выводимом числе
		mov ah, 09h
		int 21h
		call do_enter                       ; Вывод "enter" 
    	mov bx, Num                         ; Записываем обрабатываемое число в регистр bx
		mov bh, 0							; "Усекаем" число до 8 разрядов
		; проверяем знак числа (старший бит) (hex 7Fh = bin 0111 1111)
    	cmp bl, 7Fh                         
    	jna no_sign							; if (BL <= 7Fh): goto no_sign (число >= 0 - пропускаем обработку отрицательного)
		; Обработка отрицательного числа:
    	mov dl, '-'
    	mov ah, 02h
    	int 21h                             ; вывод минуса
		call do_space						; вывод пробела
    	neg bx                              ; меняем знак числа
		; вывод цифр числа
    no_sign:
    	mov cl, 4
    	rol bl, cl                          ; циклически сдвигаем на 4 бита влево, чтобы старшие 4 бита оказались в конце и вывелись первыми
    	mov ah, 02h                         ; выставляем функцию вывода символа
		mov cx, 2                           ; будут выводиться 2 шестнадцатеричные цифры (всего 8 бит, по 4  бита на каждую)
    for_outhex_char:						; Цикл вывода числа посимвольно
		mov dl, bl                      	; записали наше число в DL
		and dl, 0Fh                     	; оставили в DL только последнюю цифру (то, что выше занулили)
		; если текущий символ - это цифра (<= 9), конвертируем его в ASCII код и выводим
		cmp dl, 9                       
		jna this_is_digit
		; работа с текущим символом как с буквой
		this_is_alpha:						
			sub dl, 10   					; вычитаем из символа 10, что приводит числа 10 - 15 (A-F) к 0 - 5
			add dl, 'A'                    	; конвертируем символ в ASCII код (буквы A-F)
			jmp print_this					; пропускаем работу как с цифрой и переходим сразу к выводу
		; работа с текущим символом как с цифрой
		this_is_digit:						
			add dl, '0'                    	; конвертируем цифру в её в ASCII код
		; Вывод текущего символа
		print_this:
			int 21h                         ; Вывод результирующего 16-ичного символа
		; Переход к следующему символу в числе
		mov dx, cx                      	; запоминаем счётчик в DX = CX
		mov cl, 4							; CL = 4 (будем двигать на размер одной 16-ичной цифры)
		rol bl, cl                      	; циклически сдвигаем на 4 бита влево, чтобы следующие 4 бита оказались в конце и вывелась следующаяя цифра
		mov cx, dx                      	; возвращаем значение счётчика CX = DX
		loop for_outhex_char				; в цикле выводим все цифры числа в 16-ичном виде
	call do_enter                       	; Вывод "enter" 
	ret
output_trunc_sign_16 endp

CSEG ENDS
END