// Реализовать поиск корня функции sin(x^2 + 5*x) методом половинного деления
// на заданном отрезке с заданным количеством итераций.

#include <iostream>
#include <cmath>
#include <exception>

using namespace std;

#define EPS 0.0001

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
        fmul five  // Умножить x на 5 (5*x)
        fadd             // Сложить x^2 и 5*x
        fsin              // Вычислить синус
        fstp res            // Сохранить результат из стека FPU в переменную result
    }
    return res;
}

void swap(double &low, double &high)
{
    double tmp = low;
    low = high;
    high = tmp;
}

// Функция реализует метод половинного деления
double method_half_del(double low, double high, int max_iter, double eps = EPS)
{
    // количество итераций
    int n = 0;
    // Начальное приближение
    double mid = (low + high) / 2;
    if (f(low) > f(high))
        swap(low, high);
    // пока разность между границами больше точности цикл продолжается
    while (fabs(f(mid)) > eps && n <= max_iter)
    {
        // вычисление новых границ
        double f_now = f(mid);
        double two = 2.0;
        //double more1 = 0, more2 = 0;
        double high1 = high, low1 = low;
        __asm {
            fld f_now                       // Загрузить значение f_now на вершину стека FPU
            fldz                            // Загрузить 0 на вершину стека FPU
            fcomip st(0), st(1)             // Сравнить результат с 0 и установить флаги в соответствии с результатом
            jc greater_than_zero               // Если меньше нуля, перейти к метке less_than_zero
            jmp less_than_zero           // Иначе, перейти к метке greater_than_zero    

            greater_than_zero :
                fstp st(0)
                fld mid                     // Загрузить значение mid на вершину стека FPU
                //fst more2
                fstp high1                   // Сохранить mid в high(заменить текущее значение)
                jmp end_if1                  // Завершить условное выполнение

            less_than_zero :
                fstp st(0)
                fld mid                     // Загрузить значение mid на вершину стека FPU
                //fst more1
                fstp low1                    // Сохранить mid в low(заменить текущее значение)

            end_if1:
                fld low1                     // Загрузить значение low на вершину стека FPU
                fld high1                    // Загрузить значение high на вершину стека FPU
                fadd                        // Сложить low и high и положить результат на вершину стека
                fdiv two                    // Разделить сумму на 2
                fstp qword ptr[mid]                    // Сохранить результат в mid (заменить текущее значение)
                fstp st(0)
        }
        high = high1, low = low1;
        /*if (f_now < 0)
            low = mid;
        else
            high = mid;
        mid = (low + high) / 2;*/
        //cout << more1 << " " << more2 << endl;
        //cout << "f_now = " << f_now << " low = " << low << " high = " << high << " mid = " << mid << " n = " << n << endl;
        // увеличение счётчика количества итераций
        n += 1;
    }
    // функция возвращает корень или кидает исключение при перевале за максимальное количество итераций
    if (fabs(f(mid)) > eps && n > max_iter)
        throw runtime_error("Too many iterations.");
    return mid;
}


int _main(void)
{
    try
    {
        // Функция реализует метод половинного деления
        //double res = method_half_del(-0.5, 0.5, 100);
        double res = method_half_del(-4, -0.5, 100);
        cout << "Result = " << res << endl;
    }
    catch (exception& exc)
    {
        cout << "Error! " << exc.what() << endl;
    }
	return 0;
}