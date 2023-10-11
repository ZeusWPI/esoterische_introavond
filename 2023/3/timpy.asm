section .data
align 8
%define buffer_length 0FFh
buffer times buffer_length db 00h
stdin db "/dev/stdin", 00h
open_mode db "r", 00h

section .text
global _main
extern _puts
extern _fgets
extern _fopen
extern _fclose
extern _strlen

_main:
  lea rdi, [rel stdin]
  lea rsi, [rel open_mode]
  call _fopen
  push rax

  lea rdi, [rel buffer]
  mov rsi, buffer_length
  mov rdx, [rsp]
  call _fgets

  lea rdi, [rsp]
  call _fclose

  lea rdi, [rel buffer]
  call _strlen
  mov rcx, rax
  dec rcx
loop_start:
    xor rax, rax
    lea rsi, [rel buffer]
    mov r8, rcx
    dec r8
    add rsi, r8
    mov al, byte[rel rsi]
    cmp al, 05Bh 
    jg lowercase
uppercase:
    add al, 020h
    jmp next
lowercase:
    sub al, 020h
next:
    mov byte[rel rsi], al
    loop loop_start

    lea rdi, [rel buffer]
    call _puts

    mov rax, 0x02000001       ; Exit syscall
    xor rdi, rdi              ; Exit code 0
    syscall
