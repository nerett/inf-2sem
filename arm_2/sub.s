.globl _start

.text
_start:
	adrp x0, format_in
	add x0, x0, :lo12:format_in
	adrp x1, int1
	add x1, x1, :lo12:int1
pre_scanf1:
	bl scanf
post_scanf1:
	adrp x0, format_in
	add x0, x0, :lo12:format_in
	adrp x1, int2
	add x1, x1, :lo12:int2
pre_scanf2:
	bl scanf
post_scanf2:
	adrp x5, int1
	add x5, x5, :lo12:int1
	adrp x6, int2
	add x6, x6, :lo12:int2
	ldr x5, [x5]
	ldr x6, [x6]
pre_sub:
	sub x5, x5, x6
post_sub:
	adrp x0, format_out
	add x0, x0, format_out
	mov x1, x5
pre_printf:
	bl printf
post_printf:
end:
	mov x0, #0
	bl exit

.bss
	.lcomm int1, 4
	.lcomm int2, 4

.data
format_in:	.ascii "%d"
format_out:	.ascii "%d\n"
