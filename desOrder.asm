.MODEL SMALL
.STACK 100H
.CODE 

DATA SEGMENT 
STRING DB 99H, 12H, 14H, 45H, 48H
DATA ENDS 
ASSUME CS:CODE, DS: DATA
START : MOV AX, @DATA 
        MOV DS, AX         ; Initialise data segment 
        MOV SI, 1000H      ; Intialise Segment Index with 1000H 
        MOV CH, 04H        ; Move 04 to outer loop of counter register 
        UP2: MOV CL, 04H   ; Mov 04H to inner loop of counter register 
        LEA SI, STRING1    ; load effective address to SI register 

UP1 : MOV AL, [SI]     ; Load the effective memory address to AL register 
      MOV BL, [SI+1]   ; Load the effective memory to BL register 
      CMP AL, BL       ; Comapre between AL and BL registers 
      JNC DOWN         ; The Higher number moves down 
      MOV DL, [SI+1]   
      XCHG [SI],DL     ; Swap if the current element is less than the previous number 
      MOV [SI+1],DL

DOWN: INC SI           ; Increments SI register to next pointer 
      DEC CL           ; Decrements the inner loop counter to UP1 
      JNZ UP1
      DEC CH           ; Derement the outerloop counter to UP2 if CH is not zero 
      JNZ UP2
      INT 3 
      CODE ENDS 
      END START 
