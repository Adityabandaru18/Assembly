ORG 100h              

start:
    ; Prompt for the first digit
    mov ah, 09h
    lea dx, prompt1
    int 21h

    ; Read the first digit
    mov ah, 01h
    int 21h
    sub al, 30h
    mov bl, al

    ; Prompt for the second digit
    mov ah, 09h
    lea dx, prompt2
    int 21h

    ; Read the second digit
    mov ah, 01h
    int 21h
    sub al, 30h
    mov bh, al

    ; Compare the two digits
    cmp bl, bh
    je equal

    ; If not equal
    mov ah, 09h
    lea dx, not_equal_msg
    int 21h
    jmp done

equal:
    ; If equal
    mov ah, 09h
    lea dx, equal_msg
    int 21h

done:
    ; Exit the program
    mov ah, 4Ch
    int 21h

prompt1 db 'Enter the first digit: $'         
prompt2 db 0Dh, 0Ah, 'Enter the second digit: $'   
equal_msg db 0Dh, 0Ah, 'The digits are equal.$'   
not_equal_msg db 0Dh, 0Ah, 'The digits are not equal.$' 

