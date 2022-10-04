section .data
message: db "Zeus", 0Ah, 00h
global _main
section .text
_main:
    mov rax, 0x02000004     ; Write syscall number
    mov rdi, 1              ; Write to stdout
    mov rsi, qword message  ; Address of message to display
    mov rdx, 5             ; Length of string to display
    syscall
    jmp _main