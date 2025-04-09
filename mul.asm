.MODEL SMALL 
.STACK 100H
.DATA 

  NUM1 DB 06H ; 1st bit number in HEX
  NUM2 DB 04H  ; 2nd bit number in HEX
  RESULT DW 0 

.CODE 

  MOV AX, @DATA ; Initialize DS 
  MOV DS, AX 

  MOV AL, NUM1 ; Moving NUM1 to AL
  MOV BL, NUM2 ; MOVING NUM2 to BL 
  MUL BL       ; Multiplying AL*BL and result stored in AX 

  MOV RESULT, AX ; Data in AX is moved to result 

  ; Exit program 
  INT 21H 
END MAIN 
