; указывает размер предоставляемого кода в битах, в данном случае 64 бита
bits 64
; указывает, что функция main будет глобально видимой и доступной другим функциям и объектам
global main
; определяет константу GTK_WIN_POS_CENTER со значением 1 для позиционирования окна по центру
%define GTK_WIN_POS_CENTER 1
; определяет константу GTK_WIN_WIDTH со значением 750 для ширины окна
%define GTK_WIN_WIDTH 750
; определяет константу GTK_WIN_HEIGHT со значением 150 для высоты окна
%define GTK_WIN_HEIGHT 150
; определяет константу GTK_ORIENTATION_HORIZONTAL со значением 1 для горизонтальной ориентации виджетов
%define GTK_ORIENTATION_HORIZONTAL 1
; определяет константу LAYOUT_BOX_SPACING со значением 10 для промежутка между элементами в контейнере
%define LAYOUT_BOX_SPACING 10
; определяет константу ENTRY_SIZE со значением 1024 для размера элемента ввода
%define ENTRY_SIZE 1024

; функция получения корня !!!
extern get_root
extern exit
; для нахождения корня
    extern get_root
; для расположения объектов
; создание нового контейнера для расположения объектов в виде прямоугольной области
    extern gtk_box_new
; для создания кнопки
; добавление дочернего виджета в контейнер
    extern gtk_container_add
; создание новой кнопки с заданным текстовым содержимым
    extern gtk_button_new_with_label
; Для создание полей ввода/вывода
; создание нового буфера для поля ввода/вывода
    extern gtk_entry_buffer_new
; получение текста из поля ввода/вывода
    extern gtk_entry_get_text
; создание нового поля ввода/вывода с указанным буфером
    extern gtk_entry_new_with_buffer
; установка текста для отображения в поле ввода/вывода, когда оно пустое
    extern gtk_entry_set_placeholder_text
; создание новой метки (label)
    extern gtk_label_new
; установка текста для метки
    extern gtk_label_set_text
; Для работы с текстом
; запись отформатированных данных в строку
    extern sprintf
; считывание данных из строки с учетом заданного формата
    extern sscanf
; установка текста в поле ввода/вывода
    extern gtk_entry_set_text
; Для работы с window
; инициализация библиотеки GTK+
    extern gtk_init
; запуск цикла обработки событий GTK+
    extern gtk_main
; установка значений свойств GObject
    extern g_object_set
; выход из цикла обработки событий GTK+
    extern gtk_main_quit
; создание нового окна
    extern gtk_window_new
; отображение всех элементов виджета и его дочерних элементов
    extern gtk_widget_show_all
; установка обработчика сигнала для виджета
    extern g_signal_connect
; установка заголовка окна
    extern gtk_window_set_title
; установка обработчика сигнала для виджета с возможностью передачи дополнительных данных
    extern g_signal_connect_data
; установка положения окна
    extern gtk_window_set_position
; получение значений настроек по умолчанию
    extern gtk_settings_get_default
; установка минимального размера виджета
    extern gtk_widget_set_size_request
; установка размера окна по умолчанию
    extern gtk_window_set_default_size
; создание диалогового окна с сообщением
    extern gtk_message_dialog_new
; запуск выполнения диалогового окна
    extern gtk_dialog_run
; уничтожение виджета
    extern gtk_widget_destroy

section .data
    result_text_buffer          db ENTRY_SIZE dup (0)
    title                       db "y=sin(x^2 + 5*x)", 0
    solve_button_title          db "find the root", 0

    start_x_placeholder_text    db "Enter left border", 0
    end_x_placeholder_text      db "Enter right border", 0
    iters_num_placeholder_text  db "Enter the maximum number of iterations", 0
    result_placeholder_text     db "Result", 0

    result_format               db "%lf", 0
    start_end_format            db "%lf", 0
    iters_num_format            db "%d", 0

    float_start                 dq 0
    float_end                   dq 0
    int_iters_num               dq 0

section .bss
    window:             resq 1  ; Окно
    layout_box:         resq 1  ; Контейнер виджетов

    solve_button:       resq 1  ; Кнопка решить
    start_x_entry:      resq 1  ; Поле ввода стартового х
    end_x_entry:        resq 1  ; Поле ввода конечного х
    iters_num_entry:    resq 1  ; Поле ввода максимального чисдда итераций
    result_label:       resq 1  ; Поле вывода результата
    message_dialog:     resq 1  ; Диалоговое окно для вывода результата

    ; Буферы полей ввода/вывода
    start_x_buffer:     resq 1 
    end_x_buffer:       resq 1 
    iters_num_buffer:   resq 1
 
