// Сравнить точность вычислений sin π и sin(π / 2) для приближённых значений
// 3.14, 3.141596 и значения, загружаемого командой сопроцессора.

#include <iostream>
#include <cmath>

using namespace std;

double sin_pi_asm(void)
{
	double res;
    __asm {
        fldpi;        // Загрузить значение PI на вершину стека FPU
        fsin;         // Вычислить синус
        fstp res;  // Сохранить результат из стека FPU в переменную res
    }
	return res;
}

double sin_pi_half_asm(void)
{
    double res;
    double two = 2.0; // Используем вещественное число
    __asm {
        fldpi;         // Загрузить значение PI на вершину стека FPU
        fdiv two;
        fsin;          // Вычислить синус
        fstp res;      // Сохранить результат из стека FPU в переменную res
    }
    return res;
}

int __main(void)
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