.MODEL SMALL 
.STACK 100H
.CODE 

DATA SEGMENT 
STRING1 DB 06H, 08H, 11H, 32H, 22H
DATA ENDS 

CODE SEGMENT 
ASSUME CS: CODE, DS: DATA 

MOV AX, @DATA ; Initialise data segment 
MOV DS, AX 
MOV SI, 1000H

MOV CH, 04H ; Intilaise CH register for loop 

UP2 : MOV CL, 04H
LEA SI, STRING1 ; Loading effective address to the source index 

UP1 : MOV AL, [SI] ; Contents of source index to store in AL register 
MOV BL, [SI+1] ; The next level of contents to BL register 
CMP AL, BL ; Comparing AL and BL 
JC DOWN ; Lower number moves down after comparing between both 
MOV DL, [SI+1]
XCHG [SI], DL ; if current element is smaller than the next number 
MOV [SI+1], DL ; Arranging in ascending order 

DOWN: INC SI ; SI is increased by one point to next pair of elements in that array 
DEC CL ; Decrement in loop counter 
JNZ UP1 ; If it is not zero, jumps to UP1 
DEC CH ; Decrement in loop counter 
JNZ UP2 ; If it is not zero jumps to UP2 


INT3 ; Terminating preogram 
CODE ENDS 
