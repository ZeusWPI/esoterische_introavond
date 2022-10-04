section .text
    global  _start

print:
    push    rdx
    push    rcx
    push    rax
    mov     rdx,len
    mov     rcx,msg
    mov     rbx,1
    mov     rax,4
    int     0x80
    pop     rax
    pop     rcx
    pop     rdx
    ret

end:
    ; Call the system interupt to exit
  	mov     rbx, 0
    mov     rax, 1
    int     0x80

_start:
    mov rax, 0x04
l1:
    call print
    dec rax
    jz end
    jmp l1

section .data

msg db      "Zeus",0xa
len equ     $ - msg
