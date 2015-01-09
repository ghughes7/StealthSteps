	.cpu arm7tdmi
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"sound.c"
	.text
	.align	2
	.global	setUpSounds
	.type	setUpSounds, %function
setUpSounds:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L2
	mov	r3, #67108864
	mov	r1, #128
	strh	r1, [r3, #132]	@ movhi
	strh	r2, [r3, #130]	@ movhi
	bx	lr
.L3:
	.align	2
.L2:
	.word	-1266
	.size	setUpSounds, .-setUpSounds
	.align	2
	.global	pauseSound
	.type	pauseSound, %function
pauseSound:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #0
	mov	r1, #67108864
	mov	r2, #520
	strh	r3, [r1, r2]	@ movhi
	ldr	r2, .L5
	ldr	r2, [r2]
	ldr	r1, .L5+4
	ldr	ip, [r2, #20]
	ldr	r0, .L5+8
	str	r3, [r2, #20]
	str	r3, [r1, #12]
	str	r3, [r0, #12]
	ldr	r1, [r2, #32]
	str	r3, [r2, #32]
	bx	lr
.L6:
	.align	2
.L5:
	.word	dma
	.word	soundB
	.word	soundA
	.size	pauseSound, .-pauseSound
	.align	2
	.global	unPauseSound
	.type	unPauseSound, %function
unPauseSound:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L8
	mov	r3, #67108864
	mov	r2, #128
	strh	r2, [r3, r1]	@ movhi
	ldr	r0, .L8+4
	ldr	r1, .L8+8
	strh	r2, [r3, r0]	@ movhi
	ldr	r3, [r1]
	ldr	r2, [r3, #20]
	orr	r2, r2, #-2147483648
	str	r2, [r3, #20]
	ldr	ip, [r3, #32]
	ldr	r0, .L8+12
	ldr	r1, .L8+16
	mov	r2, #1
	orr	ip, ip, #-2147483648
	str	ip, [r3, #32]
	str	r2, [r0, #12]
	str	r2, [r1, #12]
	bx	lr
.L9:
	.align	2
.L8:
	.word	258
	.word	262
	.word	dma
	.word	soundA
	.word	soundB
	.size	unPauseSound, .-unPauseSound
	.align	2
	.global	muteSound
	.type	muteSound, %function
muteSound:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #67108864
	mov	r2, #0
	strh	r2, [r3, #130]	@ movhi
	bx	lr
	.size	muteSound, .-muteSound
	.align	2
	.global	unMuteSound
	.type	unMuteSound, %function
unMuteSound:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L12
	mov	r3, #67108864
	strh	r2, [r3, #130]	@ movhi
	bx	lr
.L13:
	.align	2
.L12:
	.word	-1266
	.size	unMuteSound, .-unMuteSound
	.align	2
	.global	stopSound
	.type	stopSound, %function
stopSound:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r4, [sp, #-4]!
	ldr	r1, .L15
	ldr	r4, .L15+4
	ldr	ip, .L15+8
	ldr	r0, .L15+12
	mov	r3, #0
	mov	r2, #67108864
	strh	r3, [r2, r4]	@ movhi
	str	r3, [ip, #12]
	ldr	r4, [sp], #4
	str	r3, [r2, #196]
	str	r3, [r0, #12]
	strh	r3, [r2, r1]	@ movhi
	str	r3, [r2, #208]
	bx	lr
.L16:
	.align	2
.L15:
	.word	262
	.word	258
	.word	soundA
	.word	soundB
	.size	stopSound, .-stopSound
	.global	__aeabi_idiv
	.align	2
	.global	playSoundA
	.type	playSoundA, %function
playSoundA:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r4, .L18
	rsb	r3, r1, r1, asl #4
	mov	r6, r1
	mov	r10, r0
	mov	r8, #1
	mov	r1, r2
	ldr	r7, .L18+4
	str	r2, [r4, #8]
	mov	r0, r3, asl #2
	str	r10, [r4]
	str	r6, [r4, #4]
	str	r8, [r4, #12]
	str	r8, [r4, #16]
	mov	r5, r2
	mov	lr, pc
	bx	r7
	mov	r1, r5
	mov	r9, r0
	mov	r0, r6
	mov	lr, pc
	bx	r7
	ldr	r3, .L18+8
	sub	r0, r0, r0, asl #2
	ldr	r3, [r3]
	add	r9, r9, r0
	mov	r6, #0
	ldr	lr, .L18+12
	sub	r0, r9, #1
	mov	r2, #10
	ldr	r9, .L18+16
	str	r0, [r4, #20]
	str	r2, [r4, #24]
	mov	r0, r8
	mov	r4, #67108864
	mov	r1, r10
	ldr	r2, .L18+20
	str	r6, [r3, #20]
	ldr	ip, .L18+24
	mov	r3, #910163968
	str	r6, [lr]
	mov	lr, pc
	bx	ip
	mov	r1, r5
	strh	r6, [r4, r9]	@ movhi
	mov	r0, #16777216
	mov	lr, pc
	bx	r7
	rsb	r0, r0, #0
	mov	r1, r0, asl #16
	mov	r1, r1, lsr #16
	mov	r2, #256
	mov	r3, #128
	strh	r1, [r4, r2]	@ movhi
	strh	r3, [r4, r9]	@ movhi
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L19:
	.align	2
.L18:
	.word	soundA
	.word	__aeabi_idiv
	.word	dma
	.word	.LANCHOR0
	.word	258
	.word	67109024
	.word	DMANow
	.size	playSoundA, .-playSoundA
	.align	2
	.global	interruptHandler
	.type	interruptHandler, %function
interruptHandler:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L33
	mov	r3, #67108864
	ldrh	r1, [r3, r2]
	mov	r2, #520
	tst	r1, #1
	mov	r1, #0
	stmfd	sp!, {r4, lr}
	strh	r1, [r3, r2]	@ movhi
	beq	.L22
	ldr	r2, .L33+4
	ldr	r1, [r2, #12]
	cmp	r1, #0
	beq	.L24
	ldr	r1, .L33+8
	ldmia	r1, {r0, r4}
	ldr	ip, [r2, #20]
	add	r0, r0, #1
	rsb	r4, r4, r0
	cmp	r4, ip
	str	r0, [r1]
	ble	.L24
	ldr	r1, [r2, #16]
	cmp	r1, #0
	bne	.L32
	ldr	r0, .L33+12
	str	r1, [r2, #12]
	strh	r1, [r3, r0]	@ movhi
	str	r1, [r3, #196]
.L24:
	ldr	r3, .L33+16
	ldr	r2, [r3, #12]
	cmp	r2, #0
	beq	.L22
	ldr	r2, .L33+8
	add	r1, r2, #8
	ldmia	r1, {r1, ip}
	ldr	r0, [r3, #20]
	add	r1, r1, #1
	rsb	ip, ip, r1
	cmp	ip, r0
	str	r1, [r2, #8]
	ble	.L22
	ldr	r0, .L33+20
	mov	r2, #0
	mov	r1, #67108864
	strh	r2, [r1, r0]	@ movhi
	str	r2, [r3, #12]
	str	r2, [r1, #208]
.L22:
	ldr	r0, .L33
	mov	r3, #67108864
	mov	r2, #1
	mov	r1, #520
	strh	r2, [r3, r0]	@ movhi
	ldmfd	sp!, {r4, lr}
	strh	r2, [r3, r1]	@ movhi
	bx	lr
.L32:
	ldmia	r2, {r0, r1, r2}
	bl	playSoundA
	b	.L24
.L34:
	.align	2
.L33:
	.word	514
	.word	soundA
	.word	.LANCHOR0
	.word	258
	.word	soundB
	.word	262
	.size	interruptHandler, .-interruptHandler
	.align	2
	.global	playSoundB
	.type	playSoundB, %function
playSoundB:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, .L36
	mov	r6, r2
	rsb	r2, r1, r1, asl #4
	sub	sp, sp, #12
	mov	r3, r0
	mov	r5, #0
	mov	r7, r1
	ldr	r8, .L36+4
	mov	r1, r6
	mov	r0, r2, asl #2
	mov	r10, #1
	stmia	r4, {r3, r7}
	str	r3, [sp, #4]
	str	r6, [r4, #8]
	str	r10, [r4, #12]
	str	r5, [r4, #16]
	mov	lr, pc
	bx	r8
	mov	r1, r6
	mov	r9, r0
	mov	r0, r7
	mov	lr, pc
	bx	r8
	ldr	r2, .L36+8
	ldr	r3, [sp, #4]
	ldr	r2, [r2]
	sub	r0, r0, r0, asl #2
	ldr	lr, .L36+12
	add	fp, r9, r0
	ldr	r9, .L36+16
	mov	r7, #67108864
	mov	r1, r3
	str	r5, [r2, #32]
	mov	r3, #910163968
	ldr	r2, .L36+20
	ldr	ip, .L36+24
	sub	fp, fp, #1
	mov	r0, #2
	str	r5, [lr, #8]
	str	fp, [r4, #20]
	str	r10, [r4, #24]
	mov	lr, pc
	bx	ip
	mov	r1, r6
	strh	r5, [r7, r9]	@ movhi
	mov	r0, #16777216
	mov	lr, pc
	bx	r8
	rsb	r0, r0, #0
	mov	r1, r0, asl #16
	mov	r1, r1, lsr #16
	mov	r2, #260
	mov	r3, #128
	strh	r1, [r7, r2]	@ movhi
	strh	r3, [r7, r9]	@ movhi
	add	sp, sp, #12
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L37:
	.align	2
.L36:
	.word	soundB
	.word	__aeabi_idiv
	.word	dma
	.word	.LANCHOR0
	.word	262
	.word	67109028
	.word	DMANow
	.size	playSoundB, .-playSoundB
	.align	2
	.global	setUpInterrupts
	.type	setUpInterrupts, %function
setUpInterrupts:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6}
	mov	r3, #67108864
	mov	r2, #512
	ldrh	r6, [r3, r2]
	ldrh	r5, [r3, #4]
	ldr	r1, .L39
	ldr	r0, .L39+4
	orr	r6, r6, #1
	orr	r5, r5, #8
	mov	r4, #1
	mov	ip, #520
	strh	r6, [r3, r2]	@ movhi
	strh	r5, [r3, #4]	@ movhi
	strh	r4, [r3, ip]	@ movhi
	str	r0, [r1, #4092]
	ldmfd	sp!, {r4, r5, r6}
	bx	lr
.L40:
	.align	2
.L39:
	.word	50360320
	.word	interruptHandler
	.size	setUpInterrupts, .-setUpInterrupts
	.global	startB
	.global	startA
	.global	vbCountB
	.global	vbCountA
	.comm	soundB,28,4
	.comm	soundA,28,4
	.comm	masterVoff,4,4
	.comm	masterHoff,4,4
	.comm	bg0hOff,4,4
	.comm	bg2vOff,4,4
	.comm	bg2hOff,4,4
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	vbCountA, %object
	.size	vbCountA, 4
vbCountA:
	.space	4
	.type	startA, %object
	.size	startA, 4
startA:
	.space	4
	.type	vbCountB, %object
	.size	vbCountB, 4
vbCountB:
	.space	4
	.type	startB, %object
	.size	startB, 4
startB:
	.space	4
	.ident	"GCC: (devkitARM release 42) 4.8.2"
