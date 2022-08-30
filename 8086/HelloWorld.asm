;8086 Assembly Program Written by SamRB-Dev
;Analyze the program in emu8086 for understanding the workflow of registers
;All Rights Reserved 2022   
;===============================================

.model small         ;<derivative> Declaring memory model
.stack 50h           ;<segment> Declaring stack size: 50h -> int(80)
.data                ;<segment> Contains variables & constants

    ;Declaring Variables ->| varname data-type value
    ;Datatypes: 8bit byte: db, 16bit word: dw
    ;Declaring a variable str 
    str db "Hello,World$"   ;$ depicts the end of the string
    
.code                ;<segment > The main entry point
    main proc        ;starting of the procedure/function
        
        mov ax,@data ;loading the data from data segment 
        mov ds,ax    ;copying the data from ax to ds
        lea dx,str   ;loading the address of str  
        mov ah,09h   ;interrupt for output [01h -> single char input, 02h->single char output,09h->string output]
        int 21h      ;interrupt [returns control back to OS & stops process]
        
    main endp        ;end of the procedure/function
    
end main             ;calling the procedure/function