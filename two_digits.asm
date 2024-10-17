ORG 100h          

mov dx, OFFSET msg      
MOV AH, 09H             
INT 21H


MOV AL, 64        
MOV AH, 00h          


MOV BL, 10              
DIV BL                  
ADD AL, 30H             
MOV DL, AL  
MOV BH,AH               
MOV AH, 02H             
INT 21H                 


MOV AL, BH              
ADD AL, 30H             
MOV DL, AL              
MOV AH, 02H             
INT 21H                 


MOV AH, 4CH             
INT 21H                 
msg db 'The two-digit numbers are: $'   

end
