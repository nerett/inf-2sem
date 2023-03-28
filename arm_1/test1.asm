	.arch armv7-a
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"test1.c"
	.text
	.align	1
	.p2align 2,,3
	.global	max
	.arch armv7-a
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	max, %function
max:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, r1
	it	lt
	movlt	r0, r1
	bx	lr
	.size	max, .-max
	.section	.text.startup,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	main
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r0, #787
	bx	lr
	.size	main, .-main
	.text
	.align	1
	.p2align 2,,3
	.global	sumarray
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	sumarray, %function
sumarray:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0
	ble	.L7
	add	r1, r0, r1, lsl #2
	mov	r3, r0
	movs	r0, #0
.L6:
	ldr	r2, [r3], #4
	cmp	r1, r3
	add	r0, r0, r2
	bne	.L6
	bx	lr
.L7:
	movs	r0, #0
	bx	lr
	.size	sumarray, .-sumarray
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",%progbits
