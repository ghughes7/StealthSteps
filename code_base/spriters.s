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
	.file	"spriters.c"
	.text
	.align	2
	.global	updatePlayerTracking
	.type	updatePlayerTracking, %function
updatePlayerTracking:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L2
	ldr	r3, [r3]
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp}
	ldr	ip, [r3, #12]
	ldr	r2, [r3, #32]
	add	r2, ip, r2
	ldr	r4, [r3, #8]
	ldr	r1, [r3, #36]
	add	r5, r2, r2, lsr #31
	ldr	fp, [r0]
	sub	sp, sp, #8
	mov	r5, r5, asr #1
	add	r1, r4, r1
	str	r5, [sp, #4]
	ldr	r10, [r0, #4]
	ldr	r9, [r0, #8]
	ldr	r8, [r0, #12]
	ldr	r6, [r0, #16]
	ldr	r5, [r0, #20]
	add	r7, r1, r1, lsr #31
	str	r2, [r3, #16]
	str	r1, [r3, #20]
	ldr	r3, [r0, #24]
	ldr	r0, [r0, #28]
	stmia	fp, {r4, ip}
	ldr	fp, [sp, #4]
	mov	r7, r7, asr #1
	stmia	r10, {r4, fp}
	str	r4, [r9]
	str	r2, [r9, #4]
	stmia	r8, {r7, ip}
	str	r7, [r6]
	str	r2, [r6, #4]
	stmia	r5, {r1, ip}
	stmia	r3, {r1, fp}
	stmia	r0, {r1, r2}
	add	sp, sp, #8
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp}
	bx	lr
.L3:
	.align	2
.L2:
	.word	.LANCHOR0
	.size	updatePlayerTracking, .-updatePlayerTracking
	.align	2
	.global	initializeSprites
	.type	initializeSprites, %function
initializeSprites:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r6, .L5
	ldr	r3, [r6]
	add	r9, r3, #8
	ldmia	r9, {r9, r10}
	add	r0, r6, #20
	ldmia	r0, {r0, r1, r4}
	add	r7, r6, #8
	mov	fp, #54
	add	r10, r10, #16
	ldr	r2, .L5+4
	ldmia	r7, {r7, lr}
	ldr	r8, [r6, #4]
	ldr	ip, [r6, #16]
	str	fp, [r3, #4]
	str	r10, [r3, #16]
	sub	sp, sp, #12
	add	r9, r9, #32
	mov	r10, #16
	mov	fp, #80
	mov	r5, #1
	str	r9, [r3, #20]
	str	fp, [r3]
	mov	r9, #32
	str	r10, [r3, #32]
	str	r4, [sp, #4]
	mov	r10, #3
	mov	r4, #0
	mov	fp, #5
	str	r5, [r3, #24]
	str	r5, [r3, #28]
	str	r9, [r3, #36]
	str	r8, [r2]
	stmib	r2, {r7, lr}
	str	r5, [r3, #88]
	str	r5, [r3, #92]
	str	r10, [r3, #40]
	str	r10, [r3, #84]
	str	r4, [r3, #48]
	str	r4, [r3, #60]
	str	r4, [r3, #76]
	str	r4, [r3, #80]
	str	r4, [r3, #96]
	str	fp, [r3, #68]
	str	ip, [r2, #12]
	str	r0, [r2, #16]
	ldr	r0, [sp, #4]
	ldr	r3, [r6, #32]
	str	r0, [r2, #24]
	mov	r0, r2
	str	r1, [r2, #20]
	str	r3, [r2, #28]
	bl	updatePlayerTracking
	add	r1, r6, #36
	ldmia	r1, {r1, r3}
	mov	r8, #3
	mov	fp, #40
	mov	r2, #2
	mov	r10, #50
	str	r8, [r1, #116]
	str	fp, [r1, #68]
	ldr	r7, .L5+8
	mov	r0, #204
	mov	r8, #100
	mov	fp, #15
	str	r4, [r1, #120]
	str	r9, [r1, #64]
	str	r5, [r1, #32]
	str	r5, [r1, #36]
	str	r4, [r1, #72]
	str	r4, [r1, #88]
	str	r4, [r1, #92]
	str	r4, [r1, #104]
	str	r5, [r1, #44]
	str	r4, [r1, #48]
	str	r4, [r1, #52]
	str	r4, [r1, #56]
	str	r4, [r1, #128]
	str	r4, [r1, #112]
	str	r8, [r1, #8]
	str	r8, [r1, #16]
	str	r0, [r1, #12]
	str	r0, [r1, #20]
	str	r2, [r1, #100]
	str	r2, [r1, #124]
	str	r2, [r1, #80]
	str	fp, [r1, #96]
	str	r10, [r1, #108]
	mov	ip, #101
	mov	r0, #40
	mov	r1, #3
	str	r5, [r3, #120]
	str	r9, [r3, #64]
	str	r0, [r3, #68]
	str	r5, [r3, #32]
	str	r5, [r3, #36]
	str	ip, [r3, #8]
	str	r7, [r3, #12]
	ldr	r0, [r6, #44]
	str	r1, [r3, #116]
	mov	r1, #45
	str	r1, [r3, #96]
	mov	fp, #512
	mov	r1, #40
	str	ip, [r3, #16]
	str	r7, [r3, #20]
	str	r4, [r3, #72]
	str	r4, [r3, #88]
	str	r4, [r3, #92]
	str	r2, [r3, #124]
	str	r10, [r3, #108]
	str	r5, [r3, #44]
	str	r4, [r3, #48]
	str	r4, [r3, #52]
	str	r4, [r3, #56]
	str	r4, [r3, #128]
	str	fp, [r3, #112]
	str	r2, [r3, #80]
	mov	r7, #76
	mov	r3, #900
	str	r1, [r0, #68]
	mov	r8, #4096
	mov	r1, #100
	str	r2, [r0, #120]
	str	r9, [r0, #64]
	str	r5, [r0, #32]
	str	r5, [r0, #36]
	str	r4, [r0, #72]
	str	r4, [r0, #88]
	str	r1, [r0, #96]
	str	r2, [r0, #124]
	str	r10, [r0, #108]
	str	r5, [r0, #44]
	str	r8, [r0, #92]
	str	r7, [r0, #8]
	str	r7, [r0, #16]
	str	r3, [r0, #12]
	str	r3, [r0, #20]
	str	r4, [r0, #48]
	ldr	r3, [r6, #48]
	mov	r8, #3
	str	r4, [r0, #52]
	str	r4, [r0, #56]
	str	r4, [r0, #128]
	str	fp, [r0, #112]
	str	r8, [r0, #116]
	str	r2, [r0, #80]
	str	r8, [r3, #120]
	mov	r8, #40
	str	r8, [r3, #68]
	mov	r0, #100
	ldr	r8, .L5+12
	ldr	r1, [r6, #52]
	str	r0, [r3, #96]
	mov	r0, #3
	str	r9, [r3, #64]
	str	r5, [r3, #32]
	str	r5, [r3, #36]
	str	r7, [r3, #8]
	str	r7, [r3, #16]
	str	r4, [r3, #72]
	str	r4, [r3, #88]
	str	r4, [r3, #92]
	str	r2, [r3, #124]
	str	r10, [r3, #108]
	str	r5, [r3, #44]
	str	r4, [r3, #48]
	str	r4, [r3, #52]
	str	r4, [r3, #56]
	str	r4, [r3, #128]
	str	fp, [r3, #112]
	str	r0, [r3, #116]
	str	r2, [r3, #80]
	str	r8, [r3, #12]
	str	r8, [r3, #20]
	mov	r0, #4
	mov	r3, #40
	str	r9, [r1, #64]
	str	r0, [r1, #120]
	str	r3, [r1, #68]
	mov	r3, #25
	str	r3, [r1, #96]
	ldr	r7, .L5+16
	ldr	r3, [r6, #56]
	ldr	r0, .L5+20
	mov	r8, #3
	str	r5, [r1, #32]
	str	r5, [r1, #36]
	str	ip, [r1, #8]
	str	ip, [r1, #16]
	str	r4, [r1, #72]
	str	r4, [r1, #88]
	str	r4, [r1, #92]
	str	r2, [r1, #124]
	str	r10, [r1, #108]
	str	r5, [r1, #44]
	str	r4, [r1, #48]
	str	r4, [r1, #52]
	str	r4, [r1, #56]
	str	r4, [r1, #128]
	str	fp, [r1, #112]
	str	r8, [r1, #116]
	str	r2, [r1, #80]
	str	r7, [r1, #12]
	str	r7, [r1, #20]
	mov	r8, #15
	str	r9, [r3, #64]
	mov	r1, #40
	mov	r9, #5
	str	r9, [r3, #120]
	str	r1, [r3, #68]
	str	r5, [r3, #32]
	str	r5, [r3, #36]
	str	ip, [r3, #8]
	str	ip, [r3, #16]
	str	r4, [r3, #72]
	str	r4, [r3, #88]
	str	r4, [r3, #92]
	str	r0, [r3, #12]
	str	r0, [r3, #20]
	mov	r9, #3
	str	r8, [r3, #96]
	ldr	ip, [r6, #60]
	str	r9, [r3, #116]
	mov	r9, #45
	str	r2, [r3, #124]
	str	r10, [r3, #108]
	str	r5, [r3, #44]
	str	r4, [r3, #48]
	str	r4, [r3, #52]
	str	r4, [r3, #56]
	str	r4, [r3, #128]
	str	fp, [r3, #112]
	str	r2, [r3, #80]
	ldr	r0, [r6, #64]
	str	r9, [ip, #8]
	str	r9, [ip, #16]
	mov	r9, #80
	mov	r1, #24
	str	r9, [ip, #96]
	ldr	r7, .L5+24
	mov	r8, #125
	mov	r3, #82
	mov	r9, #99
	str	r4, [ip, #120]
	str	r1, [ip, #64]
	str	r1, [ip, #68]
	str	r2, [ip, #124]
	str	r5, [ip, #100]
	str	r5, [ip, #128]
	str	r4, [ip, #112]
	str	r9, [ip, #44]
	str	r5, [ip, #116]
	str	r8, [ip, #12]
	str	r8, [ip, #20]
	str	r3, [r0, #8]
	str	r3, [r0, #16]
	mov	r3, #140
	str	r5, [r0, #120]
	str	r1, [r0, #64]
	str	r1, [r0, #68]
	str	r7, [r0, #12]
	str	r7, [r0, #20]
	str	r3, [r0, #96]
	add	r3, r6, #68
	ldmia	r3, {r3, r7}
	str	r9, [r0, #44]
	mov	r9, #3
	str	r2, [r0, #124]
	str	r2, [r0, #100]
	str	r5, [r0, #128]
	str	r4, [r0, #112]
	str	r5, [r0, #116]
	str	r9, [r3, #100]
	mov	r9, #99
	str	r9, [r3, #44]
	mov	r8, #112
	mov	ip, #268
	mov	r9, #130
	str	r2, [r3, #120]
	str	r1, [r3, #64]
	str	r1, [r3, #68]
	str	r2, [r3, #124]
	str	r5, [r3, #128]
	str	fp, [r3, #112]
	str	r5, [r3, #116]
	str	r9, [r3, #96]
	str	r8, [r3, #8]
	str	r8, [r3, #16]
	str	ip, [r3, #12]
	str	ip, [r3, #20]
	mov	r0, #648
	mov	r3, #3
	mov	r8, #80
	str	r3, [r7, #120]
	str	r1, [r7, #64]
	str	r1, [r7, #68]
	str	r10, [r7, #8]
	str	r10, [r7, #16]
	str	r8, [r7, #96]
	str	r2, [r7, #124]
	str	r4, [r7, #100]
	str	r5, [r7, #128]
	str	r0, [r7, #12]
	str	r0, [r7, #20]
	mov	r10, #99
	str	fp, [r7, #112]
	ldr	ip, [r6, #76]
	str	r10, [r7, #44]
	mov	r10, #4
	str	r5, [r7, #116]
	str	r10, [ip, #120]
	mov	r10, #3
	str	r10, [ip, #100]
	mov	r10, #99
	ldr	r3, [r6, #80]
	str	r10, [ip, #44]
	mov	r10, #190
	str	r10, [ip, #96]
	mov	r8, #122
	mov	r9, #808
	mov	r10, #5
	str	r1, [ip, #64]
	str	r1, [ip, #68]
	str	r2, [ip, #124]
	str	r5, [ip, #128]
	str	fp, [ip, #112]
	str	r5, [ip, #116]
	str	r8, [ip, #8]
	str	r8, [ip, #16]
	str	r9, [ip, #12]
	str	r9, [ip, #20]
	str	r10, [r3, #120]
	mov	r10, #80
	ldr	r0, [r6, #84]
	mov	r7, #47
	mov	r9, #1012
	str	r10, [r3, #96]
	mov	r10, #99
	str	r1, [r3, #64]
	str	r1, [r3, #68]
	str	r2, [r3, #124]
	str	r5, [r3, #100]
	str	r5, [r3, #128]
	str	fp, [r3, #112]
	str	r10, [r3, #44]
	str	r5, [r3, #116]
	str	r7, [r3, #8]
	str	r7, [r3, #16]
	str	r9, [r3, #12]
	str	r9, [r3, #20]
	mov	ip, #6
	add	r3, r6, #88
	str	ip, [r0, #120]
	ldr	r10, .L5+28
	ldmia	r3, {r3, ip}
	mov	r9, #190
	str	r9, [r0, #96]
	mov	r9, #99
	str	r1, [r0, #64]
	str	r1, [r0, #68]
	str	r8, [r0, #8]
	str	r8, [r0, #16]
	str	r2, [r0, #124]
	str	r2, [r0, #100]
	str	r5, [r0, #128]
	str	fp, [r0, #112]
	str	r9, [r0, #44]
	str	r5, [r0, #116]
	str	r10, [r0, #12]
	str	r10, [r0, #20]
	str	r9, [r3, #44]
	mov	r0, #7
	ldr	r9, .L5+32
	mov	r10, #3
	str	r10, [r3, #100]
	str	r8, [r3, #8]
	str	r8, [r3, #16]
	str	r0, [r3, #120]
	mov	r8, #80
	mov	r10, #8
	ldr	r0, .L5+36
	str	r1, [r3, #64]
	str	r1, [r3, #68]
	str	r8, [r3, #96]
	str	r2, [r3, #124]
	str	r5, [r3, #128]
	str	fp, [r3, #112]
	str	r5, [r3, #116]
	str	r9, [r3, #12]
	str	r9, [r3, #20]
	str	r10, [ip, #120]
	mov	r10, #80
	str	r1, [ip, #64]
	str	r1, [ip, #68]
	str	r7, [ip, #8]
	str	r0, [ip, #12]
	str	r10, [ip, #96]
	mov	r10, #99
	str	r10, [ip, #44]
	add	r0, r6, #96
	ldr	r10, .L5+40
	ldmia	r0, {r0, r3}
	str	r10, [ip, #20]
	mov	r10, #80
	str	r7, [ip, #16]
	str	r2, [ip, #124]
	str	r5, [ip, #100]
	str	r5, [ip, #128]
	str	fp, [ip, #112]
	str	r5, [ip, #116]
	str	r10, [r0, #96]
	mov	r10, #99
	str	r10, [r0, #44]
	mov	r7, #52
	add	r9, r9, #250
	ldr	r8, .L5+44
	mov	r10, #9
	str	r1, [r0, #64]
	str	r1, [r0, #68]
	str	r2, [r0, #124]
	str	r5, [r0, #100]
	str	r5, [r0, #128]
	str	fp, [r0, #112]
	str	r5, [r0, #116]
	str	r10, [r0, #120]
	str	r7, [r0, #8]
	str	r7, [r0, #16]
	str	r9, [r0, #12]
	str	r9, [r0, #20]
	mov	ip, #10
	add	r0, r6, #104
	str	r1, [r3, #64]
	str	r1, [r3, #68]
	str	r7, [r3, #8]
	str	r7, [r3, #16]
	str	r4, [r3, #96]
	str	ip, [r3, #120]
	str	r8, [r3, #12]
	str	r8, [r3, #20]
	str	r2, [r3, #124]
	mov	r8, #99
	ldmia	r0, {r0, r1, r2}
	str	r5, [r3, #100]
	str	r5, [r3, #128]
	str	fp, [r3, #112]
	str	r8, [r3, #44]
	str	r5, [r3, #116]
	mov	r3, #16
	str	r3, [r0, #20]
	ldr	r10, .L5+48
	ldr	r3, .L5+52
	mov	ip, #72
	str	ip, [r0]
	str	r4, [r10]
	str	r4, [r3]
	ldr	r10, .L5+56
	mov	r3, #84
	str	ip, [r0, #16]
	str	r3, [r0, #4]
	mov	r0, #8
	str	r0, [r1, #16]
	str	r4, [r10]
	mov	r3, #16
	mov	r10, #40
	mov	r0, #4
	add	r9, r9, #138
	ldr	r7, .L5+60
	ldr	r6, .L5+64
	str	r3, [r1, #20]
	str	r10, [r1, #8]
	str	r4, [r1, #28]
	str	r4, [r1, #36]
	str	r0, [r1, #44]
	str	r4, [r1, #48]
	str	fp, [r1, #40]
	str	r9, [r1, #12]
	mov	r8, #1936
	mov	r1, #8
	str	r5, [r2, #48]
	str	r1, [r2, #16]
	str	r3, [r2, #20]
	str	r10, [r2, #8]
	str	r4, [r2, #28]
	str	r4, [r2, #36]
	str	r0, [r2, #44]
	str	fp, [r2, #40]
	str	r8, [r2, #12]
	str	r4, [r7]
	str	r4, [r6]
	add	sp, sp, #12
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L6:
	.align	2
.L5:
	.word	.LANCHOR0
	.word	ryuCoords
	.word	465
	.word	1100
	.word	1535
	.word	1790
	.word	318
	.word	1028
	.word	1508
	.word	1608
	.word	1658
	.word	1908
	.word	bg2hOff
	.word	bg0hOff
	.word	bg2vOff
	.word	masterHoff
	.word	masterVoff
	.size	initializeSprites, .-initializeSprites
	.align	2
	.global	hideSprites
	.type	hideSprites, %function
hideSprites:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L12
	mov	r2, #512
	ldr	r1, [r3, #116]
	mov	r3, #0
.L9:
	strh	r2, [r1, r3]	@ movhi
	add	r3, r3, #8
	cmp	r3, #1024
	bne	.L9
	bx	lr
.L13:
	.align	2
.L12:
	.word	.LANCHOR0
	.size	hideSprites, .-hideSprites
	.align	2
	.global	collisionWithEnemy
	.type	collisionWithEnemy, %function
collisionWithEnemy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, [r1, #112]
	cmp	r3, #512
	sub	sp, sp, #36
	mov	r4, r1
	mov	r5, r0
	beq	.L14
	ldr	r2, [r1, #44]
	ldr	r3, .L99
	cmp	r2, #0
	ldr	r7, [r3]
	ldr	r8, [r3, #8]
	ldr	r9, [r3, #20]
	ldr	r10, [r3, #28]
	beq	.L14
	ldr	r6, .L99+4
	ldr	r3, [r6]
	cmp	r3, #0
	bne	.L14
	ldr	r3, [r1, #92]
	ldr	r2, [r1, #4]
	ldr	r0, [r1, #64]
	cmp	r3, #4096
	add	r0, r2, r0
	beq	.L89
.L54:
	mov	r1, r0
.L18:
	ldr	r3, [r5, #4]
	cmp	r1, r3
	ble	.L21
	ldr	ip, [r5]
	ldr	r1, [r5, #36]
	ldr	fp, [r4]
	add	r1, ip, r1
	cmp	r1, fp
	str	r1, [sp, #4]
	ble	.L21
	ldr	r1, [r5, #32]
	add	r1, r3, r1
	cmp	r2, r1
	str	r1, [sp, #8]
	bge	.L21
	ldr	r1, [r4, #68]
	add	r1, fp, r1
	cmp	ip, r1
	str	r1, [sp, #12]
	bge	.L21
	ldr	lr, [sp, #4]
	rsb	fp, fp, lr
	ldr	lr, [sp, #12]
	rsb	ip, ip, lr
	str	ip, [sp, #4]
	ldr	ip, [sp, #8]
	rsb	r2, r2, ip
	ldr	ip, [sp, #4]
	str	r2, [sp, #8]
	str	ip, [sp, #20]
	ldr	ip, [sp, #8]
	mov	r1, #4
	rsb	lr, r3, r0
	mov	r2, r1
	add	r0, sp, #16
	ldr	r3, .L99+8
	str	ip, [sp, #24]
	ldr	ip, .L99+12
	str	fp, [sp, #16]
	str	lr, [sp, #28]
	mov	lr, pc
	bx	ip
	ldr	r0, [r4, #128]
	cmp	r0, #0
	mov	r2, r0
	ldr	r3, [sp, #16]
	beq	.L22
	ldr	r1, [r5, #96]
	cmp	r1, #0
	bne	.L22
	add	r1, r6, #8
	ldmia	r1, {r1, r3}
	ldr	ip, [r5, #92]
	add	r1, r1, #1
	add	r3, r3, #1
	cmp	ip, #0
	mov	ip, #1
	str	ip, [r6, #4]
	str	r1, [r6, #8]
	str	r3, [r6, #12]
	ldr	ip, .L99+4
	beq	.L77
	cmp	r1, #6
	ble	.L90
	adds	r2, r3, #0
	movne	r2, #1
	cmp	r3, #13
	movgt	r2, #0
	cmp	r2, #0
	streq	r2, [ip, #8]
	streq	r2, [ip, #12]
	bne	.L91
.L25:
	ldr	r3, .L99+16
	ldr	r2, [r3, #36]
	ldr	r1, [r2, #56]
	cmp	r1, #0
	moveq	ip, #1
	moveq	r1, #3
	streq	ip, [r2, #108]
	streq	r1, [r2, #44]
	streq	r1, [r2, #80]
	ldr	r2, [r3, #40]
	ldr	r1, [r2, #56]
	cmp	r1, #0
	moveq	ip, #1
	moveq	r1, #3
	streq	ip, [r2, #108]
	streq	r1, [r2, #44]
	streq	r1, [r2, #80]
	ldr	r2, [r3, #44]
	ldr	r1, [r2, #56]
	cmp	r1, #0
	moveq	ip, #1
	moveq	r1, #3
	streq	ip, [r2, #108]
	streq	r1, [r2, #44]
	streq	r1, [r2, #80]
	ldr	r2, [r3, #48]
	ldr	r1, [r2, #56]
	cmp	r1, #0
	moveq	ip, #1
	moveq	r1, #3
	streq	ip, [r2, #108]
	streq	r1, [r2, #44]
	streq	r1, [r2, #80]
	ldr	r2, [r3, #52]
	ldr	r1, [r2, #56]
	cmp	r1, #0
	moveq	r1, #3
	streq	r1, [r2, #44]
	streq	r1, [r2, #80]
	ldr	r1, [r3, #56]
	moveq	ip, #1
	streq	ip, [r2, #108]
	ldr	r2, [r1, #56]
	cmp	r2, #0
	moveq	ip, #3
	moveq	r6, #1
	movne	r2, r0
	moveq	r2, r0
	streq	r6, [r1, #108]
	streq	ip, [r1, #44]
	streq	ip, [r1, #80]
	b	.L20
.L93:
	ldr	ip, [r8]
	ldr	r1, [r8, #4]
	ldr	r0, .L99+20
	add	r1, r1, ip, asl #11
	mov	r1, r1, asl #1
	ldrh	r1, [r0, r1]
	ldr	ip, .L99+24
	cmp	r1, ip
	bne	.L14
	ldmia	r10, {r4, ip}
	add	ip, ip, r4, asl #11
	mov	ip, ip, asl #1
	ldrh	r0, [r0, ip]
	cmp	r0, r1
	bne	.L14
	ldr	r1, [r3, #32]
	ldr	r0, .L99+28
	add	r2, r2, r1
	cmp	r2, r0
	rsbgt	r1, r1, #240
	strgt	r1, [r3, #4]
	bgt	.L14
	ldr	r2, [r3, #60]
	ldr	r0, .L99+32
	smull	r1, r0, r2, r0
	mov	r1, r2, asr #31
	rsb	r1, r1, r0, asr #2
	add	r1, r1, r1, asl #2
	cmp	r2, r1, asl #1
	bne	.L14
	ldr	r2, [r3, #4]
	cmp	r2, #200
	ble	.L51
	ldr	r1, .L99+36
	ldr	ip, .L99+40
	ldr	r0, [r1]
	cmp	r0, ip
	bgt	.L51
	ldr	r2, .L99+44
	ldr	r3, .L99+48
	ldr	r4, [r2]
	ldr	ip, [r3]
	add	r0, r0, #1
	add	r4, r4, #1
	add	ip, ip, #1
	str	r0, [r1]
	str	r4, [r2]
	str	ip, [r3]
.L14:
	add	sp, sp, #36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L21:
	ldr	r2, [r4, #128]
	ldr	r3, .L99+16
.L20:
	cmp	r2, #0
	bne	.L44
	ldr	r1, [r5, #68]
.L75:
	cmp	r1, #1
	beq	.L92
.L44:
	ldr	r3, [r3]
	ldr	r2, [r3, #68]
	cmp	r2, #3
	bne	.L14
	ldr	r2, [r3, #12]
	cmp	r2, #0
	movlt	r1, #0
	strlt	r1, [r3, #4]
	ldr	r1, [r4, #92]
	cmp	r1, #4096
	beq	.L93
	ldmia	r7, {r0, r2}
	ldr	r1, .L99+20
	add	r2, r2, r0, asl #11
	mov	r2, r2, asl #1
	ldrh	r2, [r1, r2]
	ldr	r0, .L99+24
	cmp	r2, r0
	bne	.L14
	ldr	ip, [r9]
	ldr	r0, [r9, #4]
	add	r0, r0, ip, asl #11
	mov	r0, r0, asl #1
	ldrh	r1, [r1, r0]
	cmp	r1, r2
	bne	.L14
	ldr	r2, [r3, #60]
	ldr	r0, .L99+32
	smull	ip, r0, r2, r0
	mov	r1, r2, asr #31
	rsb	r1, r1, r0, asr #2
	add	r1, r1, r1, asl #2
	cmp	r2, r1, asl #1
	bne	.L14
	ldr	r2, [r3, #4]
	cmp	r2, #15
	bgt	.L52
	ldr	r1, .L99+36
	ldr	r0, [r1]
	cmp	r0, #0
	ble	.L52
	ldr	r2, .L99+44
	ldr	r3, .L99+48
	ldr	r4, [r2]
	ldr	ip, [r3]
	sub	r0, r0, #1
	sub	r4, r4, #1
	sub	ip, ip, #1
	str	r0, [r1]
	str	r4, [r2]
	str	ip, [r3]
	b	.L14
.L89:
	ldr	r3, [r1, #80]
	bics	r1, r3, #2
	addne	r1, r0, #16
	bne	.L18
	b	.L54
.L92:
	ldr	r2, [r5, #76]
	cmp	r2, #3
	ble	.L44
	ldr	r2, [r5, #80]
	cmp	r2, #0
	bne	.L45
	ldr	r2, [r4, #4]
	ldr	ip, [r4, #64]
	ldr	r0, [r5, #4]
	add	ip, r2, ip
	cmp	r0, ip
	bge	.L44
.L88:
	ldr	ip, [r5]
	ldr	fp, [r5, #36]
	ldr	r6, [r4]
	add	fp, ip, fp
	cmp	fp, r6
	ble	.L44
	ldr	r5, [r5, #32]
	add	r0, r0, r5
	cmp	r2, r0
	bge	.L44
	ldr	r2, [r4, #68]
	add	r6, r6, r2
	cmp	ip, r6
	bge	.L44
	ldr	r2, [r4, #48]
	cmp	r2, #0
	ldreq	r2, [r4, #44]
	subeq	r2, r2, #1
	streq	r2, [r4, #44]
	mov	r2, #4
	streq	r1, [r4, #48]
	str	r2, [r4, #80]
	b	.L44
.L45:
	cmp	r2, #4096
	bne	.L44
	ldr	r0, [r5, #4]
	ldr	r2, [r4, #4]
	ldr	ip, [r4, #64]
	sub	r6, r0, #31
	add	ip, r2, ip
	cmp	r6, ip
	bgt	.L44
	b	.L88
.L22:
	cmp	r3, fp
	beq	.L94
	ldr	ip, [sp, #4]
	cmp	r3, ip
	beq	.L95
	ldr	ip, [sp, #8]
	cmp	r3, ip
	ldr	r1, [r5, #68]
	beq	.L96
	cmp	r1, #1
	beq	.L97
.L40:
	ldr	r3, [r5, #96]
	cmp	r3, #0
	bne	.L41
	ldr	r3, [r4, #80]
	cmp	r3, #3
	beq	.L42
	ldr	r1, [r4, #4]
	ldr	r3, [r4, #64]
	mov	r0, #3
	add	r3, r1, r3
.L78:
	mov	r1, #2
	str	r3, [r5, #4]
	ldr	r3, .L99+16
	str	r0, [r4, #80]
	str	r1, [r4, #44]
	b	.L20
.L52:
	sub	r2, r2, #1
	str	r2, [r3, #4]
	b	.L14
.L98:
	ldr	r3, [r5, #76]
	cmp	r3, #3
	ble	.L36
	ldr	r3, [r5, #80]
	cmp	r3, #0
	bne	.L36
.L77:
	ldr	r3, .L99+16
	b	.L20
.L94:
	ldr	r3, [r4, #80]
	cmp	r3, #2
	bne	.L77
	ldr	r1, [r4]
	ldr	r3, [r5, #36]
	rsb	r3, r3, r1
	str	r3, [r5]
	ldr	r3, .L99+16
	b	.L20
.L95:
	ldr	r3, [r4, #80]
	cmp	r3, #2
	ldr	r3, .L99+16
	ldreq	ip, [r4]
	ldreq	r0, [r4, #68]
	ldreq	r1, [r3]
	addeq	r0, ip, r0
	streq	r0, [r1]
	b	.L20
.L41:
	cmp	r0, #0
	bne	.L79
	ldr	r2, [r4, #4]
	ldr	r3, [r4, #64]
	add	r3, r2, r3
	str	r3, [r5, #4]
	ldr	r3, .L99+16
	b	.L75
.L96:
	cmp	r1, #1
	beq	.L98
.L36:
	ldr	r3, [r5, #96]
	cmp	r3, #0
	bne	.L37
	ldr	r3, [r4, #80]
	cmp	r3, #3
	beq	.L38
	ldr	r1, [r4, #4]
	ldr	r3, [r5, #32]
	mov	r0, #3
	rsb	r3, r3, r1
	b	.L78
.L51:
	add	r2, r2, #1
	str	r2, [r3, #4]
	b	.L14
.L79:
	ldr	r3, .L99+16
	b	.L44
.L97:
	ldr	r3, [r5, #76]
	cmp	r3, #3
	ble	.L40
	ldr	r3, [r5, #80]
	cmp	r3, #4096
	bne	.L40
	b	.L77
.L37:
	cmp	r0, #0
	bne	.L79
	ldr	r2, [r4, #4]
	ldr	r3, [r5, #32]
	rsb	r3, r3, r2
	str	r3, [r5, #4]
	ldr	r3, .L99+16
	b	.L75
.L90:
	ldr	r0, .L99+24
	ldr	r3, .L99+52
	mov	lr, pc
	bx	r3
	ldr	r0, [r4, #128]
	b	.L25
.L91:
	ldr	r0, .L99+56
	ldr	r3, .L99+60
	mov	lr, pc
	bx	r3
	ldr	r0, [r4, #128]
	b	.L25
.L42:
	ldr	r1, [r5, #40]
	ldr	r3, .L99+16
	sub	r1, r1, #1
	str	r1, [r5, #40]
	ldr	r1, [r3]
	ldr	r0, [r1, #40]
	cmp	r0, #0
	moveq	r0, #1
	streq	r0, [r1, #48]
	ldr	r0, [r4, #12]
	mov	r1, #4096
	mov	fp, #1
	sub	r0, r0, #30
	mov	r6, #0
	mov	ip, #3
	str	fp, [r5, #44]
	str	r6, [r5, #76]
	str	r1, [r5, #80]
	str	ip, [r5, #68]
	str	r0, [r4, #12]
	str	r1, [r4, #92]
	b	.L20
.L38:
	ldr	r1, [r5, #40]
	ldr	r3, .L99+16
	sub	r1, r1, #1
	str	r1, [r5, #40]
	ldr	r1, [r3]
	ldr	r0, [r1, #40]
	cmp	r0, #0
	moveq	r0, #1
	streq	r0, [r1, #48]
	ldr	r0, [r4, #12]
	mov	r1, #0
	mov	r6, #1
	add	r0, r0, #30
	mov	ip, #3
	str	r6, [r5, #44]
	str	r1, [r5, #76]
	str	r1, [r5, #80]
	str	ip, [r5, #68]
	str	r0, [r4, #12]
	str	r1, [r4, #92]
	b	.L20
.L100:
	.align	2
.L99:
	.word	ryuCoords
	.word	.LANCHOR1
	.word	compare
	.word	qsort
	.word	.LANCHOR0
	.word	mainCollisionMapBitmap
	.word	32767
	.word	2045
	.word	1717986919
	.word	masterHoff
	.word	1806
	.word	bg0hOff
	.word	bg2hOff
	.word	backgroundFade
	.word	bg1_edoTownPal
	.word	backgroundRestore
	.size	collisionWithEnemy, .-collisionWithEnemy
	.global	__aeabi_idivmod
	.align	2
	.global	mapCollisions
	.type	mapCollisions, %function
mapCollisions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, .L150
	ldr	r4, [r3]
	ldr	r3, [r4, #36]
	ldr	r2, [r4, #8]
	rsb	r3, r3, #157
	cmp	r2, r3
	ldr	r5, [r0]
	ldr	r7, [r0, #8]
	ldr	r9, [r0, #20]
	ldr	r8, [r0, #28]
	strgt	r3, [r4]
	mov	r3, #67108864
	ldr	r2, [r3, #304]
	tst	r2, #32
	bne	.L103
	ldmia	r5, {r1, r3}
	ldr	r2, .L150+4
	add	r3, r3, r1, asl #11
	mov	r3, r3, asl #1
	ldrh	r3, [r2, r3]
	ldr	r1, .L150+8
	cmp	r3, r1
	beq	.L104
.L137:
	ldr	r6, [r4, #68]
.L105:
	mov	r3, #4096
	str	r3, [r4, #80]
.L111:
	cmp	r6, #2
	beq	.L141
.L101:
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L103:
	ldr	r2, [r3, #304]
	tst	r2, #16
	bne	.L112
	ldmia	r7, {r1, r3}
	ldr	r2, .L150+4
	add	r3, r3, r1, asl #11
	mov	r3, r3, asl #1
	ldrh	r3, [r2, r3]
	ldr	r1, .L150+8
	cmp	r3, r1
	beq	.L113
.L138:
	ldr	r6, [r4, #68]
.L114:
	mov	r3, #0
	cmp	r6, #2
	str	r3, [r4, #80]
	bne	.L101
.L141:
	ldr	r3, [r4, #80]
	cmp	r3, #4096
	beq	.L142
	ldr	r3, [r4, #32]
	ldr	r1, [r4, #12]
	ldr	r2, .L150+12
	add	r1, r3, r1
	cmp	r1, r2
	rsbgt	r3, r3, #240
	strgt	r3, [r4, #4]
	ldmia	r7, {r1, r3}
	ldr	r2, .L150+4
	add	r3, r3, r1, asl #11
	mov	r3, r3, asl #1
	ldrh	r3, [r2, r3]
	ldr	r1, .L150+8
	cmp	r3, r1
	bne	.L101
	ldmia	r8, {r0, r1}
	add	r1, r1, r0, asl #11
	mov	r1, r1, asl #1
	ldrh	r2, [r2, r1]
	cmp	r2, r3
	bne	.L101
	ldr	r2, .L150+16
	ldr	r3, .L150+20
	ldr	r1, [r2]
	cmp	r1, r3
	ldr	r3, [r4, #4]
	bgt	.L136
	cmp	r3, #110
	bgt	.L143
.L136:
	ldr	r2, [r4, #28]
	add	r3, r3, r2, asl #1
	str	r3, [r4, #4]
	b	.L101
.L112:
	ldr	r2, [r3, #304]
	tst	r2, #64
	beq	.L144
	ldr	r3, [r3, #304]
	tst	r3, #128
	beq	.L128
	ldr	r6, [r4, #68]
	b	.L111
.L104:
	ldmia	r9, {r0, r1}
	add	r1, r1, r0, asl #11
	mov	r1, r1, asl #1
	ldrh	r2, [r2, r1]
	cmp	r2, r3
	bne	.L137
	ldr	r3, [r4, #12]
	ldr	r6, [r4, #68]
	cmp	r3, #1
	movle	r3, #2
	strle	r3, [r4, #4]
	cmp	r6, #1
	beq	.L145
	cmp	r6, #0
	bne	.L105
	ldr	r3, .L150+16
	ldr	r2, [r3]
	cmp	r2, #0
	ble	.L110
	ldr	r1, [r4, #4]
	cmp	r1, #109
	bgt	.L110
	ldr	ip, .L150+24
	ldr	r0, .L150+28
	ldr	r1, [r4, #28]
	ldr	r10, [ip]
	ldr	fp, [r0]
	rsb	r10, r1, r10
	rsb	r2, r1, r2
	rsb	r1, r1, fp
	str	r10, [ip]
	str	r2, [r3]
	str	r1, [r0]
	b	.L105
.L144:
	ldmia	r5, {r1, r3}
	ldr	r2, .L150+4
	add	r3, r3, r1, asl #11
	mov	r3, r3, asl #1
	ldrh	r2, [r2, r3]
	ldr	r3, .L150+8
	cmp	r2, r3
	ldr	r6, [r4, #68]
	bne	.L111
	cmp	r6, #1
	beq	.L146
	cmp	r6, #0
	bne	.L111
	ldr	r2, .L150+32
	ldr	r3, .L150+36
	ldr	r0, [r2, #16]
	ldr	r1, [r4, #88]
	mov	lr, pc
	bx	r3
	cmp	r1, #0
	bne	.L101
.L139:
	ldr	r3, [r4]
	sub	r3, r3, #1
	str	r3, [r4]
	b	.L101
.L113:
	ldmia	r8, {r0, r1}
	add	r1, r1, r0, asl #11
	mov	r1, r1, asl #1
	ldrh	r2, [r2, r1]
	cmp	r2, r3
	bne	.L138
	ldr	r3, [r4, #32]
	ldr	r1, [r4, #12]
	ldr	r2, .L150+12
	add	r1, r3, r1
	cmp	r1, r2
	ldr	r6, [r4, #68]
	rsbgt	r3, r3, #240
	strgt	r3, [r4, #4]
	cmp	r6, #1
	beq	.L147
	cmp	r6, #0
	bne	.L114
	ldr	r3, .L150+16
	ldr	r2, [r3]
	cmp	r2, #1808
	bge	.L120
	ldr	r1, [r4, #4]
	cmp	r1, #110
	ble	.L120
	ldr	ip, .L150+24
	ldr	r0, .L150+28
	ldr	r1, [r4, #28]
	ldr	r10, [ip]
	ldr	fp, [r0]
	add	r10, r1, r10
	add	r2, r2, r1
	add	r1, r1, fp
	str	r10, [ip]
	str	r2, [r3]
	str	r1, [r0]
	b	.L114
.L142:
	ldmia	r5, {r1, r3}
	ldr	r2, .L150+4
	add	r3, r3, r1, asl #11
	mov	r3, r3, asl #1
	ldrh	r3, [r2, r3]
	ldr	r1, .L150+8
	cmp	r3, r1
	bne	.L101
	ldmia	r9, {r0, r1}
	add	r1, r1, r0, asl #11
	mov	r1, r1, asl #1
	ldrh	r2, [r2, r1]
	cmp	r2, r3
	bne	.L101
	ldr	r3, .L150+16
	ldr	r2, [r3]
	cmp	r2, #0
	ble	.L132
	ldr	r1, [r4, #4]
	cmp	r1, #109
	ble	.L148
.L132:
	ldr	r3, [r4, #12]
	cmp	r3, #0
	ldrge	r3, [r4, #28]
	ldrge	r2, [r4, #4]
	movlt	r3, #0
	subge	r3, r2, r3, asl #1
	str	r3, [r4, #4]
	b	.L101
.L128:
	ldmia	r8, {r1, r3}
	ldr	r2, .L150+4
	add	r3, r3, r1, asl #11
	mov	r3, r3, asl #1
	ldrh	r2, [r2, r3]
	ldr	r3, .L150+8
	cmp	r2, r3
	ldr	r6, [r4, #68]
	bne	.L111
	cmp	r6, #1
	beq	.L149
	cmp	r6, #0
	bne	.L111
	ldr	r2, .L150+32
	ldr	r3, .L150+36
	ldr	r0, [r2, #16]
	ldr	r1, [r4, #88]
	mov	lr, pc
	bx	r3
	cmp	r1, #0
	bne	.L101
.L140:
	ldr	r3, [r4]
	add	r3, r3, #1
	str	r3, [r4]
	b	.L101
.L145:
	ldr	r10, .L150+16
	ldr	fp, [r10]
	cmp	fp, #0
	ble	.L109
	ldr	r3, [r4, #4]
	cmp	r3, #109
	bgt	.L109
	ldr	r3, .L150+32
	ldr	r1, [r4, #88]
	ldr	r0, [r3, #16]
	mov	r1, r1, asl #1
	ldr	r3, .L150+36
	mov	lr, pc
	bx	r3
	cmp	r1, #0
	bne	.L105
	ldr	r1, .L150+24
	ldr	r2, .L150+28
	ldr	r3, [r4, #28]
	ldr	r0, [r1]
	ldr	ip, [r2]
	rsb	r0, r3, r0
	rsb	fp, r3, fp
	rsb	r3, r3, ip
	str	r0, [r1]
	str	fp, [r10]
	str	r3, [r2]
	b	.L105
.L146:
	ldr	r3, .L150+32
	ldr	r1, [r4, #88]
	ldr	r0, [r3, #16]
	mov	r1, r1, asl #1
	ldr	r3, .L150+36
	mov	lr, pc
	bx	r3
	cmp	r1, #0
	bne	.L101
	b	.L139
.L110:
	ldr	r2, .L150+32
	ldr	r3, .L150+36
	ldr	r0, [r2, #16]
	ldr	r1, [r4, #88]
	mov	lr, pc
	bx	r3
	cmp	r1, #0
	ldreq	r3, [r4, #4]
	subeq	r3, r3, #1
	streq	r3, [r4, #4]
	moveq	r6, r1
	b	.L105
.L143:
	ldr	ip, .L150+24
	ldr	r0, .L150+28
	ldr	r3, [r4, #28]
	ldr	r5, [r0]
	ldr	r4, [ip]
	mov	r3, r3, asl #1
	add	r1, r1, r3
	add	r4, r3, r4
	add	r3, r3, r5
	str	r1, [r2]
	str	r4, [ip]
	str	r3, [r0]
	b	.L101
.L109:
	ldr	r3, .L150+32
	ldr	r1, [r4, #88]
	ldr	r0, [r3, #16]
	mov	r1, r1, asl #1
	ldr	r3, .L150+36
	mov	lr, pc
	bx	r3
	cmp	r1, #0
	ldreq	r3, [r4, #4]
	subeq	r3, r3, #1
	streq	r3, [r4, #4]
	b	.L105
.L147:
	ldr	r10, .L150+16
	ldr	r3, .L150+20
	ldr	fp, [r10]
	cmp	fp, r3
	bgt	.L118
	ldr	r3, [r4, #4]
	cmp	r3, #110
	ble	.L118
	ldr	r3, .L150+32
	ldr	r1, [r4, #88]
	ldr	r0, [r3, #16]
	mov	r1, r1, asl #1
	ldr	r3, .L150+36
	mov	lr, pc
	bx	r3
	cmp	r1, #0
	bne	.L114
	ldr	r1, .L150+24
	ldr	r2, .L150+28
	ldr	r3, [r4, #28]
	ldr	r0, [r1]
	ldr	ip, [r2]
	add	r0, r3, r0
	add	fp, fp, r3
	add	r3, r3, ip
	str	r0, [r1]
	str	fp, [r10]
	str	r3, [r2]
	b	.L114
.L120:
	ldr	r2, .L150+32
	ldr	r3, .L150+36
	ldr	r0, [r2, #16]
	ldr	r1, [r4, #88]
	mov	lr, pc
	bx	r3
	cmp	r1, #0
	ldreq	r3, [r4, #4]
	addeq	r3, r3, #1
	streq	r3, [r4, #4]
	moveq	r6, r1
	b	.L114
.L149:
	ldr	r3, .L150+32
	ldr	r1, [r4, #88]
	ldr	r0, [r3, #16]
	mov	r1, r1, asl #1
	ldr	r3, .L150+36
	mov	lr, pc
	bx	r3
	cmp	r1, #0
	bne	.L101
	b	.L140
.L148:
	ldr	r1, [r4, #28]
	ldr	ip, .L150+24
	ldr	r0, .L150+28
	ldr	r4, [ip]
	ldr	r5, [r0]
	rsb	r1, r1, r1, asl #31
	mov	r1, r1, asl #1
	add	r2, r2, r1
	add	r4, r1, r4
	add	r1, r1, r5
	str	r2, [r3]
	str	r4, [ip]
	str	r1, [r0]
	b	.L101
.L118:
	ldr	r3, .L150+32
	ldr	r1, [r4, #88]
	ldr	r0, [r3, #16]
	mov	r1, r1, asl #1
	ldr	r3, .L150+36
	mov	lr, pc
	bx	r3
	cmp	r1, #0
	ldreq	r3, [r4, #4]
	addeq	r3, r3, #1
	streq	r3, [r4, #4]
	b	.L114
.L151:
	.align	2
.L150:
	.word	.LANCHOR0
	.word	mainCollisionMapBitmap
	.word	32767
	.word	2045
	.word	masterHoff
	.word	1806
	.word	bg0hOff
	.word	bg2hOff
	.word	.LANCHOR1
	.word	__aeabi_idivmod
	.size	mapCollisions, .-mapCollisions
	.align	2
	.global	endGame
	.type	endGame, %function
endGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r4, .L163
	ldr	r3, [r4]
	ldr	r2, [r3, #48]
	cmp	r2, #0
	beq	.L153
	ldr	r5, .L163+4
	ldr	r2, [r5, #20]
	add	r2, r2, #1
	mov	r6, #1
	mov	r1, #4
	cmp	r2, #219
	str	r2, [r5, #20]
	str	r6, [r3, #84]
	str	r1, [r3, #68]
	bgt	.L154
	ldr	r1, [r5, #16]
	ands	r5, r1, #3
	beq	.L161
.L153:
	ldr	r2, [r3, #8]
	cmp	r2, #39
	bgt	.L152
	ldr	r3, [r3, #12]
	sub	r3, r3, #1888
	sub	r3, r3, #9
	cmp	r3, #38
	bhi	.L152
	ldr	r4, .L163+4
	ldr	r3, [r4, #20]
	add	r3, r3, #1
	mov	r5, #1
	cmp	r3, #219
	str	r3, [r4, #20]
	str	r5, [r4, #24]
	bgt	.L158
	ldr	r1, [r4, #16]
	ands	r4, r1, #3
	beq	.L162
.L152:
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L154:
	ldr	r3, .L163+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L163+12
	mov	lr, pc
	bx	r3
	ldr	r3, [r4]
	mov	r2, #0
	str	r2, [r3, #48]
	str	r2, [r5, #20]
	b	.L153
.L161:
	ldr	r3, .L163+16
	mov	r0, r5
	mov	lr, pc
	bx	r3
	mov	r0, r6
	mov	r1, r5
	ldr	r6, .L163+20
	mov	lr, pc
	bx	r6
	mov	r1, r5
	mov	r0, #2
	mov	lr, pc
	bx	r6
	ldr	r3, [r4]
	b	.L153
.L158:
	ldr	r3, .L163+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L163+24
	mov	lr, pc
	bx	r3
	mov	r3, #0
	str	r3, [r4, #20]
	str	r3, [r4, #24]
	b	.L152
.L162:
	mov	r0, r4
	ldr	r3, .L163+16
	mov	lr, pc
	bx	r3
	mov	r0, r5
	mov	r1, r4
	ldr	r3, .L163+20
	mov	lr, pc
	bx	r3
	b	.L152
.L164:
	.align	2
.L163:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	stopSound
	.word	lose
	.word	backgroundFade
	.word	spriteColorChange16
	.word	win
	.size	endGame, .-endGame
	.align	2
	.global	playerStealthLogic
	.type	playerStealthLogic, %function
playerStealthLogic:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	ldr	r4, .L178
	add	r0, r4, #28
	ldmia	r0, {r0, r3}
	ldr	r2, [r4, #36]
	add	r3, r3, #1
	add	r0, r0, #1
	cmp	r2, #0
	ldr	r5, .L178+4
	str	r3, [r4, #32]
	str	r0, [r4, #28]
	bne	.L166
	ldr	r3, [r5, #120]
	cmp	r3, #0
	bne	.L165
.L167:
	ldr	r3, [r4, #32]
	ldr	r0, .L178+8
	smull	r2, r0, r3, r0
	mov	r2, r3, asr #31
	rsb	r0, r2, r0, asr #1
	add	r0, r0, r0, asl #2
	ldr	r2, [r5]
	mov	r1, #0
	subs	r0, r3, r0
	str	r1, [r2, #96]
	beq	.L176
.L172:
	ldr	r3, [r5, #128]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r5, #128]
	ldr	r3, .L178+4
	moveq	r1, #500
	moveq	r2, #1
	streq	r1, [r3, #120]
	streq	r2, [r3, #124]
.L165:
	ldmfd	sp!, {r3, r4, r5, lr}
	bx	lr
.L166:
	mov	r3, #0
	ands	r0, r0, #1
	str	r3, [r5, #124]
	beq	.L177
.L169:
	ldr	r3, [r5, #120]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r5, #120]
	ldr	r2, .L178+4
	bne	.L165
	ldr	r0, [r4, #40]
	rsbs	r0, r0, #1
	mov	r1, #1000
	movcc	r0, #0
	str	r3, [r4, #36]
	str	r0, [r4, #40]
	str	r1, [r2, #128]
	b	.L167
.L176:
	ldr	r1, .L178+12
	ldr	r3, .L178+16
	mov	lr, pc
	bx	r3
	b	.L172
.L177:
	mov	r1, r0
	ldr	r3, .L178+20
	mov	lr, pc
	bx	r3
	b	.L169
.L179:
	.align	2
.L178:
	.word	.LANCHOR1
	.word	.LANCHOR0
	.word	1717986919
	.word	spritersSheetPal
	.word	spriteColorRestore16
	.word	spriteColorChange16
	.size	playerStealthLogic, .-playerStealthLogic
	.align	2
	.global	ghostControls
	.type	ghostControls, %function
ghostControls:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #32
	beq	.L189
	ble	.L220
	cmp	r0, #128
	beq	.L189
	ble	.L221
	cmp	r0, #256
	beq	.L192
	cmp	r0, #512
	bne	.L181
	ldr	r3, .L224
	ldr	r3, [r3]
	ldr	r2, [r3, #68]
	sub	r2, r2, #2
	cmp	r2, #2
	movhi	r1, #2
	movhi	r2, #0
	strhi	r1, [r3, #68]
	strhi	r2, [r3, #76]
	bx	lr
.L220:
	cmp	r0, #2
	beq	.L184
	ble	.L222
	cmp	r0, #4
	beq	.L187
	cmp	r0, #16
	bne	.L181
.L189:
	ldr	r3, .L224
	ldr	r2, [r3]
	ldr	r3, [r2, #68]
	sub	r1, r3, #2
	cmp	r1, #2
	bxls	lr
	cmp	r3, #1
	movne	r3, #0
	strne	r3, [r2, #68]
.L213:
	ldr	r0, .L224+4
	b	mapCollisions
.L192:
	ldr	r3, .L224
	ldr	r2, [r3]
	ldr	r1, [r2, #68]
	sub	r1, r1, #2
	cmp	r1, #2
	bxls	lr
	ldr	r3, [r3, #124]
	cmp	r3, #0
	bxeq	lr
	ldr	r3, .L224+8
	ldr	r0, [r3, #40]
	rsbs	r0, r0, #1
	mov	r1, #1
	movcc	r0, #0
	str	r0, [r3, #40]
	str	r1, [r3, #52]
	str	r1, [r2, #96]
	str	r1, [r3, #36]
	bx	lr
.L187:
	ldr	r3, .L224+8
	ldr	r1, [r3, #40]
	ldr	r2, [r3]
	rsbs	r1, r1, #1
	movcc	r1, #0
	rsbs	r2, r2, #1
	movcc	r2, #0
	str	r1, [r3, #40]
	str	r2, [r3]
	bx	lr
.L221:
	cmp	r0, #64
	beq	.L189
.L181:
	ldr	r3, .L224
	ldr	r3, [r3]
	ldr	r2, [r3, #68]
	sub	r2, r2, #1
	cmp	r2, #3
	movhi	r2, #5
	strhi	r2, [r3, #68]
	bx	lr
.L222:
	cmp	r0, #1
	bne	.L181
	ldr	r3, .L224
	ldr	r3, [r3]
	ldr	r2, [r3, #68]
	sub	r1, r2, #1
	cmp	r1, #3
	bhi	.L223
	cmp	r2, #1
	bxne	lr
	ldr	ip, [r3]
	ldr	r0, .L224+8
	mov	r2, #0
	sub	ip, ip, #8
	mov	r1, #5
	str	ip, [r3]
	str	r2, [r3, #76]
	str	r2, [r0, #44]
	str	r1, [r3, #68]
	bx	lr
.L184:
	ldr	r3, .L224
	ldr	r3, [r3]
	ldr	r3, [r3, #68]
	cmp	r3, #1
	ldreq	r2, .L224+8
	streq	r3, [r2, #48]
	bx	lr
.L223:
	ldr	ip, [r3]
	ldr	r2, .L224+8
	add	ip, ip, #8
	mov	r1, #0
	str	ip, [r3]
	str	r0, [r3, #68]
	str	r1, [r3, #76]
	str	r0, [r2, #44]
	bx	lr
.L225:
	.align	2
.L224:
	.word	.LANCHOR0
	.word	ryuCoords
	.word	.LANCHOR1
	.size	ghostControls, .-ghostControls
	.align	2
	.global	buttonDataQuery
	.type	buttonDataQuery, %function
buttonDataQuery:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L293
	ldr	ip, .L293+4
	ldr	r3, [r3]
	ldr	r0, [ip]
	tst	r3, #1
	stmfd	sp!, {r4, r5, r6}
	ldr	r1, [r0, #68]
	beq	.L229
	ldr	r2, .L293+8
	ldr	r2, [r2]
	tst	r2, #1
	beq	.L287
.L229:
	mov	r2, r1
.L228:
	tst	r3, #2
	beq	.L231
	ldr	r4, .L293+8
	ldr	r4, [r4]
	tst	r4, #2
	beq	.L288
.L231:
	tst	r3, #512
	beq	.L232
	ldr	r4, .L293+8
	ldr	r4, [r4]
	tst	r4, #512
	beq	.L289
.L232:
	tst	r3, #256
	beq	.L233
	ldr	r4, .L293+8
	ldr	r4, [r4]
	tst	r4, #256
	beq	.L290
.L233:
	tst	r3, #4
	beq	.L234
	ldr	r3, .L293+8
	ldr	r3, [r3]
	tst	r3, #4
	beq	.L291
.L234:
	mov	r3, #67108864
	ldr	r3, [r3, #304]
	tst	r3, #32
	bne	.L235
	sub	r3, r2, #2
	cmp	r3, #2
	bls	.L235
	ldr	r3, .L293+12
	ldr	r3, [r3, #24]
	cmp	r3, #0
	bne	.L235
.L282:
	cmp	r1, #1
	strne	r3, [r0, #68]
.L283:
	ldr	r0, .L293+16
	ldmfd	sp!, {r4, r5, r6}
	b	mapCollisions
.L235:
	mov	r3, #67108864
	ldr	r3, [r3, #304]
	tst	r3, #16
	bne	.L237
	sub	r3, r2, #2
	cmp	r3, #2
	bls	.L237
	ldr	r3, .L293+12
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L282
.L237:
	mov	r3, #67108864
	ldr	r3, [r3, #304]
	tst	r3, #64
	bne	.L239
	sub	r3, r2, #2
	cmp	r3, #2
	bls	.L239
	ldr	r3, .L293+12
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L282
.L239:
	mov	r3, #67108864
	ldr	r3, [r3, #304]
	tst	r3, #128
	beq	.L292
.L240:
	sub	r2, r2, #1
	cmp	r2, #3
	movhi	r3, #5
	strhi	r3, [r0, #68]
.L226:
	ldmfd	sp!, {r4, r5, r6}
	bx	lr
.L292:
	sub	r3, r2, #2
	cmp	r3, #2
	bls	.L226
	ldr	r3, .L293+12
	ldr	r3, [r3, #24]
	cmp	r3, #0
	bne	.L240
	b	.L282
.L287:
	sub	r2, r1, #1
	cmp	r2, #3
	mov	r2, r1
	bls	.L230
	ldr	r4, .L293+12
	ldr	r5, [r4, #24]
	cmp	r5, #0
	bne	.L228
	ldr	r6, [r0]
	mov	r1, #1
	add	r6, r6, #8
	str	r6, [r0]
	mov	r2, r1
	str	r5, [r0, #76]
	str	r1, [r0, #68]
	str	r1, [r4, #44]
	b	.L228
.L291:
	ldr	r3, .L293+12
	ldr	r4, [r3, #40]
	rsbs	r4, r4, #1
	mov	ip, #99
	movcc	r4, #0
	str	r4, [r3, #40]
	str	ip, [r0, #40]
	b	.L234
.L290:
	sub	r4, r2, #2
	cmp	r4, #2
	bls	.L233
	ldr	ip, [ip, #124]
	cmp	ip, #0
	beq	.L233
	ldr	ip, .L293+12
	ldr	r4, [ip, #24]
	cmp	r4, #0
	bne	.L233
	ldr	r5, [ip, #40]
	rsbs	r5, r5, #1
	mov	r4, #1
	movcc	r5, #0
	str	r5, [ip, #40]
	str	r4, [r0, #96]
	str	r4, [ip, #52]
	str	r4, [ip, #36]
	b	.L233
.L289:
	sub	r4, r2, #2
	cmp	r4, #2
	bls	.L232
	ldr	r4, .L293+12
	ldr	r4, [r4, #24]
	cmp	r4, #0
	moveq	r1, #2
	streq	r4, [r0, #76]
	streq	r1, [r0, #68]
	moveq	r2, r1
	b	.L232
.L288:
	ldr	r4, .L293+12
	ldr	r5, [r4, #24]
	cmp	r5, #0
	moveq	r5, #1
	streq	r5, [r4, #48]
	b	.L231
.L230:
	cmp	r1, #1
	bne	.L228
	ldr	r5, .L293+12
	ldr	r4, [r5, #24]
	cmp	r4, #0
	bne	.L228
	ldr	r6, [r0]
	mov	r1, #5
	sub	r6, r6, #8
	str	r6, [r0]
	mov	r2, r1
	str	r4, [r0, #76]
	str	r1, [r0, #68]
	str	r4, [r5, #44]
	b	.L228
.L294:
	.align	2
.L293:
	.word	oldButtons
	.word	.LANCHOR0
	.word	buttons
	.word	.LANCHOR1
	.word	ryuCoords
	.size	buttonDataQuery, .-buttonDataQuery
	.align	2
	.global	playerAnimation
	.type	playerAnimation, %function
playerAnimation:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r4, .L326
	ldr	r3, [r4]
	ldr	r2, [r3, #68]
	cmp	r2, #5
	beq	.L322
	cmp	r2, #0
	bne	.L300
	ldr	r2, [r3, #60]
	add	r2, r2, #1
	tst	r2, #7
	str	r2, [r3, #60]
	bne	.L295
	ldr	r2, [r3, #76]
	add	r2, r2, #1
	cmp	r2, #6
	movgt	r2, #3
	str	r2, [r3, #76]
.L295:
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L300:
	cmp	r2, #1
	beq	.L323
	cmp	r2, #2
	beq	.L324
	cmp	r2, #3
	beq	.L325
	cmp	r2, #4
	bne	.L295
	ldr	r2, [r3, #60]
	ldr	r0, .L326+4
	add	r2, r2, #1
	smull	r1, r0, r2, r0
	mov	r1, r2, asr #31
	rsb	r1, r1, r0, asr #5
	add	r1, r1, r1, asl #2
	cmp	r2, r1, asl #4
	str	r2, [r3, #60]
	ldreq	r2, [r3, #76]
	addeq	r2, r2, #1
	streq	r2, [r3, #76]
	b	.L295
.L322:
	ldr	r2, [r3, #64]
	ldr	r1, .L326+4
	add	r2, r2, #1
	smull	r0, r1, r2, r1
	mov	r0, r2, asr #31
	rsb	r1, r0, r1, asr #2
	add	r1, r1, r1, asl #2
	cmp	r2, r1, asl #1
	str	r2, [r3, #64]
	bne	.L295
	ldr	r2, [r3, #76]
	add	r2, r2, #1
	cmp	r2, #1
	movgt	r2, #0
	str	r2, [r3, #76]
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L324:
	ldr	r2, [r3, #60]
	add	r2, r2, #1
	ands	r1, r2, #3
	str	r2, [r3, #60]
	bne	.L311
	ldr	r2, [r3, #76]
	add	r2, r2, #1
	cmp	r2, #5
	str	r2, [r3, #76]
	ble	.L311
	ldr	r2, .L326+8
	ldr	r2, [r2, #44]
	cmp	r2, #0
	moveq	r2, #5
	movne	r2, #1
	str	r1, [r3, #76]
	str	r2, [r3, #68]
.L311:
	ldr	r0, .L326+12
	ldmfd	sp!, {r4, r5, r6, lr}
	b	mapCollisions
.L323:
	mov	r2, #67108864
	ldr	r1, [r2, #304]
	tst	r1, #16
	beq	.L304
	ldr	r1, [r2, #304]
	tst	r1, #32
	beq	.L304
	ldr	r1, [r2, #304]
	tst	r1, #64
	beq	.L304
	ldr	r2, [r2, #304]
	tst	r2, #128
	beq	.L304
.L305:
	ldr	r5, .L326+8
	ldr	r2, [r5, #48]
	cmp	r2, #0
	beq	.L308
	mov	r2, #67108864
	ldr	r1, [r2, #304]
	tst	r1, #16
	beq	.L308
	ldr	r1, [r2, #304]
	tst	r1, #32
	beq	.L308
	ldr	r1, [r2, #304]
	tst	r1, #64
	beq	.L308
	ldr	r2, [r2, #304]
	mvn	r2, r2
	ands	r6, r2, #128
	bne	.L308
	ldr	r1, [r3, #60]
	ldr	r2, [r3, #76]
	add	r1, r1, #1
	add	r2, r2, #1
	str	r1, [r3, #60]
	str	r2, [r3, #76]
	ldr	r0, .L326+16
	ldr	r2, .L326+20
	ldr	r3, .L326+24
	ldr	r1, .L326+28
	mov	lr, pc
	bx	r3
	ldr	r3, [r4]
	ldr	r2, [r3, #76]
	cmp	r2, #5
	movgt	r2, #3
	strgt	r6, [r5, #48]
	strgt	r2, [r3, #76]
	b	.L295
.L304:
	ldr	r2, [r3, #60]
	add	r2, r2, #1
	tst	r2, #15
	str	r2, [r3, #60]
	bne	.L305
	ldr	r2, [r3, #76]
	add	r2, r2, #1
	cmp	r2, #3
	movgt	r2, #0
	str	r2, [r3, #76]
	b	.L305
.L308:
	mov	r3, #0
	str	r3, [r5, #48]
	b	.L295
.L325:
	ldr	r2, [r3, #60]
	ldr	r1, .L326+32
	add	r2, r2, #1
	smull	r0, r1, r2, r1
	sub	r1, r1, r2, asr #31
	add	r1, r1, r1, asl #1
	subs	r1, r2, r1, asl #1
	str	r2, [r3, #60]
	bne	.L311
	ldr	r2, [r3, #76]
	add	r2, r2, #1
	cmp	r2, #5
	str	r2, [r3, #76]
	movgt	r2, #5
	strgt	r1, [r3, #76]
	strgt	r1, [r3, #44]
	strgt	r2, [r3, #68]
	b	.L311
.L327:
	.align	2
.L326:
	.word	.LANCHOR0
	.word	1717986919
	.word	.LANCHOR1
	.word	ryuCoords
	.word	slashSFX
	.word	11025
	.word	playSoundB
	.word	7378
	.word	715827883
	.size	playerAnimation, .-playerAnimation
	.align	2
	.global	playerSpriteWork
	.type	playerSpriteWork, %function
playerSpriteWork:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L561
	ldr	r3, [r2]
	ldr	r1, [r3, #68]
	ldr	r2, [r2, #116]
	mov	r0, #512
	cmp	r1, #5
	stmfd	sp!, {r4, r5, r6, r7, r8, r9}
	strh	r0, [r2, #16]	@ movhi
	beq	.L537
	cmp	r1, #0
	beq	.L538
	cmp	r1, #1
	beq	.L539
	cmp	r1, #2
	beq	.L540
	cmp	r1, #3
	beq	.L541
	cmp	r1, #4
	bne	.L328
	ldr	r1, [r3, #76]
	cmp	r1, #0
	beq	.L542
	cmp	r1, #1
	beq	.L543
	cmp	r1, #2
	bne	.L328
	ldr	r1, .L561+4
	ldr	r4, [r3]
	ldr	r5, [r1, #40]
	mov	ip, #16
	add	r4, r4, #8
	str	ip, [r3, #36]
	and	r4, r4, #255
	cmp	r5, #0
	ldr	ip, [r3, #80]
	ldr	r6, [r3, #84]
	mov	r1, r4
	mov	r0, #20
	orrne	r1, r4, #1024
	str	r0, [r3, #32]
	ldr	r0, [r3, #4]
	strh	r4, [r2]	@ movhi
	and	r3, r6, #3
	strneh	r1, [r2]	@ movhi
	mov	r1, ip, asl #16
	mov	r1, r1, lsr #16
	mov	r3, r3, asl #10
	orr	r6, r1, #16384
	mov	r7, r0, asl #23
	cmp	r5, #0
	orr	r3, r3, #516
.L536:
	orr	r4, r4, #32768
	orrne	r4, r4, #1024
	cmp	ip, #4096
	subeq	r0, r0, #8
	addne	r0, r0, #16
	mov	r0, r0, asl #23
	orr	r5, r6, r7, lsr #23
	strh	r3, [r2, #4]	@ movhi
	orr	r1, r1, r0, lsr #23
	orr	r3, r3, #2
	strh	r5, [r2, #2]	@ movhi
	strh	r4, [r2, #8]	@ movhi
	strh	r1, [r2, #10]	@ movhi
	strh	r3, [r2, #12]	@ movhi
.L328:
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9}
	bx	lr
.L538:
	ldr	r1, [r3, #76]
	cmp	r1, #2
	ble	.L544
	cmp	r1, #3
	beq	.L545
	cmp	r1, #4
	beq	.L546
	cmp	r1, #5
	beq	.L547
	cmp	r1, #6
	bne	.L328
	ldr	r0, .L561+4
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r5, [r0, #40]
	add	r4, r3, #80
	ldmia	r4, {r4, r7}
	orr	r1, r1, #32768
	cmp	r5, #0
	mov	r0, #18
	str	r0, [r3, #32]
	mov	ip, #32
	orrne	r0, r1, #1024
	str	ip, [r3, #36]
	ldr	ip, [r3, #4]
	strh	r1, [r2]	@ movhi
	strneh	r0, [r2]	@ movhi
	cmp	r5, #0
	mov	r0, r4, asl #16
	mov	r0, r0, lsr #16
	orrne	r1, r1, #1024
	cmp	r4, #4096
	mvn	r6, r0, asl #17
	strh	r1, [r2, #8]	@ movhi
	and	r3, r7, #3
	subeq	r1, ip, #8
	mov	r7, ip, asl #23
	addne	ip, ip, #16
	mov	r3, r3, asl #10
	moveq	r1, r1, asl #23
	orrne	r0, r0, #16384
	mvn	r6, r6, lsr #17
	orreq	r0, r0, #16384
	movne	ip, ip, asl #23
	orr	r5, r3, #16
	orr	r6, r6, r7, lsr #23
	orreq	r1, r0, r1, lsr #23
	orrne	r0, r0, ip, lsr #23
	orr	r3, r3, #18
	strh	r6, [r2, #2]	@ movhi
	strh	r5, [r2, #4]	@ movhi
	streqh	r1, [r2, #10]	@ movhi
	strneh	r0, [r2, #10]	@ movhi
	strh	r3, [r2, #12]	@ movhi
	b	.L328
.L537:
	ldr	r1, [r3, #76]
	mov	r4, #32
	mov	ip, #16
	cmp	r1, #1
	str	r4, [r3, #36]
	str	ip, [r3, #32]
	bgt	.L328
	ldr	r4, .L561+4
	ldrb	ip, [r3]	@ zero_extendqisi2
	ldr	r4, [r4, #40]
	orr	ip, ip, #32768
	cmp	r4, #0
	strh	ip, [r2]	@ movhi
	strh	r0, [r2, #8]	@ movhi
	orrne	ip, ip, #1024
	add	r0, r3, #80
	strneh	ip, [r2]	@ movhi
	ldmia	r0, {r0, ip}
	ldr	r3, [r3, #4]
	mvn	r0, r0, asl #17
	mov	r1, r1, asl #1
	and	ip, ip, #3
	mvn	r0, r0, lsr #17
	mov	r3, r3, asl #23
	orr	r1, r1, ip, asl #10
	orr	r3, r0, r3, lsr #23
	strh	r1, [r2, #4]	@ movhi
	strh	r3, [r2, #2]	@ movhi
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9}
	bx	lr
.L544:
	ldr	ip, .L561+4
	ldrb	r0, [r3]	@ zero_extendqisi2
	ldr	ip, [ip, #40]
	orr	r0, r0, #32768
	cmp	ip, #0
	strh	r0, [r2]	@ movhi
	ldr	ip, [r3, #80]
	orrne	r0, r0, #1024
	strneh	r0, [r2]	@ movhi
	ldr	r4, [r3, #4]
	ldr	r0, [r3, #84]
	mvn	ip, ip, asl #17
	mov	r5, r1, asl #1
	mov	r4, r4, asl #23
	and	r0, r0, #3
	mvn	ip, ip, lsr #17
	cmp	r1, #2
	orr	r0, r5, r0, asl #10
	orr	r1, ip, r4, lsr #23
	strh	r1, [r2, #2]	@ movhi
	strh	r0, [r2, #4]	@ movhi
	moveq	r2, #16
	moveq	r1, #31
	streq	r2, [r3, #32]
	mov	r2, #3
	streq	r1, [r3, #36]
	str	r2, [r3, #76]
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9}
	bx	lr
.L540:
	ldr	r1, [r3, #76]
	cmp	r1, #0
	beq	.L548
	cmp	r1, #1
	beq	.L549
	cmp	r1, #2
	beq	.L550
	cmp	r1, #3
	beq	.L551
	cmp	r1, #4
	beq	.L552
	cmp	r1, #5
	bne	.L328
	ldr	r0, .L561+4
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r0, [r0, #40]
	orr	r1, r1, #32768
	cmp	r0, #0
	mov	ip, #28
	mov	r0, #16
	str	ip, [r3, #36]
	str	r0, [r3, #32]
	strh	r1, [r2]	@ movhi
	orrne	r1, r1, #1024
	ldr	ip, [r3, #80]
	strneh	r1, [r2]	@ movhi
	ldr	r1, [r3, #84]
	ldr	r0, [r3, #4]
	and	r1, r1, #3
	mvn	r3, ip, asl #17
	mvn	r3, r3, lsr #17
	mov	r0, r0, asl #23
	mov	r1, r1, asl #10
	orr	r0, r3, r0, lsr #23
	orr	r1, r1, #236
	mov	r3, #512
	strh	r0, [r2, #2]	@ movhi
	strh	r1, [r2, #4]	@ movhi
	strh	r3, [r2, #8]	@ movhi
	b	.L328
.L539:
	ldr	r1, [r3, #76]
	mov	ip, #24
	mov	r0, #16
	cmp	r1, #3
	str	ip, [r3, #36]
	str	r0, [r3, #32]
	bgt	.L360
	ldr	r0, .L561+4
	ldr	r6, [r3]
	ldr	r5, [r0, #40]
	and	r0, r6, #255
	cmp	r5, #0
	strh	r0, [r2]	@ movhi
	add	r6, r6, #16
	orrne	r0, r0, #1024
	ldr	r4, [r3, #4]
	strneh	r0, [r2]	@ movhi
	and	r6, r6, #255
	ldr	r0, [r3, #84]
	ldrh	ip, [r3, #80]
	cmp	r5, #0
	orr	r5, r6, #16384
	orrne	r5, r5, #1024
	mov	r4, r4, asl #23
	and	r0, r0, #3
	strh	r5, [r2, #8]	@ movhi
	mov	r4, r4, lsr #23
	orr	r8, ip, #16384
	mov	r0, r0, asl #10
	add	r7, r1, #64
	add	r5, r1, #96
	orr	r7, r0, r7, asl #1
	tst	r1, #1
	orr	r8, r8, r4
	orr	ip, r4, ip
	orr	r0, r0, r5, asl #1
	strh	r8, [r2, #2]	@ movhi
	strh	r7, [r2, #4]	@ movhi
	strh	ip, [r2, #10]	@ movhi
	strh	r0, [r2, #12]	@ movhi
	movne	r2, #23
	strne	r2, [r3, #36]
	b	.L328
.L541:
	ldr	r1, [r3, #76]
	cmp	r1, #0
	beq	.L553
	cmp	r1, #1
	beq	.L554
	cmp	r1, #2
	beq	.L555
	cmp	r1, #3
	beq	.L556
	cmp	r1, #4
	beq	.L557
	cmp	r1, #5
	bne	.L328
	ldr	r0, .L561+4
	ldr	r0, [r0, #40]
	ldrb	r1, [r3]	@ zero_extendqisi2
	cmp	r0, #0
	mov	r0, #16
	str	r0, [r3, #32]
	ldr	r0, [r3, #84]
	orr	r1, r1, #32768
	mov	ip, #28
	str	ip, [r3, #36]
	and	r0, r0, #3
	strh	r1, [r2]	@ movhi
	ldr	ip, [r3, #80]
	orrne	r1, r1, #1024
	strneh	r1, [r2]	@ movhi
	mov	r0, r0, asl #10
	ldr	r1, [r3, #4]
	orr	r0, r0, #364
	mvn	r3, ip, asl #17
	mvn	r3, r3, lsr #17
	mov	r1, r1, asl #23
	orr	r0, r0, #1
.L533:
	orr	r1, r3, r1, lsr #23
	mov	r3, #512
	strh	r0, [r2, #4]	@ movhi
	strh	r1, [r2, #2]	@ movhi
	strh	r3, [r2, #8]	@ movhi
	b	.L328
.L545:
	ldr	r0, .L561+4
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r5, [r0, #40]
	add	r4, r3, #80
	ldmia	r4, {r4, r7}
	orr	r1, r1, #32768
	cmp	r5, #0
	mov	r0, #19
	str	r0, [r3, #32]
	mov	ip, #31
	orrne	r0, r1, #1024
	str	ip, [r3, #36]
	ldr	ip, [r3, #4]
	strh	r1, [r2]	@ movhi
	strneh	r0, [r2]	@ movhi
	cmp	r5, #0
	mov	r0, r4, asl #16
	mov	r0, r0, lsr #16
	orrne	r1, r1, #1024
	cmp	r4, #4096
	mvn	r6, r0, asl #17
	strh	r1, [r2, #8]	@ movhi
	and	r3, r7, #3
	subeq	r1, ip, #8
	mov	r7, ip, asl #23
	addne	ip, ip, #16
	mov	r3, r3, asl #10
	moveq	r1, r1, asl #23
	orrne	r0, r0, #16384
	mvn	r6, r6, lsr #17
	orreq	r0, r0, #16384
	movne	ip, ip, asl #23
	orr	r5, r3, #6
	orr	r6, r6, r7, lsr #23
	orreq	r1, r0, r1, lsr #23
	orrne	r0, r0, ip, lsr #23
	orr	r3, r3, #8
	strh	r6, [r2, #2]	@ movhi
	strh	r5, [r2, #4]	@ movhi
	streqh	r1, [r2, #10]	@ movhi
	strneh	r0, [r2, #10]	@ movhi
	strh	r3, [r2, #12]	@ movhi
	b	.L328
.L360:
	cmp	r1, #4
	beq	.L558
	cmp	r1, #5
	bne	.L328
	ldr	r1, .L561+4
	ldr	r4, [r3]
	ldr	ip, [r1, #40]
	and	r5, r4, #255
	orr	r1, r5, #16384
	cmp	ip, #0
	mov	r0, #40
	str	r0, [r3, #32]
	strh	r1, [r2]	@ movhi
	orrne	r1, r1, #1024
	strneh	r1, [r2]	@ movhi
	ldr	r1, [r3, #80]
	cmp	r1, #4096
	beq	.L559
	ldr	r7, [r3, #4]
	mov	r0, r1, asl #16
	mov	r0, r0, lsr #16
	mov	r6, r7, asl #23
	mvn	r8, r0, asl #17
	mvn	r8, r8, lsr #17
	mov	r6, r6, lsr #23
	orr	r8, r8, r6
	mov	r7, r7, asl #16
	strh	r8, [r2, #2]	@ movhi
	mov	r7, r7, lsr #16
.L372:
	ldr	r3, [r3, #84]
	add	r4, r4, #16
	and	r3, r3, #3
	mov	r3, r3, asl #10
	and	r4, r4, #255
	orr	r4, r4, #16384
	cmp	ip, #0
	orr	ip, r3, #140
	strh	r4, [r2, #8]	@ movhi
	strh	ip, [r2, #4]	@ movhi
	beq	.L373
	ldr	ip, .L561+8
	orr	r4, r4, #1024
	orr	ip, r5, ip
	orr	r6, r0, r6
	orr	r5, r3, #204
	strh	r4, [r2, #8]	@ movhi
	strh	r6, [r2, #10]	@ movhi
	strh	ip, [r2, #16]	@ movhi
	strh	r5, [r2, #12]	@ movhi
.L441:
	cmp	r1, #4096
	subeq	r1, r7, #24
	addne	r1, r7, #32
	mov	r1, r1, asl #23
	orr	r0, r0, r1, lsr #23
	orr	r3, r3, #144
	strh	r0, [r2, #18]	@ movhi
	strh	r3, [r2, #20]	@ movhi
	b	.L328
.L548:
	ldr	r0, .L561+4
	ldrh	r4, [r3]
	ldr	ip, [r0, #40]
	add	r1, r4, #8
	and	r1, r1, #255
	cmp	ip, #0
	mov	r5, #24
	mov	r0, #16
	str	r5, [r3, #36]
	str	r0, [r3, #32]
	ldr	r5, [r3, #84]
	ldr	r0, [r3, #4]
	strh	r1, [r2]	@ movhi
	orrne	r1, r1, #1024
	strneh	r1, [r2]	@ movhi
	add	r4, r4, #24
	ldrh	r1, [r3, #80]
	mov	r0, r0, asl #23
	and	r3, r5, #3
	and	r4, r4, #255
	mov	r0, r0, lsr #23
	mov	r3, r3, asl #10
	orr	r6, r1, #16384
	cmp	ip, #0
	orr	ip, r4, #16384
	orr	r5, r3, #256
	orr	r6, r6, r0
	orrne	ip, ip, #1024
	orr	r1, r0, r1
	orr	r3, r3, #320
	strh	r6, [r2, #2]	@ movhi
	strh	r5, [r2, #4]	@ movhi
	strh	ip, [r2, #8]	@ movhi
	strh	r1, [r2, #10]	@ movhi
	strh	r3, [r2, #12]	@ movhi
	b	.L328
.L553:
	ldr	r1, .L561+4
	ldr	r0, [r3]
	ldr	r6, [r1, #40]
	mov	ip, #18
	cmp	r6, #0
	and	r1, r0, #255
	mov	r4, #23
	str	ip, [r3, #32]
	str	r4, [r3, #36]
	orrne	ip, r1, #1024
	add	r4, r3, #80
	strh	r1, [r2]	@ movhi
	strneh	ip, [r2]	@ movhi
	ldmia	r4, {r4, ip}
	ldr	r7, [r3, #4]
	and	ip, ip, #3
	mov	r3, r4, asl #16
	add	r8, r0, #16
	mov	ip, ip, asl #10
	mov	r3, r3, lsr #16
	mov	r0, r7, asl #23
	orr	r5, ip, #384
	and	r8, r8, #255
	orr	r9, r3, #16384
	mov	r0, r0, lsr #23
	orr	r8, r8, #16384
	orr	ip, ip, #448
	cmp	r6, #0
	orr	r9, r9, r0
	orr	r6, r5, #1
	orr	ip, ip, #1
	strh	r8, [r2, #8]	@ movhi
	strh	r9, [r2, #2]	@ movhi
	strh	r6, [r2, #4]	@ movhi
	beq	.L405
	orr	r8, r8, #1024
	orr	r0, r3, r0
	orr	r1, r1, #1024
	strh	ip, [r2, #12]	@ movhi
	strh	r8, [r2, #8]	@ movhi
	strh	r0, [r2, #10]	@ movhi
	strh	r1, [r2, #16]	@ movhi
.L440:
	cmp	r4, #4096
	addeq	r1, r7, #16
	subne	r7, r7, #8
	moveq	r1, r1, asl #23
	movne	r7, r7, asl #23
	orreq	r3, r3, r1, lsr #23
	orrne	r3, r3, r7, lsr #23
	strh	r3, [r2, #18]	@ movhi
	strh	r5, [r2, #20]	@ movhi
	b	.L328
.L542:
	ldr	r1, .L561+4
	ldr	r4, [r3]
	ldr	ip, [r1, #40]
	mov	r5, #23
	and	r1, r4, #255
	cmp	ip, #0
	mov	r0, #16
	str	r5, [r3, #36]
	str	r0, [r3, #32]
	ldr	r5, [r3, #84]
	ldr	r0, [r3, #4]
	strh	r1, [r2]	@ movhi
	orrne	r1, r1, #1024
	strneh	r1, [r2]	@ movhi
	add	r4, r4, #16
	ldrh	r1, [r3, #80]
	mov	r0, r0, asl #23
	and	r3, r5, #3
	and	r4, r4, #255
	mov	r0, r0, lsr #23
	mov	r3, r3, asl #10
	orr	r5, r1, #16384
	cmp	ip, #0
	orr	r4, r4, #16384
	orr	ip, r3, #480
	orr	r5, r5, r0
	orrne	r4, r4, #1024
	orr	r1, r0, r1
	orr	r3, r3, #544
	strh	r5, [r2, #2]	@ movhi
	strh	ip, [r2, #4]	@ movhi
	strh	r4, [r2, #8]	@ movhi
	strh	r1, [r2, #10]	@ movhi
	strh	r3, [r2, #12]	@ movhi
	b	.L328
.L558:
	ldr	r1, .L561+4
	ldr	r0, [r3]
	ldr	r1, [r1, #40]
	and	ip, r0, #255
	orr	ip, ip, #16384
	cmp	r1, #0
	mov	r5, #23
	mov	r4, #32
	str	r5, [r3, #36]
	str	r4, [r3, #32]
	strh	ip, [r2]	@ movhi
	orrne	ip, ip, #1024
	strneh	ip, [r2]	@ movhi
	ldr	ip, [r3, #80]
	cmp	ip, #4096
	beq	.L560
	ldr	r4, [r3, #4]
	mov	ip, ip, asl #16
	mov	ip, ip, lsr #16
	mvn	r5, ip, asl #17
	mov	r4, r4, asl #23
	mvn	r5, r5, lsr #17
	mov	r4, r4, lsr #23
	orr	r5, r5, r4
	strh	r5, [r2, #2]	@ movhi
.L367:
	ldr	r3, [r3, #84]
	add	r0, r0, #16
	and	r3, r3, #3
	and	r0, r0, #255
	mov	r3, r3, asl #10
	cmp	r1, #0
	orr	r0, r0, #16384
	orr	r1, r3, #136
	orrne	r0, r0, #1024
	orr	ip, r4, ip
	orr	r3, r3, #200
	strh	r1, [r2, #4]	@ movhi
	strh	r0, [r2, #8]	@ movhi
	strh	ip, [r2, #10]	@ movhi
	strh	r3, [r2, #12]	@ movhi
	b	.L328
.L546:
	ldr	r0, .L561+4
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r5, [r0, #40]
	add	r4, r3, #80
	ldmia	r4, {r4, r7}
	orr	r1, r1, #32768
	cmp	r5, #0
	mov	r0, #18
	str	r0, [r3, #32]
	mov	ip, #32
	orrne	r0, r1, #1024
	str	ip, [r3, #36]
	ldr	ip, [r3, #4]
	strh	r1, [r2]	@ movhi
	strneh	r0, [r2]	@ movhi
	cmp	r5, #0
	mov	r0, r4, asl #16
	mov	r0, r0, lsr #16
	orrne	r1, r1, #1024
	cmp	r4, #4096
	mvn	r6, r0, asl #17
	and	r3, r7, #3
	strh	r1, [r2, #8]	@ movhi
	mov	r7, ip, asl #23
	subeq	r1, ip, #8
	addne	ip, ip, #16
	mov	r3, r3, asl #10
	mvn	r6, r6, lsr #17
	moveq	r1, r1, asl #23
	movne	ip, ip, asl #23
	orr	r5, r3, #9
	orr	r6, r6, r7, lsr #23
	orreq	r0, r0, r1, lsr #23
	orrne	r0, r0, ip, lsr #23
	orr	r3, r3, #11
	strh	r6, [r2, #2]	@ movhi
	strh	r5, [r2, #4]	@ movhi
	strh	r0, [r2, #10]	@ movhi
	strh	r3, [r2, #12]	@ movhi
	b	.L328
.L547:
	ldr	r1, .L561+4
	ldr	ip, [r1, #40]
	ldrb	r1, [r3]	@ zero_extendqisi2
	cmp	ip, #0
	mov	r4, #31
	mov	ip, #25
	str	r4, [r3, #36]
	str	ip, [r3, #32]
	strh	r1, [r2]	@ movhi
	orrne	r1, r1, #1024
	strneh	r1, [r2]	@ movhi
	ldr	r1, [r3, #80]
	strh	r0, [r2, #8]	@ movhi
	ldr	r0, [r3, #4]
	cmp	r1, #4096
	ldr	r3, [r3, #84]
	subeq	r0, r0, #16
	mvnne	r1, r1, asl #17
	moveq	r0, r0, asl #23
	and	r3, r3, #3
	subeq	r1, r1, #32768
	mvnne	r1, r1, lsr #17
	moveq	r0, r0, lsr #23
	movne	r0, r0, asl #23
	mov	r3, r3, asl #10
	orreq	r1, r0, r1
	orrne	r1, r1, r0, lsr #23
	orr	r3, r3, #12
	strh	r1, [r2, #2]	@ movhi
	strh	r3, [r2, #4]	@ movhi
	b	.L328
.L405:
	orr	r0, r3, r0
	strh	ip, [r2, #12]	@ movhi
	strh	r0, [r2, #10]	@ movhi
	strh	r1, [r2, #16]	@ movhi
	b	.L440
.L549:
	ldr	r1, .L561+4
	ldr	r0, [r3]
	ldr	ip, [r1, #40]
	add	r0, r0, #16
	and	r0, r0, #255
	cmp	ip, #0
	mov	r1, r0
	mov	r5, #16
	orrne	r1, r0, #1024
	mov	r4, #24
	str	r5, [r3, #36]
	str	r4, [r3, #32]
	strh	r0, [r2]	@ movhi
	strneh	r1, [r2]	@ movhi
	add	r1, r3, #80
	ldmia	r1, {r1, r6}
	ldr	r5, [r3, #4]
	cmp	ip, #0
	orr	r0, r0, #32768
	mov	r4, r1, asl #16
	and	r3, r6, #3
	orrne	r0, r0, #1024
	cmp	r1, #4096
	mov	r4, r4, lsr #16
	mov	r3, r3, asl #10
	subeq	r1, r5, #8
	addne	r1, r5, #16
	orr	r6, r4, #16384
	orr	r7, r3, #288
	mov	r8, r5, asl #23
	mov	r1, r1, asl #23
	orr	r6, r6, r8, lsr #23
	orr	ip, r7, #2
	orr	r4, r4, r1, lsr #23
	orr	r3, r3, #292
	strh	r6, [r2, #2]	@ movhi
	strh	ip, [r2, #4]	@ movhi
	strh	r0, [r2, #8]	@ movhi
	strh	r4, [r2, #10]	@ movhi
	strh	r3, [r2, #12]	@ movhi
	b	.L328
.L550:
	ldr	r0, .L561+4
	ldrh	r4, [r3]
	ldr	ip, [r0, #40]
	add	r1, r4, #8
	and	r1, r1, #255
	cmp	ip, #0
	mov	r5, #24
	mov	r0, #16
	str	r5, [r3, #36]
	str	r0, [r3, #32]
	ldr	r0, [r3, #84]
	strh	r1, [r2]	@ movhi
	orrne	r1, r1, #1024
	strneh	r1, [r2]	@ movhi
	ldr	r1, [r3, #4]
	add	r5, r4, #24
	ldrh	r3, [r3, #80]
	and	r0, r0, #3
	mov	r0, r0, asl #10
	mov	r1, r1, asl #23
	and	r5, r5, #255
	orr	r4, r0, #260
	mov	r1, r1, lsr #23
	orr	r6, r3, #16384
	cmp	ip, #0
	orr	r5, r5, #16384
	orr	r0, r0, #324
	orr	r4, r4, #1
	orr	ip, r6, r1
	orrne	r5, r5, #1024
	orr	r0, r0, #1
	orr	r3, r1, r3
	strh	r4, [r2, #4]	@ movhi
	strh	ip, [r2, #2]	@ movhi
	strh	r5, [r2, #8]	@ movhi
	strh	r0, [r2, #12]	@ movhi
	strh	r3, [r2, #10]	@ movhi
	b	.L328
.L554:
	ldr	r1, .L561+4
	ldr	r5, [r3]
	ldr	r4, [r1, #40]
	ldr	r6, [r3, #84]
	and	r1, r5, #255
	mov	ip, #30
	str	ip, [r3, #36]
	orr	r1, r1, #32768
	ldr	ip, [r3, #80]
	cmp	r4, #0
	mov	r0, #19
	str	r0, [r3, #32]
	ldr	r0, [r3, #4]
	strh	r1, [r2]	@ movhi
	and	r3, r6, #3
	orrne	r1, r1, #1024
	add	r6, r5, #16
	strneh	r1, [r2]	@ movhi
	and	r6, r6, #255
	cmp	r4, #0
	mov	r1, ip, asl #16
	mov	r1, r1, lsr #16
	orrne	r6, r6, #1024
	cmp	ip, #4096
	mov	r5, r0, asl #23
	mvn	r7, r1, asl #17
	mov	r3, r3, asl #10
	addeq	r0, r0, #16
	subne	r0, r0, #8
	orr	r4, r3, #356
	mvn	r7, r7, lsr #17
	mov	r0, r0, asl #23
	orr	r3, r3, #416
	orr	r5, r7, r5, lsr #23
	orr	r1, r1, r0, lsr #23
	orr	r3, r3, #3
	strh	r5, [r2, #2]	@ movhi
	strh	r4, [r2, #4]	@ movhi
	strh	r6, [r2, #8]	@ movhi
	strh	r1, [r2, #10]	@ movhi
	strh	r3, [r2, #12]	@ movhi
	b	.L328
.L543:
	ldr	r0, .L561+4
	ldr	r1, [r3]
	ldr	r4, [r0, #40]
	mov	r0, #16
	str	r0, [r3, #32]
	add	r1, r1, #8
	ldr	r0, [r3, #84]
	and	r1, r1, #255
	mov	ip, #15
	cmp	r4, #0
	str	ip, [r3, #36]
	and	r0, r0, #3
	strh	r1, [r2]	@ movhi
	orrne	r1, r1, #1024
	strneh	r1, [r2]	@ movhi
	ldr	ip, [r3, #80]
	ldr	r1, [r3, #4]
	mov	r0, r0, asl #10
	orr	r0, r0, #512
	orr	r3, ip, #16384
	mov	r1, r1, asl #23
	orr	r0, r0, #2
	b	.L533
.L373:
	mvn	r4, r5, asl #17
	mvn	r4, r4, lsr #17
	orr	r6, r0, r6
	orr	ip, r3, #204
	strh	r4, [r2, #16]	@ movhi
	strh	r6, [r2, #10]	@ movhi
	strh	ip, [r2, #12]	@ movhi
	b	.L441
.L555:
	ldr	r0, .L561+4
	ldrh	r4, [r3]
	ldr	ip, [r0, #40]
	add	r1, r4, #8
	and	r1, r1, #255
	cmp	ip, #0
	mov	r5, #24
	mov	r0, #15
	str	r5, [r3, #36]
	str	r0, [r3, #32]
	ldr	r0, [r3, #84]
	strh	r1, [r2]	@ movhi
	orrne	r1, r1, #1024
	strneh	r1, [r2]	@ movhi
	ldr	r1, [r3, #4]
	add	r6, r4, #24
	ldrh	r3, [r3, #80]
	and	r0, r0, #3
	mov	r0, r0, asl #10
	mov	r1, r1, asl #23
	and	r6, r6, #255
	orr	r5, r0, #388
	mov	r1, r1, lsr #23
	orr	r4, r3, #16384
	cmp	ip, #0
	orr	r0, r0, #452
	orr	ip, r6, #16384
	orr	r5, r5, #2
	orr	r4, r4, r1
	orrne	ip, ip, #1024
	orr	r0, r0, #2
	orr	r3, r1, r3
	strh	r5, [r2, #4]	@ movhi
	strh	r4, [r2, #2]	@ movhi
	strh	ip, [r2, #8]	@ movhi
	strh	r0, [r2, #12]	@ movhi
	strh	r3, [r2, #10]	@ movhi
	b	.L328
.L551:
	ldr	r1, .L561+4
	ldr	r0, [r3]
	ldr	ip, [r1, #40]
	add	r0, r0, #16
	and	r0, r0, #255
	cmp	ip, #0
	mov	r1, r0
	mov	r5, #16
	orrne	r1, r0, #1024
	mov	r4, #24
	str	r5, [r3, #36]
	str	r4, [r3, #32]
	strh	r0, [r2]	@ movhi
	strneh	r1, [r2]	@ movhi
	add	r1, r3, #80
	ldmia	r1, {r1, r6}
	ldr	r5, [r3, #4]
	cmp	ip, #0
	orr	r0, r0, #32768
	mov	r4, r1, asl #16
	and	r3, r6, #3
	orrne	r0, r0, #1024
	cmp	r1, #4096
	mov	r4, r4, lsr #16
	mov	r3, r3, asl #10
	subeq	r1, r5, #8
	addne	r1, r5, #16
	orr	r6, r4, #16384
	orr	r7, r3, #292
	mov	r8, r5, asl #23
	mov	r1, r1, asl #23
	orr	r3, r3, #296
	orr	r6, r6, r8, lsr #23
	orr	ip, r7, #3
	orr	r4, r4, r1, lsr #23
	orr	r3, r3, #1
	strh	r6, [r2, #2]	@ movhi
	strh	ip, [r2, #4]	@ movhi
	strh	r0, [r2, #8]	@ movhi
	strh	r4, [r2, #10]	@ movhi
	strh	r3, [r2, #12]	@ movhi
	b	.L328
.L560:
	ldr	r4, [r3, #4]
	sub	r6, r4, #16
	mov	r6, r6, asl #23
	ldr	r5, .L561+12
	mov	r6, r6, lsr #23
	mov	r4, r4, asl #23
	orr	r5, r6, r5
	mov	r4, r4, lsr #23
	strh	r5, [r2, #2]	@ movhi
	b	.L367
.L552:
	ldr	r0, .L561+4
	ldrh	r4, [r3]
	ldr	ip, [r0, #40]
	add	r1, r4, #8
	and	r1, r1, #255
	cmp	ip, #0
	mov	r5, #24
	mov	r0, #16
	str	r5, [r3, #36]
	str	r0, [r3, #32]
	ldr	r0, [r3, #84]
	strh	r1, [r2]	@ movhi
	orrne	r1, r1, #1024
	strneh	r1, [r2]	@ movhi
	ldr	r1, [r3, #4]
	add	r6, r4, #24
	ldrh	r3, [r3, #80]
	and	r0, r0, #3
	mov	r0, r0, asl #10
	mov	r1, r1, asl #23
	and	r6, r6, #255
	orr	r5, r0, #264
	mov	r1, r1, lsr #23
	orr	r4, r3, #16384
	cmp	ip, #0
	orr	r0, r0, #328
	orr	ip, r6, #16384
	orr	r5, r5, #2
	orr	r4, r4, r1
	orrne	ip, ip, #1024
	orr	r0, r0, #2
	orr	r3, r1, r3
	strh	r5, [r2, #4]	@ movhi
	strh	r4, [r2, #2]	@ movhi
	strh	ip, [r2, #8]	@ movhi
	strh	r0, [r2, #12]	@ movhi
	strh	r3, [r2, #10]	@ movhi
	b	.L328
.L559:
	ldr	r6, [r3, #4]
	mov	r7, r6, asl #16
	mov	r7, r7, lsr #16
	sub	r8, r7, #16
	mov	r8, r8, asl #23
	ldr	r0, .L561+12
	mov	r8, r8, lsr #23
	orr	r0, r8, r0
	mov	r6, r6, asl #23
	strh	r0, [r2, #2]	@ movhi
	mov	r6, r6, lsr #23
	mov	r0, r1
	b	.L372
.L556:
	ldr	r1, .L561+4
	ldr	r4, [r3]
	ldr	r5, [r1, #40]
	mov	ip, #16
	add	r4, r4, #16
	str	ip, [r3, #36]
	and	r4, r4, #255
	cmp	r5, #0
	ldr	ip, [r3, #80]
	ldr	r6, [r3, #84]
	mov	r1, r4
	mov	r0, #24
	orrne	r1, r4, #1024
	str	r0, [r3, #32]
	ldr	r0, [r3, #4]
	strh	r4, [r2]	@ movhi
	and	r3, r6, #3
	strneh	r1, [r2]	@ movhi
	mov	r1, ip, asl #16
	mov	r1, r1, lsr #16
	mov	r3, r3, asl #10
	orr	r6, r1, #16384
	mov	r7, r0, asl #23
	cmp	r5, #0
	orr	r3, r3, #424
	b	.L536
.L557:
	ldr	r0, .L561+4
	ldrh	r4, [r3]
	ldr	ip, [r0, #40]
	add	r1, r4, #8
	and	r1, r1, #255
	cmp	ip, #0
	mov	r5, #24
	mov	r0, #16
	str	r5, [r3, #36]
	str	r0, [r3, #32]
	ldr	r0, [r3, #84]
	strh	r1, [r2]	@ movhi
	orrne	r1, r1, #1024
	strneh	r1, [r2]	@ movhi
	ldr	r1, [r3, #4]
	add	r6, r4, #24
	ldrh	r3, [r3, #80]
	and	r0, r0, #3
	mov	r0, r0, asl #10
	mov	r1, r1, asl #23
	and	r6, r6, #255
	orr	r5, r0, #392
	mov	r1, r1, lsr #23
	orr	r4, r3, #16384
	cmp	ip, #0
	orr	r0, r0, #456
	orr	ip, r6, #16384
	orr	r5, r5, #3
	orr	r4, r4, r1
	orrne	ip, ip, #1024
	orr	r0, r0, #3
	orr	r3, r1, r3
	strh	r5, [r2, #4]	@ movhi
	strh	r4, [r2, #2]	@ movhi
	strh	ip, [r2, #8]	@ movhi
	strh	r0, [r2, #12]	@ movhi
	strh	r3, [r2, #10]	@ movhi
	b	.L328
.L562:
	.align	2
.L561:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	-31744
	.word	-28672
	.size	playerSpriteWork, .-playerSpriteWork
	.align	2
	.global	updatePlayer
	.type	updatePlayer, %function
updatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r4, .L571
	ldr	r0, .L571+4
	ldr	r3, [r4]
	ldr	r1, .L571+8
	ldr	r2, .L571+12
	ldr	r6, [r3]
	ldr	ip, [r0]
	ldr	r5, [r3, #4]
	ldr	r0, [r1]
	ldr	lr, [r3, #68]
	ldr	r1, [r2, #16]
	add	ip, r6, ip
	add	r0, r5, r0
	str	r0, [r3, #12]
	str	lr, [r3, #72]
	str	ip, [r3, #8]
	ldr	r0, .L571+16
	add	r3, r1, #1
	str	r3, [r2, #16]
	bl	updatePlayerTracking
	ldr	r0, [r4]
	ldr	r3, [r0, #36]
	ldr	r2, [r0, #8]
	rsb	r3, r3, #155
	cmp	r2, r3
	ble	.L566
	ldr	r3, [r0, #68]
	cmp	r3, #1
	beq	.L570
.L566:
	mov	r3, #1
.L564:
	str	r3, [r0, #92]
	ldr	r1, [r4, #36]
	bl	collisionWithEnemy
	ldr	r0, [r4]
	ldr	r1, [r4, #40]
	bl	collisionWithEnemy
	ldr	r0, [r4]
	ldr	r1, [r4, #44]
	bl	collisionWithEnemy
	ldr	r0, [r4]
	ldr	r1, [r4, #48]
	bl	collisionWithEnemy
	ldr	r0, [r4]
	ldr	r1, [r4, #52]
	bl	collisionWithEnemy
	ldr	r0, [r4]
	ldr	r1, [r4, #56]
	bl	collisionWithEnemy
	ldr	r0, [r4]
	ldr	r1, [r4, #60]
	bl	collisionWithEnemy
	ldr	r0, [r4]
	ldr	r1, [r4, #64]
	bl	collisionWithEnemy
	ldr	r0, [r4]
	ldr	r1, [r4, #68]
	bl	collisionWithEnemy
	ldr	r0, [r4]
	ldr	r1, [r4, #72]
	bl	collisionWithEnemy
	ldr	r0, [r4]
	ldr	r1, [r4, #76]
	bl	collisionWithEnemy
	ldr	r0, [r4]
	ldr	r1, [r4, #80]
	bl	collisionWithEnemy
	ldr	r0, [r4]
	ldr	r1, [r4, #84]
	bl	collisionWithEnemy
	ldr	r0, [r4]
	ldr	r1, [r4, #88]
	bl	collisionWithEnemy
	ldr	r0, [r4]
	ldr	r1, [r4, #92]
	bl	collisionWithEnemy
	ldr	r0, [r4]
	ldr	r1, [r4, #96]
	bl	collisionWithEnemy
	bl	endGame
	bl	buttonDataQuery
	bl	playerStealthLogic
	bl	playerAnimation
	ldmfd	sp!, {r4, r5, r6, lr}
	b	playerSpriteWork
.L570:
	mov	r2, #67108864
	ldr	r1, [r2, #304]
	tst	r1, #32
	beq	.L564
	ldr	r1, [r2, #304]
	tst	r1, #16
	beq	.L564
	ldr	r1, [r2, #304]
	tst	r1, #64
	ldrne	r3, [r2, #304]
	mvnne	r3, r3
	movne	r3, r3, lsr #7
	andne	r3, r3, #1
	b	.L564
.L572:
	.align	2
.L571:
	.word	.LANCHOR0
	.word	masterVoff
	.word	masterHoff
	.word	.LANCHOR1
	.word	ryuCoords
	.size	updatePlayer, .-updatePlayer
	.align	2
	.global	terminatePlayer
	.type	terminatePlayer, %function
terminatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #56]
	cmp	r3, #0
	moveq	r3, #3
	moveq	r2, #1
	streq	r2, [r0, #108]
	streq	r3, [r0, #44]
	streq	r3, [r0, #80]
	bx	lr
	.size	terminatePlayer, .-terminatePlayer
	.align	2
	.global	enemyAnimation
	.type	enemyAnimation, %function
enemyAnimation:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #72]
	ldr	r2, [r0, #80]
	add	r3, r3, #1
	cmp	r2, #2
	str	r3, [r0, #72]
	beq	.L585
	cmp	r2, #3
	bxne	lr
	ldr	r2, .L586
	smull	r1, r2, r3, r2
	mov	r1, r3, asr #31
	rsb	r2, r1, r2, asr #2
	add	r2, r2, r2, asl #2
	cmp	r3, r2, asl #1
	mov	r2, #40
	mov	r3, #48
	str	r2, [r0, #68]
	str	r3, [r0, #64]
	bxne	lr
.L584:
	ldr	r3, [r0, #88]
	add	r3, r3, #1
	cmp	r3, #2
	movgt	r3, #0
	str	r3, [r0, #88]
	bx	lr
.L585:
	ldr	r2, .L586
	smull	r1, r2, r3, r2
	mov	r1, r3, asr #31
	rsb	r2, r1, r2, asr #3
	add	r2, r2, r2, asl #2
	cmp	r3, r2, asl #2
	mov	r2, #40
	mov	r3, #32
	str	r2, [r0, #68]
	str	r3, [r0, #64]
	beq	.L584
	bx	lr
.L587:
	.align	2
.L586:
	.word	1717986919
	.size	enemyAnimation, .-enemyAnimation
	.align	2
	.global	enemyAI
	.type	enemyAI, %function
enemyAI:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	ldr	r3, [r0, #112]
	cmp	r3, #512
	mov	r4, r0
	ldr	r3, [r0, #80]
	beq	.L592
	cmp	r3, #2
	beq	.L618
.L592:
	cmp	r3, #3
	beq	.L619
.L588:
	ldmfd	sp!, {r3, r4, r5, lr}
	bx	lr
.L618:
	ldr	r5, .L623
	ldr	r3, [r0, #100]
	ldr	r2, [r5, #56]
	cmp	r3, #2
	add	r2, r2, #1
	str	r2, [r5, #56]
	beq	.L594
	cmp	r3, #3
	bne	.L593
	bl	enemyAnimation
	mov	r3, #4096
	str	r3, [r4, #92]
	ldr	r0, [r5, #56]
	ldr	r3, .L623+4
	ldr	r1, [r4, #124]
	mov	lr, pc
	bx	r3
	ldr	r2, [r4, #12]
	cmp	r1, #0
	ldr	r3, [r4, #96]
	ldr	r1, [r4, #20]
	addeq	r2, r2, #1
	add	r3, r1, r3
	streq	r2, [r4, #12]
	cmp	r3, r2
	movlt	r2, #2
	strlt	r3, [r4, #12]
	strlt	r2, [r4, #100]
.L593:
	ldr	r3, [r4, #104]
	add	r3, r3, #1
	cmp	r3, #100
	str	r3, [r4, #104]
	beq	.L602
.L616:
	ldr	r3, [r4, #80]
	cmp	r3, #3
	bne	.L588
.L619:
	ldr	r3, .L623
	ldr	r2, [r3, #60]
	add	r2, r2, #1
	str	r2, [r3, #60]
	mov	r0, r2
	ldr	ip, .L623+4
	ldr	r1, [r4, #108]
	mov	lr, pc
	bx	ip
	cmp	r1, #0
	moveq	r3, #1
	streq	r3, [r4, #52]
	beq	.L605
	ldr	r5, [r4, #52]
	cmp	r5, #0
	bne	.L605
	mov	r0, r4
	bl	enemyAnimation
	str	r5, [r4, #88]
	b	.L588
.L605:
	ldr	r5, .L623+8
	ldr	r3, [r5]
	ldr	r1, [r3, #44]
	cmp	r1, #0
	bne	.L588
	ldr	r0, [r3, #8]
	ldr	r2, [r4, #8]
	sub	ip, r0, #15
	cmp	ip, r2
	ble	.L620
	cmp	r0, r2
	streq	r1, [r4, #88]
	beq	.L608
	sub	r0, r0, #16
	cmp	r2, r0
	blt	.L621
.L608:
	ldr	r2, [r3, #12]
	ldr	r3, [r4, #12]
	cmp	r3, r2
	bgt	.L622
	moveq	r3, #0
	streq	r3, [r4, #88]
	beq	.L588
	bge	.L588
	sub	r2, r2, #58
	cmp	r3, r2
	mov	r2, #4096
	str	r2, [r4, #92]
	bge	.L588
	add	r3, r3, #1
	str	r3, [r4, #12]
	mov	r0, r4
	ldmfd	sp!, {r3, r4, r5, lr}
	b	enemyAnimation
.L594:
	bl	enemyAnimation
	mov	r3, #0
	str	r3, [r4, #92]
	ldr	r0, [r5, #56]
	ldr	r3, .L623+4
	ldr	r1, [r4, #124]
	mov	lr, pc
	bx	r3
	ldr	r2, [r4, #12]
	cmp	r1, #0
	ldr	r3, [r4, #96]
	ldr	r1, [r4, #20]
	subeq	r2, r2, #1
	rsb	r3, r3, r1
	streq	r2, [r4, #12]
	cmp	r3, r2
	movgt	r2, #3
	strgt	r3, [r4, #12]
	strgt	r2, [r4, #100]
	b	.L593
.L621:
	add	r2, r2, #1
	str	r2, [r4, #8]
	mov	r0, r4
	bl	enemyAnimation
	ldr	r3, [r5]
	b	.L608
.L620:
	sub	r2, r2, #1
	str	r2, [r4, #8]
	mov	r0, r4
	bl	enemyAnimation
	ldr	r3, [r5]
	b	.L608
.L602:
	ldr	r3, .L623+12
	mov	lr, pc
	bx	r3
	mov	r3, r0, asr #31
	mov	r3, r3, lsr #30
	add	r2, r0, r3
	and	r2, r2, #3
	rsb	r2, r3, r2
	mov	r3, #0
	str	r2, [r4, #100]
	str	r3, [r4, #88]
	str	r3, [r4, #104]
	b	.L616
.L622:
	sub	r3, r3, #1
	mov	r2, #0
	str	r3, [r4, #12]
	str	r2, [r4, #92]
	mov	r0, r4
	ldmfd	sp!, {r3, r4, r5, lr}
	b	enemyAnimation
.L624:
	.align	2
.L623:
	.word	.LANCHOR1
	.word	__aeabi_idivmod
	.word	.LANCHOR0
	.word	rand
	.size	enemyAI, .-enemyAI
	.align	2
	.global	spotLightMovement
	.type	spotLightMovement, %function
spotLightMovement:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L639
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	ldr	r2, [r4, #112]
	ldr	r0, [r3, #64]
	cmp	r2, #512
	add	r0, r0, #1
	str	r0, [r3, #64]
	beq	.L625
	ldr	r3, [r4, #100]
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L625
.L628:
	.word	.L627
	.word	.L629
	.word	.L630
	.word	.L631
.L631:
	ldr	r3, .L639+4
	ldr	r1, [r4, #124]
	mov	lr, pc
	bx	r3
	cmp	r1, #0
	bne	.L625
	ldr	r1, [r4, #20]
	ldr	r3, [r4, #96]
	ldr	r2, [r4, #12]
	add	r3, r1, r3
	cmp	r2, r3
	addlt	r2, r2, #1
	movge	r2, #2
	strlt	r2, [r4, #12]
	strge	r3, [r4, #12]
	strge	r2, [r4, #100]
.L625:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L627:
	ldr	r3, .L639+4
	ldr	r1, [r4, #124]
	mov	lr, pc
	bx	r3
	cmp	r1, #0
	bne	.L625
	ldr	r2, [r4, #8]
	ldr	r3, [r4, #16]
	cmp	r2, r3
	subgt	r2, r2, #1
	movle	r2, #1
	strgt	r2, [r4, #8]
	strle	r3, [r4, #8]
	strle	r2, [r4, #100]
	b	.L625
.L629:
	ldr	r3, .L639+4
	ldr	r1, [r4, #124]
	mov	lr, pc
	bx	r3
	cmp	r1, #0
	bne	.L625
	ldr	r0, [r4, #16]
	ldr	r3, [r4, #96]
	ldr	r2, [r4, #8]
	add	r3, r0, r3
	cmp	r2, r3
	addlt	r2, r2, #1
	strlt	r2, [r4, #8]
	strge	r3, [r4, #8]
	strge	r1, [r4, #100]
	b	.L625
.L630:
	ldr	r3, .L639+4
	ldr	r1, [r4, #124]
	mov	lr, pc
	bx	r3
	cmp	r1, #0
	bne	.L625
	ldr	r2, [r4, #12]
	ldr	r3, [r4, #20]
	cmp	r2, r3
	subgt	r2, r2, #1
	movle	r2, #3
	strgt	r2, [r4, #12]
	strle	r3, [r4, #12]
	strle	r2, [r4, #100]
	b	.L625
.L640:
	.align	2
.L639:
	.word	.LANCHOR1
	.word	__aeabi_idivmod
	.size	spotLightMovement, .-spotLightMovement
	.align	2
	.global	spotLightSpriteWork
	.type	spotLightSpriteWork, %function
spotLightSpriteWork:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0]
	sub	r2, r3, #1
	cmp	r2, #158
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp}
	bhi	.L657
	ldr	r2, [r0, #4]
	cmp	r2, #239
	ble	.L660
.L657:
	mov	r1, #512
.L642:
	ldr	r2, [r0, #120]
	str	r1, [r0, #112]
	cmp	r2, #10
	ldrls	pc, [pc, r2, asl #2]
	b	.L641
.L645:
	.word	.L644
	.word	.L646
	.word	.L647
	.word	.L648
	.word	.L649
	.word	.L650
	.word	.L651
	.word	.L652
	.word	.L653
	.word	.L654
	.word	.L655
.L655:
	ldr	ip, [r0, #116]
	ldr	r2, .L661
	and	ip, ip, #3
	mov	ip, ip, asl #10
	ldr	r2, [r2, #116]
	orr	r8, ip, #8768
	ldr	fp, [r0, #4]
	orr	r10, r8, #2
	add	r4, r3, #16
	mov	r9, #612
	and	r3, r3, #255
	strh	r10, [r2, r9]	@ movhi
	orr	r7, r3, #1024
	orr	r8, r8, #4
	mov	r10, #620
	ldr	r0, .L661+4
	strh	r8, [r2, r10]	@ movhi
	mov	r5, fp, asl #23
	orr	r7, r7, r1
	and	r4, r4, #255
	mov	r10, #608
	add	fp, fp, #16
	strh	r7, [r2, r10]	@ movhi
	orr	r0, r3, r0
	ldr	r6, .L661+8
	mov	r3, r5, lsr #23
	orr	r10, r4, #17408
	ldr	r5, .L661+12
	orr	r4, r4, #1024
	mov	fp, fp, asl #23
	orr	r0, r1, r0
	orr	ip, ip, #8832
	mov	r7, #616
	mov	fp, fp, lsr #23
	orr	r10, r1, r10
	ldr	r8, .L661+16
	orr	r1, r1, r4
	orr	r4, r3, #16384
	strh	r0, [r2, r7]	@ movhi
	add	r9, r9, #22
	strh	r4, [r2, r6]	@ movhi
	mov	r7, #624
	orr	r4, ip, #2
	strh	fp, [r2, r5]	@ movhi
	mov	r0, #632
	orr	ip, ip, #4
	mov	r6, #628
	mov	r5, #636
.L659:
	strh	fp, [r2, r9]	@ movhi
	strh	r3, [r2, r8]	@ movhi
	strh	r10, [r2, r7]	@ movhi
	strh	r1, [r2, r0]	@ movhi
	strh	r4, [r2, r6]	@ movhi
	strh	ip, [r2, r5]	@ movhi
.L641:
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp}
	bx	lr
.L660:
	ldr	r1, [r0, #64]
	rsb	r1, r1, #0
	cmp	r2, r1
	movle	r1, #512
	movgt	r1, #0
	b	.L642
.L644:
	ldr	ip, [r0, #116]
	ldr	r2, .L661
	and	ip, ip, #3
	mov	ip, ip, asl #10
	ldr	r2, [r2, #116]
	orr	r8, ip, #8768
	ldr	fp, [r0, #4]
	orr	r10, r8, #2
	add	r4, r3, #16
	mov	r9, #292
	and	r3, r3, #255
	strh	r10, [r2, r9]	@ movhi
	orr	r7, r3, #1024
	orr	r8, r8, #4
	mov	r10, #300
	ldr	r0, .L661+4
	strh	r8, [r2, r10]	@ movhi
	mov	r5, fp, asl #23
	orr	r7, r7, r1
	and	r4, r4, #255
	mov	r10, #288
	add	fp, fp, #16
	strh	r7, [r2, r10]	@ movhi
	orr	r0, r3, r0
	ldr	r6, .L661+20
	mov	r3, r5, lsr #23
	orr	r10, r4, #17408
	ldr	r5, .L661+24
	orr	r4, r4, #1024
	mov	fp, fp, asl #23
	orr	r0, r1, r0
	orr	ip, ip, #8832
	mov	r7, #296
	mov	fp, fp, lsr #23
	orr	r10, r1, r10
	orr	r1, r1, r4
	orr	r4, r3, #16384
	strh	r0, [r2, r7]	@ movhi
	add	r9, r9, #22
	strh	r4, [r2, r6]	@ movhi
	ldr	r8, .L661+28
	orr	r4, ip, #2
	strh	fp, [r2, r5]	@ movhi
	mov	r7, #304
	mov	r0, #312
	orr	ip, ip, #4
	mov	r6, #308
	mov	r5, #316
	b	.L659
.L646:
	ldr	ip, [r0, #116]
	ldr	r2, .L661
	and	ip, ip, #3
	mov	ip, ip, asl #10
	ldr	r2, [r2, #116]
	orr	r8, ip, #8768
	ldr	fp, [r0, #4]
	orr	r10, r8, #2
	add	r4, r3, #16
	mov	r9, #324
	and	r3, r3, #255
	strh	r10, [r2, r9]	@ movhi
	orr	r7, r3, #1024
	orr	r8, r8, #4
	mov	r10, #332
	ldr	r0, .L661+4
	strh	r8, [r2, r10]	@ movhi
	mov	r5, fp, asl #23
	orr	r7, r7, r1
	and	r4, r4, #255
	mov	r10, #320
	add	fp, fp, #16
	strh	r7, [r2, r10]	@ movhi
	orr	r0, r3, r0
	ldr	r6, .L661+32
	mov	r3, r5, lsr #23
	orr	r10, r4, #17408
	ldr	r5, .L661+36
	orr	r4, r4, #1024
	mov	fp, fp, asl #23
	orr	r0, r1, r0
	orr	ip, ip, #8832
	mov	r7, #328
	mov	fp, fp, lsr #23
	orr	r10, r1, r10
	orr	r1, r1, r4
	orr	r4, r3, #16384
	strh	r0, [r2, r7]	@ movhi
	add	r9, r9, #22
	strh	r4, [r2, r6]	@ movhi
	ldr	r8, .L661+40
	orr	r4, ip, #2
	strh	fp, [r2, r5]	@ movhi
	mov	r7, #336
	mov	r0, #344
	orr	ip, ip, #4
	mov	r6, #340
	mov	r5, #348
	b	.L659
.L647:
	ldr	ip, [r0, #116]
	ldr	r2, .L661
	and	ip, ip, #3
	mov	ip, ip, asl #10
	ldr	r2, [r2, #116]
	orr	r8, ip, #8768
	ldr	fp, [r0, #4]
	orr	r10, r8, #2
	add	r4, r3, #16
	mov	r9, #356
	and	r3, r3, #255
	strh	r10, [r2, r9]	@ movhi
	orr	r7, r3, #1024
	orr	r8, r8, #4
	mov	r10, #364
	ldr	r0, .L661+4
	strh	r8, [r2, r10]	@ movhi
	mov	r5, fp, asl #23
	orr	r7, r7, r1
	and	r4, r4, #255
	mov	r10, #352
	add	fp, fp, #16
	strh	r7, [r2, r10]	@ movhi
	orr	r0, r3, r0
	ldr	r6, .L661+44
	mov	r3, r5, lsr #23
	orr	r10, r4, #17408
	ldr	r5, .L661+48
	orr	r4, r4, #1024
	mov	fp, fp, asl #23
	orr	r0, r1, r0
	orr	ip, ip, #8832
	mov	r7, #360
	mov	fp, fp, lsr #23
	orr	r10, r1, r10
	orr	r1, r1, r4
	orr	r4, r3, #16384
	strh	r0, [r2, r7]	@ movhi
	add	r9, r9, #22
	strh	r4, [r2, r6]	@ movhi
	ldr	r8, .L661+52
	orr	r4, ip, #2
	strh	fp, [r2, r5]	@ movhi
	mov	r7, #368
	mov	r0, #376
	orr	ip, ip, #4
	mov	r6, #372
	mov	r5, #380
	b	.L659
.L648:
	ldr	ip, [r0, #116]
	ldr	r2, .L661
	and	ip, ip, #3
	mov	ip, ip, asl #10
	ldr	r2, [r2, #116]
	orr	r8, ip, #8768
	ldr	fp, [r0, #4]
	orr	r10, r8, #2
	add	r4, r3, #16
	mov	r9, #388
	and	r3, r3, #255
	strh	r10, [r2, r9]	@ movhi
	orr	r7, r3, #1024
	orr	r8, r8, #4
	mov	r10, #396
	ldr	r0, .L661+4
	strh	r8, [r2, r10]	@ movhi
	mov	r5, fp, asl #23
	orr	r7, r7, r1
	and	r4, r4, #255
	mov	r10, #384
	add	fp, fp, #16
	strh	r7, [r2, r10]	@ movhi
	orr	r0, r3, r0
	ldr	r6, .L661+56
	mov	r3, r5, lsr #23
	orr	r10, r4, #17408
	ldr	r5, .L661+60
	orr	r4, r4, #1024
	mov	fp, fp, asl #23
	orr	r0, r1, r0
	orr	ip, ip, #8832
	mov	r7, #392
	mov	fp, fp, lsr #23
	orr	r10, r1, r10
	orr	r1, r1, r4
	orr	r4, r3, #16384
	strh	r0, [r2, r7]	@ movhi
	add	r9, r9, #22
	strh	r4, [r2, r6]	@ movhi
	ldr	r8, .L661+64
	orr	r4, ip, #2
	strh	fp, [r2, r5]	@ movhi
	mov	r7, #400
	mov	r0, #408
	orr	ip, ip, #4
	mov	r6, #404
	mov	r5, #412
	b	.L659
.L649:
	ldr	ip, [r0, #116]
	ldr	r2, .L661
	and	ip, ip, #3
	mov	ip, ip, asl #10
	ldr	r2, [r2, #116]
	orr	r8, ip, #8768
	ldr	fp, [r0, #4]
	orr	r10, r8, #2
	add	r4, r3, #16
	mov	r9, #420
	and	r3, r3, #255
	strh	r10, [r2, r9]	@ movhi
	orr	r7, r3, #1024
	orr	r8, r8, #4
	mov	r10, #428
	ldr	r0, .L661+4
	strh	r8, [r2, r10]	@ movhi
	mov	r5, fp, asl #23
	orr	r7, r7, r1
	and	r4, r4, #255
	mov	r10, #416
	add	fp, fp, #16
	strh	r7, [r2, r10]	@ movhi
	orr	r0, r3, r0
	ldr	r6, .L661+68
	mov	r3, r5, lsr #23
	orr	r10, r4, #17408
	ldr	r5, .L661+72
	orr	r4, r4, #1024
	mov	fp, fp, asl #23
	orr	r0, r1, r0
	orr	ip, ip, #8832
	mov	r7, #424
	mov	fp, fp, lsr #23
	orr	r10, r1, r10
	orr	r1, r1, r4
	orr	r4, r3, #16384
	strh	r0, [r2, r7]	@ movhi
	add	r9, r9, #22
	strh	r4, [r2, r6]	@ movhi
	ldr	r8, .L661+76
	orr	r4, ip, #2
	strh	fp, [r2, r5]	@ movhi
	mov	r7, #432
	mov	r0, #440
	orr	ip, ip, #4
	mov	r6, #436
	mov	r5, #444
	b	.L659
.L650:
	ldr	ip, [r0, #116]
	ldr	r2, .L661
	and	ip, ip, #3
	mov	ip, ip, asl #10
	ldr	r2, [r2, #116]
	orr	r8, ip, #8768
	ldr	fp, [r0, #4]
	orr	r10, r8, #2
	add	r4, r3, #16
	mov	r9, #452
	and	r3, r3, #255
	strh	r10, [r2, r9]	@ movhi
	orr	r7, r3, #1024
	orr	r8, r8, #4
	mov	r10, #460
	ldr	r0, .L661+4
	strh	r8, [r2, r10]	@ movhi
	mov	r5, fp, asl #23
	orr	r7, r7, r1
	and	r4, r4, #255
	mov	r10, #448
	add	fp, fp, #16
	strh	r7, [r2, r10]	@ movhi
	orr	r0, r3, r0
	ldr	r6, .L661+80
	mov	r3, r5, lsr #23
	orr	r10, r4, #17408
	ldr	r5, .L661+84
	orr	r4, r4, #1024
	mov	fp, fp, asl #23
	orr	r0, r1, r0
	orr	ip, ip, #8832
	mov	r7, #456
	mov	fp, fp, lsr #23
	orr	r10, r1, r10
	orr	r1, r1, r4
	orr	r4, r3, #16384
	strh	r0, [r2, r7]	@ movhi
	add	r9, r9, #22
	strh	r4, [r2, r6]	@ movhi
	ldr	r8, .L661+88
	orr	r4, ip, #2
	strh	fp, [r2, r5]	@ movhi
	mov	r7, #464
	mov	r0, #472
	orr	ip, ip, #4
	mov	r6, #468
	mov	r5, #476
	b	.L659
.L651:
	ldr	ip, [r0, #116]
	ldr	r2, .L661
	and	ip, ip, #3
	mov	ip, ip, asl #10
	ldr	r2, [r2, #116]
	orr	r8, ip, #8768
	ldr	fp, [r0, #4]
	orr	r10, r8, #2
	add	r4, r3, #16
	mov	r9, #484
	and	r3, r3, #255
	strh	r10, [r2, r9]	@ movhi
	orr	r7, r3, #1024
	orr	r8, r8, #4
	mov	r10, #492
	ldr	r0, .L661+4
	strh	r8, [r2, r10]	@ movhi
	mov	r5, fp, asl #23
	orr	r7, r7, r1
	and	r4, r4, #255
	mov	r10, #480
	add	fp, fp, #16
	strh	r7, [r2, r10]	@ movhi
	orr	r0, r3, r0
	ldr	r6, .L661+92
	mov	r3, r5, lsr #23
	orr	r10, r4, #17408
	ldr	r5, .L661+96
	orr	r4, r4, #1024
	mov	fp, fp, asl #23
	orr	r0, r1, r0
	orr	ip, ip, #8832
	mov	r7, #488
	mov	fp, fp, lsr #23
	orr	r10, r1, r10
	orr	r1, r1, r4
	orr	r4, r3, #16384
	strh	r0, [r2, r7]	@ movhi
	add	r9, r9, #22
	strh	r4, [r2, r6]	@ movhi
	ldr	r8, .L661+100
	orr	r4, ip, #2
	strh	fp, [r2, r5]	@ movhi
	mov	r7, #496
	mov	r0, #504
	orr	ip, ip, #4
	mov	r6, #500
	mov	r5, #508
	b	.L659
.L652:
	ldr	ip, [r0, #116]
	ldr	r2, .L661
	and	ip, ip, #3
	mov	ip, ip, asl #10
	ldr	r2, [r2, #116]
	orr	r8, ip, #8768
	ldr	fp, [r0, #4]
	orr	r10, r8, #2
	add	r4, r3, #16
	mov	r9, #516
	and	r3, r3, #255
	strh	r10, [r2, r9]	@ movhi
	orr	r7, r3, #1024
	orr	r8, r8, #4
	mov	r10, #524
	ldr	r0, .L661+4
	strh	r8, [r2, r10]	@ movhi
	mov	r5, fp, asl #23
	orr	r7, r7, r1
	and	r4, r4, #255
	mov	r10, #512
	add	fp, fp, #16
	strh	r7, [r2, r10]	@ movhi
	orr	r0, r3, r0
	ldr	r6, .L661+104
	mov	r3, r5, lsr #23
	orr	r10, r4, #17408
	ldr	r5, .L661+108
	orr	r4, r4, #1024
	mov	fp, fp, asl #23
	orr	r0, r1, r0
	orr	ip, ip, #8832
	mov	r7, #520
	mov	fp, fp, lsr #23
	orr	r10, r1, r10
	orr	r1, r1, r4
	orr	r4, r3, #16384
	strh	r0, [r2, r7]	@ movhi
	add	r9, r9, #22
	strh	r4, [r2, r6]	@ movhi
	ldr	r8, .L661+112
	orr	r4, ip, #2
	strh	fp, [r2, r5]	@ movhi
	mov	r7, #528
	mov	r0, #536
	orr	ip, ip, #4
	mov	r6, #532
	mov	r5, #540
	b	.L659
.L653:
	ldr	ip, [r0, #116]
	ldr	r2, .L661
	and	ip, ip, #3
	mov	ip, ip, asl #10
	ldr	r2, [r2, #116]
	orr	r8, ip, #8768
	ldr	fp, [r0, #4]
	orr	r10, r8, #2
	add	r4, r3, #16
	mov	r9, #548
	and	r3, r3, #255
	strh	r10, [r2, r9]	@ movhi
	orr	r7, r3, #1024
	orr	r8, r8, #4
	mov	r10, #556
	ldr	r0, .L661+4
	strh	r8, [r2, r10]	@ movhi
	mov	r5, fp, asl #23
	orr	r7, r7, r1
	and	r4, r4, #255
	mov	r10, #544
	add	fp, fp, #16
	strh	r7, [r2, r10]	@ movhi
	orr	r0, r3, r0
	ldr	r6, .L661+116
	mov	r3, r5, lsr #23
	orr	r10, r4, #17408
	ldr	r5, .L661+120
	orr	r4, r4, #1024
	mov	fp, fp, asl #23
	orr	r0, r1, r0
	orr	ip, ip, #8832
	mov	r7, #552
	mov	fp, fp, lsr #23
	orr	r10, r1, r10
	orr	r1, r1, r4
	orr	r4, r3, #16384
	strh	r0, [r2, r7]	@ movhi
	add	r9, r9, #22
	strh	r4, [r2, r6]	@ movhi
	ldr	r8, .L661+124
	orr	r4, ip, #2
	strh	fp, [r2, r5]	@ movhi
	mov	r7, #560
	mov	r0, #568
	orr	ip, ip, #4
	mov	r6, #564
	mov	r5, #572
	b	.L659
.L654:
	ldr	ip, [r0, #116]
	ldr	r2, .L661
	and	ip, ip, #3
	mov	ip, ip, asl #10
	ldr	r2, [r2, #116]
	orr	r8, ip, #8768
	ldr	fp, [r0, #4]
	orr	r10, r8, #2
	add	r4, r3, #16
	mov	r9, #580
	and	r3, r3, #255
	strh	r10, [r2, r9]	@ movhi
	orr	r7, r3, #1024
	orr	r8, r8, #4
	mov	r10, #588
	ldr	r0, .L661+4
	strh	r8, [r2, r10]	@ movhi
	mov	r5, fp, asl #23
	orr	r7, r7, r1
	and	r4, r4, #255
	mov	r10, #576
	add	fp, fp, #16
	strh	r7, [r2, r10]	@ movhi
	orr	r0, r3, r0
	ldr	r6, .L661+128
	mov	r3, r5, lsr #23
	orr	r10, r4, #17408
	ldr	r5, .L661+132
	orr	r4, r4, #1024
	mov	fp, fp, asl #23
	orr	r0, r1, r0
	orr	ip, ip, #8832
	mov	r7, #584
	mov	fp, fp, lsr #23
	orr	r10, r1, r10
	orr	r1, r1, r4
	orr	r4, r3, #16384
	strh	r0, [r2, r7]	@ movhi
	add	r9, r9, #22
	strh	r4, [r2, r6]	@ movhi
	ldr	r8, .L661+136
	orr	r4, ip, #2
	strh	fp, [r2, r5]	@ movhi
	mov	r7, #592
	mov	r0, #600
	orr	ip, ip, #4
	mov	r6, #596
	mov	r5, #604
	b	.L659
.L662:
	.align	2
.L661:
	.word	.LANCHOR0
	.word	-31744
	.word	610
	.word	618
	.word	626
	.word	290
	.word	298
	.word	306
	.word	322
	.word	330
	.word	338
	.word	354
	.word	362
	.word	370
	.word	386
	.word	394
	.word	402
	.word	418
	.word	426
	.word	434
	.word	450
	.word	458
	.word	466
	.word	482
	.word	490
	.word	498
	.word	514
	.word	522
	.word	530
	.word	546
	.word	554
	.word	562
	.word	578
	.word	586
	.word	594
	.size	spotLightSpriteWork, .-spotLightSpriteWork
	.align	2
	.global	screenObjAnimation
	.type	screenObjAnimation, %function
screenObjAnimation:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #40]
	cmp	r3, #512
	bxeq	lr
	ldr	r3, [r0, #24]
	ldr	r2, .L669
	add	r3, r3, #1
	smull	r1, r2, r3, r2
	mov	r1, r3, asr #31
	add	r2, r2, r3
	rsb	r2, r1, r2, asr #3
	rsb	r2, r2, r2, asl #4
	cmp	r3, r2
	str	r3, [r0, #24]
	bxne	lr
	ldr	r3, [r0, #36]
	add	r3, r3, #1
	cmp	r3, #1
	movgt	r3, #0
	str	r3, [r0, #36]
	bx	lr
.L670:
	.align	2
.L669:
	.word	-2004318071
	.size	screenObjAnimation, .-screenObjAnimation
	.align	2
	.global	screenObjSpriteWork
	.type	screenObjSpriteWork, %function
screenObjSpriteWork:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0]
	sub	r2, r3, #1
	cmp	r2, #158
	stmfd	sp!, {r4, r5}
	bhi	.L672
	ldr	r2, [r0, #4]
	cmp	r2, #239
	ble	.L677
.L672:
	mov	r3, #512
	str	r3, [r0, #40]
.L671:
	ldmfd	sp!, {r4, r5}
	bx	lr
.L677:
	ldr	r1, [r0, #16]
	rsb	r1, r1, #0
	cmp	r2, r1
	ble	.L672
	ldr	r1, [r0, #48]
	mov	ip, #0
	cmp	r1, ip
	str	ip, [r0, #40]
	beq	.L674
	cmp	r1, #1
	bne	.L671
	ldr	r4, [r0, #44]
	ldr	r5, [r0, #36]
	ldr	ip, [r0, #28]
	ldr	r1, .L678
	and	r0, r4, #3
	add	r5, r5, #5
	mov	r0, r0, asl #10
	add	ip, ip, #19
	ldr	r1, [r1, #116]
	ldr	r4, .L678+4
	orr	r0, r0, #8192
	add	ip, r5, ip, asl #5
	mvn	r3, r3, asl #17
	mov	r5, #992
	orr	ip, r0, ip
	mvn	r3, r3, lsr #17
	bic	r2, r2, #65024
	mov	r0, #996
	strh	r3, [r1, r5]	@ movhi
	strh	r2, [r1, r4]	@ movhi
	strh	ip, [r1, r0]	@ movhi
	ldmfd	sp!, {r4, r5}
	bx	lr
.L674:
	ldr	r4, [r0, #44]
	ldr	r5, [r0, #36]
	ldr	ip, [r0, #28]
	ldr	r1, .L678
	and	r0, r4, #3
	add	r5, r5, #5
	mov	r0, r0, asl #10
	add	ip, ip, #19
	ldr	r1, [r1, #116]
	ldr	r4, .L678+8
	orr	r0, r0, #8192
	add	ip, r5, ip, asl #5
	mvn	r3, r3, asl #17
	mov	r5, #984
	orr	ip, r0, ip
	mvn	r3, r3, lsr #17
	bic	r2, r2, #65024
	mov	r0, #988
	strh	r3, [r1, r5]	@ movhi
	strh	r2, [r1, r4]	@ movhi
	strh	ip, [r1, r0]	@ movhi
	ldmfd	sp!, {r4, r5}
	bx	lr
.L679:
	.align	2
.L678:
	.word	.LANCHOR0
	.word	994
	.word	986
	.size	screenObjSpriteWork, .-screenObjSpriteWork
	.align	2
	.global	updateScreenObjs
	.type	updateScreenObjs, %function
updateScreenObjs:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	ldr	r4, .L681
	add	r0, r4, #108
	ldmia	r0, {r0, r3}
	ldr	r1, .L681+4
	ldr	r2, .L681+8
	ldr	r8, [r3, #8]
	ldr	r7, [r3, #12]
	ldr	r5, [r0, #8]
	ldr	r1, [r1]
	ldr	lr, [r0, #12]
	ldr	r2, [r2]
	ldr	r6, [r0, #28]
	ldr	ip, [r3, #28]
	rsb	lr, r2, lr
	rsb	r5, r1, r5
	rsb	r2, r2, r7
	rsb	r1, r1, r8
	stmia	r0, {r5, lr}
	str	r6, [r0, #32]
	stmia	r3, {r1, r2}
	str	ip, [r3, #32]
	bl	screenObjAnimation
	ldr	r0, [r4, #112]
	bl	screenObjAnimation
	ldr	r0, [r4, #108]
	bl	screenObjSpriteWork
	ldr	r0, [r4, #112]
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	b	screenObjSpriteWork
.L682:
	.align	2
.L681:
	.word	.LANCHOR0
	.word	masterVoff
	.word	masterHoff
	.size	updateScreenObjs, .-updateScreenObjs
	.align	2
	.global	drawPause
	.type	drawPause, %function
drawPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, .L684
	ldr	r2, [r3, #104]
	ldr	r0, [r2, #4]
	mov	r1, r0, asl #16
	ldrb	r2, [r2]	@ zero_extendqisi2
	mov	r1, r1, lsr #16
	add	r10, r1, #32
	ldr	r3, [r3, #116]
	mvn	r8, r2, asl #17
	mov	r0, r0, asl #23
	mov	r10, r10, asl #23
	ldr	lr, .L684+4
	orr	r2, r2, #16384
	ldr	r5, .L684+8
	ldr	ip, .L684+12
	mvn	r8, r8, lsr #17
	mov	r9, #1000
	mov	r7, #1016
	mov	r6, #1008
	mvn	r0, r0, lsr #6
	mvn	r10, r10, lsr #6
	add	r1, r1, #64
	strh	r2, [r3, r9]	@ movhi
	mvn	r0, r0, lsr #17
	strh	r8, [r3, r7]	@ movhi
	mov	r4, #1004
	strh	r2, [r3, r6]	@ movhi
	mvn	r10, r10, lsr #17
	bic	r1, r1, #65024
	mov	fp, #672
	mov	r9, #1012
	mov	r8, #676
	mov	r7, #1020
	mov	r2, #680
	strh	r0, [r3, r5]	@ movhi
	strh	fp, [r3, r4]	@ movhi
	mov	r0, #3
	strh	r10, [r3, lr]	@ movhi
	strh	r1, [r3, ip]	@ movhi
	strh	r8, [r3, r9]	@ movhi
	ldr	r1, .L684+16
	strh	r2, [r3, r7]	@ movhi
	ldr	ip, .L684+20
	mov	r3, #512
	mov	r2, #117440512
	mov	lr, pc
	bx	ip
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L685:
	.align	2
.L684:
	.word	.LANCHOR0
	.word	1010
	.word	1002
	.word	1018
	.word	shadowOAM
	.word	DMANow
	.size	drawPause, .-drawPause
	.align	2
	.global	erasePause
	.type	erasePause, %function
erasePause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L687
	ldr	r3, [r3, #116]
	mov	r2, #512
	mov	ip, #1000
	mov	r0, #1008
	mov	r1, #1016
	strh	r2, [r3, ip]	@ movhi
	strh	r2, [r3, r0]	@ movhi
	strh	r2, [r3, r1]	@ movhi
	bx	lr
.L688:
	.align	2
.L687:
	.word	.LANCHOR0
	.size	erasePause, .-erasePause
	.align	2
	.global	updateOAM
	.type	updateOAM, %function
updateOAM:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}
	ldr	r3, .L690
	ldrh	r2, [r3]
	mov	r3, #67108864
	strh	r2, [r3, #16]	@ movhi
	ldr	r2, .L690+4
	ldrh	r1, [r2]
	ldr	r2, .L690+8
	ldrh	r2, [r2]
	strh	r1, [r3, #24]	@ movhi
	mov	r0, #3
	strh	r2, [r3, #26]	@ movhi
	ldr	r1, .L690+12
	mov	r3, #512
	mov	r2, #117440512
	ldr	ip, .L690+16
	mov	lr, pc
	bx	ip
	ldmfd	sp!, {r3, lr}
	bx	lr
.L691:
	.align	2
.L690:
	.word	bg0hOff
	.word	bg2hOff
	.word	bg2vOff
	.word	shadowOAM
	.word	DMANow
	.size	updateOAM, .-updateOAM
	.align	2
	.type	enemySpriteWork.part.2, %function
enemySpriteWork.part.2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, [r0]
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	r3, r2, #1
	cmp	r3, #158
	mov	r4, r0
	bhi	.L799
	ldr	r3, [r0, #4]
	cmp	r3, #239
	ble	.L825
.L799:
	ldr	r3, [r4, #80]
	mov	r1, #512
	cmp	r3, #2
	str	r1, [r4, #112]
	beq	.L826
.L694:
	cmp	r3, #3
	beq	.L827
	cmp	r3, #4
	beq	.L828
.L692:
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L825:
	ldr	r1, [r0, #64]
	rsb	r1, r1, #0
	cmp	r3, r1
	ldr	r3, [r4, #80]
	movle	r1, #512
	movgt	r1, #0
	cmp	r3, #2
	str	r1, [r4, #112]
	bne	.L694
.L826:
	ldr	r3, [r4, #120]
	cmp	r3, #5
	ldrls	pc, [pc, r3, asl #2]
	b	.L692
.L697:
	.word	.L696
	.word	.L698
	.word	.L699
	.word	.L700
	.word	.L701
	.word	.L702
.L827:
	ldr	r3, [r4, #120]
	cmp	r3, #5
	ldrls	pc, [pc, r3, asl #2]
	b	.L692
.L705:
	.word	.L704
	.word	.L706
	.word	.L707
	.word	.L708
	.word	.L709
	.word	.L710
.L828:
	ldr	r5, .L835
	ldr	r3, [r5, #68]
	ldr	r0, [r4, #120]
	add	r3, r3, #1
	str	r3, [r5, #68]
	cmp	r0, #5
	ldrls	pc, [pc, r0, asl #2]
	b	.L692
.L725:
	.word	.L724
	.word	.L726
	.word	.L727
	.word	.L728
	.word	.L729
	.word	.L730
.L702:
	ldr	r3, [r4, #88]
	ldr	ip, [r4, #116]
	ldr	r0, [r4, #4]
	add	r3, r3, r3, asl #2
	ldrh	r4, [r4, #92]
	add	r7, r2, #32
	mov	r3, r3, asl #21
	and	ip, ip, #3
	ldr	r9, .L835+28
	mov	r3, r3, lsr #16
	mvn	r5, r4, asl #17
	mov	ip, ip, asl #10
	mov	r0, r0, asl #23
	and	r7, r7, #255
	add	r6, r3, #22
	add	r8, r3, #150
	orr	ip, ip, #4096
	ldr	r3, [r9, #116]
	mov	r0, r0, lsr #23
	and	r2, r2, #255
	orr	r7, r7, #16384
	mvn	r5, r5, lsr #17
	orr	r4, r4, #16384
	orr	r6, ip, r6
	orr	r2, r1, r2
	orr	r5, r5, r0
	orr	ip, ip, r8
	orr	r1, r1, r7
	orr	r0, r0, r4
	strh	r6, [r3, #148]	@ movhi
	strh	ip, [r3, #156]	@ movhi
	strh	r2, [r3, #144]	@ movhi
	strh	r1, [r3, #152]	@ movhi
	strh	r5, [r3, #146]	@ movhi
	strh	r0, [r3, #154]	@ movhi
	b	.L692
.L696:
	ldr	r3, [r4, #88]
	ldr	ip, [r4, #116]
	ldr	r0, [r4, #4]
	add	r3, r3, r3, asl #2
	ldrh	r4, [r4, #92]
	add	r7, r2, #32
	mov	r3, r3, asl #21
	and	ip, ip, #3
	ldr	r9, .L835+28
	mov	r3, r3, lsr #16
	mvn	r5, r4, asl #17
	mov	ip, ip, asl #10
	mov	r0, r0, asl #23
	and	r7, r7, #255
	add	r6, r3, #22
	add	r8, r3, #150
	orr	ip, ip, #4096
	ldr	r3, [r9, #116]
	mov	r0, r0, lsr #23
	and	r2, r2, #255
	orr	r7, r7, #16384
	mvn	r5, r5, lsr #17
	orr	r4, r4, #16384
	orr	r6, ip, r6
	orr	r2, r1, r2
	orr	r5, r5, r0
	orr	ip, ip, r8
	orr	r1, r1, r7
	orr	r0, r0, r4
	strh	r6, [r3, #28]	@ movhi
	strh	ip, [r3, #36]	@ movhi
	strh	r2, [r3, #24]	@ movhi
	strh	r1, [r3, #32]	@ movhi
	strh	r5, [r3, #26]	@ movhi
	strh	r0, [r3, #34]	@ movhi
	b	.L692
.L698:
	ldr	r3, [r4, #88]
	ldr	ip, [r4, #116]
	ldr	r0, [r4, #4]
	add	r3, r3, r3, asl #2
	ldrh	r4, [r4, #92]
	add	r7, r2, #32
	mov	r3, r3, asl #21
	and	ip, ip, #3
	ldr	r9, .L835+28
	mov	r3, r3, lsr #16
	mvn	r5, r4, asl #17
	mov	ip, ip, asl #10
	mov	r0, r0, asl #23
	and	r7, r7, #255
	add	r6, r3, #22
	add	r8, r3, #150
	orr	ip, ip, #4096
	ldr	r3, [r9, #116]
	mov	r0, r0, lsr #23
	and	r2, r2, #255
	orr	r7, r7, #16384
	mvn	r5, r5, lsr #17
	orr	r4, r4, #16384
	orr	r6, ip, r6
	orr	r2, r1, r2
	orr	r5, r5, r0
	orr	ip, ip, r8
	orr	r1, r1, r7
	orr	r0, r0, r4
	strh	r6, [r3, #52]	@ movhi
	strh	ip, [r3, #60]	@ movhi
	strh	r2, [r3, #48]	@ movhi
	strh	r1, [r3, #56]	@ movhi
	strh	r5, [r3, #50]	@ movhi
	strh	r0, [r3, #58]	@ movhi
	b	.L692
.L699:
	ldr	r3, [r4, #88]
	ldr	ip, [r4, #116]
	ldr	r0, [r4, #4]
	add	r3, r3, r3, asl #2
	ldrh	r4, [r4, #92]
	add	r7, r2, #32
	mov	r3, r3, asl #21
	and	ip, ip, #3
	ldr	r9, .L835+28
	mov	r3, r3, lsr #16
	mvn	r5, r4, asl #17
	mov	ip, ip, asl #10
	mov	r0, r0, asl #23
	and	r7, r7, #255
	add	r6, r3, #22
	add	r8, r3, #150
	orr	ip, ip, #4096
	ldr	r3, [r9, #116]
	mov	r0, r0, lsr #23
	and	r2, r2, #255
	orr	r7, r7, #16384
	mvn	r5, r5, lsr #17
	orr	r4, r4, #16384
	orr	r6, ip, r6
	orr	r2, r1, r2
	orr	r5, r5, r0
	orr	ip, ip, r8
	orr	r1, r1, r7
	orr	r0, r0, r4
	strh	r6, [r3, #76]	@ movhi
	strh	ip, [r3, #84]	@ movhi
	strh	r2, [r3, #72]	@ movhi
	strh	r1, [r3, #80]	@ movhi
	strh	r5, [r3, #74]	@ movhi
	strh	r0, [r3, #82]	@ movhi
	b	.L692
.L700:
	ldr	r3, [r4, #88]
	ldr	ip, [r4, #116]
	ldr	r0, [r4, #4]
	add	r3, r3, r3, asl #2
	ldrh	r4, [r4, #92]
	add	r7, r2, #32
	mov	r3, r3, asl #21
	and	ip, ip, #3
	ldr	r9, .L835+28
	mov	r3, r3, lsr #16
	mvn	r5, r4, asl #17
	mov	ip, ip, asl #10
	mov	r0, r0, asl #23
	and	r7, r7, #255
	add	r6, r3, #22
	add	r8, r3, #150
	orr	ip, ip, #4096
	ldr	r3, [r9, #116]
	mov	r0, r0, lsr #23
	and	r2, r2, #255
	orr	r7, r7, #16384
	mvn	r5, r5, lsr #17
	orr	r4, r4, #16384
	orr	r6, ip, r6
	orr	r2, r1, r2
	orr	r5, r5, r0
	orr	ip, ip, r8
	orr	r1, r1, r7
	orr	r0, r0, r4
	strh	r6, [r3, #100]	@ movhi
	strh	ip, [r3, #108]	@ movhi
	strh	r2, [r3, #96]	@ movhi
	strh	r1, [r3, #104]	@ movhi
	strh	r5, [r3, #98]	@ movhi
	strh	r0, [r3, #106]	@ movhi
	b	.L692
.L701:
	ldr	r3, [r4, #88]
	ldr	ip, [r4, #116]
	ldr	r0, [r4, #4]
	add	r3, r3, r3, asl #2
	ldrh	r4, [r4, #92]
	add	r7, r2, #32
	mov	r3, r3, asl #21
	and	ip, ip, #3
	ldr	r9, .L835+28
	mov	r3, r3, lsr #16
	mvn	r5, r4, asl #17
	mov	ip, ip, asl #10
	mov	r0, r0, asl #23
	and	r7, r7, #255
	add	r6, r3, #22
	add	r8, r3, #150
	orr	ip, ip, #4096
	ldr	r3, [r9, #116]
	mov	r0, r0, lsr #23
	and	r2, r2, #255
	orr	r7, r7, #16384
	mvn	r5, r5, lsr #17
	orr	r4, r4, #16384
	orr	r6, ip, r6
	orr	r2, r1, r2
	orr	r5, r5, r0
	orr	ip, ip, r8
	orr	r1, r1, r7
	orr	r0, r0, r4
	strh	r6, [r3, #124]	@ movhi
	strh	ip, [r3, #132]	@ movhi
	strh	r2, [r3, #120]	@ movhi
	strh	r1, [r3, #128]	@ movhi
	strh	r5, [r3, #122]	@ movhi
	strh	r0, [r3, #130]	@ movhi
	b	.L692
.L706:
	ldr	r5, [r4, #4]
	add	r3, r4, #88
	ldmia	r3, {r3, ip}
	mov	r0, r5, asl #16
	mov	r7, r2, asl #16
	ldr	r9, .L835+28
	ldr	r8, [r4, #116]
	mov	r7, r7, lsr #16
	mov	r4, r0, lsr #16
	add	r3, r3, r3, asl #2
	mov	r0, ip, asl #16
	and	r2, r2, #255
	ldr	r9, [r9, #116]
	mov	r0, r0, lsr #16
	add	r6, r7, #24
	mov	r3, r3, asl #21
	add	r10, r4, #16
	orr	r2, r2, #16384
	cmp	ip, #4096
	orr	r2, r1, r2
	mvn	fp, r0, asl #17
	add	r3, r3, #1572864
	and	r8, r8, #3
	mov	r10, r10, asl #23
	add	r7, r7, #8
	and	r6, r6, #255
	orr	ip, r0, #16384
	mov	r3, r3, lsr #16
	mov	r10, r10, lsr #23
	orr	r6, r6, #16384
	strh	r2, [r9, #56]	@ movhi
	mov	r8, r8, asl #10
	addeq	r2, r4, #48
	mvn	fp, fp, lsr #17
	and	r7, r7, #255
	orr	r8, r8, #4096
	orr	fp, fp, r10
	orr	r7, r1, r7
	orr	r10, r10, ip
	orr	r1, r1, r6
	add	ip, r3, #36
	add	r6, r3, #4
	moveq	r2, r2, asl #23
	movne	r5, r5, asl #23
	add	r3, r3, #98
	orr	ip, ip, r8
	orr	r6, r8, r6
	orreq	r0, r0, r2, lsr #23
	orrne	r0, r0, r5, lsr #23
	orr	r8, r3, r8
	strh	fp, [r9, #50]	@ movhi
	strh	r10, [r9, #58]	@ movhi
	strh	r7, [r9, #48]	@ movhi
	strh	r1, [r9, #64]	@ movhi
	strh	ip, [r9, #52]	@ movhi
	strh	r6, [r9, #60]	@ movhi
	strh	r0, [r9, #66]	@ movhi
	strh	r8, [r9, #68]	@ movhi
	b	.L692
.L710:
	ldr	r5, [r4, #4]
	add	r3, r4, #88
	ldmia	r3, {r3, ip}
	mov	r0, r5, asl #16
	mov	r7, r2, asl #16
	ldr	r9, .L835+28
	ldr	r8, [r4, #116]
	mov	r7, r7, lsr #16
	mov	r4, r0, lsr #16
	add	r3, r3, r3, asl #2
	mov	r0, ip, asl #16
	and	r2, r2, #255
	ldr	r9, [r9, #116]
	mov	r0, r0, lsr #16
	add	r6, r7, #24
	mov	r3, r3, asl #21
	add	r10, r4, #16
	orr	r2, r2, #16384
	cmp	ip, #4096
	orr	r2, r1, r2
	mvn	fp, r0, asl #17
	add	r3, r3, #1572864
	and	r8, r8, #3
	mov	r10, r10, asl #23
	add	r7, r7, #8
	and	r6, r6, #255
	orr	ip, r0, #16384
	mov	r3, r3, lsr #16
	mov	r10, r10, lsr #23
	orr	r6, r6, #16384
	strh	r2, [r9, #152]	@ movhi
	mov	r8, r8, asl #10
	addeq	r2, r4, #48
	mvn	fp, fp, lsr #17
	and	r7, r7, #255
	orr	r8, r8, #4096
	orr	fp, fp, r10
	orr	r7, r1, r7
	orr	r10, r10, ip
	orr	r1, r1, r6
	add	ip, r3, #36
	add	r6, r3, #4
	moveq	r2, r2, asl #23
	movne	r5, r5, asl #23
	add	r3, r3, #98
	orr	ip, ip, r8
	orr	r6, r8, r6
	orreq	r0, r0, r2, lsr #23
	orrne	r0, r0, r5, lsr #23
	orr	r8, r3, r8
	strh	fp, [r9, #146]	@ movhi
	strh	r10, [r9, #154]	@ movhi
	strh	r7, [r9, #144]	@ movhi
	strh	r1, [r9, #160]	@ movhi
	strh	ip, [r9, #148]	@ movhi
	strh	r6, [r9, #156]	@ movhi
	strh	r0, [r9, #162]	@ movhi
	strh	r8, [r9, #164]	@ movhi
	b	.L692
.L704:
	ldr	r5, [r4, #4]
	add	r3, r4, #88
	ldmia	r3, {r3, ip}
	mov	r0, r5, asl #16
	mov	r7, r2, asl #16
	ldr	r9, .L835+28
	ldr	r8, [r4, #116]
	mov	r7, r7, lsr #16
	mov	r4, r0, lsr #16
	add	r3, r3, r3, asl #2
	mov	r0, ip, asl #16
	and	r2, r2, #255
	ldr	r9, [r9, #116]
	mov	r0, r0, lsr #16
	add	r6, r7, #24
	mov	r3, r3, asl #21
	add	r10, r4, #16
	orr	r2, r2, #16384
	cmp	ip, #4096
	orr	r2, r1, r2
	mvn	fp, r0, asl #17
	add	r3, r3, #1572864
	and	r8, r8, #3
	mov	r10, r10, asl #23
	add	r7, r7, #8
	and	r6, r6, #255
	orr	ip, r0, #16384
	mov	r3, r3, lsr #16
	mov	r10, r10, lsr #23
	orr	r6, r6, #16384
	strh	r2, [r9, #32]	@ movhi
	mov	r8, r8, asl #10
	addeq	r2, r4, #48
	mvn	fp, fp, lsr #17
	and	r7, r7, #255
	orr	r8, r8, #4096
	orr	fp, fp, r10
	orr	r7, r1, r7
	orr	r10, r10, ip
	orr	r1, r1, r6
	add	ip, r3, #36
	add	r6, r3, #4
	moveq	r2, r2, asl #23
	movne	r5, r5, asl #23
	add	r3, r3, #98
	orr	ip, ip, r8
	orr	r6, r8, r6
	orreq	r0, r0, r2, lsr #23
	orrne	r0, r0, r5, lsr #23
	orr	r8, r3, r8
	strh	fp, [r9, #26]	@ movhi
	strh	r10, [r9, #34]	@ movhi
	strh	r7, [r9, #24]	@ movhi
	strh	r1, [r9, #40]	@ movhi
	strh	ip, [r9, #28]	@ movhi
	strh	r6, [r9, #36]	@ movhi
	strh	r0, [r9, #42]	@ movhi
	strh	r8, [r9, #44]	@ movhi
	b	.L692
.L707:
	ldr	r5, [r4, #4]
	add	r3, r4, #88
	ldmia	r3, {r3, ip}
	mov	r0, r5, asl #16
	mov	r7, r2, asl #16
	ldr	r9, .L835+28
	ldr	r8, [r4, #116]
	mov	r7, r7, lsr #16
	mov	r4, r0, lsr #16
	add	r3, r3, r3, asl #2
	mov	r0, ip, asl #16
	and	r2, r2, #255
	ldr	r9, [r9, #116]
	mov	r0, r0, lsr #16
	add	r6, r7, #24
	mov	r3, r3, asl #21
	add	r10, r4, #16
	orr	r2, r2, #16384
	cmp	ip, #4096
	orr	r2, r1, r2
	mvn	fp, r0, asl #17
	add	r3, r3, #1572864
	and	r8, r8, #3
	mov	r10, r10, asl #23
	add	r7, r7, #8
	and	r6, r6, #255
	orr	ip, r0, #16384
	mov	r3, r3, lsr #16
	mov	r10, r10, lsr #23
	orr	r6, r6, #16384
	strh	r2, [r9, #80]	@ movhi
	mov	r8, r8, asl #10
	addeq	r2, r4, #48
	mvn	fp, fp, lsr #17
	and	r7, r7, #255
	orr	r8, r8, #4096
	orr	fp, fp, r10
	orr	r7, r1, r7
	orr	r10, r10, ip
	orr	r1, r1, r6
	add	ip, r3, #36
	add	r6, r3, #4
	moveq	r2, r2, asl #23
	movne	r5, r5, asl #23
	add	r3, r3, #98
	orr	ip, ip, r8
	orr	r6, r8, r6
	orreq	r0, r0, r2, lsr #23
	orrne	r0, r0, r5, lsr #23
	orr	r8, r3, r8
	strh	fp, [r9, #74]	@ movhi
	strh	r10, [r9, #82]	@ movhi
	strh	r7, [r9, #72]	@ movhi
	strh	r1, [r9, #88]	@ movhi
	strh	ip, [r9, #76]	@ movhi
	strh	r6, [r9, #84]	@ movhi
	strh	r0, [r9, #90]	@ movhi
	strh	r8, [r9, #92]	@ movhi
	b	.L692
.L708:
	ldr	r5, [r4, #4]
	add	r3, r4, #88
	ldmia	r3, {r3, ip}
	mov	r0, r5, asl #16
	mov	r7, r2, asl #16
	ldr	r9, .L835+28
	ldr	r8, [r4, #116]
	mov	r7, r7, lsr #16
	mov	r4, r0, lsr #16
	add	r3, r3, r3, asl #2
	mov	r0, ip, asl #16
	and	r2, r2, #255
	ldr	r9, [r9, #116]
	mov	r0, r0, lsr #16
	add	r6, r7, #24
	mov	r3, r3, asl #21
	add	r10, r4, #16
	orr	r2, r2, #16384
	cmp	ip, #4096
	orr	r2, r1, r2
	mvn	fp, r0, asl #17
	add	r3, r3, #1572864
	and	r8, r8, #3
	mov	r10, r10, asl #23
	add	r7, r7, #8
	and	r6, r6, #255
	orr	ip, r0, #16384
	mov	r3, r3, lsr #16
	mov	r10, r10, lsr #23
	orr	r6, r6, #16384
	strh	r2, [r9, #104]	@ movhi
	mov	r8, r8, asl #10
	addeq	r2, r4, #48
	mvn	fp, fp, lsr #17
	and	r7, r7, #255
	orr	r8, r8, #4096
	orr	fp, fp, r10
	orr	r7, r1, r7
	orr	r10, r10, ip
	orr	r1, r1, r6
	add	ip, r3, #36
	add	r6, r3, #4
	moveq	r2, r2, asl #23
	movne	r5, r5, asl #23
	add	r3, r3, #98
	orr	ip, ip, r8
	orr	r6, r8, r6
	orreq	r0, r0, r2, lsr #23
	orrne	r0, r0, r5, lsr #23
	orr	r8, r3, r8
	strh	fp, [r9, #98]	@ movhi
	strh	r10, [r9, #106]	@ movhi
	strh	r7, [r9, #96]	@ movhi
	strh	r1, [r9, #112]	@ movhi
	strh	ip, [r9, #100]	@ movhi
	strh	r6, [r9, #108]	@ movhi
	strh	r0, [r9, #114]	@ movhi
	strh	r8, [r9, #116]	@ movhi
	b	.L692
.L709:
	ldr	r5, [r4, #4]
	add	r3, r4, #88
	ldmia	r3, {r3, ip}
	mov	r0, r5, asl #16
	mov	r7, r2, asl #16
	ldr	r9, .L835+28
	ldr	r8, [r4, #116]
	mov	r7, r7, lsr #16
	mov	r4, r0, lsr #16
	add	r3, r3, r3, asl #2
	mov	r0, ip, asl #16
	and	r2, r2, #255
	ldr	r9, [r9, #116]
	mov	r0, r0, lsr #16
	add	r6, r7, #24
	mov	r3, r3, asl #21
	add	r10, r4, #16
	orr	r2, r2, #16384
	cmp	ip, #4096
	orr	r2, r1, r2
	mvn	fp, r0, asl #17
	add	r3, r3, #1572864
	and	r8, r8, #3
	mov	r10, r10, asl #23
	add	r7, r7, #8
	and	r6, r6, #255
	orr	ip, r0, #16384
	mov	r3, r3, lsr #16
	mov	r10, r10, lsr #23
	orr	r6, r6, #16384
	strh	r2, [r9, #128]	@ movhi
	mov	r8, r8, asl #10
	addeq	r2, r4, #48
	mvn	fp, fp, lsr #17
	and	r7, r7, #255
	orr	r8, r8, #4096
	orr	fp, fp, r10
	orr	r7, r1, r7
	orr	r10, r10, ip
	orr	r1, r1, r6
	add	ip, r3, #36
	add	r6, r3, #4
	moveq	r2, r2, asl #23
	movne	r5, r5, asl #23
	add	r3, r3, #98
	orr	ip, ip, r8
	orr	r6, r8, r6
	orreq	r0, r0, r2, lsr #23
	orrne	r0, r0, r5, lsr #23
	orr	r8, r3, r8
	strh	fp, [r9, #122]	@ movhi
	strh	r10, [r9, #130]	@ movhi
	strh	r7, [r9, #120]	@ movhi
	strh	r1, [r9, #136]	@ movhi
	strh	ip, [r9, #124]	@ movhi
	strh	r6, [r9, #132]	@ movhi
	strh	r0, [r9, #138]	@ movhi
	strh	r8, [r9, #140]	@ movhi
	b	.L692
.L730:
	ldr	r0, [r4, #44]
	cmp	r0, #0
	beq	.L829
	ldr	ip, [r4, #4]
	ldrh	r5, [r4, #92]
	ldr	r0, .L835+28
	and	r6, r2, #255
	ldr	r0, [r0, #116]
	mov	ip, ip, asl #23
	mvn	r7, r5, asl #17
	orr	r6, r1, r6
	mov	ip, ip, lsr #23
	mvn	r7, r7, lsr #17
	ldr	r8, [r4, #52]
	orr	r7, r7, ip
	strh	r6, [r0, #144]	@ movhi
	ldr	r6, [r4, #116]
	strh	r7, [r0, #146]	@ movhi
	add	r7, r2, #40
	and	r7, r7, #255
	and	r2, r6, #3
	cmp	r8, #0
	mov	r2, r2, asl #10
	orr	r7, r7, #16384
	beq	.L796
	orr	r5, r5, #16384
	orr	r6, r2, #4544
	orr	r2, r2, #4672
	orr	ip, ip, r5
	orr	r1, r1, r7
	orr	r5, r2, #60
	orr	r6, r6, #60
	mov	r2, #512
	strh	r1, [r0, #152]	@ movhi
	strh	ip, [r0, #154]	@ movhi
	strh	r6, [r0, #148]	@ movhi
	strh	r5, [r0, #156]	@ movhi
	strh	r2, [r0, #160]	@ movhi
.L797:
	ldr	r1, .L835+12
	smull	r2, r1, r3, r1
	mov	r2, r3, asr #31
	rsb	r2, r2, r1, asr #3
	add	r2, r2, r2, asl #2
	subs	r3, r3, r2, asl #2
	moveq	r2, #3
	streq	r3, [r4, #48]
	streq	r2, [r4, #80]
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L724:
	ldr	r0, [r4, #44]
	cmp	r0, #0
	beq	.L830
	ldr	ip, [r4, #4]
	ldrh	r5, [r4, #92]
	ldr	r0, .L835+28
	and	r6, r2, #255
	ldr	r0, [r0, #116]
	mov	ip, ip, asl #23
	mvn	r7, r5, asl #17
	orr	r6, r1, r6
	mov	ip, ip, lsr #23
	mvn	r7, r7, lsr #17
	ldr	r8, [r4, #52]
	orr	r7, r7, ip
	strh	r6, [r0, #24]	@ movhi
	ldr	r6, [r4, #116]
	strh	r7, [r0, #26]	@ movhi
	add	r7, r2, #40
	and	r7, r7, #255
	and	r2, r6, #3
	cmp	r8, #0
	mov	r2, r2, asl #10
	orr	r7, r7, #16384
	beq	.L741
	orr	r5, r5, #16384
	orr	r6, r2, #4544
	orr	r2, r2, #4672
	orr	ip, ip, r5
	orr	r1, r1, r7
	orr	r5, r2, #60
	orr	r6, r6, #60
	mov	r2, #512
	strh	r1, [r0, #32]	@ movhi
	strh	ip, [r0, #34]	@ movhi
	strh	r6, [r0, #28]	@ movhi
	strh	r5, [r0, #36]	@ movhi
	strh	r2, [r0, #40]	@ movhi
	b	.L797
.L729:
	ldr	r0, [r4, #44]
	cmp	r0, #0
	beq	.L831
	ldr	ip, [r4, #4]
	ldrh	r5, [r4, #92]
	ldr	r0, .L835+28
	and	r6, r2, #255
	ldr	r0, [r0, #116]
	mov	ip, ip, asl #23
	mvn	r7, r5, asl #17
	orr	r6, r1, r6
	mov	ip, ip, lsr #23
	mvn	r7, r7, lsr #17
	ldr	r8, [r4, #52]
	orr	r7, r7, ip
	strh	r6, [r0, #120]	@ movhi
	ldr	r6, [r4, #116]
	strh	r7, [r0, #122]	@ movhi
	add	r7, r2, #40
	and	r7, r7, #255
	and	r2, r6, #3
	cmp	r8, #0
	mov	r2, r2, asl #10
	orr	r7, r7, #16384
	beq	.L785
	orr	r5, r5, #16384
	orr	r6, r2, #4544
	orr	r2, r2, #4672
	orr	ip, ip, r5
	orr	r1, r1, r7
	orr	r5, r2, #60
	orr	r6, r6, #60
	mov	r2, #512
	strh	r1, [r0, #128]	@ movhi
	strh	ip, [r0, #130]	@ movhi
	strh	r6, [r0, #124]	@ movhi
	strh	r5, [r0, #132]	@ movhi
	strh	r2, [r0, #136]	@ movhi
	b	.L797
.L728:
	ldr	r0, [r4, #44]
	cmp	r0, #0
	beq	.L832
	ldr	ip, [r4, #4]
	ldrh	r5, [r4, #92]
	ldr	r0, .L835+28
	and	r6, r2, #255
	ldr	r0, [r0, #116]
	mov	ip, ip, asl #23
	mvn	r7, r5, asl #17
	orr	r6, r1, r6
	mov	ip, ip, lsr #23
	mvn	r7, r7, lsr #17
	ldr	r8, [r4, #52]
	orr	r7, r7, ip
	strh	r6, [r0, #96]	@ movhi
	ldr	r6, [r4, #116]
	strh	r7, [r0, #98]	@ movhi
	add	r7, r2, #40
	and	r7, r7, #255
	and	r2, r6, #3
	cmp	r8, #0
	mov	r2, r2, asl #10
	orr	r7, r7, #16384
	beq	.L774
	orr	r5, r5, #16384
	orr	r6, r2, #4544
	orr	r2, r2, #4672
	orr	ip, ip, r5
	orr	r1, r1, r7
	orr	r5, r2, #60
	orr	r6, r6, #60
	mov	r2, #512
	strh	r1, [r0, #104]	@ movhi
	strh	ip, [r0, #106]	@ movhi
	strh	r6, [r0, #100]	@ movhi
	strh	r5, [r0, #108]	@ movhi
	strh	r2, [r0, #112]	@ movhi
	b	.L797
.L727:
	ldr	r0, [r4, #44]
	cmp	r0, #0
	beq	.L833
	ldr	ip, [r4, #4]
	ldrh	r5, [r4, #92]
	ldr	r0, .L835+28
	and	r6, r2, #255
	ldr	r0, [r0, #116]
	mov	ip, ip, asl #23
	mvn	r7, r5, asl #17
	orr	r6, r1, r6
	mov	ip, ip, lsr #23
	mvn	r7, r7, lsr #17
	ldr	r8, [r4, #52]
	orr	r7, r7, ip
	strh	r6, [r0, #72]	@ movhi
	ldr	r6, [r4, #116]
	strh	r7, [r0, #74]	@ movhi
	add	r7, r2, #40
	and	r7, r7, #255
	and	r2, r6, #3
	cmp	r8, #0
	mov	r2, r2, asl #10
	orr	r7, r7, #16384
	beq	.L763
	orr	r5, r5, #16384
	orr	r6, r2, #4544
	orr	r2, r2, #4672
	orr	ip, ip, r5
	orr	r1, r1, r7
	orr	r5, r2, #60
	orr	r6, r6, #60
	mov	r2, #512
	strh	r1, [r0, #80]	@ movhi
	strh	ip, [r0, #82]	@ movhi
	strh	r6, [r0, #76]	@ movhi
	strh	r5, [r0, #84]	@ movhi
	strh	r2, [r0, #88]	@ movhi
	b	.L797
.L726:
	ldr	r0, [r4, #44]
	cmp	r0, #0
	beq	.L834
	ldr	ip, [r4, #4]
	ldrh	r5, [r4, #92]
	ldr	r0, .L835+28
	and	r6, r2, #255
	ldr	r0, [r0, #116]
	mov	ip, ip, asl #23
	mvn	r7, r5, asl #17
	orr	r6, r1, r6
	mov	ip, ip, lsr #23
	mvn	r7, r7, lsr #17
	ldr	r8, [r4, #52]
	orr	r7, r7, ip
	strh	r6, [r0, #48]	@ movhi
	ldr	r6, [r4, #116]
	strh	r7, [r0, #50]	@ movhi
	add	r7, r2, #40
	and	r7, r7, #255
	and	r2, r6, #3
	cmp	r8, #0
	mov	r2, r2, asl #10
	orr	r7, r7, #16384
	beq	.L752
	orr	r5, r5, #16384
	orr	r6, r2, #4544
	orr	r2, r2, #4672
	orr	ip, ip, r5
	orr	r1, r1, r7
	orr	r5, r2, #60
	orr	r6, r6, #60
	mov	r2, #512
	strh	r1, [r0, #56]	@ movhi
	strh	ip, [r0, #58]	@ movhi
	strh	r6, [r0, #52]	@ movhi
	strh	r5, [r0, #60]	@ movhi
	strh	r2, [r0, #64]	@ movhi
	b	.L797
.L763:
	orr	r6, r5, #16384
	orr	r5, r2, #4544
	orr	r2, r2, #4672
	orr	r1, r1, r7
	orr	ip, ip, r6
	orr	r5, r5, #54
	orr	r2, r2, #54
	strh	r1, [r0, #80]	@ movhi
	strh	ip, [r0, #82]	@ movhi
	strh	r5, [r0, #76]	@ movhi
	strh	r2, [r0, #84]	@ movhi
	b	.L797
.L752:
	orr	r6, r5, #16384
	orr	r5, r2, #4544
	orr	r2, r2, #4672
	orr	r1, r1, r7
	orr	ip, ip, r6
	orr	r5, r5, #54
	orr	r2, r2, #54
	strh	r1, [r0, #56]	@ movhi
	strh	ip, [r0, #58]	@ movhi
	strh	r5, [r0, #52]	@ movhi
	strh	r2, [r0, #60]	@ movhi
	b	.L797
.L785:
	orr	r6, r5, #16384
	orr	r5, r2, #4544
	orr	r2, r2, #4672
	orr	r1, r1, r7
	orr	ip, ip, r6
	orr	r5, r5, #54
	orr	r2, r2, #54
	strh	r1, [r0, #128]	@ movhi
	strh	ip, [r0, #130]	@ movhi
	strh	r5, [r0, #124]	@ movhi
	strh	r2, [r0, #132]	@ movhi
	b	.L797
.L796:
	orr	r6, r5, #16384
	orr	r5, r2, #4544
	orr	r2, r2, #4672
	orr	r1, r1, r7
	orr	ip, ip, r6
	orr	r5, r5, #54
	orr	r2, r2, #54
	strh	r1, [r0, #152]	@ movhi
	strh	ip, [r0, #154]	@ movhi
	strh	r5, [r0, #148]	@ movhi
	strh	r2, [r0, #156]	@ movhi
	b	.L797
.L741:
	orr	r6, r5, #16384
	orr	r5, r2, #4544
	orr	r2, r2, #4672
	orr	r1, r1, r7
	orr	ip, ip, r6
	orr	r5, r5, #54
	orr	r2, r2, #54
	strh	r1, [r0, #32]	@ movhi
	strh	ip, [r0, #34]	@ movhi
	strh	r5, [r0, #28]	@ movhi
	strh	r2, [r0, #36]	@ movhi
	b	.L797
.L774:
	orr	r6, r5, #16384
	orr	r5, r2, #4544
	orr	r2, r2, #4672
	orr	r1, r1, r7
	orr	ip, ip, r6
	orr	r5, r5, #54
	orr	r2, r2, #54
	strh	r1, [r0, #104]	@ movhi
	strh	ip, [r0, #106]	@ movhi
	strh	r5, [r0, #100]	@ movhi
	strh	r2, [r0, #108]	@ movhi
	b	.L797
.L830:
	ldr	r3, .L835+4
	mov	r0, #1
	ldr	r1, .L835+8
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #52]
	cmp	r3, #0
	beq	.L732
	ldr	r6, [r4, #56]
	ldr	r3, .L835+28
	cmp	r6, #0
	ldreqb	r0, [r4]	@ zero_extendqisi2
	ldreq	r1, [r4, #112]
	ldreq	r2, [r3, #116]
	orreq	r1, r0, r1
	ldr	r0, [r4, #116]
	ldrh	ip, [r4, #92]
	streqh	r1, [r2, #24]	@ movhi
	ldr	r1, [r4, #4]
	and	r0, r0, #3
	mov	r0, r0, asl #10
	mov	r1, r1, asl #23
	mvn	r8, ip, asl #17
	ldrne	r2, [r3, #116]
	orr	r7, r0, #4544
	mov	r1, r1, lsr #23
	mvn	r8, r8, lsr #17
	cmp	r6, #0
	orr	r7, r7, #60
	orr	r6, r8, r1
	strh	r7, [r2, #28]	@ movhi
	strh	r6, [r2, #26]	@ movhi
	bne	.L735
	ldr	r6, [r4]
	ldr	r7, [r4, #112]
	add	r6, r6, #40
	and	r6, r6, #255
	orr	r7, r7, #16384
	orr	r6, r7, r6
	strh	r6, [r2, #32]	@ movhi
.L735:
	orr	ip, ip, #16384
	orr	r0, r0, #4672
	orr	r1, ip, r1
	orr	ip, r0, #60
	mov	r0, #512
	strh	r1, [r2, #34]	@ movhi
	strh	ip, [r2, #36]	@ movhi
	strh	r0, [r2, #40]	@ movhi
.L736:
	ldr	r2, [r5, #68]
	ldr	r0, .L835+12
	smull	r1, r0, r2, r0
	mov	r1, r2, asr #31
	rsb	r1, r1, r0, asr #4
	add	r1, r1, r1, asl #2
	cmp	r2, r1, asl #3
	bne	.L692
	ldr	r3, [r3, #116]
	mov	r2, #512
	mov	r1, #1
	strh	r2, [r3, #24]	@ movhi
	strh	r2, [r3, #32]	@ movhi
	strh	r2, [r3, #40]	@ movhi
	str	r1, [r4, #56]
	bl	updateOAM
	ldr	r4, .L835+16
	mov	r5, #30
.L740:
	mov	r0, #1
	ldr	r1, .L835+20
	mov	lr, pc
	bx	r4
	subs	r5, r5, #1
	bne	.L740
	b	.L692
.L836:
	.align	2
.L835:
	.word	.LANCHOR1
	.word	spriteColorChange16
	.word	2116
	.word	1717986919
	.word	spriteColorRestore16
	.word	spritersSheetPal
	.word	4598
	.word	.LANCHOR0
.L832:
	ldr	r3, .L835+4
	mov	r0, #1
	ldr	r1, .L835+8
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #52]
	cmp	r3, #0
	beq	.L766
	ldr	r6, [r4, #56]
	ldr	r3, .L835+28
	cmp	r6, #0
	ldreqb	r0, [r4]	@ zero_extendqisi2
	ldreq	r1, [r4, #112]
	ldreq	r2, [r3, #116]
	orreq	r1, r0, r1
	ldr	r0, [r4, #116]
	ldrh	ip, [r4, #92]
	streqh	r1, [r2, #96]	@ movhi
	ldr	r1, [r4, #4]
	and	r0, r0, #3
	mov	r0, r0, asl #10
	mov	r1, r1, asl #23
	mvn	r8, ip, asl #17
	ldrne	r2, [r3, #116]
	orr	r7, r0, #4544
	mov	r1, r1, lsr #23
	mvn	r8, r8, lsr #17
	cmp	r6, #0
	orr	r7, r7, #60
	orr	r6, r8, r1
	strh	r7, [r2, #100]	@ movhi
	strh	r6, [r2, #98]	@ movhi
	bne	.L769
	ldr	r6, [r4]
	ldr	r7, [r4, #112]
	add	r6, r6, #40
	and	r6, r6, #255
	orr	r7, r7, #16384
	orr	r6, r7, r6
	strh	r6, [r2, #104]	@ movhi
.L769:
	orr	ip, ip, #16384
	orr	r0, r0, #4672
	orr	r1, ip, r1
	orr	ip, r0, #60
	mov	r0, #512
	strh	r1, [r2, #106]	@ movhi
	strh	ip, [r2, #108]	@ movhi
	strh	r0, [r2, #112]	@ movhi
.L770:
	ldr	r2, [r5, #68]
	ldr	r0, .L835+12
	smull	r1, r0, r2, r0
	mov	r1, r2, asr #31
	rsb	r1, r1, r0, asr #4
	add	r1, r1, r1, asl #2
	cmp	r2, r1, asl #3
	bne	.L692
	ldr	r3, [r3, #116]
	mov	r2, #512
	mov	r1, #1
	strh	r2, [r3, #96]	@ movhi
	strh	r2, [r3, #104]	@ movhi
	strh	r2, [r3, #112]	@ movhi
	str	r1, [r4, #56]
	bl	updateOAM
	ldr	r4, .L835+16
	mov	r5, #30
.L773:
	mov	r0, #1
	ldr	r1, .L835+20
	mov	lr, pc
	bx	r4
	subs	r5, r5, #1
	bne	.L773
	b	.L692
.L831:
	ldr	r3, .L835+4
	mov	r0, #1
	ldr	r1, .L835+8
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #52]
	cmp	r3, #0
	beq	.L777
	ldr	r6, [r4, #56]
	ldr	r3, .L835+28
	cmp	r6, #0
	ldreqb	r0, [r4]	@ zero_extendqisi2
	ldreq	r1, [r4, #112]
	ldreq	r2, [r3, #116]
	orreq	r1, r0, r1
	ldr	r0, [r4, #116]
	ldrh	ip, [r4, #92]
	streqh	r1, [r2, #120]	@ movhi
	ldr	r1, [r4, #4]
	and	r0, r0, #3
	mov	r0, r0, asl #10
	mov	r1, r1, asl #23
	mvn	r8, ip, asl #17
	ldrne	r2, [r3, #116]
	orr	r7, r0, #4544
	mov	r1, r1, lsr #23
	mvn	r8, r8, lsr #17
	cmp	r6, #0
	orr	r7, r7, #60
	orr	r6, r8, r1
	strh	r7, [r2, #124]	@ movhi
	strh	r6, [r2, #122]	@ movhi
	bne	.L780
	ldr	r6, [r4]
	ldr	r7, [r4, #112]
	add	r6, r6, #40
	and	r6, r6, #255
	orr	r7, r7, #16384
	orr	r6, r7, r6
	strh	r6, [r2, #128]	@ movhi
.L780:
	orr	ip, ip, #16384
	orr	r0, r0, #4672
	orr	r1, ip, r1
	orr	ip, r0, #60
	mov	r0, #512
	strh	r1, [r2, #130]	@ movhi
	strh	ip, [r2, #132]	@ movhi
	strh	r0, [r2, #136]	@ movhi
.L781:
	ldr	r2, [r5, #68]
	ldr	r0, .L835+12
	smull	r1, r0, r2, r0
	mov	r1, r2, asr #31
	rsb	r1, r1, r0, asr #4
	add	r1, r1, r1, asl #2
	cmp	r2, r1, asl #3
	bne	.L692
	ldr	r3, [r3, #116]
	mov	r2, #512
	mov	r1, #1
	strh	r2, [r3, #120]	@ movhi
	strh	r2, [r3, #128]	@ movhi
	strh	r2, [r3, #136]	@ movhi
	str	r1, [r4, #56]
	bl	updateOAM
	ldr	r4, .L835+16
	mov	r5, #30
.L784:
	mov	r0, #1
	ldr	r1, .L835+20
	mov	lr, pc
	bx	r4
	subs	r5, r5, #1
	bne	.L784
	b	.L692
.L829:
	ldr	r3, .L835+4
	mov	r0, #1
	ldr	r1, .L835+8
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #52]
	cmp	r3, #0
	beq	.L788
	ldr	r6, [r4, #56]
	ldr	r3, .L835+28
	cmp	r6, #0
	ldreqb	r0, [r4]	@ zero_extendqisi2
	ldreq	r1, [r4, #112]
	ldreq	r2, [r3, #116]
	orreq	r1, r0, r1
	ldr	r0, [r4, #116]
	ldrh	ip, [r4, #92]
	streqh	r1, [r2, #144]	@ movhi
	ldr	r1, [r4, #4]
	and	r0, r0, #3
	mov	r0, r0, asl #10
	mov	r1, r1, asl #23
	mvn	r8, ip, asl #17
	ldrne	r2, [r3, #116]
	orr	r7, r0, #4544
	mov	r1, r1, lsr #23
	mvn	r8, r8, lsr #17
	cmp	r6, #0
	orr	r7, r7, #60
	orr	r6, r8, r1
	strh	r7, [r2, #148]	@ movhi
	strh	r6, [r2, #146]	@ movhi
	bne	.L791
	ldr	r6, [r4]
	ldr	r7, [r4, #112]
	add	r6, r6, #40
	and	r6, r6, #255
	orr	r7, r7, #16384
	orr	r6, r7, r6
	strh	r6, [r2, #152]	@ movhi
.L791:
	orr	ip, ip, #16384
	orr	r0, r0, #4672
	orr	r1, ip, r1
	orr	ip, r0, #60
	mov	r0, #512
	strh	r1, [r2, #154]	@ movhi
	strh	ip, [r2, #156]	@ movhi
	strh	r0, [r2, #160]	@ movhi
.L792:
	ldr	r2, [r5, #68]
	ldr	r0, .L835+12
	smull	r1, r0, r2, r0
	mov	r1, r2, asr #31
	rsb	r1, r1, r0, asr #4
	add	r1, r1, r1, asl #2
	cmp	r2, r1, asl #3
	bne	.L692
	ldr	r3, [r3, #116]
	mov	r2, #512
	mov	r1, #1
	strh	r2, [r3, #144]	@ movhi
	strh	r2, [r3, #152]	@ movhi
	strh	r2, [r3, #160]	@ movhi
	str	r1, [r4, #56]
	bl	updateOAM
	ldr	r4, .L835+16
	mov	r5, #30
.L795:
	mov	r0, #1
	ldr	r1, .L835+20
	mov	lr, pc
	bx	r4
	subs	r5, r5, #1
	bne	.L795
	b	.L692
.L833:
	ldr	r3, .L835+4
	mov	r0, #1
	ldr	r1, .L835+8
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #52]
	cmp	r3, #0
	beq	.L755
	ldr	r6, [r4, #56]
	ldr	r3, .L835+28
	cmp	r6, #0
	ldreqb	r0, [r4]	@ zero_extendqisi2
	ldreq	r1, [r4, #112]
	ldreq	r2, [r3, #116]
	orreq	r1, r0, r1
	ldr	r0, [r4, #116]
	ldrh	ip, [r4, #92]
	streqh	r1, [r2, #72]	@ movhi
	ldr	r1, [r4, #4]
	and	r0, r0, #3
	mov	r0, r0, asl #10
	mov	r1, r1, asl #23
	mvn	r8, ip, asl #17
	ldrne	r2, [r3, #116]
	orr	r7, r0, #4544
	mov	r1, r1, lsr #23
	mvn	r8, r8, lsr #17
	cmp	r6, #0
	orr	r7, r7, #60
	orr	r6, r8, r1
	strh	r7, [r2, #76]	@ movhi
	strh	r6, [r2, #74]	@ movhi
	bne	.L758
	ldr	r6, [r4]
	ldr	r7, [r4, #112]
	add	r6, r6, #40
	and	r6, r6, #255
	orr	r7, r7, #16384
	orr	r6, r7, r6
	strh	r6, [r2, #80]	@ movhi
.L758:
	orr	ip, ip, #16384
	orr	r0, r0, #4672
	orr	r1, ip, r1
	orr	ip, r0, #60
	mov	r0, #512
	strh	r1, [r2, #82]	@ movhi
	strh	ip, [r2, #84]	@ movhi
	strh	r0, [r2, #88]	@ movhi
.L759:
	ldr	r2, [r5, #68]
	ldr	r0, .L835+12
	smull	r1, r0, r2, r0
	mov	r1, r2, asr #31
	rsb	r1, r1, r0, asr #4
	add	r1, r1, r1, asl #2
	cmp	r2, r1, asl #3
	bne	.L692
	ldr	r3, [r3, #116]
	mov	r2, #512
	mov	r1, #1
	strh	r2, [r3, #72]	@ movhi
	strh	r2, [r3, #80]	@ movhi
	strh	r2, [r3, #88]	@ movhi
	str	r1, [r4, #56]
	bl	updateOAM
	ldr	r4, .L835+16
	mov	r5, #30
.L762:
	mov	r0, #1
	ldr	r1, .L835+20
	mov	lr, pc
	bx	r4
	subs	r5, r5, #1
	bne	.L762
	b	.L692
.L834:
	ldr	r3, .L835+4
	mov	r0, #1
	ldr	r1, .L835+8
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #52]
	cmp	r3, #0
	beq	.L744
	ldr	r6, [r4, #56]
	ldr	r3, .L835+28
	cmp	r6, #0
	ldreqb	r0, [r4]	@ zero_extendqisi2
	ldreq	r1, [r4, #112]
	ldreq	r2, [r3, #116]
	orreq	r1, r0, r1
	ldr	r0, [r4, #116]
	ldrh	ip, [r4, #92]
	streqh	r1, [r2, #48]	@ movhi
	ldr	r1, [r4, #4]
	and	r0, r0, #3
	mov	r0, r0, asl #10
	mov	r1, r1, asl #23
	mvn	r8, ip, asl #17
	ldrne	r2, [r3, #116]
	orr	r7, r0, #4544
	mov	r1, r1, lsr #23
	mvn	r8, r8, lsr #17
	cmp	r6, #0
	orr	r7, r7, #60
	orr	r6, r8, r1
	strh	r7, [r2, #52]	@ movhi
	strh	r6, [r2, #50]	@ movhi
	bne	.L747
	ldr	r6, [r4]
	ldr	r7, [r4, #112]
	add	r6, r6, #40
	and	r6, r6, #255
	orr	r7, r7, #16384
	orr	r6, r7, r6
	strh	r6, [r2, #56]	@ movhi
.L747:
	orr	ip, ip, #16384
	orr	r0, r0, #4672
	orr	r1, ip, r1
	orr	ip, r0, #60
	mov	r0, #512
	strh	r1, [r2, #58]	@ movhi
	strh	ip, [r2, #60]	@ movhi
	strh	r0, [r2, #64]	@ movhi
.L748:
	ldr	r2, [r5, #68]
	ldr	r0, .L835+12
	smull	r1, r0, r2, r0
	mov	r1, r2, asr #31
	rsb	r1, r1, r0, asr #4
	add	r1, r1, r1, asl #2
	cmp	r2, r1, asl #3
	bne	.L692
	ldr	r3, [r3, #116]
	mov	r2, #512
	mov	r1, #1
	strh	r2, [r3, #48]	@ movhi
	strh	r2, [r3, #56]	@ movhi
	strh	r2, [r3, #64]	@ movhi
	str	r1, [r4, #56]
	bl	updateOAM
	ldr	r4, .L835+16
	mov	r5, #30
.L751:
	mov	r0, #1
	ldr	r1, .L835+20
	mov	lr, pc
	bx	r4
	subs	r5, r5, #1
	bne	.L751
	b	.L692
.L744:
	ldr	r3, [r4, #56]
	cmp	r3, #0
	beq	.L749
	ldr	r3, .L835+28
	ldr	r2, [r3, #116]
.L750:
	ldr	ip, [r4, #116]
	ldrh	r0, [r4, #92]
	ldr	r1, [r4, #4]
	and	ip, ip, #3
	mov	ip, ip, asl #10
	mvn	r8, r0, asl #17
	mov	r1, r1, asl #23
	orr	r7, ip, #4544
	orr	r6, ip, #4672
	mov	r1, r1, lsr #23
	mvn	ip, r8, lsr #17
	orr	r0, r0, #16384
	orr	ip, ip, r1
	orr	r7, r7, #54
	orr	r6, r6, #54
	orr	r1, r1, r0
	strh	r7, [r2, #52]	@ movhi
	strh	r6, [r2, #60]	@ movhi
	strh	ip, [r2, #50]	@ movhi
	strh	r1, [r2, #58]	@ movhi
	b	.L748
.L755:
	ldr	r3, [r4, #56]
	cmp	r3, #0
	beq	.L760
	ldr	r3, .L835+28
	ldr	r2, [r3, #116]
.L761:
	ldr	ip, [r4, #116]
	ldrh	r0, [r4, #92]
	ldr	r1, [r4, #4]
	and	ip, ip, #3
	mov	ip, ip, asl #10
	mvn	r8, r0, asl #17
	mov	r1, r1, asl #23
	orr	r7, ip, #4544
	orr	r6, ip, #4672
	mov	r1, r1, lsr #23
	mvn	ip, r8, lsr #17
	orr	r0, r0, #16384
	orr	ip, ip, r1
	orr	r7, r7, #54
	orr	r6, r6, #54
	orr	r1, r1, r0
	strh	r7, [r2, #76]	@ movhi
	strh	r6, [r2, #84]	@ movhi
	strh	ip, [r2, #74]	@ movhi
	strh	r1, [r2, #82]	@ movhi
	b	.L759
.L788:
	ldr	r3, [r4, #56]
	cmp	r3, #0
	beq	.L793
	ldr	r3, .L835+28
	ldr	r2, [r3, #116]
.L794:
	ldr	ip, [r4, #116]
	ldrh	r0, [r4, #92]
	ldr	r1, [r4, #4]
	and	ip, ip, #3
	mov	ip, ip, asl #10
	mvn	r8, r0, asl #17
	mov	r1, r1, asl #23
	orr	r7, ip, #4544
	orr	r6, ip, #4672
	mov	r1, r1, lsr #23
	mvn	ip, r8, lsr #17
	orr	r0, r0, #16384
	orr	ip, ip, r1
	orr	r7, r7, #54
	orr	r6, r6, #54
	orr	r1, r1, r0
	strh	r7, [r2, #148]	@ movhi
	strh	r6, [r2, #156]	@ movhi
	strh	ip, [r2, #146]	@ movhi
	strh	r1, [r2, #154]	@ movhi
	b	.L792
.L766:
	ldr	r3, [r4, #56]
	cmp	r3, #0
	beq	.L771
	ldr	r3, .L835+28
	ldr	r2, [r3, #116]
.L772:
	ldr	r7, [r4, #116]
	ldrh	r0, [r4, #92]
	ldr	r1, [r4, #4]
	and	r7, r7, #3
	mvn	r6, r0, asl #17
	mov	r7, r7, asl #10
	mov	r1, r1, asl #23
	mov	r1, r1, lsr #23
	orr	r7, r7, #4672
	mvn	r6, r6, lsr #17
	orr	r0, r0, #16384
	ldr	ip, .L835+24
	orr	r6, r6, r1
	orr	r7, r7, #54
	orr	r1, r1, r0
	strh	r7, [r2, #108]	@ movhi
	strh	r6, [r2, #98]	@ movhi
	strh	r1, [r2, #106]	@ movhi
	strh	ip, [r2, #100]	@ movhi
	b	.L770
.L777:
	ldr	r3, [r4, #56]
	cmp	r3, #0
	beq	.L782
	ldr	r3, .L835+28
	ldr	r2, [r3, #116]
.L783:
	ldr	ip, [r4, #116]
	ldrh	r0, [r4, #92]
	ldr	r1, [r4, #4]
	and	ip, ip, #3
	mov	ip, ip, asl #10
	mvn	r8, r0, asl #17
	mov	r1, r1, asl #23
	orr	r7, ip, #4544
	orr	r6, ip, #4672
	mov	r1, r1, lsr #23
	mvn	ip, r8, lsr #17
	orr	r0, r0, #16384
	orr	ip, ip, r1
	orr	r7, r7, #54
	orr	r6, r6, #54
	orr	r1, r1, r0
	strh	r7, [r2, #124]	@ movhi
	strh	r6, [r2, #132]	@ movhi
	strh	ip, [r2, #122]	@ movhi
	strh	r1, [r2, #130]	@ movhi
	b	.L781
.L732:
	ldr	r3, [r4, #56]
	cmp	r3, #0
	beq	.L737
	ldr	r3, .L835+28
	ldr	r2, [r3, #116]
.L738:
	ldr	ip, [r4, #116]
	ldrh	r0, [r4, #92]
	ldr	r1, [r4, #4]
	and	ip, ip, #3
	mov	ip, ip, asl #10
	mvn	r8, r0, asl #17
	mov	r1, r1, asl #23
	orr	r7, ip, #4544
	orr	r6, ip, #4672
	mov	r1, r1, lsr #23
	mvn	ip, r8, lsr #17
	orr	r0, r0, #16384
	orr	ip, ip, r1
	orr	r7, r7, #54
	orr	r6, r6, #54
	orr	r1, r1, r0
	strh	r7, [r2, #28]	@ movhi
	strh	r6, [r2, #36]	@ movhi
	strh	ip, [r2, #26]	@ movhi
	strh	r1, [r2, #34]	@ movhi
	b	.L736
.L749:
	ldr	r1, [r4]
	ldr	r0, [r4, #112]
	ldr	r3, .L835+28
	add	r1, r1, #40
	and	r1, r1, #255
	orr	r0, r0, #16384
	ldr	r2, [r3, #116]
	orr	r1, r0, r1
	strh	r1, [r2, #56]	@ movhi
	b	.L750
.L737:
	ldr	r1, [r4]
	ldr	r0, [r4, #112]
	ldr	r3, .L835+28
	add	r1, r1, #40
	and	r1, r1, #255
	orr	r0, r0, #16384
	ldr	r2, [r3, #116]
	orr	r1, r0, r1
	strh	r1, [r2, #32]	@ movhi
	b	.L738
.L760:
	ldr	r1, [r4]
	ldr	r0, [r4, #112]
	ldr	r3, .L835+28
	add	r1, r1, #40
	and	r1, r1, #255
	orr	r0, r0, #16384
	ldr	r2, [r3, #116]
	orr	r1, r0, r1
	strh	r1, [r2, #80]	@ movhi
	b	.L761
.L771:
	ldr	r1, [r4]
	ldr	r0, [r4, #112]
	ldr	r3, .L835+28
	add	r1, r1, #40
	and	r1, r1, #255
	orr	r0, r0, #16384
	ldr	r2, [r3, #116]
	orr	r1, r0, r1
	strh	r1, [r2, #104]	@ movhi
	b	.L772
.L793:
	ldr	r1, [r4]
	ldr	r0, [r4, #112]
	ldr	r3, .L835+28
	add	r1, r1, #40
	and	r1, r1, #255
	orr	r0, r0, #16384
	ldr	r2, [r3, #116]
	orr	r1, r0, r1
	strh	r1, [r2, #152]	@ movhi
	b	.L794
.L782:
	ldr	r1, [r4]
	ldr	r0, [r4, #112]
	ldr	r3, .L835+28
	add	r1, r1, #40
	and	r1, r1, #255
	orr	r0, r0, #16384
	ldr	r2, [r3, #116]
	orr	r1, r0, r1
	strh	r1, [r2, #128]	@ movhi
	b	.L783
	.size	enemySpriteWork.part.2, .-enemySpriteWork.part.2
	.align	2
	.global	enemySpriteWork
	.type	enemySpriteWork, %function
enemySpriteWork:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #56]
	cmp	r3, #0
	bxne	lr
	b	enemySpriteWork.part.2
	.size	enemySpriteWork, .-enemySpriteWork
	.align	2
	.global	updateEnemies
	.type	updateEnemies, %function
updateEnemies:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, .L852
	ldr	lr, [r4, #40]
	ldr	r2, .L852+4
	add	r7, lr, #8
	ldr	r2, [r2]
	ldmia	r7, {r7, r10}
	ldr	r5, [r4, #36]
	ldr	r3, .L852+8
	sub	sp, sp, #20
	ldr	r3, [r3]
	ldr	r6, [r5, #8]
	ldr	fp, [r5, #12]
	rsb	r7, r2, r7
	add	r0, r4, #48
	ldmia	r0, {r0, r1}
	ldr	ip, [r4, #44]
	str	r7, [sp, #12]
	ldr	r7, [r5, #80]
	rsb	r6, r2, r6
	rsb	fp, r3, fp
	ldr	r9, [ip, #8]
	ldr	r8, [ip, #12]
	str	r7, [r5, #84]
	ldr	r7, [r0, #8]
	str	r6, [r5]
	ldr	r6, [r0, #12]
	str	fp, [r5, #4]
	ldr	fp, [lr, #80]
	ldr	r5, [r1, #8]
	str	fp, [lr, #84]
	ldr	fp, [sp, #12]
	rsb	r10, r3, r10
	str	fp, [lr]
	ldr	fp, [ip, #80]
	str	r10, [lr, #4]
	ldr	r10, [r0, #80]
	rsb	r9, r2, r9
	rsb	r8, r3, r8
	rsb	r7, r2, r7
	rsb	r6, r3, r6
	ldr	lr, [r1, #80]
	str	fp, [ip, #84]
	str	r9, [ip]
	str	r8, [ip, #4]
	str	r10, [r0, #84]
	str	r7, [r0]
	str	r6, [r0, #4]
	add	r0, r4, #60
	ldmia	r0, {r0, r7}
	ldr	fp, [r1, #12]
	ldr	r8, [r0, #8]
	ldr	ip, [r4, #56]
	rsb	r5, r2, r5
	rsb	fp, r3, fp
	rsb	r8, r2, r8
	str	lr, [r1, #84]
	str	r5, [r1]
	ldr	r10, [ip, #8]
	ldr	r9, [ip, #12]
	str	r8, [sp, #4]
	ldr	r8, [r0, #12]
	str	fp, [r1, #4]
	ldr	r1, [ip, #80]
	ldr	fp, [r7, #8]
	str	r1, [ip, #84]
	ldr	r1, [r7, #12]
	ldr	r6, [r4, #68]
	rsb	r1, r3, r1
	str	r1, [sp, #12]
	ldr	r1, [r6, #8]
	rsb	r8, r3, r8
	rsb	r10, r2, r10
	str	r8, [sp, #8]
	rsb	r1, r2, r1
	add	r5, r4, #72
	ldmia	r5, {r5, lr}
	str	r1, [sp]
	str	r10, [ip]
	ldr	r1, [sp, #8]
	ldr	r10, [sp, #4]
	rsb	r9, r3, r9
	str	r9, [ip, #4]
	ldr	r8, [r5, #12]
	ldr	r9, [r6, #12]
	ldr	ip, [r5, #8]
	str	r10, [r0]
	str	r1, [r0, #4]
	ldr	r1, [sp, #12]
	rsb	fp, r2, fp
	ldr	r10, [lr, #8]
	str	fp, [r7]
	ldr	fp, [lr, #12]
	str	r1, [r7, #4]
	ldr	r7, [sp]
	rsb	r9, r3, r9
	rsb	ip, r2, ip
	rsb	r8, r3, r8
	stmia	r6, {r7, r9}
	str	ip, [r5]
	str	r8, [r5, #4]
	rsb	r10, r2, r10
	rsb	fp, r3, fp
	add	r5, r4, #84
	stmia	lr, {r10, fp}
	ldr	r6, [r4, #80]
	ldmia	r5, {r5, lr}
	add	r7, r6, #8
	add	r8, r5, #8
	ldmia	r7, {r7, fp}
	ldmia	r8, {r8, r10}
	ldr	ip, [r4, #92]
	ldr	r1, [r4, #96]
	rsb	r7, r2, r7
	rsb	fp, r3, fp
	rsb	r8, r2, r8
	rsb	r10, r3, r10
	str	r8, [sp, #8]
	str	r10, [sp, #12]
	ldr	r8, [lr, #8]
	ldr	r10, [lr, #12]
	str	r7, [r6]
	ldr	r7, [ip, #8]
	str	fp, [r6, #4]
	ldr	r6, [r1, #8]
	ldr	fp, [r1, #12]
	rsb	r9, r2, r8
	rsb	r7, r2, r7
	rsb	r2, r2, r6
	ldr	r6, [ip, #12]
	rsb	r8, r3, r10
	rsb	r6, r3, r6
	ldr	r10, [sp, #12]
	rsb	r3, r3, fp
	ldr	fp, [sp, #8]
	str	fp, [r5]
	str	r10, [r5, #4]
	str	r9, [lr]
	str	r8, [lr, #4]
	str	r7, [ip]
	str	r6, [ip, #4]
	stmia	r1, {r2, r3}
	bl	spotLightMovement
	ldr	r0, [r4, #64]
	bl	spotLightMovement
	ldr	r0, [r4, #68]
	bl	spotLightMovement
	ldr	r0, [r4, #72]
	bl	spotLightMovement
	ldr	r0, [r4, #76]
	bl	spotLightMovement
	ldr	r0, [r4, #80]
	bl	spotLightMovement
	ldr	r0, [r4, #84]
	bl	spotLightMovement
	ldr	r0, [r4, #88]
	bl	spotLightMovement
	ldr	r0, [r4, #92]
	bl	spotLightMovement
	ldr	r0, [r4, #96]
	bl	spotLightMovement
	ldr	r0, [r4, #100]
	bl	spotLightMovement
	ldr	r0, [r4, #60]
	bl	spotLightSpriteWork
	ldr	r0, [r4, #64]
	bl	spotLightSpriteWork
	ldr	r0, [r4, #68]
	bl	spotLightSpriteWork
	ldr	r0, [r4, #72]
	bl	spotLightSpriteWork
	ldr	r0, [r4, #76]
	bl	spotLightSpriteWork
	ldr	r0, [r4, #80]
	bl	spotLightSpriteWork
	ldr	r0, [r4, #84]
	bl	spotLightSpriteWork
	ldr	r0, [r4, #88]
	bl	spotLightSpriteWork
	ldr	r0, [r4, #92]
	bl	spotLightSpriteWork
	ldr	r0, [r4, #96]
	bl	spotLightSpriteWork
	ldr	r0, [r4, #36]
	bl	enemyAI
	ldr	r0, [r4, #40]
	bl	enemyAI
	ldr	r0, [r4, #44]
	bl	enemyAI
	ldr	r0, [r4, #48]
	bl	enemyAI
	ldr	r0, [r4, #52]
	bl	enemyAI
	ldr	r0, [r4, #56]
	bl	enemyAI
	ldr	r0, [r4, #36]
	ldr	r3, [r0, #56]
	cmp	r3, #0
	beq	.L846
.L840:
	ldr	r0, [r4, #40]
	ldr	r3, [r0, #56]
	cmp	r3, #0
	beq	.L847
.L841:
	ldr	r0, [r4, #44]
	ldr	r3, [r0, #56]
	cmp	r3, #0
	beq	.L848
.L842:
	ldr	r0, [r4, #48]
	ldr	r3, [r0, #56]
	cmp	r3, #0
	beq	.L849
.L843:
	ldr	r0, [r4, #52]
	ldr	r3, [r0, #56]
	cmp	r3, #0
	beq	.L850
.L844:
	ldr	r0, [r4, #56]
	ldr	r3, [r0, #56]
	cmp	r3, #0
	beq	.L851
	add	sp, sp, #20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L851:
	add	sp, sp, #20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	enemySpriteWork.part.2
.L850:
	bl	enemySpriteWork.part.2
	b	.L844
.L849:
	bl	enemySpriteWork.part.2
	b	.L843
.L848:
	bl	enemySpriteWork.part.2
	b	.L842
.L847:
	bl	enemySpriteWork.part.2
	b	.L841
.L846:
	bl	enemySpriteWork.part.2
	b	.L840
.L853:
	.align	2
.L852:
	.word	.LANCHOR0
	.word	masterVoff
	.word	masterHoff
	.size	updateEnemies, .-updateEnemies
	.global	grandChamp
	.global	blackCount
	.global	modoruCount
	.global	whiteCount
	.global	cheatON
	.global	blend
	.global	rPress
	.global	bPress
	.global	aPress
	.global	flashLight
	.global	scanCounter
	.global	rageCounter
	.global	deathCounter
	.global	walkCounter
	.global	stealthRecovered
	.global	hidden
	.global	reverseFade
	.global	stealthFade
	.global	coolDown
	.global	stealthDuration
	.global	ryuMoveCounter
	.global	fbp1
	.comm	fireball1,52,4
	.global	fbp0
	.comm	fireball0,52,4
	.global	pauseSignptr
	.comm	pauseSign,52,4
	.global	shadowOAMptr
	.comm	shadowOAM,1024,4
	.global	spotLight10ptr
	.comm	spotLight10,136,4
	.global	spotLight9ptr
	.comm	spotLight9,136,4
	.global	spotLight8ptr
	.comm	spotLight8,136,4
	.global	spotLight7ptr
	.comm	spotLight7,136,4
	.global	spotLight6ptr
	.comm	spotLight6,136,4
	.global	spotLight5ptr
	.comm	spotLight5,136,4
	.global	spotLight4ptr
	.comm	spotLight4,136,4
	.global	spotLight3ptr
	.comm	spotLight3,136,4
	.global	spotLight2ptr
	.comm	spotLight2,136,4
	.global	spotLight1ptr
	.comm	spotLight1,136,4
	.global	spotLight0ptr
	.comm	spotLight0,136,4
	.global	guard5p
	.comm	guard5,136,4
	.global	guard4p
	.comm	guard4,136,4
	.global	guard3p
	.comm	guard3,136,4
	.global	guard2p
	.comm	guard2,136,4
	.global	guard1p
	.comm	guard1,136,4
	.global	guard0p
	.comm	guard0,136,4
	.global	ryuCP8
	.global	ryuCP7
	.global	ryuCP6
	.global	ryuCP5
	.global	ryuCP4
	.global	ryuCP3
	.global	ryuCP2
	.global	ryuCP1
	.comm	ryuCoord8,8,4
	.comm	ryuCoord7,8,4
	.comm	ryuCoord6,8,4
	.comm	ryuCoord5,8,4
	.comm	ryuCoord4,8,4
	.comm	ryuCoord3,8,4
	.comm	ryuCoord2,8,4
	.comm	ryuCoord1,8,4
	.comm	ryuCoords,32,4
	.global	ryup
	.comm	ryu,100,4
	.comm	oldButtons,4,4
	.comm	buttons,4,4
	.comm	masterVoff,4,4
	.comm	masterHoff,4,4
	.comm	bg0hOff,4,4
	.comm	bg2vOff,4,4
	.comm	bg2hOff,4,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	ryup, %object
	.size	ryup, 4
ryup:
	.word	ryu
	.type	ryuCP1, %object
	.size	ryuCP1, 4
ryuCP1:
	.word	ryuCoord1
	.type	ryuCP2, %object
	.size	ryuCP2, 4
ryuCP2:
	.word	ryuCoord2
	.type	ryuCP3, %object
	.size	ryuCP3, 4
ryuCP3:
	.word	ryuCoord3
	.type	ryuCP4, %object
	.size	ryuCP4, 4
ryuCP4:
	.word	ryuCoord4
	.type	ryuCP5, %object
	.size	ryuCP5, 4
ryuCP5:
	.word	ryuCoord5
	.type	ryuCP6, %object
	.size	ryuCP6, 4
ryuCP6:
	.word	ryuCoord6
	.type	ryuCP7, %object
	.size	ryuCP7, 4
ryuCP7:
	.word	ryuCoord7
	.type	ryuCP8, %object
	.size	ryuCP8, 4
ryuCP8:
	.word	ryuCoord8
	.type	guard0p, %object
	.size	guard0p, 4
guard0p:
	.word	guard0
	.type	guard1p, %object
	.size	guard1p, 4
guard1p:
	.word	guard1
	.type	guard2p, %object
	.size	guard2p, 4
guard2p:
	.word	guard2
	.type	guard3p, %object
	.size	guard3p, 4
guard3p:
	.word	guard3
	.type	guard4p, %object
	.size	guard4p, 4
guard4p:
	.word	guard4
	.type	guard5p, %object
	.size	guard5p, 4
guard5p:
	.word	guard5
	.type	spotLight0ptr, %object
	.size	spotLight0ptr, 4
spotLight0ptr:
	.word	spotLight0
	.type	spotLight1ptr, %object
	.size	spotLight1ptr, 4
spotLight1ptr:
	.word	spotLight1
	.type	spotLight2ptr, %object
	.size	spotLight2ptr, 4
spotLight2ptr:
	.word	spotLight2
	.type	spotLight3ptr, %object
	.size	spotLight3ptr, 4
spotLight3ptr:
	.word	spotLight3
	.type	spotLight4ptr, %object
	.size	spotLight4ptr, 4
spotLight4ptr:
	.word	spotLight4
	.type	spotLight5ptr, %object
	.size	spotLight5ptr, 4
spotLight5ptr:
	.word	spotLight5
	.type	spotLight6ptr, %object
	.size	spotLight6ptr, 4
spotLight6ptr:
	.word	spotLight6
	.type	spotLight7ptr, %object
	.size	spotLight7ptr, 4
spotLight7ptr:
	.word	spotLight7
	.type	spotLight8ptr, %object
	.size	spotLight8ptr, 4
spotLight8ptr:
	.word	spotLight8
	.type	spotLight9ptr, %object
	.size	spotLight9ptr, 4
spotLight9ptr:
	.word	spotLight9
	.type	spotLight10ptr, %object
	.size	spotLight10ptr, 4
spotLight10ptr:
	.word	spotLight10
	.type	pauseSignptr, %object
	.size	pauseSignptr, 4
pauseSignptr:
	.word	pauseSign
	.type	fbp0, %object
	.size	fbp0, 4
fbp0:
	.word	fireball0
	.type	fbp1, %object
	.size	fbp1, 4
fbp1:
	.word	fireball1
	.type	shadowOAMptr, %object
	.size	shadowOAMptr, 4
shadowOAMptr:
	.word	shadowOAM
	.type	stealthDuration, %object
	.size	stealthDuration, 4
stealthDuration:
	.word	500
	.type	stealthRecovered, %object
	.size	stealthRecovered, 4
stealthRecovered:
	.word	1
	.type	coolDown, %object
	.size	coolDown, 4
coolDown:
	.word	1000
	.bss
	.align	2
	.set	.LANCHOR1,. + 0
	.type	cheatON, %object
	.size	cheatON, 4
cheatON:
	.space	4
	.type	flashLight, %object
	.size	flashLight, 4
flashLight:
	.space	4
	.type	whiteCount, %object
	.size	whiteCount, 4
whiteCount:
	.space	4
	.type	modoruCount, %object
	.size	modoruCount, 4
modoruCount:
	.space	4
	.type	ryuMoveCounter, %object
	.size	ryuMoveCounter, 4
ryuMoveCounter:
	.space	4
	.type	blackCount, %object
	.size	blackCount, 4
blackCount:
	.space	4
	.type	grandChamp, %object
	.size	grandChamp, 4
grandChamp:
	.space	4
	.type	stealthFade, %object
	.size	stealthFade, 4
stealthFade:
	.space	4
	.type	reverseFade, %object
	.size	reverseFade, 4
reverseFade:
	.space	4
	.type	hidden, %object
	.size	hidden, 4
hidden:
	.space	4
	.type	blend, %object
	.size	blend, 4
blend:
	.space	4
	.type	aPress, %object
	.size	aPress, 4
aPress:
	.space	4
	.type	bPress, %object
	.size	bPress, 4
bPress:
	.space	4
	.type	rPress, %object
	.size	rPress, 4
rPress:
	.space	4
	.type	walkCounter, %object
	.size	walkCounter, 4
walkCounter:
	.space	4
	.type	rageCounter, %object
	.size	rageCounter, 4
rageCounter:
	.space	4
	.type	scanCounter, %object
	.size	scanCounter, 4
scanCounter:
	.space	4
	.type	deathCounter, %object
	.size	deathCounter, 4
deathCounter:
	.space	4
	.ident	"GCC: (devkitARM release 42) 4.8.2"
