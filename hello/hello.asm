global _start

section .data

hello: db "hello, world!", 10

section .text
_start:
  mov rax, 1
  mov rdi, 1
  mov rsi, hello
  mov rdx, 14
  syscall

  mov rax, 60
  mov rdi, 0
  syscall
