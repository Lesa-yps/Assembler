comment @
автор - Талышева Олеся Николаевна
группа - ИУ7-45Б
лабораторная №4 по ассемблеру
вид матрицы - прямоугольная цифровая
Задание: заменить значения в чётных строках последними цифрами суммы соответствующих элементов предыдущей и следующей строки.
@

STK SEGMENT PARA STACK 'STACK'
    db 100 dup(0)
STK ENDS

DATA1 SEGMENT PARA PUBLIC 'DATA'
    N db 0                                  ; Переменная для хранения количества строк
    M db 0                                  ; Переменная для хранения количества столбцов
    arr db 9*9 dup(0)                       ; Массив 9*9
    MAX_N db 0009h                          ; Максимальное количество столбцов/строк
    err_str	DB	'Error!$'                   ; Строка для вывода ошибки
    res_str	DB	'Result:$'                  ; Строка для вывода результата
    input_N_str	DB	'Input N:$'             ; Строка для запроса ввода количества строк
    input_M_str	DB	'Input M:$'             ; Строка для запроса ввода количества столбцов
    input_arr_str	DB	'Input arr:$'       ; Строка для запроса ввода массива
    off_str dw 0                            ; Переменная для хранения адреса строки для вывода
DATA1 ENDS

CSEG SEGMENT PARA PUBLIC 'CODE'
    assume CS:CSEG, DS:DATA1, SS:STK

; Процедура вывода символа перевода строки и возврата каретки ("enter")
do_enter:
    mov ah, 2
    mov dl, 10
	int 21h
	mov dl, 13
	int 21h
	ret

; Процедура вывода пробела
do_space:
    mov ah, 2
    mov dl, 20h
	int 21h
    ret

; Процедура вывода строки
echo_str:
    call do_enter
    MOV	AH,	09h             ; Функция вывода строки
    MOV	DX,	off_str         ; Адрес строки для вывода
    INT	21h
    RET

; Процедура вывода содержимого регистра DL
output:
	mov ah, 2
	int 21h
	call do_space
	retf

main:
    ; Начало программы
    mov ax, DATA1
    mov ds, ax

    ; Ввод M и N
    mov off_str, offset input_N_str    ; Адрес строки для вывода запроса ввода количества строк (N)
    call echo_str                      ; Выводим запрос на ввод количества строк (N)
    call do_space                      ; Выводим пробел
    mov ah, 01h                        ; Функция ввода символа с клавиатуры
    int 21h                            ; Ввод символа (N)
    sub al, 30h                        ; Конвертация из символа в десятичное число (из ASCII-кода цифры, ASCII-код символа '0' равен 30h)
    cmp al, 0                          ; Проверка на ввод нуля (количество столбцов N == 0?)
    je ERR_END_PROGA                   ; if N == 0: goto ERR_END_PROGA
    mov N, al                          ; Сохраняем N
    mov off_str, offset input_M_str    ; Адрес строки для вывода запроса ввода количества столбцов (M)
    call echo_str                      ; Выводим запрос на ввод количества столбцов (M)
    call do_space                      ; Выводим пробел
    mov ah, 01h                        ; Функция ввода символа с клавиатуры
    int 21h                            ; Ввод символа (M)
	sub al, 30h                        ; Конвертация из символа в десятичное число (из ASCII-кода цифры, ASCII-код символа '0' равен 30h)
    cmp al, 0                          ; Проверка на ввод нуля (количество строк M == 0?)
    je ERR_END_PROGA                   ; if M == 0: goto ERR_END_PROGA
    mov M, al                          ; Сохраняем M

    ; Ввод массива
    mov off_str, offset input_arr_str  ; Адрес строки для вывода запроса ввода массива (arr)
    call echo_str                      ; Выводим запрос на ввод массива (arr)
    xor si, si                         ; Счетчик индекса массива si = 0
NEW_STR_IN:
    call do_enter                      ; В начале каждой новой строки выводится "enter"
