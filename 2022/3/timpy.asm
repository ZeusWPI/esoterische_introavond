section .bss
BUFFER_SIZE equ 1024    
buffer:
    resb BUFFER_SIZE
global _main
section .text
_main:
    mov rax, 0x02000003     ; Read syscall number
    mov rdi, 0              ; Read from stdin
    mov rsi, qword buffer   ; Address of buffer to store message
    mov rdx, BUFFER_SIZE    ; Length of buffer
    syscall
    mov rsi, qword buffer
    xor rbx, rbx
    mov bl, byte [rsi]     ; Move contents at buffer index to rax
    loop:
        cmp bl, 91         ; Check if uppercase
        jl uppercase
        sub bl, 32
        jmp next
        uppercase:
        add bl, 32
        next:
        mov [rsi], bl
        mov rax, 0x02000004     ; Write syscall number
        mov rdi, 1              ; Write to stdout
        mov rdx, 1    ; Length of string to display
        syscall
        inc rsi
        xor rbx, rbx
        mov bl,  byte [rsi]; Get next character
        cmp rbx, 10         ; Check if linefeed byte
        jnz loop            ; Loop until linefeed byte 
    mov rax, 0x02000001     ; Exit syscall number
    xor rdi, rdi            ; Exit code 0
    syscall