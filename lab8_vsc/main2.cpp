// Сравнить точность вычислений sin π и sin(π / 2) для приближённых значений
// 3.14, 3.141596 и значения, загружаемого командой сопроцессора.

#include <iostream>
#include <cmath>

using namespace std;

// Ассемблерный sin(Pi)
double sin_pi_asm(void)
{
	double res;
    asm("fldpi;"         // Загрузить значение PI на вершину стека FPU
        "fsin;"          // Вычислить синус
        "fstp %0;"       // Сохранить результат из стека FPU в переменную res
        : "=m"(res));      
	return res;
}

// Ассемблерный sin(Pi / 2)
double sin_pi_half_asm(void)
{
    double res;
    double two = 2.0;
    asm("fldpi;"         // Загрузить значение PI на вершину стека FPU
        "fdiv %1;"       // PI / 2
        "fsin;"          // sin(PI / 2)
        "fstp %0;"       // Сохранить результат из стека FPU в переменную res
        : "=m"(res)
        : "m"(two));      
    return res;
}

int main(void)
{
    cout << endl << "Pi: " << endl;
    cout << "sin(3.14) = " << sin(3.14) << endl;
    cout << "sin(3.141596) = " << sin(3.141596) << endl;
    cout << "sin_pi_asm() = " << sin_pi_asm() << endl;

    cout << endl << "Pi / 2: " << endl;
    cout << "sin(3.14 / 2) = " << sin(3.14 / 2.0) << endl;
    cout << "sin(3.141596 / 2) = " << sin(3.141596 / 2.0) << endl;
    cout << "sin_pi_half_asm() = " << sin_pi_half_asm() << endl;

    return 0;
}