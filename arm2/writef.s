.globl _start
_start:

	adrp x0, slovo
	add x0, x0, :lo12:slovo
	bl puts

	mov x0, #0
	bl exit

.data
slovo:
	.ascii "Hell, Word!"
dlina = . - slovo
