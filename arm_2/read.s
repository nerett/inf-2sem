.globl _start
_start:
	adrp x1, buf
	add x1, x1, :lo12:buf
	mov x0, #0 //stdin
	mov x2, #10 //длина (сколько)

	mov x8, #63 //предположительно read
	svc #0 //переключение в контекст ядра (kernel)

	mov x2, razmer //т.к. read возвращает количество считанных символов
 	mov x0, #1
	adrp x1, buf
	add x1, x1, :lo12:buf
	mov x8, #64 //write
	svc #0

	mov x0, #0
	mov x8, #93 //exit
	svc #0

.bss //секция изменяемых данных
razmer = 10

.lcomm buf, razmer //секция изменяемых данных
