[BITS 16]
[ORG 0x7c00]
_start:
	cli
	mov ax, cs
	mov ds, ax
	mov ss, ax
	mov sp, _start

	;; Загрузка регистра GDTR:
	lgdt [gd_reg]

	;; Включение A20:
	in al, 0x92
	or al, 2
	out 0x92, al

	;; Установка бита PE регистра CR0
	mov eax, cr0
	or al, 1
	mov cr0, eax

	;; С помощью длинного прыжка мы загружаем
	;; селектор нужного сегмента в регистр CS
	;; (напрямую это сделать нельзя)
	;; 8 (1000b) - первый дескриптор в GDT, RPL=0
	jmp 0x8: _protected


[BITS 32]
_protected:
	;; Загрузим регистры DS и SS селектором
	;; сегмента данных
	mov ax, 0x10
	mov ds, ax
	mov ss, ax

	call memtest
	;; mov esi, msg_hello
	;; call kputs

	;; Завесим процессор
	hlt
	jmp short $


cursor:	dd 0
%define VIDEO_RAM 0xB8000

;; Функция выполняет прямой вывод в память видеоадаптера
;; которая находится в VGA-картах (и не только) по адресу 0xB8000

kputs:
	pusha
	mov bl, 10011111b ;; цвет
	%define VIDEO_RAM_COLOR 0xB8001
.loop:
	lodsb
	test al, al
	jz .quit

	mov ecx, [cursor]
	mov [VIDEO_RAM+ecx*2], al
	mov [VIDEO_RAM_COLOR+ecx*2], bl
	inc dword [cursor]
	jmp short .loop

.quit:
	popa
	ret

memtest:
	pusha

	mov esi, msg_memtest_start
	call kputs

	%define TESTRAM 0xf0000
	%define TESTSIZE 1000
	;; %define ABOBA BYTE 0xd
	mov ecx, TESTSIZE
.memtest_writeloop:
	mov [TESTRAM+ecx*4], ecx
	loop .memtest_writeloop

	;;mov [TESTRAM+TESTSIZE*2], ABOBA

	mov esi, msg_memtest_write
	call kputs

	mov ecx, TESTSIZE
.memtest_readloop:
	cmp [TESTRAM+ecx*4], ecx
	jne .memtest_error
	loop .memtest_readloop

	mov esi, msg_memtest_read
	call kputs

	mov esi, msg_success
	call kputs ;; успех

	jmp .memtest_quit
.memtest_error:
	mov esi, msg_error
	call kputs
	jmp .memtest_quit
.memtest_quit:
	popa
	ret

gdt:
	dw 0, 0, 0, 0	; Нулевой дескриптор

	db 0xFF		; Сегмент кода с DPL=0
	db 0xFF		; Базой=0 и Лимитом=4 Гб
	db 0x00
	db 0x00
	db 0x00
	db 10011010b
	db 0xCF
	db 0x00

	db 0xFF		; Сегмент данных с DPL=0
	db 0xFF		; Базой=0 и Лимитом=4Гб
	db 0x00
	db 0x00
	db 0x00
	db 10010010b
	db 0xCF
	db 0x00


	;; Значение, которое мы загрузим в GDTR:
gd_reg:
	dw 8192
	dd gdt

msg_hello:	db "Hello from the world of 32-bit Protected Mode",0
msg_success: 	db "MEMTEST success! ",0
msg_error: 	db "MEMTEST error! ",0
msg_memtest_start: db "MEMTEST start: ",0
msg_memtest_write: db "MEMTEST write succeed ",0
msg_memtest_read: db "MEMTEST read succeed ",0

	times 510-($-$$) db 0
	db 0xaa, 0x55


