 org 100h  
; Print the message
mov dx, offset message
mov ah, 09h
int 21h

mov ax,1580h 
mov bx,1025h 
mul bx  
 mov bx,ax
 mov cx,dx 
 
  mov ah,ch
 and ah,0f0h
 shr ah,4
 add ah,30h
 cmp ah,39h
 jle print_high_nibble
 add ah,7
 print_high_nibble:
 mov dl,ah
 mov ah,02h
 int 21h
 
 mov ah,ch
 and ah,0fh
 add ah,30h
 cmp ah,39h
 jle print_low_nibble
 add ah,7         
 print_low_nibble:
 mov dl,ah
 mov ah,02h
 int 21h
 
 
 mov ah,cl
 and ah,0f0h
 shr ah,4
 add ah,30h
 cmp ah,39h
 jle print_high_nibble1
 add ah,7
 print_high_nibble1:
 mov dl,ah
 mov ah,02h
 int 21h
        
 mov ah,cl
 and ah,0fh
 add ah,30h
 cmp ah,39h
 jle print_low_nibble1:
 add ah,7
 print_low_nibble1:
 mov dl,ah
 mov ah,02h
 int 21h
        
        
 mov ah, bh 
 shr ah, 4 
 add ah, 30h
 cmp ah, 39h 
 jle print_high_nibble2
 add ah, 7 
print_high_nibble2:
 mov dl, ah
 mov ah, 02h 
 int 21h
 
 mov ah, bh
 and ah, 0fh
 add ah, 30h 
 cmp ah, 39h 
 jle print_low_nibble2
 add ah, 7 
print_low_nibble2:
 mov dl, ah 
 mov ah, 02h 
 int 21h
 
 mov ah, bl 
 shr ah, 4 
 add ah, 30h 
 cmp ah, 39h 
 jle print_high_nibble3
 add ah, 7 
print_high_nibble3:
 mov dl, ah 
 mov ah, 02h 
 int 21h
 
 mov ah, bl 
 and ah, 0fh 
 add ah, 30h 
 cmp ah, 39h 
 jle print_low_nibble3
 add ah, 7 
print_low_nibble3:
 mov dl, ah 
 mov ah, 02h 
 int 21h
 mov ah,4ch
 int 21h              
 

message db 'The multiplication of 16 bit numbers is: $'
