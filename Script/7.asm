
.MODEL SMALL
.STACK 100h
.DATA
    N1 DB ? 
               
               
    N2 DB ? 
    
.CODE  

    MOV AX, @DATA
    MOV DS, AX
    MOV AH, 1
    INT 21h
    MOV N1, AL
    SUB N1, 30h
    MOV AH, 1
    INT 21h
    MOV N2, AL
    SUB N2, 30h
    MOV BL, N1
    MOV BH, N2
    SUB BH, BL
    CMP BH, 0
    JG N2GREATER
    JS N2SMALLER
    JMP EXIT 
    
    N2GREATER:
        MOV AH, 2
        MOV DL, N1
        ADD DL, 30h
        INT 21h
        JMP EXIT 
        
    N2SMALLER:
        MOV AH, 2
        MOV DL, N2
        ADD DL, 30h
        INT 21h
        JMP EXIT 
        
    EXIT:
        MOV AH, 4Ch
        INT 21h
