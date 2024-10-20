#include <stdio.h>

void add_arrays_neon(const float *a, const float *b, float *result, int n) {
    int i;
    for (i = 0; i <= n - 4; i += 4)
        __asm__ (
        "mov x0, %1\n"
        "mov x1, %2\n"
        "mov x2, %0\n"
        "fadd x2, x1, x0"
        "mov %0, x2\n"
        : "=r" (result[i])
        : "r" (a[i]), "r" (b[i])
        : "x0", "x1", "x2"
        );

    // Обработка оставшихся элементов, если длина массива не кратна 4
    for (; i < n; i++) {
        result[i] = a[i] + b[i];
    }
}

int main() {
    const int n = 8;  // Длина массивов
    float a[n], b[n], result[n];

    // Инициализируем массивы значениями
    for (int i = 0; i < n; i++) {
        a[i] = i * 1.0f;
        b[i] = (n - i) * 1.0f;
    }

    // Складываем массивы с использованием NEON
    add_arrays_neon(a, b, result, n);

    // Выводим результат
    for (int i = 0; i < n; i++) {
        printf("result[%d] = %f\n", i, result[i]);
    }

    return 0;
}
