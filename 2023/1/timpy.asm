section .data
align 8
message: db "Zeus is de max!", 0Ah, 00h   ; String, followed by newline and nullbyte

section .text
global _main
extern _strlen               ; strlen from string.h

_main:
  ; Calculate length of message
  lea rdi, [rel message]    ; rax = strlen(message)
  call _strlen
  mov r8, rax

  mov rax, 0x02000004       ; Write syscall
  mov rdi, 1                ; Write to stdout
  lea rsi, [rel message]    ; Address of message
  mov rdx, r8               ; Length of string
  syscall

  mov rax, 0x02000001       ; Exit syscall
  xor rdi, rdi              ; Exit code 0
  syscall
