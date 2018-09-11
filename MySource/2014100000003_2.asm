.model
.stack
.code
    main proc
        
        mov ah,1       ;Input 1
        int 21h
        mov bl,al
        
        
        mov ah,1       ;Input 2
        int 21h
        mov cl,al
        
        mov ah,1       ;Input 3
        int 21h
        mov ch,al
        
       
        
        mov ah,2 
       
        
        mov dl,0ah     ;/n
        int 21h
        
        mov dl,0dh     ;/n
        int 21h
                 
         
        mov dl,bl      ;output 1
        add dl,32
        int 21h
        
        
        
        mov dl,0ah     ;/n
        int 21h
        
        mov dl,0dh     ;/n
        int 21h
                 
         
        mov dl,cl       ;output 2
        add dl,32
        int 21h  
        
        mov dl,0ah     ;/n
        int 21h
        
        mov dl,0dh     ;/n
        int 21h
        
         
        mov dl,ch       ;output 3
        add dl,32
        int 21h 
                 
        
        
        mov ah,4ch     ;exiting
        int 21h
        end main
        main endp
        
         
        
        
        
        
        