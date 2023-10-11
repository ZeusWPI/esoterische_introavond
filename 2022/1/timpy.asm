section .data
message: db "Zeus is de max!", 0Ah, 00h
global _main
section .text
_main:
    mov rax, 0x02000004     ; Write syscall number
    mov rdi, 1              ; Write to stdout
    mov rsi, qword message  ; Address of message to display
    mov rdx, 16             ; Length of string to display
    syscall
    mov rax, 0x02000001     ; Exit syscall number
    xor rdi, rdi            ; Exit code 0
    syscall
