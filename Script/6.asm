

.MODEL SMALL
.STACK 100h
.DATA
    S1 DB " is an odd number$"     
    
    S2 DB " is an even number$"  
    
    N DB ?   
    
.CODE
    MOV AX, @DATA
    MOV DS, AX
    MOV AH, 1
    INT 21h
    MOV N, AL
    SUB AL, 30h
    TEST AL, 1h
    MOV AH, 2
    MOV DL, 10
    INT 21h
    MOV DL, 13
    INT 21h
    MOV DL, N
    INT 21h
    JZ EVEN
    JNZ ODD   
    
    EVEN:
        MOV AH, 9
        LEA DX, S2
        INT 21h
        JMP EXIT   
        
    ODD:
        MOV AH, 9
        LEA DX, S1
        INT 21h
        JMP EXIT   
        
    EXIT:
        MOV AH, 4Ch
        INT 21h