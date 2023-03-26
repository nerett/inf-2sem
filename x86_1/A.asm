extern printf
global main
main:
mov rdi, stroka
xor rax, rax
call printf

xor rax, rax
ret

stroka:	db "Liberté, égalité, fraternité!", 10, 0
