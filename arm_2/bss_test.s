.globl _start

.text
_start:
	adrp x0, format_in
	add x0, x0, :lo12:format_in
	adrp x1, integer
	add x1, x1, :lo12:integer

	mov x2, #0
	mov x3, #0
	mov x4, #0
	mov x5, #0
	mov x6, #0
	mov x7, #0
	mov x8, #0

pre_scanf:
	bl scanf
operations:
	adrp x5, integer
	add x5, x5, :lo12:integer
	ldr x6, [x5]
	mov x7, #3
	mul x6, x6, x7
pre_pre_printf:
	adrp x0, format_out
	add x0, x0, :lo12:format_out
	mov x1, x6
	mov x2, #0
	mov x3, #0
	mov x4, #0
	mov x5, #0
	mov x6, #0
	mov x7, #0
	mov x8, #0
pre_printf:
	bl printf
exit:
	mov x0, #0
	bl exit

.bss
	.lcomm integer, 2

.data
	format_out:	.ascii "%d\n"
	format_in: 	.ascii "%d"
