.globl _start
_start:
 	mov x0, #1
	adrp x1, slovo
	add x1, x1, :lo12:slovo
	mov x2, dlina
	mov x8, #64 //write
	svc #0

	mov x0, #0
	mov x8, #93 //exit
	svc #0

.data
slovo:
	.ascii "Hell, Word!"
dlina = . - slovo
