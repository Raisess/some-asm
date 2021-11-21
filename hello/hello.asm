global _start

section .data

hello: db "hello, world!", 10
  .len: equ $ - hello

section .text
_start:
  mov rax, 1          ; stdout syscall
  mov rdi, 1
  mov rsi, hello
  mov rdx, hello.len
  syscall

  mov rax, 60         ; exit syscall
  mov rdi, 0
  syscall
