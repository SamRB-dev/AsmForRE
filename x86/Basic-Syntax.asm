; Assembly has 3 code sections
; 1. Data section - used for initializing variables and constants.
; data doesn't change during runtime.
section .data


; 2. Bss - used for declaring variables
section .bss

; 3. Text - main entry point of the program
section .text
    global _start ; tells the kernel where the code starts

_start: ; main procedure/function
    mov eax, 0x1 ; System write
    int 0x80 ; interupt
