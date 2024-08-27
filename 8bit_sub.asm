org 100h

num1 db 78h
num2 db 26h 

start:
    ; Print the message
    mov dx, offset msg
    mov ah, 09h
    int 21h

    ; Perform subtraction
    mov al, num1
    sub al, num2

    mov bl, al

    ; Extract and print the first digit
    mov ah, al
    and ah, 0F0h
    shr ah, 4
    add ah, 30h
    cmp ah, 39h   
    jle print_first_digit

    add ah, 7  

print_first_digit: 
    mov dl, ah
    mov ah, 02h
    int 21h

    ;Extract and print the second digit
    mov ah, bl
    and ah, 0Fh
    add ah, 30h
    cmp ah, 39h  
    jle print_second_digit

    add ah, 7

print_second_digit: 
    mov dl, ah
    mov ah, 02h
    int 21h
    mov ah, 4Ch
    int 21h

msg db 'The subtraction of 8bit numbers is: $'
