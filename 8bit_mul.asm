 org 100h   

;Print the message
mov dx, offset message
mov ah, 09h
int 21h

mov al,98h
mov bl,12h
mul bl

mov bl, al

mov ah, al
and ah, 0F0h
shr ah,4
add ah, 30h
cmp ah, 39h
jle print_first_digit
add ah, 7  

print_first_digit:
mov dl,ah
mov ah,02h
int 21h

mov ah, bl
and ah, 0Fh
add ah, 30h
cmp ah, 39h 
jle print_sec_digit
add ah,7

print_sec_digit:
mov dl,ah
mov ah, 02h
int 21h

mov ah,4Ch
int 21h            

message db 'The multiplication of 8 bit numbers is: $' 
