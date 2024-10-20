.model small

.stack 100h

public EXIT_SUCCESS
public ALLOCATION_ERROR
public INDEX_OUT_OF_RANGE

EXIT_SUCCESS = 0
ALLOCATION_ERROR = 10
INDEX_OUT_OF_RANGE = 30

.data
    vector struct
        len dw 1 dup(?)
        arr dw 1 dup(?)
    vector ends
	; Пример данных вектора
	vec_data dw 5, 0, 1, 2, 3, 4
    vector_test vector <>

.code
; Получить значение байта из массива (Часть 1)
; Аргументы:
; ds:dx – сегмент и смещение до структуры
; cx – позиция байта
; Результат:
; bl – значение байта
; ax – результат выполнения функции:
;    0 - успех
;    1 - ошибка: позиция вне диапазона
get proc
	; check cx < len(arr)
    mov si, dx
	mov ax, [si]
	cmp cx, ax
	jae err_exit
	; bl = arr[cx]
	add si, 2
	mov ax, [si]
	add ax, cx
	mov si, ax
	mov bl, [si]
	success_exit:
		xor ax, ax
		jmp exit
	err_exit:
		mov ax, INDEX_OUT_OF_RANGE
	exit:
		ret
get endp

main:
	mov ax, @data
    mov ds, ax
	mov es, ax

    ; Инициализация vector_test
    lea si, vec_data
    mov ax, [si]
    mov vector_test.len, ax
    add si, 2
    mov ax, si
    mov vector_test.arr, ax

    mov dx, offset vector_test
    ; cx = 3 (пример)
    mov cx, 3

    ; Вызов функции получения значения байта из массива
    call get

    ; Вывод результата (ax = 0 - успех, 1 - ошибка)
	mov ah, 02h
	mov dl, bl
	int 12h
	
	mov dl, al
	add al, '0'
	int 21h

    mov ah, 4Ch
    int 21h
end main