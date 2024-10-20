#include <iostream>

using namespace std;

#include <cstring>

// отключает предупреждения в файле, а то жаловалось на устаревшие функции
//#pragma warning(disable : 4996)

// функция из asm-файла, копирующая строку
/*extern "C"
{
	void str_copy(char *str2, const char *str1, int len);
}*/

// память, резервирующая строки
#define N 100
// длина разделяющей строки
#define LEN_DIFF_LINE 40

// первая принимает 1 параметр - указатель на строку, 
// определяет длину строки и выполнена в виде ассемблерной вставки
/*int str_len(const char* str1)
{
	// сюда будет записана длина строки
	int len = 0;
	__asm
	{
		mov edi, str1				; загружаем указатель на строку в регистр edi
		mov esi, str1				; сохраняем адрес начала строки в регистр esi
		xor eax, eax				; eax = 0 (символ для поиска нулевой (конец строки '\0'))
		mov ecx, 0ffffffffh			; устанавливаем максимальное количество повторов поиска в масимальное число (32 1-ы в двоичном формате)
		repne scasb					; цикл, считающий длину строки
		sub edi, esi				; получили разницу в адресах между нулевым символом и началом строки
		dec edi						; исключили нулевой символ из подсчёта
		mov len, edi				; сохраняем длину строки в переменную len
	}
	return len;
}*/
int str_len(const char* str1)
{
	int len = 0;
	__asm__(
		"xor %%ecx, %%ecx\n\t"       // Обнуляем ecx для подсчета длины строки
		"mov %%edi, %0\n\t"          // Сохраняем адрес начала строки
		"repnz scasb\n\t"            // Считаем длину строки
		"sub %%edi, %0\n\t"          // Разница между начальным и текущим адресами - это длина строки
		: "=r" (len)                 // Результат сохраняется в переменную len
		: "D" (str1), "c" (-1)       // Указываем источник (str1) и количество (длина не определена)
		: "cc"                       // Операнды изменены
	);

	return len;
}





// рисует разделяющую тесты полосочку и ставит посередине заголовок
void print_diff_line(const char *str1)
{
	// длина полосочек до и после заголовка
	int count_line_half = LEN_DIFF_LINE / 2 - (strlen(str1) + 1) / 2;
	// рисует полосочку до заголовка
	for (int i = 0; i < count_line_half; i++)
		cout << "-";
	// рисует заголовок
	cout << str1;
	// рисует полосочку после заголовка
	for (int i = 0; i < count_line_half; i++)
		cout << "-";
	// перевод строки
	cout << endl;
}

// вынесла общее из тестов
int common_in_tests(char* str1, char* str2, const char* str_in)
{
	// функция определяет длину строки (ассемблерная вставка)
	int len = str_len(str1);
	cout << "Length of string '" << str1 << "': " << len << endl;
	// функция копирует строку (отдельный asm-файл)
	//str_copy(str2, str1, len);
	cout << "New string: " << str2 << endl;
	cout << "Old string: " << str1 << endl;
	// выводит полосочку после теста
	print_diff_line("");
	// а вот собственно и проверка результата
	return (len == (int) strlen(str_in)) && strncmp(str_in, str2, len);
}

// строки не перекрываются, вторая строка пустая
int base_test(const char* str_in)
{
	// копирует входную строку
	char str1[N];
	strcpy(str1, str_in);
	// вторая строка пустая
	char str2[N] = "";
	// выводит полосочку с заголовком до теста
	print_diff_line(" Base test ");
	// вызов тестирования для данных выше
	return common_in_tests(str1, str2, str_in);
}

// вторая строка начинается со второго символа первой
int extreme1_test(char* str_in)
{
	// копирует входную строку
	char str1[N];
	strcpy(str1, str_in);
	// вторая строка начинается со второго символа первой
	char *str2 = str1 + 1;
	// выводит полосочку с заголовком до теста
	print_diff_line(" str2 = str1 + 1 ");
	// вызов тестирования для данных выше
	return common_in_tests(str1, str2, str_in);
}

// вторая строка начинается за один символ до первой
int extreme2_test(char* str_in)
{
	// выделяем рабочую память
	char work_buf[N] = "";
	// копирует входную строку начиная со второго элемента в work_buf
	strcpy(work_buf + 1, str_in);
	// во вторую строку записываем адрес первого элемента в work_buf
	char* str2 = work_buf;
	// в первую строку записываем адрес второго элемента в work_buf
	char* str1 = work_buf + 1;
	// выводит полосочку с заголовком до теста
	print_diff_line(" str2 = str1 - 1 ");
	// вызов тестирования для данных выше
	return common_in_tests(str1, str2, str_in);
}

// строка пустая
int empty_str_test()
{
	// копирует входную строку
	char str1[N] = "";
	// вторая строка пустая
	char str2[N] = "";
	// выводит полосочку с заголовком до теста
	print_diff_line(" Empty string ");
	// вызов тестирования для данных выше
	return common_in_tests(str1, str2, "");
}

int main(void)
{
	// рабочая стартовая строка
	char str_in[N] = "Hello, world!";
	// строки не перекрываются, вторая строка пустая
	int rc = base_test(str_in);
	// вторая строка начинается со второго символа первой
	rc += extreme1_test(str_in);
	// вторая строка начинается за один символ до первой
	rc += extreme2_test(str_in);
	// строка пустая
	rc += empty_str_test();
	// вывод количества проваленных тестов
	cout << "Failed tests: " << rc << endl;
	// код возврата = количеству проваленных тестов
	return rc;
}