label_i:
    xor ax, ax                         ; AX = 0
    mov ah, 01h                        ; Функция ввода символа с клавиатуры
    int 21h                            ; Ввод символа (в al)
	sub al, 30h                        ; Конвертация из символа в десятичное число (из ASCII-кода цифры, ASCII-код символа '0' равен 30h)
    mov arr[si], al                    ; Сохраняем символ в массив (arr[si] = al)
    call do_space                      ; Выводим пробел
inc_i:
    inc si                             ; Увеличиваем счетчик индекса массива (si += 1)
    ; Проверка не всё ли мы прочитали? (N * MAX_N = N * 9 - это максимальное количество символов которые нужно считать)
	xor ax, ax                         ; AX = 0
    mov al, N                          ; AL = N
    mul MAX_N                          ; AX = N * 9 (Умножаем N на MAX_N)
    cmp si, ax                         ; si <=> N * 9 (Сравниваем счетчик с результатом умножения)
    jae FIN_INPUT                      ; if si >= N * 9: goto FIN_INPUT (если всё прочитали, завершаем ввод, идём к обработке)
    ; Если текущий индекс массива меньше максимального (прочитали не всё), продолжаем ввод элементов массива
    ; Если M < MAX_N, есть элементы массива, которые должны остаться нулями
    ; далее проверка текущего символа не должен ли он остаться нулём и не читаться 
    MOV ax, si                         ; AX = si (делимое)
    XOR dx, dx                         ; DX = 0
    MOV Dl, MAX_N                      ; DL = MAX_N = 9 (делитель)
    DIV Dl                             ; AH = si % 9 (нашли текущий индекс столбца, AH = остаток от деления AX на DL, результат в AL)
    CMP AH, M                          ; si % 9 <=> M (сравниваем текущий индекс столбца с заданным пользователем)
    jae inc_i                          ; if (si % 9) >= M:goto inc_i (сразу к увеличению индекса, не читая символ)
    cmp ah, 0                          ; si % 9 <=> 0 (сравниваем текущий индекс столбца с нулевым)
    je NEW_STR_IN                      ; if si % 9 == 0: goto NEW_STR_IN (если началась новая строка надо "enter" вывести)
    jmp label_i                        ; if (SI % 9) < M: goto label_i (переход к чтению символа без вывода "enter")

FIN_INPUT:                             ; Конец ввода массива, начинаем обработку
    ; Обработка массива
    ; Обработка первой строки массива (первая обрабатывается отдельно, т.к. она четная, но у неё нет предыдущей)
    ; Проверка а не всего ли одна строка в массиве?
    xor ax, ax                         ; AX = 0
    MOV Al, N                          ; AL = N
    CMP Al, 1                          ; N <=> 1
    JLE END_WORK                       ; if N <= 1: goto END_WORK
    XOR cx, cx                         ; CX = 0
    MOV Cl, M                          ; CL = M (хранит количество столбцов в массиве)
    XOR si, si                         ; si = 0 (счетчик индекса массива)
FOR_J1:                                ; Метка начала цикла для j1
    XOR ax, ax                         ; AX = 0
    MOV al, MAX_N                      ; AL = MAX_N = 9
    ADD si, ax                         ; SI += 9 (перешли индексом массива на элемент "под текущим")
    xor ax, ax                         ; AX = 0
    MOV al, arr[si]                    ; AL = ARR[si + 9] (считали элемент из массива "под текущим", байт)
    XOR dx, dx                         ; DX = 0
    MOV Dl, 10                         ; DL = 10
    DIV Dl                             ; AH = AX % 10 = ARR[si + 9] % 10 (это перестраховка, т.к. цифра-элемент_массива < 10)
    MOV dl, MAX_N                      ; DL = 9
    SUB si, dx                         ; SI -= 9 (вернулись к индексу обрабатываемого элемента)
    MOV arr[si], Ah                    ; ARR[si] = AH = ARR[si + 9] % 10
    INC si                             ; si++ (увеличили индекс / перешли к следующему элементу)
    CMP si, cx                         ; SI <=> M
    JL FOR_J1                          ; if SI < M: goto FOR_J1 (обрабатывается одна строка)


    ; проверки N перед обработкой срединных строк
    xor ax, ax                         ; AX = 0
    MOV Al, N                          ; AL = N
    CMP Al, 2                          ; N <=> 2
    JE END_WORK                        ; if N == 2: goto END_WORK (т.к. единственную нуждавшуюся в обработке строку мы уже обработали)
    CMP Al, 3                          ; N <=> 3
    JE LAST                            ; if N == 3: goto LAST (т.к. нужно обработать ещё только последнюю строку, а она обрабатывается отдельно)
