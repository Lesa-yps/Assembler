// Реализовать в виде ассемблерной вставки с использованием расширения SSE:
// 1. Умножение [целочисленных] матриц LxM * MxN (исходные данные вводятся с клавиатуры).

#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include <emmintrin.h>

#define NOT_YET -1
#define DONE 1
#define OK 0

#define COUNT_PACK sizeof(long double)/sizeof(float) // 16 / 4 = 4

void clean_buf(void)
{
    int c;
    while ((c = getchar()) != '\n' && c != EOF);
}

void print_vec(float *vec, int n, const char *str_help)
{
    printf("%s", str_help);
    for (int i = 0; i < n; i++)
        printf(" %f", vec[i]);
    printf("\n");
}

void input_size(int *n, const char *str_help)
{
    int flag = NOT_YET;
    while (flag == NOT_YET)
    {
        printf("Input, %s please (integer number): ", str_help);
        if (scanf("%d", n) != 1)
            printf("Error with input. Repeat input, please.\n");
        else if (*n <= 0)
            printf("Size must be positive. Repeat input, please.\n");
        else
            flag = DONE;
    }
}

void input_float(float *n)
{
    int flag = NOT_YET;
    while (flag == NOT_YET)
    {
        if (scanf("%f", n) != 1)
            printf("Error with input. Repeat input, please.\n");
        else
            flag = DONE;
    }
}

void read_sizes(int *l, int *m, int *n)
{
    input_size(l, "(L)");
    input_size(m, "(M)");
    input_size(n, "(N)");
    clean_buf();
}

float *read_matrix(int n, int m, int num)
{
    float *mat = (float *) calloc(n * m, sizeof(float));
    printf("Input elements of matrix #%d, please:\n", num);
    for (int i = 0; i < n; i++)
        for (int j = 0; j < m; j++)
            input_float(&(mat[i * m + j]));
    return mat;
}

void print_matrix(float *mat, int n, int m)
{
    if (n == 0 || m == 0)
        printf("Empty matrix");
    else
    {
        printf("Matrix:\n");
        for (int i = 0; i < n; i++)
        {
            for (int j = 0; j < m; j++)
                printf("%f ", mat[i * m + j]);
            printf("\n");
        }
    }
}

#ifdef CPP
// Функция на си, реализующая умножение матриц LxM * MxN
float *multy_matrix(float *mat1, float *mat2, int l, int m, int n)
{
    float *mat_res = (float *) calloc(l * n, sizeof(float));
    for (int i = 0; i < l; i++)
        for (int j = 0; j < n; j++)
        {
            float sum = 0.0;
            for (int k = 0; k < m; k++)
                sum += mat1[i * m + k] * mat2[k * n + j];
            mat_res[i * n + j] = sum;
        }
    return mat_res;
}
#else
// формирует массив из строки матрицы (размер кратен COUNT_PACK, лишнее занулено)
float *make_vec_row(float *mat, int row, int count_col)
{
    int size = count_col + (COUNT_PACK - count_col % COUNT_PACK);
    float *vec = (float *) calloc(size, sizeof(float));
    for (int i = 0; i < count_col; i++)
        vec[i] = mat[row * count_col + i];
    return vec;
}
// формирует массив из столбца матрицы (размер кратен COUNT_PACK, лишнее занулено)
float *make_vec_col(float *mat, int col, int count_row, int count_col)
{
    int size = count_row + (COUNT_PACK - count_row % COUNT_PACK);
    float *vec = (float *) calloc(size, sizeof(float));
    for (int i = 0; i < count_row; i++)
        vec[i] = mat[i * count_col + col];
    return vec;
}
// Ассемблернаяя вставка, реализующая умножение матриц LxM * MxN с использованием расширения SSE
float *multy_matrix(float *mat1, float *mat2, int l, int m, int n)
{
    float *mat_res = (float *) calloc(l * n, sizeof(float));
    for (int i = 0; i < l; i++)
        for (int j = 0; j < n; j++)
        {
            float *vec_row = make_vec_row(mat1, i, m);
            float *vec_col = make_vec_col(mat2, j, m, n);
            for (int k = 0; k < m; k += COUNT_PACK)
            {
                float sum;
                __asm__(
                    "movups xmm0, [%[row]]\n\t"  // Загружаем 4 числа (float) из row_ptr в xmm0
                    "movups xmm1, [%[col]]\n\t"  // Загружаем 4 числа (float) из col_ptr в xmm1
                    "mulps xmm0, xmm1\n\t"     // Умножаем числа xmm0 на соответствующие числа xmm1
                    "haddps xmm0, xmm0\n\t"    // Горизонтальное сложение (SSE3)
                    "haddps xmm0, xmm0\n\t"
                    "movss %[result], xmm0\n\t" // Сохраняем результат из младшей части регистра xmm0 в sum
                    : [result] "=m" (sum)
                    : [row] "m" (vec_row + k), [col] "m" (vec_col + k), [k] "m" (k)
                    : "xmm0", "xmm1"
                );
                mat_res[i * n + j] += sum;
            }
            free(vec_row);
            free(vec_col);
        }
    return mat_res;
}
#endif

int main(void)
{
    int l, m, n;
    read_sizes(&l, &m, &n);
    float *mat1 = read_matrix(l, m, 1);
    float *mat2 = read_matrix(m, n, 2);
    float *mat_res = multy_matrix(mat1, mat2, l, m, n);
    print_matrix(mat_res, l, n);
    free(mat1);
    free(mat2);
    free(mat_res);
	return OK;
}