// Реализовать поиск корня функции sin(x^2 + 5*x) методом половинного деления
// на заданном отрезке с заданным количеством итераций.

#include <iostream>
#include <cmath>
#include <exception>
#include <ctime>

using namespace std;

#define EPS 0.0001
#define COUNT_RUNS 1000000

void out_time(clock_t time, const char* help_str)
{
    cout << help_str << " = ";
    cout << time << " ms";
    cout << " (count runs = " << COUNT_RUNS << ")" << endl;
}

double f(double x)
{
    //return x + 0.3;
    //return sin(x*x+5*x);
    
    double five = 5.0;
    double res;
    __asm {
        fld x             // Загрузить x на вершину стека FPU
        fmul x            // Умножить x на само себя (x^2)
        fld x             // Загрузить x на вершину стека FPU
        fmul five         // Умножить x на 5 (5*x)
        fadd              // Сложить x^2 и 5*x
        fsin              // Вычислить синус
        fstp res          // Сохранить результат из стека FPU в переменную result
    }
    return res;
}

void swap(double &low, double &high)
{
    double tmp = low;
    low = high;
    high = tmp;
}

// Функция реализует метод половинного деления на си
double method_half_del_cpp(double low, double high, int max_iter, double (*pf)(double x), double eps = EPS)
{
    // количество итераций
    int n = 0;
    // Начальное приближение
    double mid = (high + low) / 2;
    if (pf(low) > pf(high))
        swap(low, high);
    double f_now = pf(mid);
    while (fabs(f_now) > eps && n <= max_iter)
    {
        if (f_now > 0)
            high = mid;
        else
            low = mid;
        mid = (low + high) / 2;
        n++;
        f_now = pf(mid);
    }
    // функция возвращает корень или кидает исключение при перевале за максимальное количество итераций
    if (fabs(pf(mid)) > eps && n > max_iter)
        throw runtime_error("Too many iterations.");
    return mid;
}

// Функция реализует метод половинного деления на ассемблере
double method_half_del_asm(double low, double high, int max_iter, double (*pf)(double x), double eps = EPS)
{
    // количество итераций
    int n = 0;
    // Начальное приближение
    double mid;
    if (pf(low) > pf(high))
        swap(low, high);
    double f_now;
    double two = 2.0;
    double high1 = high, low1 = low;
    __asm {
        fld high1
        fld low1
        fcomip st(0), st(1)
        jc skip_change
        fst high1
        fst low1
        skip_change:
            fstp st(0)
            fstp st(0)
        jmp change_mid
        // while (fabs(f(mid)) > eps && n <= max_iter) пока разность между границами больше точности цикл продолжается
        while_eps:
            fld f_now
            fabs
            fld eps
            fcomip st(0), st(1)
            jnc fin_while
            fstp st(0)
            fld n
            fld max_iter
            fcomip st(0), st(1)
            jc fin_while
            fstp st(0)
            fld f_now                       // Загрузить значение f_now на вершину стека FPU
            fldz                            // Загрузить 0 на вершину стека FPU
            fcomip st(0), st(1)             // Сравнить результат с 0 и установить флаги в соответствии с результатом
            jc greater_than_zero               // Если > нуля, перейти к метке greater_than_zero
            jmp less_than_zero           // Иначе, перейти к метке less_than_zero   

            greater_than_zero :
                fstp st(0)
                fld mid                     // Загрузить значение mid на вершину стека FPU
                //fst more2
                fstp high1                   // Сохранить mid в high(заменить текущее значение)
                jmp change_n                  // Завершить условное выполнение

            less_than_zero :
                fstp st(0)
                fld mid                     // Загрузить значение mid на вершину стека FPU
                //fst more1
                fstp low1                    // Сохранить mid в low(заменить текущее значение)
            
            change_n :
                inc n // увеличение счётчика количества итераций n += 1;
            change_mid:
                fld low1                     // Загрузить значение low на вершину стека FPU
                fld high1                    // Загрузить значение high на вершину стека FPU
                fadd                        // Сложить low и high и положить результат на вершину стека
                fdiv two                    // Разделить сумму на 2
                fstp qword ptr[mid]                    // Сохранить результат в mid (заменить текущее значение)
                fstp st(0)
            fld mid                    // Загрузить значение mid на вершину стека FPU
            call pf                      // Вызвать функцию f
            fstp f_now                 // Поместить результат в переменную f_now
            jmp while_eps
        fin_while:
    }
    // функция возвращает корень или кидает исключение при перевале за максимальное количество итераций
    if (fabs(pf(mid)) > eps && n > max_iter)
        throw runtime_error("Too many iterations.");
    return mid;
}


int main(void)
{
    try
    {
        // Функция реализует метод половинного деления
        //double res = method_half_del(-0.5, 0.5, 100);
        //double res = method_half_del(-1, -0.5, 100);

        // ASM
        clock_t time_res_asm = 0;
        for (int i = 0; i < COUNT_RUNS; i++)
        {
            clock_t time_after_asm = clock();
            double res_asm = method_half_del_asm(1.75, 1.9, 100, &f);
            time_res_asm += clock() - time_after_asm;
        }
        out_time(time_res_asm, "ASM");

        // CPP
        clock_t time_res_cpp = 0;
        for (int i = 0; i < COUNT_RUNS; i++)
        {
            clock_t time_after_cpp = clock();
            double res_cpp = method_half_del_cpp(1.75, 1.9, 100, &f);
            time_res_cpp += clock() - time_after_cpp;
        }
        out_time(time_res_cpp, "CPP");
    }
    catch (exception& exc)
    {
        cout << "Error! " << exc.what() << endl;
    }
	return 0;
}