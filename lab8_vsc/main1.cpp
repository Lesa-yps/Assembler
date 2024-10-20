// Изучить скорость выполнения операций над вещественными числами на
// примерах сложения и умножения 32 - разрядных(float) и 64 - разрядных(double) чисел:
// ○ на C / C++ с генерацией инструкций для сопроцессора(для gcc - опции - m80387 и - mno - 80387);
// ○ с использованием ассемблерной вставки и команд работы с сопроцессором.
// Проанализировать дизассемблированный код для 1-го варианта.

#include <iostream>
#include <ctime>

#define COUNT_RUN 1000000 // кол-во замеров времени работы

using namespace std;

// выводит время (в сек или милисек за счет сравнения с CLOCKS_PER_SEC = 1000)
void print_time(clock_t time, const char* help_str)
{
	cout << help_str << " = ";
	if (time >= CLOCKS_PER_SEC)
		cout << time / CLOCKS_PER_SEC << " sec";
	else
		cout << time << " ms";
	cout << " (count runs = " << COUNT_RUN << ")" << endl;
}

// С++ (a + b) COUNT_RUN раз и выводит измеренное время
template <typename T>
void sum_cpp(T a, T b)
{
	clock_t time_res = 0;
	T c;
	for (int i = 0; i < COUNT_RUN; i++)
	{
		clock_t time_was = clock();
		c = a + b;
		time_res += clock() - time_was;
	}
	(void) c;
	print_time(time_res, "Cpp sum ");
}

// С++ (a * b) COUNT_RUN раз и выводит измеренное время
template <typename T>
void mul_cpp(T a, T b)
{
	clock_t time_res = 0;
	T c;
	for (int i = 0; i < COUNT_RUN; i++)
	{
		clock_t time_was = clock();
		c = a * b;
		time_res += clock() - time_was;
	}
	(void) c;
	print_time(time_res, "Cpp mul ");
}

// ASM (a + b) COUNT_RUN раз и выводит измеренное время
template <typename T>
void sum_asm(T a, T b)
{
    clock_t time_res = 0;
    T c;
    for (int i = 0; i < COUNT_RUN; i++)
    {
        clock_t time_was = clock();
        asm("fld %1\n\t" 				// a -> STACK (a)
            "fld %2\n\t" 				// b -> STACK (b, a)
            "faddp ST(1), ST(0)\n\t" 	// a + b; STACK(b, a + b); STACK.pop(b); STACK(a + b)
            "fstp %0\n\t" 				// c = STACK.pop(a + b)
            : "=m"(c) 					// c == %0
            : "m"(a), "m"(b)); 			// a == %1, b == %2
        time_res += clock() - time_was;
    }
    print_time(time_res, "Assembler sum ");
}

// ASM (a * b) COUNT_RUN раз и выводит измеренное время
template <typename T>
void mul_asm(T a, T b)
{
    clock_t time_res = 0;
    T c;
    for (int i = 0; i < COUNT_RUN; i++)
    {
        clock_t time_was = clock();
        asm("fld %1\n\t" 				// a -> STACK (a)
            "fld %2\n\t" 				// b -> STACK (b, a)
            "fmulp ST(1), ST(0)\n\t" 	// a * b; STACK(b, a * b); STACK.pop(b); STACK(a * b)
            "fstp %0\n\t" 				// c = STACK.pop(a * b)
            : "=m"(c) 					// c == %
            : "m"(a), "m"(b)); 			// a == %1, b == %2
        time_res += clock() - time_was;
    }
    print_time(time_res, "Assembler mul ");
}

// Запускает float/double +/* c++/asm и выводит время работы за COUNT_RUN раз
int main(void)
{
	cout << endl << "Float: " << endl;
	float fa = 3.2f;
	float fb = 5.21f;
	sum_cpp(fa, fb);
	sum_asm(fa, fb);
	mul_cpp(fa, fb);
	mul_asm(fa, fb);

	cout << endl << "Double: " << endl;
	double da = 356.2;
	double db = 587.21;
	sum_cpp(da, db);
	sum_asm(da, db);
	mul_cpp(da, db);
	mul_asm(da, db);

	return 0;
}