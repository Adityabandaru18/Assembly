ORG 100h      
    
MOV DX, OFFSET input  
MOV AH, 09h        
INT 21h       
     
MOV AH, 01h        
INT 21h            
MOV DL, AL 
MOV BL,AL       
CMP AL, 'A'        
JL NotUpperCase    
CMP AL, 'Z'        
JG NotUpperCase    
ADD BL, 20h        
MOV DX, OFFSET output  
MOV AH, 09h        
INT 21h

MOV DL, BL            
MOV AH, 02h        
INT 21h            
JMP EndProgram     

NotUpperCase:
MOV DX, OFFSET error  
MOV AH, 09h        
INT 21h            

EndProgram:
MOV AH, 4Ch        
INT 21h            

input  DB 'Enter an uppercase letter: $'
output DB 0Dh, 0Ah, 'The lowercase letter is: $'
error  DB 0Dh, 0Ah, 'Error: Not an uppercase letter! $'

END