; Обработка строк посередине (четные = последняя цифра суммы соотдетствующих соседних строк)
    XOR cx, cx                         ; CX = 0
    MOV Cl, MAX_N                      ; CL = MAX_N = 9 (хранит максимальное количество строк / столбцов в массиве)
    XOR dx, dx                         ; DX = 0
    MOV Dl, 10                         ; DL = 10 (хранит то, остаток на что будем брать)
    MOV si, cx                         ; si = MAX_N
NEXT_STR:
    add si, cx                         ; SI += 9 (перешли индексом массива на следующую строку)
    ; si >= (N - 1) * MAX_N: переход к LAST
    xor ax, ax                         ; AX = 0
    mov al, N                          ; AL = N
    dec al                             ; AL = N - 1
    mul cl                             ; AX = (N - 1) * 9
    cmp si, ax                         ; SI <=> (N - 1) * 9
    jae LAST                           ; if SI >= (N - 1) * 9: goto LAST (проверка а не всё ли уже посередине обработали?)
FOR_J2:                                ; Метка начала цикла для j2
    SUB si, cx                         ; SI -= 9 (перешли индексом массива на элемент "над текущим")
    xor ax, ax                         ; AX = 0
    MOV al, arr[si]                    ; AL = ARR[si - 9] (считали элемент из массива "над текущим", байт)
    ADD si, cx                         ; SI += 9 (перешли индексом массива на текущий элемент)
    ADD si, cx                         ; SI += 9 (перешли индексом массива на элемент "под текущим")
    ADD al, arr[si]                    ; AL = ARR[si - 9] + ARR[si + 9] (добавили элемент из массива "под текущим" к "над текущему")
    SUB si, cx                         ; SI -= 9 (перешли индексом массива на текущий элемент)
    DIV Dl                             ; AH = AX % 10 = (ARR[si - 9] + ARR[si + 9]) % 10
    MOV arr[si], Ah                    ; ARR[si] = (ARR[si - 9] + ARR[si + 9]) % 10
    INC si                             ; SI += 1
    mov ax, si                         ; AX = SI
    div cl                             ; AH = SI % 9
    CMP ah, 0                          ; SI % 9 <=> 0
    JE NEXT_STR                        ; if SI % 9 == 0: goto NEXT_STR (обрабатываемая строка кончилась, идём к следующей)
    JMP FOR_J2                         ; else: goto FOR_J2 (обрабатываемая строка не закончилась, продолжаем её обработку)


LAST:
; Обработка последней строки (если она четная)
    ; Проверка последней строки на четность
    xor ax, ax                         ; AX = 0
    MOV Al, N                          ; AL = N (количество строк)
    DEC AL                             ; AL = N - 1
    MOV Dl, 2                          ; DL = 2
    DIV Dl                             ; AH = AX % 2 = (N - 1) % 2
    CMP AH, 1                          ; (N - 1) % 2 <=> 1 (последняя строка нечётная?)
    JE END_WORK                        ; if (N - 1) % 2 == 1: goto END_WORK (если последняя строка нечетная, переходим к концу обработки)
    ; А не совпадает ли последняя строка с первой? (перестраховка, т.к. сюда в таком случае бы не зашло)
    xor ax, ax                         ; AX = 0
    MOV Al, N                          ; AL = N (количество строк)
    DEC AL                             ; AL = N - 1
    CMP AL, 0                          ; (N - 1) <=> 0
    JE END_WORK                        ; if (N - 1) == 0: goto END_WORK (Если первая строка совпадает с последней, переходим к концу обработки)
    ; Готовим регистры к самой обработке
    mov CL, M                          ; CL хранит M (количество столбцов)
    XOR dx, dx                         ; DX = 0
    MOV Dl, 10                         ; DL = 10 (хранит то, остаток на что будем брать)
    xor bx, bx                         ; BX = 0
    mov bl, MAX_N                      ; BL = MAX_N = 9 (хранит максимальное количество строк/столбцов)
    mul MAX_N                          ; AL = (N - 1) * MAX_N = (N - 1) * 9
    mov si, ax                         ; SI = (N - 1) * 9 (счетчик цикла на начало последней строки)
