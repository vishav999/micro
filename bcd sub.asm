;bcd sub
MOV SI,1100H
MOV CL,00H
MOV AX,[SI]
MOV BX,[SI+2]
SUB AL,BL

DAS

MOV DL, AL

MOV AL, AH

SBB AL,BH

DAS

MOV DH, AL

JNC jump

INC CL

jump:

MOV [SI+4],DX
MOV [SI+61,CL
HLT