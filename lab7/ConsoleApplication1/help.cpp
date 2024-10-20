#include <stdio.h>

//void copy_str(char *dst, char *src, unsigned int len);

int main()
{
  char lmao[15] = { 'l', 'o', 'l', '\0'};
  unsigned int len;

  setbuf(stdout, NULL);

  __asm__ __volatile__
  (
    "pushq %1\n\t"
    "movq $15, %%rcx\n\t"
    "xor %%rax, %%rax\n\t"
    "lea %1, %%rdi\n\t"
    "repnz scasb\n\t"
    "movq %%rdi, %%rax\n\t"
    "lea %1, %%rdi\n\t"
    "sub %%rdi, %%rax\n\t"
    "sub $0x1, %%rax\n\t"
    "movq %%rax, %0\n\t"
    "popq %1\n\t"
    :"=m"(len)
    :"m"(lmao)
    : "%rax", "%rcx", "%rdi"
  );

  char* lol = lmao + 1;

  //copy_str(lol, lmao, len);

  printf("%u\n", len);
  printf("%s\n", lmao);
  //printf("%s\n", lol);
  
  return 0;
}