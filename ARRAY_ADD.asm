;add array
ARRAY1 DB 30H,31H,32H,33H
ARRAY2 DB 10H,14H,18H,2H


MOV SI, OFFSET ARRAY1
MOV DI, OFFSET ARRAY2
MOV CX,4H

LA:
  MOV AL,DS:[DI]
  ADD DS:[SI],AL
  INC SI
  INC DI
  DEC CX
  CMP CX,0
  JNE LA
HLT