FOR_J3:                                ; Метка начала цикла для j3
    SUB si, bx                         ; SI -= 9
    xor ax, ax                         ; AX = 0
    MOV al, arr[si]                    ; AL = ARR[si - 9] (считали элемент из массива "над текущим", байт)
    DIV Dl                             ; AH = AX % 10 = ARR[si - 9] % 10  (это перестраховка, т.к. цифра-элемент_массива < 10)
    ADD si, bx                         ; SI += 9 (перешли индексом массива на текущий элемент)
    MOV arr[si], AH                    ; ARR[si] = AH = ARR[si - 9] % 10
    INC si                             ; SI++ (увеличили индекс / перешли к следующему элементу)
    mov ax, si                         ; AX = SI
    DIV BL                             ; AH = AX % MAX_N = SI % 9
    CMP ah, cl                         ; SI % 9 <=> M
    JL FOR_J3                          ; if (SI % 9) < M: goto FOR_J3 (если последняя строка не закончилась, продолжаем её обработку)


END_WORK:                              ; Метка конца обработки
    ; Вывод массива
    mov off_str, offset res_str        ; Записываем в вспомогательную переменную адрес строки вывода "Result:"
    call echo_str                      ; Вызывает функцию для вывода строки "Result:"
    MOV Bl, MAX_N                      ; BL = MAX_N = 9 (хранит максимальное количество строк/столбцов)
    mov si, 0                          ; Счетчик индекса массива si = 0
NEW_STR_OUT:
    call do_enter                      ; В начале каждой новой строки выводится "enter"
label_j:
    xor ax, ax                         ; AX = 0
    mov dl, arr[si]                    ; DL = arr[SI]
    add dl, 30h                        ; Конвертация из десятичного числа в символ (ASCII)
    push CS
    call output                        ; Вызов функции для вывода текущего элемента массива
inc_si:
    inc si                             ; Увеличиваем счетчик индекса массива (si += 1)
    ; Проверка: не закончился ли массив?
	xor ax, ax                         ; AX = 0
    mov al, MAX_N                      ; AL = MAX_N = 9
    mul N                              ; AX = MAX_N * N = 9 * N
    cmp si, ax                         ; SI <=> 9 * N (А не закончился ли массив?)
    jae END_PROGA                      ; if si >= (N * 9): goto END_PROGA (если массив закончился, переходим к завершению программы)
    ; if (si % MAX_N > M): переход к inc_si
    MOV ax, si                         ; AX = SI
    DIV Bl                             ; AH = ax % MAX_N = si % 9
    cmp ah, M                          ; (si % 9) <=> M
    jae inc_si                         ; if (si % 9 >= M): goto inc_si (пропускаем вывод незаполненных элементов)
    cmp ah, 0                          ; (si % 9) <=> 0
    je NEW_STR_OUT                     ; if (si % 9) == 0: goto NEW_STR_OUT (выводим "enter" перед каждой новой строкой)
    jmp label_j                        ; продолжаем вывод массива (прыжок для элементов 0 < si % 9 < M)


ERR_END_PROGA:                         ; Вывод сообщения об ошибке перед завершением программы
    mov off_str, offset err_str        ; Записываем в вспомогательную переменную адрес строки вывода "Error!"
    call echo_str                      ; Вызывает функцию для вывода строки "Error!"
END_PROGA:                             ; Завешение программы
    call do_enter                      ; Выводится "enter"
    mov ax, 4c00h
    int 21h
CSEG ENDS

END main
