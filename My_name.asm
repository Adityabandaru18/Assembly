
;Program to print my Name
org 100h
jmp start
msg: db "My name is Aditya bandaru", 0Dh, 0Ah, 24h
start: mov dx, msg 
mov ah, 09h 
int 21h 
mov ah, 0 
int 16h 
ret




