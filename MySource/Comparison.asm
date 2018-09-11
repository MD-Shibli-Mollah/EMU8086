.model small
.stack 100h
.data

main proc
    mov al,5
    mov bl,3
    
    cmp al,bl
    jg o1
    jmp o2
    
o1: 
    mov dl,al
    add dl,48
    mov ah,2
    int 21h
    jmp exit
    
o2:
     mov dl,bl
     add dl,48
     mov ah,2
    
exit:
     mov ah,4ch 
     main endp 
     end main