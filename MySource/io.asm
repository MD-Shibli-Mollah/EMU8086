.model small
.stack 100h
.data

main proc
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,2
    mov dl,0ah
    int 21h
    
    mov dl,0dh
    int 21h  
    
    mov dl,bl
    int 21h
    
end main
main endp
    