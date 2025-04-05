; Additon of 2 16-bit numbers in 8086 microprocessor 
.MODEL SMALL 
.STACK 100H
.DATA 
   NUM1 DW 1234H ; the number is stored in NUM1 
   NUM2 DW 5678H ; the number is stored in NUM2 
   RESULT DW ?
  ASSUME CS:CODE DS:DATA 

.CODE 
START 
  MOV AX, @DATA ; Initialise the data segment 
  MOV DS, AX   

  MOV AX, NUM1  ; Load the 1st number to AX 
  ADD AX, NUM2  ; Adding the 2nd number to AX 
  MOV RESULT, AX ; store the answer in result 

  ; DISPLAY MESSAGE 

  MOV AG, 09H
  LEA DX, MSG 
  INT 21H 

 ; DISPLAYING THE RESULT (IN HEXADECIMAL)

  MOV BX, RESULT ; the result is stored in a new register 

 ; Display the result in higher byte 
  MOV DL, BH 
  CALL DISP_HEX 

 ; diaplay the result in lower byte 
  MOV DL, BL 
  CALL DISP_HEX 

 ; Exit the program 
  MOV AH, 4CH 
  INT 21H 


