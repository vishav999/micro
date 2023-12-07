;binary 2 ascii
var dd ?
;mov bx,[var]
;pointer to ebx
mov al,62H
;get test data
mov ah,0
;clear AH
aam
;convert to BCD
add ah,20h
cmp al,20h
;test for leading zero
je D1
;if leading zero
add ah,10h
;convert to ASCII
D1:
;mov [bx], ah
add al,30h
;convert to ASCII
