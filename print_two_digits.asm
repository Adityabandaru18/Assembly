ORG 100h           

MOV DX, OFFSET msg_input  
MOV AH, 09h        
INT 21h            

; Read first digit
MOV AH, 01h        
INT 21h            
MOV BL, AL         

; Check if the first character is a digit (0-9)
CMP AL, '0'        
JL NotDigit        
CMP AL, '9'        
JG NotDigit        

; Read second digit
MOV AH, 01h        
INT 21h            
MOV BH, AL         

; Check if the second character is a digit (0-9)
CMP AL, '0'        
JL NotDigit        
CMP AL, '9'        
JG NotDigit        

; Print the message "The entered digits are: "
MOV DX, OFFSET msg_output  
MOV AH, 09h        
INT 21h            

; Print the first entered digit
MOV DL, BL         
MOV AH, 02h        
INT 21h            

; Print a space between the two digits
MOV DL, ' '        
MOV AH, 02h        
INT 21h            

; Print the second entered digit
MOV DL, BH         
MOV AH, 02h        
INT 21h            

JMP EndProgram     

NotDigit:
MOV DX, OFFSET msg_error  
MOV AH, 09h        
INT 21h            

EndProgram:
MOV AH, 4Ch        
INT 21h            

msg_input  DB 'Enter two digits: $'
msg_output DB 0Dh, 0Ah, 'The entered digits are: $'  
msg_error  DB 0Dh, 0Ah, 'Error: One or both inputs are not digits! $'  

END                
