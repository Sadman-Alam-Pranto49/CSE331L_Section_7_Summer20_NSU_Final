.MODEL SMALL
.STACK 100h
.DATA
    N1 DB 0h
    N2 DB 1h 
    
.CODE
    MOV AX, @DATA
    MOV DS, AX
    MOV AH, 1
    INT 21h
    MOV CX, 0
    MOV CL, AL
    SUB CL, 32h
    MOV AH, 2
    MOV DL, 30h
    INT 21h
    MOV AH, 2
    MOV DL, 31h
    INT 21h   
    
    L1:
        MOV BL, N1
        ADD BL, N2
        MOV AH, 2
        MOV DL, BL
        ADD DL, 30h
        INT 21h
        MOV BH, N2
        MOV N2, BL
        MOV N1, BH  
        
        LOOP L1