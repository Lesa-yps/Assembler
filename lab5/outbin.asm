EXTRN Num: word
EXTRN do_enter: near
EXTRN do_space: near

PUBLIC output_unsign_2

DSEG SEGMENT PARA PUBLIC USE16 'DATA'
	out_bin_str db "Print a number in unsigned binary: $" ; "Вывод числа в беззнаковом двоичном виде: "
DSEG ENDS

CSEG SEGMENT PARA PUBLIC USE16 'CODE'
	assume CS:CSEG, DS:DSEG
	; Вывод числа в беззнаковом двоичном формате
	output_unsign_2 proc near
		mov dx, offset out_bin_str         	    ; Вывод сообщения о выводимом числе
		mov ah, 09h
		int 21h
		call do_enter                           ; Вывод "enter"   
    	mov bx, Num                         	; Записываем обрабатываемое число в регистр bx
    	mov cx, 16                          	; число 16-тибитное -> выведем 16 двоичных цифр
		mov dh, 4								; через каждые 4 символа будет выводиться пробел
    	out_bin_num:
			mov dl, 0
			; Команда sal осуществляет сдвиг влево всех битов операнда (bx). Старший бит bx поступает в флаг CF
			sal bx, 1                  	
			; Выполняет инструкцию adc (сложение с переносом) между регистром DL, ASCII-кодом символа '0'
			; и CF (он же старший бит до сдвига)
			adc dl, '0'
			mov ah, 02h                         ; AH = функция вывода символа
			int 21h                         	; Вывод двоичной цифры из DL
			; выводить пробел? (Через каждые 4 символа будет выводиться пробел)
			mov ax, cx							; AX = CX
			dec ax								; AX = CX - 1 (так как один символ уже вывели)
			DIV DH                             	; AH = AX % DH = CX % 4
			cmp ah, 0							; CX % 4 <=> 0
			jnz continue						; if (CX % 4 != 0): goto continue (не выводим пробел)
			call do_space						; Вывод пробела
			continue:							; Метка, чтобы проппускать вывод пробела
				loop out_bin_num				; ...и так 16 раз...
		call do_enter                           ; Вывод "enter"
    	ret										; Возврат из функции
	output_unsign_2 endp

CSEG ENDS
END