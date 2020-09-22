
.MODEL SMALL
.STACK 100h
.DATA
    S1 DB "AL: $"
    S2 DB 10, 13, "Divide SHR by 4: $"
    A1 DB ?
.CODE
    MOV AX, @DATA
    MOV DS, AX
    MOV AH, 9
    LEA DX, S1
    INT 21h
    MOV AL, 8  
    
    MOV A1, AL
    MOV AH, 2
    MOV DL, AL
    ADD DL, 30h
    INT 21h 
    
    MOV AL, A1
    SHR AL, 2
    MOV A1, AL
    MOV AH, 9
    LEA DX, S2
    INT 21h 
    
    MOV AL, A1
    MOV AH, 2
    MOV DL, AL
    ADD DL, 30h
    INT 21h


