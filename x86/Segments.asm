; Segment - A group of independent blocks that stores a stores specific type of data.

segment .data
; represented by .data & .bss to declare memory blocks that can store data for future usage. .data is used for declaring constants.
; High level example in c/c++
; const CONSTANT = 5

segment .bss
; Same as .data but is used to initialize variables which might get
; declared later in the program.
; example: int a,b ; a = 5;

segment .text
; the code/.text segment stores instructions to execute in the cpu.
    global _start
_start:
    ; procedure for terminating execution
    mov eax, 1
    int 0x80

; stack segment - stores all the variables, constants and arguments
; passed to procedures and functions.
