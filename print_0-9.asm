org 100h

start:
    mov cx, 10
    mov dl, '0'

print_loop:
    mov ah, 02h
    int 21h
    inc dl
    loop print_loop

    mov ah, 4Ch
    int 21h
