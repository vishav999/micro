;Linear search
ARRAY1 DB 30H,31H,32H,33H

MOV SI, OFFSET ARRAY1
MOV CX,4H  ; array size
MOV AL,32H ; element to find

LA:
  MOV BL,DS:[SI]
  CMP BL,AL
  JE ex
  INC SI
  DEC CX
  CMP CX,0
  JNE LA
  HLT
ex:
  INC SI ; instead of index use position
  MOV CX,SI ;Mov position to CX=result 
  HLT
