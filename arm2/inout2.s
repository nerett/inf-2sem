.globl _start
_start:
	adrp x0, string
	add x0, x0, :lo12:string
	bl gets

	cmp x0, #0
	beq end
	bl puts

end:
	mov x0, #0
	bl exit

.bss
	size = 10
.lcomm string, size
