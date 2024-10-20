global get_root

%define count_iters rdi

section .data 
    eps dq 0.0001                 ; Точность вычислений
    x dq 0                        ; Переменная для x, с которым работает функция
    x_low dq 0                    ; Левая граница по х
    x_high dq 0                   ; Правая граница по х
    mid dq 0                      ; Средний x (mid)
    f_now dq 0                    ; Значение функции с текущим mid
    buffer dq 0                   ; Вспомогательная переменная
    five dq 5                     ; Добавляемое значение (для func)
    two dq 5                      ; Делитель (для нового mid)
    

section .text

; Вычисление функции f(x) = sin(x*x+5*x)
func:
    fst qword [x]
    fld qword [x]                 ; Загружаем значение x на вершину FPU стека
    fmulp                         ; Умножаем x на x (x^2)
    fld qword [x]                 ; Загружаем значение x на вершину FPU стека
    fld qword [five]              ; Загружаем значение 5 на вершину FPU стека
    fmulp                         ; Умножаем x на 5 (x*5)
    faddp                         ; Добавляем 5*x к x^2
    fsin                          ; Вычисляем sin(x*x+5*x)
    ret                           ; Возвращаемся из функции


get_root:
    ; Выгрузка переданных параметров
    fstp qword [x_low]
    fstp qword [x_high]
    ; if (pf(low) > pf(high))
    fld qword [x_high]      ; Загружаем значение конечного x на FPU стек
    call func               ; Вызываем func, вычисляем f(x_high)
    fld qword [x_low]       ; Загружаем значение начального x на FPU стек
    call func               ; Вызываем func, вычисляем f(x_low)
    fcomip st(0), st(1)
    jc skip_change
    ; swap(low, high)
    fstp qword [x_low]
    fstp qword [x_high]
    skip_change:
        fstp qword [buffer]
        fstp qword [buffer]
    jmp change_mid
    ; while (fabs(f(mid)) > eps && count_iters > 0)
    while_eps:
        ; while (fabs(b - a) > eps)
        fld qword [f_now]
        fabs
        fld qword [eps]
        fcomip st(0), st(1)
        jnc fin_while
        fstp qword [buffer]
        cmp count_iter, 0             ; Проверяем, не исчерпаны ли итерации
        jle fin_while                 ; Если итерации исчерпаны, переходим к fin_while
        fstp qword [buffer]
        fld qword [f_now]
        fldz
        fcomip st(0), st(1)
        jc greater_than_zero
        jmp less_than_zero
        greater_than_zero :
            fstp qword [buffer]
            fld qword [mid]
            fstp qword [x_high]
            jmp change_count_iter
        less_than_zero :
            fstp qword [buffer]
            fld qword [mid]
            fstp qword [x_low]
        change_count_iter :
            ; Декрементируем количество оставшихся итераций
            dec count_iter
        change_mid:
            fld qword [x_low]
            fld qword [x_high]
            fadd    
            fdiv two
            fstp qword [mid]
            fstp qword [buffer]
        fld mid
        call func
        fstp f_now
        jmp while_eps             ; Переходим к началу цикла

    fin_while:
        movsd xmm0, qword [mid]     ; Загружаем конечное значение x (mid) в xmm0
        ret                         ; Возвращаемся из функции