.MODEL SMALL 
.STACK 100H
.DATA

    SOURCE DB 10,20,30,40,50 ; Source Array 5 (bytes) 
    DEST DB 5 DUP(?)         ; Destination Array 
    COUNT DB 5               ; No of elements 

CODE SEGMENT 
ASSUME CS:CODE DS:DATA 

    MOV AX, @DATA 
    MOV DS, AX              ; Initialise data segment 
    MOV ES, AX              ; Initialise extra segment 

; setting the source index and destination index 
    LEA SI, SOURCE          ; SI points to start of the source 
    LEA DI, DEST             ; DI points to destination 
    MOV CX, 5                ; No of elements = counting for the loop 

; Loop 
    MOV AL, [SI] 
    MOV [DI], AL
    INC SI
    INC DI 
    LOOP COPY_LOOP 

; End the program 
    INT 21H 

END START 

