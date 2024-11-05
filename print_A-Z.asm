org 100h

start:
    mov cx, 26
    mov dl, 'A'

print_loop:
    mov ah, 02h
    int 21h
    inc dl
    loop print_loop

    mov ah, 4Ch
    int 21h
