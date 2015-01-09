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
	.file	"backgrounds.c"
	.text
	.align	2
	.global	loadBGTiles
	.type	loadBGTiles, %function
loadBGTiles:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}
	mov	ip, r1, asl #14
	add	r3, r2, r2, lsr #31
	mov	r1, r0
	add	r2, ip, #100663296
	mov	r3, r3, asr #1
	mov	r0, #3
	ldr	ip, .L2
	mov	lr, pc
	bx	ip
	ldmfd	sp!, {r3, lr}
	bx	lr
.L3:
	.align	2
.L2:
	.word	DMANow
	.size	loadBGTiles, .-loadBGTiles
	.align	2
	.global	loadMapData
	.type	loadMapData, %function
loadMapData:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}
	cmp	r2, #3
	ldrls	r3, .L7
	ldrls	r3, [r3, r2, asl #2]
	mov	r2, r1, asl #11
	movhi	r3, #0
	mov	r1, r0
	add	r2, r2, #100663296
	mov	r0, #3
	ldr	ip, .L7+4
	mov	lr, pc
	bx	ip
	ldmfd	sp!, {r3, lr}
	bx	lr
.L8:
	.align	2
.L7:
	.word	.LANCHOR0
	.word	DMANow
	.size	loadMapData, .-loadMapData
	.align	2
	.global	loadMapSection
	.type	loadMapSection, %function
loadMapSection:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mla	r3, r2, r3, r1
	ldr	r1, [sp]
	add	r0, r0, r3, asl #11
	mov	r2, #0
	b	loadMapData
	.size	loadMapSection, .-loadMapSection
	.align	2
	.global	reloadMap
	.type	reloadMap, %function
reloadMap:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mul	r7, r3, r2
	ldr	r4, [sp, #32]
	mov	r5, r0
	mov	r6, r1
	add	r0, r1, r7
	add	r0, r5, r0, asl #11
	mov	r1, r4
	add	r8, r6, #1
	mov	r2, #0
	mov	r9, r3
	bl	loadMapData
	add	r0, r8, r7
	add	r0, r5, r0, asl #11
	add	r7, r7, r9
	add	r1, r4, #1
	mov	r2, #0
	bl	loadMapData
	add	r0, r6, r7
	add	r0, r5, r0, asl #11
	add	r1, r4, #2
	mov	r2, #0
	bl	loadMapData
	add	r0, r8, r7
	add	r0, r5, r0, asl #11
	add	r1, r4, #3
	mov	r2, #0
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	b	loadMapData
	.size	reloadMap, .-reloadMap
	.align	2
	.global	updateBG
	.type	updateBG, %function
updateBG:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}
	ldr	r2, .L21
	ldr	r3, [r2]
	cmp	r3, #0
	sub	sp, sp, #12
	blt	.L20
	cmp	r3, #256
	ble	.L14
	ldr	r4, .L21+4
	ldr	r5, .L21+8
	ldr	r1, [r4]
	ldr	r0, [r5]
	cmp	r1, r0
	bge	.L14
	ldr	r0, .L21+12
	ldr	lr, [r0]
	add	r1, r1, #1
	sub	r3, r3, #256
	sub	lr, lr, #256
	ldr	ip, .L21+16
	str	r1, [r4]
	str	r3, [r2]
	str	lr, [r0]
	mov	lr, pc
	bx	ip
.L15:
	mov	r0, #24
	ldr	r3, [r5]
	ldmia	r4, {r1, r2}
	str	r0, [sp]
	ldr	r0, .L21+20
	bl	reloadMap
	mov	r0, #28
	ldr	r3, [r5]
	ldmia	r4, {r1, r2}
	str	r0, [sp]
	ldr	r0, .L21+24
	bl	reloadMap
	add	sp, sp, #12
	@ sp needed
	ldmfd	sp!, {r4, r5, lr}
	bx	lr
.L14:
	ldr	r3, .L21+16
	mov	lr, pc
	bx	r3
	add	sp, sp, #12
	@ sp needed
	ldmfd	sp!, {r4, r5, lr}
	bx	lr
.L20:
	ldr	r4, .L21+4
	ldr	r1, [r4]
	cmp	r1, #0
	movle	r5, #0
	ble	.L13
	ldr	r0, .L21+12
	ldr	ip, [r0]
	sub	r1, r1, #1
	add	r3, r3, #256
	add	ip, ip, #256
	str	r1, [r4]
	str	r3, [r2]
	str	ip, [r0]
	mov	r5, #1
.L13:
	ldr	r3, .L21+16
	mov	lr, pc
	bx	r3
	cmp	r5, #0
	ldrne	r5, .L21+8
	bne	.L15
	add	sp, sp, #12
	@ sp needed
	ldmfd	sp!, {r4, r5, lr}
	bx	lr
.L22:
	.align	2
.L21:
	.word	bg2hOff
	.word	.LANCHOR1
	.word	.LANCHOR2
	.word	bg0hOff
	.word	waitForVblank
	.word	bg1_edoTownMap
	.word	bg0_grassMap
	.size	updateBG, .-updateBG
	.align	2
	.global	loadTheBackground
	.type	loadTheBackground, %function
loadTheBackground:
	@ Function supports interworking.
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	ldr	r4, [sp, #28]
	mov	r8, r3
	ldr	r3, .L24
	mov	r5, r2
	mov	r7, r1
	ldr	r6, [sp, #24]
	mov	lr, pc
	bx	r3
	mov	r2, r8, asl #14
	add	r3, r4, r4, lsr #31
	mov	r1, r7
	add	r2, r2, #100663296
	mov	r3, r3, asr #1
	mov	r0, #3
	ldr	ip, .L24+4
	mov	lr, pc
	bx	ip
	ldr	r3, .L24+8
	ldr	r0, .L24+12
	ldmia	r3, {r1, r2}
	ldr	r3, [r0]
	str	r6, [sp, #24]
	mov	r0, r5
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	b	reloadMap
.L25:
	.align	2
.L24:
	.word	loadPalette
	.word	DMANow
	.word	.LANCHOR1
	.word	.LANCHOR2
	.size	loadTheBackground, .-loadTheBackground
	.align	2
	.global	loadBG
	.type	loadBG, %function
loadBG:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, #28
	sub	sp, sp, #12
	mov	r3, #1824
	stmia	sp, {r2, r3}
	ldr	r0, .L27
	ldr	r1, .L27+4
	ldr	r2, .L27+8
	mov	r3, #0
	bl	loadTheBackground
	ldr	r3, .L27+12
	mov	r2, #24
	stmia	sp, {r2, r3}
	ldr	r0, .L27+16
	ldr	r1, .L27+20
	ldr	r2, .L27+24
	mov	r3, #2
	bl	loadTheBackground
	add	sp, sp, #12
	@ sp needed
	ldr	lr, [sp], #4
	bx	lr
.L28:
	.align	2
.L27:
	.word	bg0_grassPal
	.word	bg0_grassTiles
	.word	bg0_grassMap
	.word	15136
	.word	bg1_edoTownPal
	.word	bg1_edoTownTiles
	.word	bg1_edoTownMap
	.size	loadBG, .-loadBG
	.global	sbbWidth
	.global	sbbY
	.global	sbbX
	.comm	masterVoff,4,4
	.comm	masterHoff,4,4
	.comm	bg0hOff,4,4
	.comm	bg2vOff,4,4
	.comm	bg2hOff,4,4
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
	.type	CSWTCH.20, %object
	.size	CSWTCH.20, 16
CSWTCH.20:
	.word	1024
	.word	2048
	.word	2048
	.word	4096
	.data
	.align	2
	.set	.LANCHOR2,. + 0
	.type	sbbWidth, %object
	.size	sbbWidth, 4
sbbWidth:
	.word	8
	.bss
	.align	2
	.set	.LANCHOR1,. + 0
	.type	sbbX, %object
	.size	sbbX, 4
sbbX:
	.space	4
	.type	sbbY, %object
	.size	sbbY, 4
sbbY:
	.space	4
	.ident	"GCC: (devkitARM release 42) 4.8.2"
