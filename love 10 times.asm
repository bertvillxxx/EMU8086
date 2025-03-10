.MODEL SMALL
.STACK 100h

.DATA
    message DB 'LOVE KO TOH$'  

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    MOV CX, 10          

OUTER_LOOP:
    LEA SI, message 

INNER_LOOP:
    MOV DL, [SI]        
    CMP DL, '$'         
    JE END_INNER_LOOP

    MOV AH, 02h         
    INT 21h

    INC SI              
    JMP INNER_LOOP

END_INNER_LOOP:
   
    MOV DL, 0Dh
    MOV AH, 02h
    INT 21h
    MOV DL, 0Ah
    MOV AH, 02h
    INT 21h

    LOOP OUTER_LOOP     

   
    MOV AH, 4Ch
    INT 21h

MAIN ENDP
END MAIN



