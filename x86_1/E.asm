extern printf
extern scanf
global main

section .text
main:

xor rax, rax
mov rdi, formatin
mov rsi, value1
call scanf

xor rax, rax
mov rdi, formatin
mov rsi, value2
call scanf

mov rdi, value1
mov rsi, value2
mov rax, [rdi]
mov rcx, [rsi]

xor rdx, rdx
cqo
idiv rcx

mov rsi, rdx

xor rax, rax
mov rdi, formatout
call printf

xor rax, rax
ret

section .data
formatin: db "%Ld", 0
formatout: db "%Ld", 10, 0

section .bss
value1: resd 2
value2: resd 2
