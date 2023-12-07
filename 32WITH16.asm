    ORG 100H
    NUM1 DD 56781234H
    NUM2 DD CDEFAB12H 
    SUM DD 3DUP(?)
    MOV AX,NUM1
    ADD AX,NUM2
    MOV SUM,AX
    CLC
    MOV AX,NUM1+2
    ADC AX,NUM2+2
    MOV SUM+2,AX 
    JNC NEXT
    MOV SUM+4,01H  
    NEXT: HLT
;addition hi h ;using one register ony ig? 