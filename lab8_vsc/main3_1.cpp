// Реализовать поиск корня функции sin(x^2 + 5*x) методом половинного деления
// на заданном отрезке с заданным количеством итераций.

#include <iostream>
#include <cmath>
#include <exception>

// Явное указание пространства имен std
using std::cout;
using std::endl;
using std::runtime_error;
using std::exception;

#define EPS 0.01

// Ассемблернаяя вставка, реализующая sin(x*x+5*x)
double f(double x)
{
    //return x + 0.3;
    //return sin(x*x+5*x);
    
    double five = 5.0;
    double res;
    asm("fld qword ptr [%1]\n\t"             // Загрузить x на вершину стека FPU
        "fmul qword ptr [%1]\n\t"            // Умножить x на само себя (x^2)
        "fld qword ptr [%1]\n\t"             // Загрузить x на вершину стека FPU
        "fmul qword ptr [%2]\n\t"            // Умножить x на 5 (5*x)
        "faddp\n\t"                          // Сложить x^2 и 5*x
        "fsin\n\t"                           // Вычислить синус
        "fstp qword ptr [%0]\n\t"            // Сохранить результат из стека FPU в переменную result
        : "=m"(res)
        : "m"(x), "m"(five));
    return res;
}

// Функция реализует метод половинного деления
double method_half_del(double low, double high, int max_iter, double eps = EPS)
{
    int n = 0;                                  // Инициализация счетчика итераций
    double mid;                                 // Начальное приближение
    double f_now;
    double two = 2.0, five = 5.0;
    double buf;

    // while (fabs(f(mid)) > eps && n <= max_iter) Пока не достигнута необходимая точность или максимальное число итераций
    __asm__ (
        "fld qword ptr [%[high]]\n\t"               // Загрузка значения high на вершину стека FPU
        "fld qword ptr [%[low]]\n\t"                // Загрузка значения low на вершину стека FPU
        "fcomip\n\t"                                // Сравнить и проверить флаги
        "jc skip_change\n\t"
        "fst qword ptr [%[high]]\n\t"
        "fst qword ptr [%[low]]\n\t"
        "call qword ptr [%[f]]\n\t"
        "skip_change:\n\t"
            "fstp qword ptr [%[buf]]\n\t"                // Очистить вершину стека
            "fstp qword ptr [%[buf]]\n\t"                // Очистить следующую вершину стека
        "main_while:\n\t"
        // mid = (low + high) / 2
        "fld qword ptr [%[low]]\n\t"                // Загрузка значения low на вершину стека FPU
        "fld qword ptr [%[high]]\n\t"               // Загрузка значения high на вершину стека FPU
        "faddp\n\t"                                 // Сложение low и high и сохранение результата на вершине стека
        "fdiv qword ptr [%[two]]\n\t"               // Деление суммы на 2
        "fstp qword ptr [%[mid]]\n\t"               // Сохранение результата в mid
        // sin(x*x+5*x)
        "fld qword ptr [%[mid]]\n\t"             // Загрузить x на вершину стека FPU
        "fmul qword ptr [%[mid]]\n\t"            // Умножить x на само себя (x^2)
        "fld qword ptr [%[mid]]\n\t"             // Загрузить x на вершину стека FPU
        "fmul qword ptr [%[five]]\n\t"            // Умножить x на 5 (5*x)
        "faddp\n\t"                                 // Сложить x^2 и 5*x
        "fsin\n\t"                                  // Вычислить синус
        "fstp qword ptr [%[f_now]]\n\t"            // Сохранить результат из стека FPU в f_now
        // fabs(f_now) > eps
        "fld qword ptr [%[f_now]]\n\t"
        "fabs\n\t"
        "fld qword ptr [%[eps]]\n\t"
        "fcomip\n\t"                                // Сравнить и проверить флаги
        "jnc fin_while\n\t"                          // Если f_now > eps, выйти из цикла
        "fstp qword ptr [%[buf]]\n\t"                // Очистить вершину стека
        // n <= max_iter
        "fld qword ptr [%[n]]\n\t"
        "fld qword ptr [%[max_iter]]\n\t"
        "fcomip\n\t"                                // Сравнить и проверить флаги
        "jc fin_while\n\t"                          // Если n > max_iter, выйти из цикла
        "fstp qword ptr [%[buf]]\n\t"                // Очистить вершину стека
        // if (f_now > 0) Если значение функции в средней точке больше 0
        "fld qword ptr [%[f_now]]\n\t"
        "fldz\n\t"                                  // Загрузить 0
        "fcomip\n\t"
        "jc change_high\n\t"
        "jmp change_low\n\t"
        "change_high:\n\t"
            "fld qword ptr [%[mid]]\n\t"                // Загрузка значения mid на вершину стека FPU
            "fstp qword ptr [%[high]]\n\t"              // Сохранение значения mid в high
            "jmp change_n\n\t"
        "change_low:\n\t"
            "fld qword ptr [%[mid]]\n\t"                // Загрузка значения mid на вершину стека FPU
            "fstp qword ptr [%[low]]\n\t"               // Сохранение значения mid в low
        "change_n:\n\t"
            "fstp qword ptr [%[buf]]\n\t"                // Очистить вершину стека
            "inc [%[n]]\n\t"                            // Увеличение счетчика итераций n += 1
        "jmp main_while\n\t"
        "fin_while:\n\t"
        // Выходные операнды
        : [mid] "=m" (mid)
        // Входные операнды
        : [f_now] "m" (f_now), [n] "m" (n), [max_iter] "m" (max_iter), [high] "m" (high), [low] "m" (low), [eps] "m" (eps), [two] "m" (two), [five] "m" (five), [buf] "m" (buf), [f] "m" (f)
        : "cc", "memory" // Указываем, что изменены флаги процессора и память
    );

    if (fabs(f(mid)) > eps && n > max_iter)  // Если точность не достигнута и превышено максимальное число итераций
        throw runtime_error("Too many iterations.");  // Генерация исключения

    return mid;  // Возврат значения mid
}

int main(void)
{
    try
    {
        double res;
        // Функция реализует метод половинного деления
        //res = method_half_del(-0.5, 0.5, 100);
        //res = method_half_del(-1, -0.5, 100);
        res = method_half_del(1.75, 1.9, 100);
        cout << "Result = " << res << endl;
    }
    catch (exception& exc)
    {
        cout << "Error! " << exc.what() << endl;
    }
	return 0;
}