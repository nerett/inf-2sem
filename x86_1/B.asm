extern printf
extern scanf
global main

section .text
main:

xor rax, rax
mov rdi, formatin
mov rsi, value
call scanf

mov rsi, value
mov rbx, [rsi]
xor rcx, rcx
mov cx, bx
mov rsi, rcx

xor rax, rax
mov rdi, formatout
call printf

xor rax, rax
ret

section .data
formatin: db "%d", 0
formatout: db "%d", 10, 0

section .bss
value: resd 1
