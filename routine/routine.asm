global _start

section .data

f_msg: db "first message", 10
  .len: equ $ - f_msg

s_msg: db "second message", 10
  .len: equ $ - s_msg

section .text
print_routine:
  mov rax, 1
  mov rdi, 1
  syscall

  ret

exit_routine:
  mov rax, 60
  mov rdi, 0
  syscall

  ret

_start:
  mov rsi, f_msg
  mov rdx, f_msg.len
  call print_routine

  mov rsi, s_msg
  mov rdx, s_msg.len
  call print_routine

  call exit_routine
