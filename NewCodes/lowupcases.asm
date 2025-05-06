.MODEL SMALL
.STACK 100H 
.DATA 

DATA SEGMENT 
      STRING DB 'hello world!', '&' ; input string with & terminator 
      LEN EQU &-STRING              ; Calculate length of string 
DATA ENDS 

CODE SEGMENT 
    ASSUME CS:CODE DS:DATA

START: 
      MOV AX, @DATA 
      MOV DS, AX                   ; Initialize data segment 
