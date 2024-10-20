#include <stdio.h>

size_t strlen_arm64(const char *s) {
    size_t len;
    __asm__ (
        "mov x0, %1\n"
        "mov x1, #0\n"
        "strlen_loop:\n"
        "ldrb w2, [x0], #1\n" 
        "cmp w2, #0\n"
        "beq strlen_end\n"
        "add x1, x1, #1\n"
        "b strlen_loop\n"
        "strlen_end:\n"
        "mov %0, x1\n"
        : "=r" (len)
        : "r" (s)
        : "x0", "x1", "x2"
    );
    return len;
}

int main() {
    const char *str = "Hello, ARM64!";
    size_t len = strlen_arm64(str);
    printf("Length of '%s' is %zu\n", str, len);
    return 0;
}
