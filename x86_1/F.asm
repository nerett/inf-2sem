;global _start
;_start:

extern printf
extern scanf
;extern _exit
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
mov rbx, [rsi]

mov rcx, yes
mov rdi, no
add rax, rbx
debug:
cmovo rdi, rcx

xor rax, rax
call printf

xor rax, rax
ret
;call _exit

section .data
formatin: db "%Ld", 0
formatout: db "%Ld", 10, 0
yes: db "YES", 10, 0
no: db "NO", 10, 0

section .bss
value1: resd 2
value2: resd 2