section .rodata
    signal:
    .destroy: db "destroy", 0
    .clicked: db "clicked", 0


section .text

_destroy_window:
    ; выход из цикла обработки событий GTK+
    jmp gtk_main_quit

solve_command:

    ; достаём число из окошка ввода конца отрезка
    push rbp                            ; Сохраняем базовый указатель
    mov rbp, rsp                        ; Устанавливаем базовый указатель на текущий указатель стека
    mov rdi, qword [rel end_x_entry]    ; Загружаем адрес переменной end_x_entry в регистр rdi
    call gtk_entry_get_text             ; Вызываем функцию gtk_entry_get_text, чтобы получить текст из поля ввода GTK
    mov rdi, rax                        ; Перемещаем результат (текст из поля ввода) в rdi регистр
    mov rbx, rax                        ; Копируем результат (текст) в rbx регистр
    mov rsi, start_end_format           ; Загружаем строку формата для конца отрезка в rsi регистр
    mov rdx, float_end                  ; Загружаем адрес переменной float_end в rdx регистр
    call sscanf                         ; Вызывается функция sscanf, чтобы проанализировать текст как число с плавающей запятой и записать по адресу float_end
    pop rbp                             ; Восстанавливаем базовый указатель


    ; достаём число из окошка ввода начала отрезка
    push rbp                            ; Сохраняем базовый указатель
    mov rbp, rsp                        ; Устанавливаем базовый указатель на текущий указатель стека
    mov rdi, qword [rel start_x_entry]  ; Загружаем адрес переменной start_x_entry в регистр rdi
    call gtk_entry_get_text             ; Вызываем функцию gtk_entry_get_text, чтобы получить текст из поля ввода GTK
    mov rdi, rax                        ; Перемещаем результат (текст из поля ввода) в rdi регистр
    mov rbx, rax                        ; Копируем результат (текст) в rbx регистр
    mov rsi, start_end_format           ; Загружаем строку формата для начала отрезка в rsi регистр
    mov rdx, float_start                ; Загружаем адрес переменной float_start в rdx регистр
    call sscanf                         ; Вызывается функция sscanf, чтобы проанализировать текст как число с плавающей запятой и записать по адресу float_start
    pop rbp                             ; Восстанавливаем базовый указатель


    ; достаём число из окошка ввода максимального количества итераций
    push rbp                                ; Сохраняем базовый указатель
    mov rbp, rsp                            ; Устанавливаем базовый указатель на текущий указатель стека
    mov rdi, qword [rel iters_num_entry]    ; Загружаем адрес переменной iters_num_entry в регистр rdi
    call gtk_entry_get_text                 ; Вызываем функцию gtk_entry_get_text, чтобы получить текст из поля ввода GTK
    mov rdi, rax                            ; Перемещаем результат (текст из поля ввода) в rdi регистр
    mov rbx, rax                            ; Копируем результат (текст) в rbx регистр
    mov rsi, iters_num_format               ; Загружаем строку формата для количества итераций в rsi регистр
    mov rdx, int_iters_num                  ; Загружаем адрес переменной int_iters_num в rdx регистр
    call sscanf                             ; Вызывается функция sscanf, чтобы проанализировать текст как целое число и записать по адресу int_iters_num
    pop rbp                                 ; Восстанавливаем базовый указатель
   
    mov rdi, qword [int_iters_num]      ; эта команда загружает значение, хранящееся по адресу int_iters_num, в регистр rdi (qword = 64-битное значение).
    movq xmm0, qword [float_start]      ; данная команда загружает 64-битное значение, хранящееся по адресу float_start, в регистр xmm0
    movq xmm1, qword [float_end]        ; данная команда загружает 64-битное значение, хранящееся по адресу float_end, в регистр xmm1

    ; функция получения корня
    call get_root
    
    push rbp                            ; Сохраняем базовый указатель
    mov rbp, rsp                        ; Устанавливаем базовый указатель на текущий указатель стека
    mov rdi, result_text_buffer         ; Загружаем адрес переменной result_text_buffer в регистр rdi
    mov rsi, result_format              ; Загружаем строку формата для результата в rsi регистр
    call sprintf                        ; Вызывается функция sprintf, чтобы число с плавающей запятой записать как строку по адресу result_text_buffer
    pop rbp                             ; Восстанавливаем базовый указатель

    
    ; Создание нового message-окна с результатом
    push rbp                           ; Сохраняем базовый указатель
    mov rbp, rsp                       ; Устанавливаем базовый указатель на текущий указатель стека
    mov rdi, qword [rel window]        ; Указатель на родительское окно
    mov rsi, 1                         ; GTK_DIALOG_MODAL
    mov rdx, 2                         ; Тип сообщения (GTK_MESSAGE_INFO)
    mov rcx, 1                         ; Кнопки в диалоговом окне (GTK_BUTTONS_OK)
    mov r8, result_text_buffer         ; Текст сообщения
    call gtk_message_dialog_new
    
    ; Сохранение указателя на диалоговое окно
    mov qword [rel message_dialog], rax

    ; Отображение message-окна
    mov rdi, qword [rel message_dialog]
    call gtk_dialog_run

    ; Уничтожение message-окна после закрытия
    mov rdi, qword [rel message_dialog]
    call gtk_widget_destroy

    ; Восстанавливаем базовый указатель
    pop rbp
    ret



