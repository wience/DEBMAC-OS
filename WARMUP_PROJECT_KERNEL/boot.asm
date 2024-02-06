mov ah, 0x0e
mov al, 'A'
int 0x10

; inc al
; add al, 0x20
; int 0x10
jmp loop

loop:
    inc al
    add al, 0x20
    int 0x10
    sub al, 0x20
    inc al
    int 0x10
    cmp al, 'z' + 1
    jge exit
    jmp loop
exit:
    jmp $

times 510-($-$$) db 0
db 0x55, 0xaa