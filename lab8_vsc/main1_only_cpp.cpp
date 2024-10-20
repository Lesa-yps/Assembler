// Изучить скорость выполнения операций над вещественными числами на
// примерах сложения и умножения 32 - разрядных(float) и 64 - разрядных(double) чисел:
// ○ на C / C++ с генерацией инструкций для сопроцессора(для gcc - опции - m80387 и - mno - 80387);
// Проанализировать дизассемблированный код для 1-го варианта.

void float_sum_cpp(float a, float b)
{
	float c;
	c = a + b;
}

void double_sum_cpp(double a, double b)
{
	double c;
	c = a + b;
}

void float_mul_cpp(float a, float b)
{
	float c;
	c = a * b;
}

void double_mul_cpp(double a, double b)
{
	double c;
	c = a * b;
}

int main(void)
{
	//float_sum_cpp(3.2f, 5.21f);
	//float_mul_cpp(3.2f, 5.21f);

	//double_sum_cpp(3.2, 5.21);
	//double_mul_cpp(3.2, 5.21);

	return 0;
}