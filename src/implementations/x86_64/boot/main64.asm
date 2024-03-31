global long_mode_start, kb_input
extern kernel_main

section .text
bits 64
long_mode_start:
    ; load null into all data segment registers
    mov ax, 0
    mov ss, ax
    mov ds, ax
    mov es, ax
    mov fs, ax
    mov gs, ax

    call kernel_main
    call kb_input
    hlt

kb_input:
    mov ah, 0
    int 0x16
    mov [kb_input], al

    