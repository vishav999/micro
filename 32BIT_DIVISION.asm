org 100h

num1 dd 12345678H
num2 dd 34AEH
rem dd ?
quo dd ?

MOV AX,0H
MOV DX,0H

MOV AX,num1
MOV DX,num1+2
MOV BX,num2
DIV BX
MOV quo,AX
MOV rem,DX
HLT 
;5877