extern printf
global main
main:
mov rdi, stroka
xor rax, rax
call printf
mov rax, 87
mov rbx, 86 
;xor rax, rax
ret

stroka:	db "Privet", 10, 0
