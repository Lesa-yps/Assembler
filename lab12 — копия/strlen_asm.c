#include <stdio.h>

size_t strlen_arm64(const char *s) {
    size_t len;
    __asm__ (
        "mov x0, %1\n"  // x0 = s
        "mov x1, #0\n"  // x1 = 0 (counter)
        "strlen_loop:\n"
        "ldrb w2, [x0], #1\n"  // load byte from s and increment pointer
        "cmp w2, #0\n"        // compare byte with 0
        "beq strlen_end\n"    // if byte is 0, jump to end
        "add x1, x1, #1\n"    // increment counter
        "b strlen_loop\n"     // repeat loop
        "strlen_end:\n"
        "mov %0, x1\n"        // len = x1
        : "=r" (len)          // output
        : "r" (s)             // input
        : "x0", "x1", "x2"    // clobbered registers
    );
    return len;
}

int main() {
    const char *str = "Hello, ARM64!";
    size_t len = strlen_arm64(str);
    printf("Length of '%s' is %zu\n", str, len);
    return 0;
}
