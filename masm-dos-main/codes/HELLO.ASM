.model small
.stack 100h
.data
    msg db 'Hello COAL!$'
.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 09h      ; print string function
    lea dx, msg
    int 21h
    
    mov ah, 4Ch      ; exit to DOS
    int 21h
main endp
end main
