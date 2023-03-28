.globl _start
_start:

	mov x0, #0 //stdin
	adrp x1, buf //adress of buffer relative from PC
	add x1, x1, :lo12:buf //lower 12 bits
	mov x2, razmer //size of buffer
	mov x8, #63 //read
	svc #0	//kernel!!

	mov x2, x0 //retcode from read -> arg #2 of write
 	mov x0, #1 //stdout
	adrp x1, buf
	add x1, x1, :lo12:buf
	mov x8, #64 //write
	svc #0

	mov x0, #0
	mov x8, #93 //exit
	svc #0

.data
slovo:
	.ascii "Privet"
dlina = . - slovo

.bss
razmer = 10
.lcomm buf, razmer
