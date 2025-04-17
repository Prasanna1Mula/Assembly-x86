.MODEL SMALL 
.STACK 100H

.DATA 
  num1 DW 50   ; Dividend 
  num2 DW 10   ; Divisor 
  quotient DW ? ; Store result 
  reminder DW ? ; Store remainder 

.CODE 
    MOV AX, @DATA ; Initiliase DS 
    MOV DS, AX 

    MOV AX, num1 ; Load dividend into AX 
    MOV DX, 0 ; Clear DX 
    MOV BX, num2 ; Load divisor into BX 

    MOV BX  ; AX/BX -> Quotient in AX, and Reminder in DX 

    MOV quotient, AX ; Store quotient 
    MOV reminder, DX ; Store reminder 

    MOV AH, 4CH 
    INT 21H 
