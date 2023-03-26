.globl _start
_start:
	//adrp x0, string
	//add x0, x0, :lo12:string
	//bl printf
	mov x1, #1299
	adrp x0, format_out
	add x0, x0, :lo12:format_out
	bl printf
	b end
	adrp x1, int1
	add x1, x1, :lo12:int1
	adrp x2, int2
	add x2, x2, :lo12:int2
pre_scanf:
	bl scanf
	//b end
post_scanf:
	adrp x1, int1
	add x1, x1, :lo12:int1
	adrp x2, int2
	add x2, x2, :lo12:int2
	ldr x1, [x1]
	ldr x2, [x2]
pre_sub:
	sub x1, x1, x2
post_sub:
	adrp x0, format_out
	add x0, x0, format_out
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
format_in:	.ascii "%d %d"
format_out:	.ascii "%d\n"
string:		.ascii "test string\n"
