#include <stdio.h>
#include <arm_neon.h>

void add_arrays_neon(const float *a, const float *b, float *result, int n) {
    int i;
    for (i = 0; i <= n - 4; i += 4) {
        float32x4_t va = vld1q_f32(&a[i]);  // Загружаем 4 элемента из массива a
        float32x4_t vb = vld1q_f32(&b[i]);  // Загружаем 4 элемента из массива b
        float32x4_t vres = vaddq_f32(va, vb);  // Складываем их
        vst1q_f32(&result[i], vres);  // Сохраняем результат в массив result
    }

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
