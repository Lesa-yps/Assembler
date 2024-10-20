.global copy_str
.data
  dst: .skip 8
  src: .skip 8
  len: .skip 4
  buf: .skip 15
.text
copy_str:
  pushq %rbp
  pushq %rax
  movq %rsp, %rbp
  leaq (%rdx), %rax
  movq %rax, len
  leaq (%rsi), %rax
  movq %rax, src
  leaq (%rdi), %rax
  movq %rax, dst
  movq len, %rcx
  inc %rcx
  movq src, %rsi
  xor %rdi, %rdi
  xor %rax, %rax
  leaq (buf), %rdi

read:
  lodsb %es:(%rsi)
  mov %al, (%rdi)
  inc %rdi
loop read

  xor %rcx, %rcx
  movl len, %ecx
  inc %rcx
  leaq (buf), %rsi
  movq dst, %rdi
  rep movsb
  popq %rax
  popq %rbp
  ret