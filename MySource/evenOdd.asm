.model small
.STACK 100h
.data
    msg DB 'Even$'
    msg1 DB 'odd$'

main PROC
    MOV AX,@data
    MOV DS,AX 
    
    MOV AH,1     ;input
    INT 21h
    
    MOV BL,2 
    DIV BL
    
    CMP AH,0     ;comparison
    JNE odd 
    
    MOV AH,2
    MOV DL,0ah   ;new line
    INT 21h 
    
    MOV AH,9h
    LEA DX,msg   ;output EVEN
    INT 21h
    JMP exit

odd:
    MOV AH,2
    MOV DL,0ah   ;new line
    INT 21h    
    
    MOV AH,9h
    LEA DX,msg1  ;output ODD
    INT 21h
    
exit:
       MOV AH,4ch
       INT 21h
main ENDP
END main    
    
    