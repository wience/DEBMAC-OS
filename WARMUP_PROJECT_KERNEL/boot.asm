mov bx, 4
cmp bx, 5
je label
jmp $

label:
    move ah, 0x0e
    move al, 'X'
    int 0x10
jmp $

times 510-($-$$) db 0
db 0x55, 0xaa