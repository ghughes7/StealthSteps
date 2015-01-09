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
	.file	"main.c"
	.text
	.align	2
	.global	initGame
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r2, .L2
	ldr	lr, .L2+4
	ldr	r6, .L2+8
	mov	r3, #67108864
	mov	ip, #1296
	mov	r4, #0
	ldr	r0, .L2+12
	ldr	r1, .L2+16
	mov	r5, #5376
	strh	r6, [r3, #8]	@ movhi
	strh	ip, [r3, #80]	@ movhi
	strh	lr, [r3, #12]	@ movhi
	strh	r5, [r3]	@ movhi
	strh	r4, [r3, #16]	@ movhi
	strh	r2, [r3, #82]	@ movhi
	strh	r4, [r3, #24]	@ movhi
	ldr	r2, .L2+20
	ldr	r5, .L2+24
	str	r4, [r0]
	str	r4, [r1]
	mov	lr, pc
	bx	r2
	mov	r1, r4
	ldr	r0, .L2+28
	mov	r2, #1824
	mov	lr, pc
	bx	r5
	ldr	r0, .L2+32
	mov	r1, #2
	ldr	r2, .L2+36
	mov	lr, pc
	bx	r5
	ldr	r4, .L2+40
	ldr	r0, .L2+44
	mov	r1, #28
	mov	r2, #1
	mov	lr, pc
	bx	r4
	ldr	r0, .L2+48
	mov	r1, #24
	mov	r2, #1
	mov	lr, pc
	bx	r4
	ldr	r4, .L2+52
	mov	r0, #3
	ldr	r1, .L2+56
	ldr	r2, .L2+60
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r2, .L2+64
	mov	r0, #3
	ldr	r1, .L2+68
	mov	r3, #16384
	mov	lr, pc
	bx	r4
	ldr	r3, .L2+72
	mov	lr, pc
	bx	r3
	ldr	r3, .L2+76
	mov	lr, pc
	bx	r3
	ldr	r3, .L2+80
	mov	r2, #2
	str	r2, [r3]
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L3:
	.align	2
.L2:
	.word	2827
	.word	22539
	.word	23553
	.word	masterHoff
	.word	sbbX
	.word	loadBG
	.word	loadBGTiles
	.word	bg0_grassTiles
	.word	bg1_edoTownTiles
	.word	15136
	.word	loadMapData
	.word	bg0_grassMap
	.word	bg1_edoTownMap
	.word	DMANow
	.word	spritersSheetPal
	.word	83886592
	.word	101122048
	.word	spritersSheetTiles
	.word	hideSprites
	.word	initializeSprites
	.word	.LANCHOR0
	.size	initGame, .-initGame
	.align	2
	.global	splash
	.type	splash, %function
splash:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	mov	r1, #7936
	mov	r4, #67108864
	mov	r3, #0
	mov	r2, #512
	strh	r1, [r4, #10]	@ movhi
	strh	r2, [r4]	@ movhi
	strh	r3, [r4, #16]	@ movhi
	strh	r3, [r4, #80]	@ movhi
	strh	r3, [r4, #82]	@ movhi
	strh	r3, [r4, #24]	@ movhi
	ldr	r3, .L16
	mov	lr, pc
	bx	r3
	ldr	r0, .L16+4
	ldr	r3, .L16+8
	mov	lr, pc
	bx	r3
	ldr	r5, .L16+12
	mov	r0, #3
	ldr	r1, .L16+16
	mov	r2, #100663296
	ldr	r3, .L16+20
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r1, .L16+24
	ldr	r2, .L16+28
	mov	lr, pc
	bx	r5
	ldr	r0, .L16+32
	ldr	r1, .L16+36
	ldr	r5, .L16+40
	ldr	r2, .L16+44
	mov	lr, pc
	bx	r5
	ldr	r1, .L16+48
	mov	ip, r4
	ldr	r3, [r1]
	ldr	r0, .L16+52
	b	.L5
.L6:
	tst	r3, #4
	beq	.L7
	tst	r2, #4
	beq	.L15
.L7:
	mov	r3, r2
.L5:
	str	r3, [r0]
	ldr	r2, [ip, #304]
	tst	r3, #8
	str	r2, [r1]
	beq	.L6
	tst	r2, #8
	bne	.L6
	ldr	r3, .L16+56
	mov	lr, pc
	bx	r3
	ldr	r3, .L16+60
	ldr	r0, .L16+64
	ldr	r1, .L16+68
	ldr	r2, .L16+44
	mov	lr, pc
	bx	r3
	ldr	r0, .L16+72
	ldr	r1, .L16+76
	ldr	r2, .L16+80
	mov	lr, pc
	bx	r5
	ldmfd	sp!, {r3, r4, r5, lr}
	b	initGame
.L15:
	ldr	r3, .L16+84
	mov	lr, pc
	bx	r3
	bl	instruction
	ldmfd	sp!, {r3, r4, r5, lr}
	bx	lr
.L17:
	.align	2
.L16:
	.word	hideSprites
	.word	splashPal
	.word	loadPalette
	.word	DMANow
	.word	splashTiles
	.word	6800
	.word	splashMap
	.word	100726784
	.word	introMusic
	.word	169328
	.word	playSoundA
	.word	11025
	.word	buttons
	.word	oldButtons
	.word	stopSound
	.word	playSoundB
	.word	gongSFX
	.word	32901
	.word	mainMusic
	.word	338688
	.word	22050
	.word	muteSound
	.size	splash, .-splash
	.align	2
	.global	instruction
	.type	instruction, %function
instruction:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r2, #0
	mov	r4, #67108864
	mov	r3, #7936
	mov	r6, #1024
	strh	r3, [r4, #12]	@ movhi
	strh	r2, [r4, #80]	@ movhi
	strh	r2, [r4, #16]	@ movhi
	strh	r2, [r4, #82]	@ movhi
	strh	r2, [r4, #24]	@ movhi
	ldr	r0, .L29
	ldr	r3, .L29+4
	strh	r6, [r4]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r5, .L29+8
	mov	r0, #3
	ldr	r1, .L29+12
	mov	r2, #100663296
	mov	r3, #3424
	mov	lr, pc
	bx	r5
	mov	r0, #3
	ldr	r1, .L29+16
	ldr	r2, .L29+20
	mov	r3, r6
	mov	lr, pc
	bx	r5
	ldr	r1, .L29+24
	mov	ip, r4
	ldr	r2, [r1]
	ldr	r0, .L29+28
	b	.L19
.L20:
	tst	r2, #8
	beq	.L21
	tst	r3, #8
	beq	.L28
.L21:
	mov	r2, r3
.L19:
	str	r2, [r0]
	ldr	r3, [ip, #304]
	tst	r2, #4
	str	r3, [r1]
	beq	.L20
	ands	r4, r3, #4
	bne	.L20
	ldr	r3, .L29+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L29+36
	str	r4, [r3]
	ldmfd	sp!, {r4, r5, r6, lr}
	b	splash
.L28:
	ldr	r3, .L29+32
	mov	lr, pc
	bx	r3
	ldr	r2, .L29+40
	ldr	r3, .L29+44
	ldr	r0, .L29+48
	ldr	r1, .L29+52
	mov	lr, pc
	bx	r3
	ldr	r3, .L29+36
	mov	r2, #2
	ldmfd	sp!, {r4, r5, r6, lr}
	str	r2, [r3]
	b	initGame
.L30:
	.align	2
.L29:
	.word	instructionScreenPal
	.word	loadPalette
	.word	DMANow
	.word	instructionScreenTiles
	.word	instructionScreenMap
	.word	100726784
	.word	buttons
	.word	oldButtons
	.word	unMuteSound
	.word	.LANCHOR0
	.word	22050
	.word	playSoundA
	.word	mainMusic
	.word	338688
	.size	instruction, .-instruction
	.align	2
	.global	game
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	fp, .L38
	ldr	r5, .L38+4
	ldr	r10, .L38+8
	ldr	r9, .L38+12
	ldr	r8, .L38+16
	ldr	r7, .L38+20
	ldr	r6, .L38+24
	mov	r4, #67108864
	b	.L33
.L32:
	mov	lr, pc
	bx	r10
	mov	lr, pc
	bx	r9
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	r7
	mov	lr, pc
	bx	r6
.L33:
	ldr	r3, [fp]
	str	r3, [r5]
	ldr	r2, [r4, #304]
	tst	r3, #8
	str	r2, [fp]
	beq	.L32
	tst	r2, #8
	bne	.L32
	ldr	r3, .L38+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L38+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L38+36
	mov	r2, #3
	str	r2, [r3]
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L39:
	.align	2
.L38:
	.word	buttons
	.word	oldButtons
	.word	updatePlayer
	.word	updateEnemies
	.word	updateScreenObjs
	.word	updateBG
	.word	updateOAM
	.word	muteSound
	.word	drawPause
	.word	.LANCHOR0
	.size	game, .-game
	.align	2
	.global	pause
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L53
	stmfd	sp!, {r3, lr}
	ldr	ip, .L53+4
	ldr	r3, [r1]
	mov	r0, #67108864
	b	.L41
.L42:
	tst	r3, #4
	beq	.L44
	tst	r2, #4
	beq	.L52
.L44:
	mov	r3, r2
.L41:
	str	r3, [ip]
	ldr	r2, [r0, #304]
	tst	r3, #8
	str	r2, [r1]
	beq	.L42
	tst	r2, #8
	bne	.L42
	ldr	r3, .L53+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L53+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L53+16
	mov	r2, #2
	str	r2, [r3]
	ldmfd	sp!, {r3, lr}
	bx	lr
.L52:
	ldr	r3, .L53+8
	mov	lr, pc
	bx	r3
	ldmfd	sp!, {r3, lr}
	b	splash
.L54:
	.align	2
.L53:
	.word	buttons
	.word	oldButtons
	.word	unMuteSound
	.word	erasePause
	.word	.LANCHOR0
	.size	pause, .-pause
	.align	2
	.global	win
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r2, #0
	mov	r4, #67108864
	mov	r3, #7936
	mov	r6, #1024
	strh	r3, [r4, #12]	@ movhi
	strh	r2, [r4, #80]	@ movhi
	strh	r2, [r4, #16]	@ movhi
	strh	r2, [r4, #82]	@ movhi
	strh	r2, [r4, #24]	@ movhi
	ldr	r3, .L61
	strh	r6, [r4]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L61+4
	mov	lr, pc
	bx	r3
	ldr	r0, .L61+8
	ldr	r3, .L61+12
	mov	lr, pc
	bx	r3
	ldr	r5, .L61+16
	mov	r0, #3
	ldr	r1, .L61+20
	mov	r2, #100663296
	mov	r3, #2528
	mov	lr, pc
	bx	r5
	mov	r0, #3
	ldr	r1, .L61+24
	ldr	r2, .L61+28
	mov	r3, r6
	mov	lr, pc
	bx	r5
	ldr	r1, .L61+32
	mov	ip, r4
	ldr	r2, [r1]
	ldr	r0, .L61+36
	b	.L56
.L57:
	mov	r2, r3
.L56:
	str	r2, [r0]
	ldr	r3, [ip, #304]
	tst	r2, #8
	str	r3, [r1]
	beq	.L57
	tst	r3, #8
	bne	.L57
	ldmfd	sp!, {r4, r5, r6, lr}
	b	splash
.L62:
	.align	2
.L61:
	.word	hideSprites
	.word	updateBG
	.word	winScreenPal
	.word	loadPalette
	.word	DMANow
	.word	winScreenTiles
	.word	winScreenMap
	.word	100726784
	.word	buttons
	.word	oldButtons
	.size	win, .-win
	.align	2
	.global	lose
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r2, #0
	mov	r4, #67108864
	mov	r3, #7936
	mov	r6, #1024
	strh	r3, [r4, #12]	@ movhi
	strh	r2, [r4, #80]	@ movhi
	strh	r2, [r4, #16]	@ movhi
	strh	r2, [r4, #82]	@ movhi
	strh	r2, [r4, #24]	@ movhi
	ldr	r3, .L69
	strh	r6, [r4]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r0, .L69+4
	ldr	r3, .L69+8
	mov	lr, pc
	bx	r3
	ldr	r5, .L69+12
	mov	r0, #3
	ldr	r1, .L69+16
	mov	r2, #100663296
	mov	r3, #1312
	mov	lr, pc
	bx	r5
	mov	r0, #3
	ldr	r1, .L69+20
	ldr	r2, .L69+24
	mov	r3, r6
	mov	lr, pc
	bx	r5
	ldr	r1, .L69+28
	mov	ip, r4
	ldr	r2, [r1]
	ldr	r0, .L69+32
	b	.L64
.L65:
	mov	r2, r3
.L64:
	str	r2, [r0]
	ldr	r3, [ip, #304]
	tst	r2, #8
	str	r3, [r1]
	beq	.L65
	tst	r3, #8
	bne	.L65
	ldmfd	sp!, {r4, r5, r6, lr}
	b	splash
.L70:
	.align	2
.L69:
	.word	hideSprites
	.word	loseScreenPal
	.word	loadPalette
	.word	DMANow
	.word	loseScreenTiles
	.word	loseScreenMap
	.word	100726784
	.word	buttons
	.word	oldButtons
	.size	lose, .-lose
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, .L81
	mov	lr, pc
	bx	r3
	ldr	r3, .L81+4
	mov	lr, pc
	bx	r3
	ldr	r9, .L81+8
	ldr	r4, .L81+12
	ldr	r8, .L81+16
	ldr	fp, .L81+20
	ldr	r10, .L81+24
	ldr	r6, .L81+28
	ldr	r5, .L81+32
	mov	r7, #67108864
.L80:
	ldr	r3, [r4]
	str	r3, [r9]
	ldr	r3, [r8]
	ldr	r2, [r7, #304]
	str	r2, [r4]
	cmp	r3, #5
	ldrls	pc, [pc, r3, asl #2]
	b	.L72
.L74:
	.word	.L73
	.word	.L75
	.word	.L76
	.word	.L77
	.word	.L78
	.word	.L79
.L79:
	ldr	r3, .L81+36
	mov	lr, pc
	bx	r3
.L72:
	mov	lr, pc
	bx	r6
	mov	lr, pc
	bx	r5
	b	.L80
.L78:
	ldr	r3, .L81+40
	mov	lr, pc
	bx	r3
	b	.L72
.L77:
	ldr	r3, .L81+44
	mov	lr, pc
	bx	r3
	b	.L72
.L76:
	ldr	r3, .L81+48
	mov	lr, pc
	bx	r3
	b	.L72
.L73:
	mov	lr, pc
	bx	fp
	b	.L72
.L75:
	mov	lr, pc
	bx	r10
	b	.L72
.L82:
	.align	2
.L81:
	.word	setUpInterrupts
	.word	setUpSounds
	.word	oldButtons
	.word	buttons
	.word	.LANCHOR0
	.word	splash
	.word	instruction
	.word	waitForVblank
	.word	flipPage
	.word	lose
	.word	win
	.word	pause
	.word	game
	.size	main, .-main
	.global	winner
	.comm	buffer,41,4
	.global	state
	.comm	masterVoff,4,4
	.comm	masterHoff,4,4
	.comm	bg0hOff,4,4
	.comm	bg2vOff,4,4
	.comm	bg2hOff,4,4
	.comm	oldButtons,4,4
	.comm	buttons,4,4
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	state, %object
	.size	state, 4
state:
	.space	4
	.type	winner, %object
	.size	winner, 4
winner:
	.space	4
	.ident	"GCC: (devkitARM release 42) 4.8.2"
