.globl _start
_start:
	mov x0, #1 //нулевой аргумент (поток процесса - в данном случае stdout)
	adrp x1, slovo //т.к. требуется занести 64-битный адрес с помощью 32-битной команды
	adrp x1, x1, :lo12:slovo //младшие 12 бит
	mov x2, #5 //второй аргумент write - N значений
	mov x8, #64 //write
	svc #0l;
	mov x0, #42 //код возврата
	mov x8, #93 //системный вызов 93 "exit"
	svc #0 //switch context

.data
slovo:
	.ascii "Privet"
	dlina = . - slovo //. - текущее положение в коде, slovo - его положение в коде

