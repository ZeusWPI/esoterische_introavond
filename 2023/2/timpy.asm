section .data
align 8
message: db "Zeus", 00h   ; String, followed by newline and nullbyte

section .text
global _main
extern _puts

_main:
  mov r8, 0Ah
loop:
  push r8
  lea rdi, [rel message]
  call _puts
  pop r8
  dec r8
  jnz loop

  mov rax, 0x02000001       ; Exit syscall
  xor rdi, rdi              ; Exit code 0
  syscall
