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
mov rbx, [rdi]
mov rcx, [rsi]
sub rbx, rcx
mov rsi, rbx

xor rax, rax
mov rdi, formatout
call printf

xor rax, rax
ret

section .data
formatin: db "%d", 0
formatout: db "%d", 10, 0

section .bss
value1: resd 1
value2: resd 1
