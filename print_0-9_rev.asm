org 100h

start:
    mov cx, 10
    mov dl, '9'

print_loop:
    mov ah, 02h
    int 21h
    dec dl
    loop print_loop

    mov ah, 4Ch
    int 21h
