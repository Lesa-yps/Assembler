#include <iostream>
#include <cmath>
#include <stdexcept>

using namespace std;

// Функция, для которой ищем корень
// 2 × sin(x^2 − 5)
double f_cpp(double x)
{
    return 2 * sin(x * x - 5);
}

double f(double x)
{
    double result;
    double const const_2 = 2.0;
    double const const_5 = 5.0;

    __asm__(
        "fld %1\n"                 // Load x
        "fld %1\n"                 // Load x
        "fmulp %%ST(1), %%ST(0)\n" // x*x. 1) ST(1) = ST(1) - ST(0). 2) Pop ST(0).
        "fld %3\n"                 // Load 5
        "fsubp %%ST(1), %%ST(0)\n" // x^2-5
        "fsin\n"                   // sin(x^2-5)
        "fld %2\n"                 // Load 2
        "fmulp %%ST(1), %%ST(0)\n" // 2*(x^2-5)
        "fstp %0\n"
        : "=m"(result)
        : "m"(x), "m"(const_2), "m"(const_5));

    return result;
}

#define F f
// #define F f_cpp

// Метод хорд
double secant_method(double x0, double x1, int max_iterations, double tolerance = 1e-6)
{
    for (int i = 0; i < max_iterations; ++i)
    {
        double fx0 = F(x0);
        double fx1 = F(x1);

        // Проверка деления на ноль
        if (fabs(fx1 - fx0) < tolerance)
        {
            throw runtime_error("Zero division.");
        }

        // Вычисление новой точки по методу хорд
        double x2;
        // x2 = x1 - fx1 * (x1 - x0) / (fx1 - fx0);
        __asm__(
            "fld %2\n"                 // Load x1
            "fld %2\n"                 // Load x1
            "fld %1\n"                 // Load x0
            "fsubp %%ST(1), %%ST(0)\n" // x1-x0
            "fld %4\n"                 // Load fx1
            "fld %3\n"                 // Load fx0
            "fsubp %%ST(1), %%ST(0)\n" // fx1 - fx0
            "fdivp %%ST(1), %%ST(0)\n" // (x1 - x0) / (fx1 - fx0)
            "fld %4\n"                 // Load fx1
            "fmulp %%ST(1), %%ST(0)\n" // fx1 * (x1 - x0) / (fx1 - fx0)
            "fsubp %%ST(1), %%ST(0)\n" // x1 - fx1 * (x1 - x0) / (fx1 - fx0)
            "fstp %0\n"
            : "=m"(x2)
            : "m"(x0), "m"(x1), "m"(fx0), "m"(fx1));

        // Проверка на достижение желаемой точности
        if (fabs(x2 - x1) < tolerance)
        {
            return x2;
        }

        // Обновление точек для следующей итерации
        x0 = x1;
        x1 = x2;
    }

    // Если максимальное число итераций достигнуто, возвращаем последний результат
    throw runtime_error("Max iteration reached.");
}

int main()
{
    // Начальные точки
    double x0 = 1.0;
    double x1 = 1.5;
    int max_iterations = 100;

    try
    {
        double root = secant_method(x0, x1, max_iterations);
        cout << "Root: " << root << endl;
    }
    catch (const exception &e)
    {
        cerr << "Error: " << e.what() << endl;
    }

    return 0;
}
