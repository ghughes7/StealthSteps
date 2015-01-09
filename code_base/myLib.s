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
	.file	"myLib.c"
	.text
	.align	2
	.global	loadPalette
	.type	loadPalette, %function
loadPalette:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6}
	ldr	r3, .L2
	ldr	ip, .L2+4
	ldr	r3, [r3]
	ldr	r1, .L2+8
	mov	r2, #83886080
	mvn	r6, #32768
	mov	r4, #508
	mov	r5, #254
	str	r0, [r3, #36]
	str	r2, [r3, #40]
	str	ip, [r3, #44]
	strh	r6, [r2, r1]	@ movhi
	strh	r5, [r2, r4]	@ movhi
	ldmfd	sp!, {r4, r5, r6}
	bx	lr
.L3:
	.align	2
.L2:
	.word	.LANCHOR0
	.word	-2147483392
	.word	510
	.size	loadPalette, .-loadPalette
	.align	2
	.global	compare
	.type	compare, %function
compare:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0]
	ldr	r0, [r1]
	rsb	r0, r0, r3
	bx	lr
	.size	compare, .-compare
	.align	2
	.global	DMANow
	.type	DMANow, %function
DMANow:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, .L6
	add	r0, r0, r0, asl #1
	ldr	ip, [ip]
	mov	r0, r0, asl #2
	str	r4, [sp, #-4]!
	orr	r3, r3, #-2147483648
	add	r4, ip, r0
	str	r1, [ip, r0]
	str	r2, [r4, #4]
	str	r3, [r4, #8]
	ldr	r4, [sp], #4
	bx	lr
.L7:
	.align	2
.L6:
	.word	.LANCHOR0
	.size	DMANow, .-DMANow
	.align	2
	.global	spriteColorChange16
	.type	spriteColorChange16, %function
spriteColorChange16:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, r0, asl #5
	add	r2, r0, #83886080
	stmfd	sp!, {r4, r5}
	and	ip, r1, #992
	and	r4, r1, #31
	add	r2, r2, #512
	and	r1, r1, #31744
	mov	r0, #16
.L16:
	ldrh	r3, [r2], #2
	and	r5, r3, #31
	cmp	r5, r4
	subgt	r3, r3, #1
	movgt	r3, r3, asl #16
	movgt	r3, r3, lsr #16
	and	r5, r3, #992
	strgth	r3, [r2, #-2]	@ movhi
	cmp	r5, ip
	subgt	r3, r3, #32
	movgt	r3, r3, asl #16
	movgt	r3, r3, lsr #16
	and	r5, r3, #31744
	strgth	r3, [r2, #-2]	@ movhi
	cmp	r5, r1
	subgt	r3, r3, #1024
	movgt	r3, r3, asl #16
	movgt	r3, r3, lsr #16
	and	r5, r3, #31
	strgth	r3, [r2, #-2]	@ movhi
	cmp	r5, r4
	addlt	r3, r3, #1
	movlt	r3, r3, asl #16
	movlt	r3, r3, lsr #16
	and	r5, r3, #992
	strlth	r3, [r2, #-2]	@ movhi
	cmp	r5, ip
	addlt	r3, r3, #32
	movlt	r3, r3, asl #16
	movlt	r3, r3, lsr #16
	and	r5, r3, #31744
	strlth	r3, [r2, #-2]	@ movhi
	cmp	r5, r1
	addlt	r3, r3, #1024
	strlth	r3, [r2, #-2]	@ movhi
	subs	r0, r0, #1
	bne	.L16
	ldmfd	sp!, {r4, r5}
	bx	lr
	.size	spriteColorChange16, .-spriteColorChange16
	.align	2
	.global	spriteColorRestore16
	.type	spriteColorRestore16, %function
spriteColorRestore16:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, r0, asl #5
	stmfd	sp!, {r4, r5}
	add	ip, r0, #83886080
	add	r5, r1, #32
	add	ip, ip, #512
	add	r5, r0, r5
	add	r1, r1, r0
.L27:
	ldrh	r3, [ip], #2
	ldrh	r2, [r1], #2
	and	r4, r3, #31
	and	r0, r2, #31
	cmp	r4, r0
	subgt	r3, r3, #1
	movgt	r3, r3, asl #16
	movgt	r3, r3, lsr #16
	strgth	r3, [ip, #-2]	@ movhi
	ldrgth	r2, [r1, #-2]
	and	r4, r3, #992
	and	r0, r2, #992
	cmp	r4, r0
	subgt	r3, r3, #32
	movgt	r3, r3, asl #16
	movgt	r3, r3, lsr #16
	strgth	r3, [ip, #-2]	@ movhi
	ldrgth	r2, [r1, #-2]
	and	r4, r3, #31744
	and	r0, r2, #31744
	cmp	r4, r0
	subgt	r3, r3, #1024
	movgt	r3, r3, asl #16
	movgt	r3, r3, lsr #16
	strgth	r3, [ip, #-2]	@ movhi
	ldrgth	r2, [r1, #-2]
	and	r4, r3, #31
	and	r0, r2, #31
	cmp	r4, r0
	addlt	r3, r3, #1
	movlt	r3, r3, asl #16
	movlt	r3, r3, lsr #16
	strlth	r3, [ip, #-2]	@ movhi
	ldrlth	r2, [r1, #-2]
	and	r4, r3, #992
	and	r0, r2, #992
	cmp	r4, r0
	addlt	r3, r3, #32
	movlt	r3, r3, asl #16
	movlt	r3, r3, lsr #16
	strlth	r3, [ip, #-2]	@ movhi
	ldrlth	r2, [r1, #-2]
	and	r0, r3, #31744
	and	r2, r2, #31744
	cmp	r0, r2
	addlt	r3, r3, #1024
	strlth	r3, [ip, #-2]	@ movhi
	cmp	r1, r5
	bne	.L27
	ldmfd	sp!, {r4, r5}
	bx	lr
	.size	spriteColorRestore16, .-spriteColorRestore16
	.align	2
	.global	spriteColorChange256
	.type	spriteColorChange256, %function
spriteColorChange256:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5}
	ldr	r2, .L40
	ldr	r5, .L40+4
	and	r4, r0, #31
	and	ip, r0, #992
	and	r1, r0, #31744
.L38:
	ldrh	r3, [r2], #2
	and	r0, r3, #31
	cmp	r0, r4
	subgt	r3, r3, #1
	movgt	r3, r3, asl #16
	movgt	r3, r3, lsr #16
	and	r0, r3, #992
	strgth	r3, [r2, #-2]	@ movhi
	cmp	r0, ip
	subgt	r3, r3, #32
	movgt	r3, r3, asl #16
	movgt	r3, r3, lsr #16
	and	r0, r3, #31744
	strgth	r3, [r2, #-2]	@ movhi
	cmp	r0, r1
	subgt	r3, r3, #1024
	movgt	r3, r3, asl #16
	movgt	r3, r3, lsr #16
	and	r0, r3, #31
	strgth	r3, [r2, #-2]	@ movhi
	cmp	r0, r4
	addlt	r3, r3, #1
	movlt	r3, r3, asl #16
	movlt	r3, r3, lsr #16
	and	r0, r3, #992
	strlth	r3, [r2, #-2]	@ movhi
	cmp	r0, ip
	addlt	r3, r3, #32
	movlt	r3, r3, asl #16
	movlt	r3, r3, lsr #16
	and	r0, r3, #31744
	strlth	r3, [r2, #-2]	@ movhi
	cmp	r0, r1
	addlt	r3, r3, #1024
	strlth	r3, [r2, #-2]	@ movhi
	cmp	r2, r5
	bne	.L38
	ldmfd	sp!, {r4, r5}
	bx	lr
.L41:
	.align	2
.L40:
	.word	83886592
	.word	83887104
	.size	spriteColorChange256, .-spriteColorChange256
	.align	2
	.global	spriteColorRestore256
	.type	spriteColorRestore256, %function
spriteColorRestore256:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5}
	ldr	r1, .L53
	ldr	r5, .L53+4
.L50:
	ldrh	r3, [r1], #2
	ldrh	r2, [r0], #2
	and	r4, r3, #31
	and	ip, r2, #31
	cmp	r4, ip
	subgt	r3, r3, #1
	movgt	r3, r3, asl #16
	movgt	r3, r3, lsr #16
	strgth	r3, [r1, #-2]	@ movhi
	ldrgth	r2, [r0, #-2]
	and	r4, r3, #992
	and	ip, r2, #992
	cmp	r4, ip
	subgt	r3, r3, #32
	movgt	r3, r3, asl #16
	movgt	r3, r3, lsr #16
	strgth	r3, [r1, #-2]	@ movhi
	ldrgth	r2, [r0, #-2]
	and	r4, r3, #31744
	and	ip, r2, #31744
	cmp	r4, ip
	subgt	r3, r3, #1024
	movgt	r3, r3, asl #16
	movgt	r3, r3, lsr #16
	strgth	r3, [r1, #-2]	@ movhi
	ldrgth	r2, [r0, #-2]
	and	r4, r3, #31
	and	ip, r2, #31
	cmp	r4, ip
	addlt	r3, r3, #1
	movlt	r3, r3, asl #16
	movlt	r3, r3, lsr #16
	strlth	r3, [r1, #-2]	@ movhi
	ldrlth	r2, [r0, #-2]
	and	r4, r3, #992
	and	ip, r2, #992
	cmp	r4, ip
	addlt	r3, r3, #32
	movlt	r3, r3, asl #16
	movlt	r3, r3, lsr #16
	strlth	r3, [r1, #-2]	@ movhi
	ldrlth	r2, [r0, #-2]
	and	ip, r3, #31744
	and	r2, r2, #31744
	cmp	ip, r2
	addlt	r3, r3, #1024
	strlth	r3, [r1, #-2]	@ movhi
	cmp	r1, r5
	bne	.L50
	ldmfd	sp!, {r4, r5}
	bx	lr
.L54:
	.align	2
.L53:
	.word	83886592
	.word	83887104
	.size	spriteColorRestore256, .-spriteColorRestore256
	.align	2
	.global	backgroundFade
	.type	backgroundFade, %function
backgroundFade:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5}
	ldr	r5, .L66
	and	r4, r0, #31
	and	ip, r0, #992
	and	r1, r0, #31744
	mov	r2, #83886080
.L63:
	ldrh	r3, [r2], #2
	and	r0, r3, #31
	cmp	r0, r4
	subgt	r3, r3, #1
	movgt	r3, r3, asl #16
	movgt	r3, r3, lsr #16
	and	r0, r3, #992
	strgth	r3, [r2, #-2]	@ movhi
	cmp	r0, ip
	subgt	r3, r3, #32
	movgt	r3, r3, asl #16
	movgt	r3, r3, lsr #16
	and	r0, r3, #31744
	strgth	r3, [r2, #-2]	@ movhi
	cmp	r0, r1
	subgt	r3, r3, #1024
	movgt	r3, r3, asl #16
	movgt	r3, r3, lsr #16
	and	r0, r3, #31
	strgth	r3, [r2, #-2]	@ movhi
	cmp	r0, r4
	addlt	r3, r3, #1
	movlt	r3, r3, asl #16
	movlt	r3, r3, lsr #16
	and	r0, r3, #992
	strlth	r3, [r2, #-2]	@ movhi
	cmp	r0, ip
	addlt	r3, r3, #32
	movlt	r3, r3, asl #16
	movlt	r3, r3, lsr #16
	and	r0, r3, #31744
	strlth	r3, [r2, #-2]	@ movhi
	cmp	r0, r1
	addlt	r3, r3, #1024
	strlth	r3, [r2, #-2]	@ movhi
	cmp	r2, r5
	bne	.L63
	ldmfd	sp!, {r4, r5}
	bx	lr
.L67:
	.align	2
.L66:
	.word	83886592
	.size	backgroundFade, .-backgroundFade
	.align	2
	.global	backgroundRestore
	.type	backgroundRestore, %function
backgroundRestore:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5}
	ldr	r5, .L79
	mov	r1, #83886080
.L76:
	ldrh	r3, [r1], #2
	ldrh	r2, [r0], #2
	and	r4, r3, #31
	and	ip, r2, #31
	cmp	r4, ip
	subgt	r3, r3, #1
	movgt	r3, r3, asl #16
	movgt	r3, r3, lsr #16
	strgth	r3, [r1, #-2]	@ movhi
	ldrgth	r2, [r0, #-2]
	and	r4, r3, #992
	and	ip, r2, #992
	cmp	r4, ip
	subgt	r3, r3, #32
	movgt	r3, r3, asl #16
	movgt	r3, r3, lsr #16
	strgth	r3, [r1, #-2]	@ movhi
	ldrgth	r2, [r0, #-2]
	and	r4, r3, #31744
	and	ip, r2, #31744
	cmp	r4, ip
	subgt	r3, r3, #1024
	movgt	r3, r3, asl #16
	movgt	r3, r3, lsr #16
	strgth	r3, [r1, #-2]	@ movhi
	ldrgth	r2, [r0, #-2]
	and	r4, r3, #31
	and	ip, r2, #31
	cmp	r4, ip
	addlt	r3, r3, #1
	movlt	r3, r3, asl #16
	movlt	r3, r3, lsr #16
	strlth	r3, [r1, #-2]	@ movhi
	ldrlth	r2, [r0, #-2]
	and	r4, r3, #992
	and	ip, r2, #992
	cmp	r4, ip
	addlt	r3, r3, #32
	movlt	r3, r3, asl #16
	movlt	r3, r3, lsr #16
	strlth	r3, [r1, #-2]	@ movhi
	ldrlth	r2, [r0, #-2]
	and	ip, r3, #31744
	and	r2, r2, #31744
	cmp	ip, r2
	addlt	r3, r3, #1024
	strlth	r3, [r1, #-2]	@ movhi
	cmp	r1, r5
	bne	.L76
	ldmfd	sp!, {r4, r5}
	bx	lr
.L80:
	.align	2
.L79:
	.word	83886592
	.size	backgroundRestore, .-backgroundRestore
	.align	2
	.global	waitForVblank
	.type	waitForVblank, %function
waitForVblank:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #67108864
.L83:
	ldrh	r3, [r2, #6]
	cmp	r3, #160
	bhi	.L83
	mov	r2, #67108864
.L85:
	ldrh	r3, [r2, #6]
	cmp	r3, #159
	bls	.L85
	bx	lr
	.size	waitForVblank, .-waitForVblank
	.align	2
	.global	flipPage
	.type	flipPage, %function
flipPage:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #67108864
	ldrh	r2, [r3]
	ldr	r1, .L89
	tst	r2, #16
	ldrne	r0, [r1, #8]
	ldreq	r0, [r1, #12]
	bicne	r2, r2, #16
	orreq	r2, r2, #16
	strh	r2, [r3]	@ movhi
	str	r0, [r1, #4]
	bx	lr
.L90:
	.align	2
.L89:
	.word	.LANCHOR0
	.size	flipPage, .-flipPage
	.global	dma
	.global	backBuffer
	.global	frontBuffer
	.global	videoBuffer
	.comm	masterVoff,4,4
	.comm	masterHoff,4,4
	.comm	bg0hOff,4,4
	.comm	bg2vOff,4,4
	.comm	bg2hOff,4,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	dma, %object
	.size	dma, 4
dma:
	.word	67109040
	.type	videoBuffer, %object
	.size	videoBuffer, 4
videoBuffer:
	.word	100663296
	.type	backBuffer, %object
	.size	backBuffer, 4
backBuffer:
	.word	100704256
	.type	frontBuffer, %object
	.size	frontBuffer, 4
frontBuffer:
	.word	100663296
	.ident	"GCC: (devkitARM release 42) 4.8.2"
