.MODEL SMALL
.STACK 100h

.DATA
    initials DB 'BER$' 

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    LEA SI, initials    

PRINT_LOOP:
    MOV DL, [SI]         
    MOV AH, 02h          
    INT 21h

    
    MOV DL, 0Dh
    MOV AH, 02h
    INT 21h

   
    MOV DL, 0Ah
    MOV AH, 02h
    INT 21h

    INC SI             
    CMP SI, OFFSET initials + 3 
    JNE PRINT_LOOP


    MOV AH, 4Ch
    INT 21h

MAIN ENDP
END MAIN
