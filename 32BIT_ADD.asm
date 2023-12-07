;1) 32 bit addition using four 16 bit registers

	; First No - FA019A16H
    MOV     AX,  0FA01H
    MOV     BX,  9A16H
    ; Second No - 2D35A89FH
    MOV     CX,  2D35H
    MOV     DX,  0A89FH
    ADD     BX,  DX
    ADC     AX,  CX
HLT
;273742B5