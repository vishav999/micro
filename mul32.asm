;32 bit muls

data segment
    
data ends

Code Segment
assume CS:Code
mov ax,2000H
mov ds,ax
mov si,0000H
mov ax,1234H
mov [SI],ax
mov ax,5678H
mov [SI+02H],ax
mov ax,1ABCH
mov [SI+04H],ax
mov ax,1EF1H
mov [SI+06H],ax
mov ax,2000H

mov AX,[SI]
mov bx,[SI+04H]
mul BX
mov [SI+08H],AX
mov [SI+0AH],DX

mov AX,[SI+02H]
mov BX,[SI+06h]
mul BX
mov [SI+0CH],AX
mov [SI+0EH],DX
 
 
mov AX,[SI+02h]
mov BX,[SI+04H]
mul BX
add AX,[SI+0AH]
mov [SI+0AH],AX

adc DX,[SI+0CH]
mov [SI+0CH],DX 
mov AX,0000H
adc AX,[SI+0EH]
mov [SI+0EH],AX


mov AX,[SI]
mov BX,[SI+06H]
mul BX
add AX,[SI+0AH]
mov [SI+0AH],AX  

adc DX,[SI+0CH]
mov [SI+0CH],DX 
mov AX,0000H
adc AX,[SI+0EH]
mov [SI+0EH],AX

;INT 03H
Code Ends
HLT 