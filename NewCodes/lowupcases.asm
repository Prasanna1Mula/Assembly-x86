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

      MOV SI, OFFSET STRING        ; Point SI to starting of the string

CONVERT_LOOP:
      MOV AL, [SI]                 ; Load the present character 
      CMP AL, '&'                   ; Check for end of the string 
      JE DISPLAY                   ; If end of the string 

      ; Check if the character is lower case
      CMP AL, 'a' 
      JB NEXT_CHAR                  ; If below 'a', skip 
      CMP AL, 'z'  
      JA NEXT_CHAR                  ; If ablove 'z', skip

      ; Convert the character into the uppercase by subtracting 32 (20h) 
      SUB AL, 20H                   ; Converting the lowercase to uppercase 
      MOV [SI], AL                  ; Store back the converted character 


NEXT_CHAR: 
      INC SI                       ; Move to next character  
      JMP CONVERT_LOOP             ; Repeat for the next character 

DISPLAY: 
      ; Display the converted string 
      MOV AH, 09h                  ;  Funcion to display the string 
      MOV DX, OFFSET STRING 
      INT 21H 

      MOV AH, 4CH 
      INT 21H 

CODE ENDS 
END START 
