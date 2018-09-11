.model small
.stack 100h 
.data
.code

main proc
    
        mov ah,1
        int 21h
        
        mov bl,al
        
        mov cl, al
        
        sub bl, 48
        
        sub cl, 48
        
        
        
        shl bl,2
        
        mov ah,2 
        mov dl, 0ah
        int 21h
        
        mov dl,0dh
        int 21h
        
        mov dl,bl  
        add dl,48
        int 21h   
        
        
        shr cl,1
        mov ah,2 
        mov dl, 0ah
        int 21h
        
        mov dl,0dh
        int 21h
        
        mov dl,cl
          
        add dl,48
        int 21h   
        
        
        
        
        mov ah,4ch
        main endp
        end main