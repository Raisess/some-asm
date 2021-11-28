global _start

section .data
; params
msg: db "Result is:", 0
  .len: equ $ - msg

; syscall's
sys_write: equ 1
sys_exit: equ 60

section .text
print_routine:
  mov rax, sys_write
  mov rdi, 1
  syscall

  ret

exit_routine:
  mov rax, sys_exit
  mov rdi, 0
  syscall

  ret

; sum:
  ; ret

; sub:
  ; ret

; times:
  ; ret

; div:
  ; ret

_start:
  mov rsi, msg
  mov rdx, msg.len
  call print_routine

  call exit_routine
