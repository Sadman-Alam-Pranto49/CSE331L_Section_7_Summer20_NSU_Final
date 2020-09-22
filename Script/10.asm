
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
    SUB BL, N2
    MOV AH, 2
    MOV DL, BL
    ADD DL, 30h
    INT 21h

