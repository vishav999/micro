.model small  
.data  
a db 4bh    ;hex val of ascii
.code  
 mov ax,@data      ; Initialize data section  
 mov      ds, ax  
 mov      al, a             ; Load number1 in al  
 mov      cl , 08H  
 mov      ah, 00h           ; ah=00  
up:
 shl      al, 01h       ; divide the number by 2 and SHL gives the same result         
 mov      bl, al                 
 mov      al, 00H  
 adc      al, 30h  
 mov      dl, al  
 mov      ah, 02h  
 int      21h  
 mov      al,bl  
 dec      cl  
 jnz      up  
 mov      ah, 4cH            ; Terminate Program  
 int      21H  
 HLT