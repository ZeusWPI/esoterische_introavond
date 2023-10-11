section .data
align 8
message: db "Zeus is de max!", 00h   ; String, followed by newline and nullbyte

section .text
global _main
extern _strlen               ; strlen from string.h
extern _puts

_main:
  ; Calculate length of message
  lea rdi, [rel message]    ; rax = strlen(message)
  call _strlen
  mov r8, rax

  lea rdi, [rel message]
  call _puts

  mov rax, 0x02000001       ; Exit syscall
  xor rdi, rdi              ; Exit code 0
  syscall
