global _start

section .data

hex_values: db "0123456789ABCDEF", 10

section .text
_start:
  mov rax, 0x1122334455667788
  mov rdi, 1
  mov rdx, 1
  mov rcx, 64

.loop:
  push rax
  sub rcx, 4

  sar rax, cl
  and rax, 0xf

  lea rsi, [rax + hex_values]
  mov rax, 1
  push rcx
  syscall

  pop rcx
  pop rax

  or rcx, rcx
  jnz .loop

  mov rax, 60
  mov rdi, 0
  syscall