; Entry point of the program
main:
    ; Сохраняем базовый указатель стека
    push rbp
    mov rbp, rsp

    ; Инициализация GTK
    xor rdi, rdi    ; Устанавливаем 0 в rdi (аргумент argc)
    xor rsi, rsi    ; Устанавливаем 0 в rsi (аргумент argv)
    call gtk_init   ; Вызываем gtk_init

    ; Создание главного окна
    xor rdi, rdi                    ; Устанавливаем тип окна в 0 (GTK_WINDOW_TOPLEVEL)
    call gtk_window_new             ; Вызываем gtk_window_new
    mov qword [rel window], rax     ; Сохраняем указатель на окно в переменную window

    ; Установка заголовка окна
    mov rdi, qword [rel window] ; Указатель на окно
    mov rsi, title              ; Указатель на строку заголовка
    call gtk_window_set_title   ; Вызываем gtk_window_set_title

    ; Установка размеров окна
    mov rdi, qword [rel window]         ; Указатель на окно
    mov rsi, GTK_WIN_WIDTH              ; Ширина окна
    mov rdx, GTK_WIN_HEIGHT             ; Высота окна
    call gtk_window_set_default_size    ; Вызываем gtk_window_set_default_size

    ; Установка позиции окна
    mov rdi, qword [rel window]     ; Указатель на окно
    mov rsi, GTK_WIN_POS_CENTER     ; Центрируем окно
    call gtk_window_set_position    ; Вызываем gtk_window_set_position

    ; Подключение сигнала закрытия окна для выхода из GTK main loop
    mov rdi, qword [rel window]   ; Указатель на окно
    mov rsi, signal.destroy       ; Строка "destroy" (сигнал)
    mov rdx, _destroy_window      ; Функция-обработчик сигнала
    xor rcx, rcx                  ; Аргумент 1: пользовательские данные (0)
    xor r8d, r8d                  ; Аргумент 2: флаг (0)
    xor r9d, r9d                  ; Аргумент 3: флаг (0)
    call g_signal_connect_data    ; Вызываем g_signal_connect_data

    ; Создание горизонтального контейнера
    mov rdi, GTK_ORIENTATION_HORIZONTAL ; Горизонтальная ориентация
    mov rsi, LAYOUT_BOX_SPACING         ; Расстояние между элементами
    call gtk_box_new                    ; Вызываем gtk_box_new
    mov qword [rel layout_box], rax     ; Сохраняем указатель на контейнер

    ; Добавление контейнера в главное окно
    mov rdi, qword [rel window]       ; Указатель на окно
    mov rsi, qword [rel layout_box]   ; Указатель на контейнер
    call gtk_container_add            ; Вызываем gtk_container_add

    ; Создание поля ввода start_x с буфером и текстом-заполнителем
    mov rdi, 0                        ; Инициализируем буфер
    mov rsi, -1                       ; Максимальный размер буфера (неограничен)
    call gtk_entry_buffer_new         ; Вызываем gtk_entry_buffer_new
    mov qword [rel start_x_buffer], rax ; Сохраняем указатель на буфер

    mov rdi, qword [rel start_x_buffer] ; Указатель на буфер
    call gtk_entry_new_with_buffer     ; Создаем поле ввода с буфером
    mov qword [rel start_x_entry], rax ; Сохраняем указатель на поле ввода

    mov rdi, qword [rel start_x_entry] ; Указатель на поле ввода
    mov rsi, start_x_placeholder_text  ; Текст-заполнитель
    call gtk_entry_set_placeholder_text ; Вызываем gtk_entry_set_placeholder_text

    mov rdi, qword [rel layout_box]    ; Указатель на контейнер
    mov rsi, qword [rel start_x_entry] ; Указатель на поле ввода
    call gtk_container_add             ; Добавляем поле ввода в контейнер

    ; Создание поля ввода end_x с буфером и текстом-заполнителем
    mov rdi, 0                        ; Инициализируем буфер
    mov rsi, -1                       ; Максимальный размер буфера (неограничен)
    call gtk_entry_buffer_new         ; Вызываем gtk_entry_buffer_new
    mov qword [rel end_x_buffer], rax ; Сохраняем указатель на буфер

    mov rdi, qword [rel end_x_buffer] ; Указатель на буфер
    call gtk_entry_new_with_buffer    ; Создаем поле ввода с буфером
    mov qword [rel end_x_entry], rax  ; Сохраняем указатель на поле ввода

    mov rdi, qword [rel end_x_entry]  ; Указатель на поле ввода
    mov rsi, end_x_placeholder_text   ; Текст-заполнитель
    call gtk_entry_set_placeholder_text ; Вызываем gtk_entry_set_placeholder_text

    mov rdi, qword [rel layout_box]   ; Указатель на контейнер
    mov rsi, qword [rel end_x_entry]  ; Указатель на поле ввода
    call gtk_container_add            ; Добавляем поле ввода в контейнер

    ; Создание поля ввода числа итераций с буфером и текстом-заполнителем
    mov rdi, 0                          ; Инициализируем буфер
    mov rsi, -1                         ; Максимальный размер буфера (неограничен)
    call gtk_entry_buffer_new           ; Вызываем gtk_entry_buffer_new
    mov qword [rel iters_num_buffer], rax ; Сохраняем указатель на буфер

    mov rdi, qword [rel iters_num_buffer] ; Указатель на буфер
    call gtk_entry_new_with_buffer       ; Создаем поле ввода с буфером
    mov qword [rel iters_num_entry], rax ; Сохраняем указатель на поле ввода

    mov rdi, qword [rel iters_num_entry] ; Указатель на поле ввода
    mov rsi, iters_num_placeholder_text  ; Текст-заполнитель
    call gtk_entry_set_placeholder_text  ; Вызываем gtk_entry_set_placeholder_text

    mov rdi, qword [rel layout_box]      ; Указатель на контейнер
    mov rsi, qword [rel iters_num_entry] ; Указатель на поле ввода
    call gtk_container_add               ; Добавляем поле ввода в контейнер

    ; Создание кнопки решения
    mov rdi, solve_button_title           ; Текст кнопки
    call gtk_button_new_with_label        ; Создаем кнопку с текстом
    mov qword [rel solve_button], rax     ; Сохраняем указатель на кнопку

    mov rdi, qword [rel layout_box]       ; Указатель на контейнер
    mov rsi, qword [rel solve_button]     ; Указатель на кнопку
    call gtk_container_add                ; Добавляем кнопку в контейнер

    ; Подключение события нажатия кнопки к функции solve_command
    mov rdi, qword [rel solve_button]     ; Указатель на кнопку
    mov rsi, signal.clicked               ; Сигнал "clicked"
    mov rdx, solve_command                ; Функция-обработчик сигнала
    xor rcx, rcx                          ; Аргумент 1: пользовательские данные (0)
    xor r8d, r8d                          ; Аргумент 2: флаг (0)
    xor r9d, r9d                          ; Аргумент 3: флаг (0)
    call g_signal_connect_data            ; Вызываем g_signal_connect_data

    ; Показать все виджеты в окне
    mov rdi, qword [rel window]           ; Указатель на окно
    call gtk_widget_show_all              ; Вызываем gtk_widget_show_all

    ; Вход в главный цикл GTK
    call gtk_main                         ; Вызываем gtk_main для обработки событий GTK

    ; Завершение функции main
    mov rdi, 0
    call exit
