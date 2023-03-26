[ORG 0x7C00]

start:

cli
;mov ax, cs
;mov ds, ax
xor ax, ax;
mov ds, ax;
mov ss, ax
mov sp, start

sti

mov si, msg
call kputs

cli
hlt
jmp short $

kputs:

.loop:
lodsb
test al, al
jz .quit
mov ah, 0x0E
int 0x10
jmp short .loop
.quit:
ret


msg: db "Hello from the world of real programming!",0x0A,0x0D,0
times 510-($-$$) db 0
db 0xAA, 0x55 
