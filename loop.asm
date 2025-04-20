.MODEL SMALL 
.STACK 10H
.CODE 

MAIN:
  MOV CX, 10H  ; Moving 10 to CX register 
  MOC BL, '1' ; moving 1 to BL resgister 

NEXT:
  MOV AH, 02H  ; moving next number to AH register 
  DIV DL, BL
  INT 21H 

  INC BL ; BL is incremented by 1 
  LOOP NEXT 

  MOV AH, 4CH 
  INT 21H 
END MAIN 
