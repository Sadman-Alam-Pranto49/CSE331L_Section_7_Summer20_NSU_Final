
.MODEL SMALL
.STACK 100h
.DATA
    ALPHABETS DB DUP 26 (?)   
    
.CODE   
     MOV AX, @DATA
     MOV DS, AX
     MOV CX, 26
     MOV SI, 0  
     
     L1:
        MOV AH, 1
        INT 21h
        MOV ALPHABETS[SI], AL
        INC SI
        LOOP L1
     MOV SI, 25
     MOV CX, 26
     
     L2:
        MOV DL, ALPHABETS[SI]
        MOV AH, 2
        INT 21h
        DEC SI
        LOOP L2



