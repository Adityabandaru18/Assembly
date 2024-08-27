org 100h

start:
    mov dx, offset msg
    mov ah, 09h
    int 21h

    mov ax, num1
    sub ax, num2

    mov bx, ax

    mov ah, bh
    and ah, 0F0h
    shr ah, 4
    call print_hex_digit

    mov ah, bh
    and ah, 0Fh
    call print_hex_digit

    mov ah, bl
    and ah, 0F0h
    shr ah, 4
    call print_hex_digit

    mov ah, bl
    and ah, 0Fh
    call print_hex_digit

    mov ah, 4Ch
    int 21h

print_hex_digit:
    add ah, 30h
    cmp ah, 39h
    jle print_digit
    add ah, 7

print_digit:
    mov dl, ah
    mov ah, 02h
    int 21h
    ret

num1 dw 1234h
num2 dw 0ABCh

msg db 'The subtraction of 16bit numbers is: $'
