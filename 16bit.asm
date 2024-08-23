.model small
.stack 100h
.data  
    a dw 1134H          ; First number
    b dw 0100H          ; Second number
    msg db 'The addition of 16-bit numbers is: $'  ; Message to be displayed
.code  
    mov ax, @data        ; Initialize DS register to point to the data segment
    mov ds, ax          

    ; Display the message
    mov ah, 09h          ; Function 9 under INT 21H (Display string)
    lea dx, msg          ; Load address of the message into DX
    int 21h              ; Display the message

    ; Perform the addition
    mov ax, a            ; Load number1 in ax  
    mov bx, b            ; Load number2 in bx  
    add ax, bx           ; Add numbers. Result in ax  

    mov ch, 04h          ; Count of digits to be displayed  
    mov cl, 04h          ; Count to rotate by 4 bits  
    mov bx, ax           ; Result in reg bx  

l2: 
    rol bx, cl           ; Rotate bl so that msb comes to lsb   
    mov dl, bl           ; Load dl with data to be displayed  
    and dl, 0fH          ; Get only lsb  
    add dl, 30H          ; Convert to ASCII by adding 30H  
    cmp dl, 39H          ; Check if the digit is greater than 9  
    jbe l4  
    add dl, 07H          ; If it is a letter (A-F), add 07H  
l4: 
    mov ah, 02H          ; Function 2 under INT 21H (Display character)  
    int 21H  
    dec ch               ; Decrement count  
    jnz l2               ; Loop until all digits are displayed  

    mov ah, 4cH          ; Terminate Program  
    int 21H  
end
