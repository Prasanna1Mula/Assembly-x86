.MODEL SMALL
.STACK 100H
.DATA
STR1 DB "KALAK"
SLEN EQU($-STR1)
STR2 DB 40 dup(0)
MSG1 DB "PALINDROME$"
MSG2 DB "NOT PALINDROME$"
.CODE 
START : MOV AX, @DATA
        MOV DS,AX
        MOV ES,AX
        MOV CX, SLEN 
        LEA SI, STR1
        ADD SI, SLEN-1
        LEAD DI, STR2
    UP: MOV AL, [SI]
        MOV [DI], AL
        DEC SI
        INC DI
        LOOP UP
        LEA SI, STR1
        LEA DI, STR2
        MOV CX, SLEN
        CLD
        REPE CMPBS
        CLD
        JNZ DOWN 
        LEA DX, MSG1
        JMP DOWN1
   DOWN: LEA DX, MSG2
   DOWN1: MOV AH, 09H
INT 21H
INT 3H
END START 
    
