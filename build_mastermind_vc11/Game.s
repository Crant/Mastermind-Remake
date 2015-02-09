	.arch armv6
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 2
	.file	"Game.cpp"
	.section	.text._ZN4GameD2Ev,"ax",%progbits
	.align	2
	.global	_ZN4GameD2Ev
	.hidden	_ZN4GameD2Ev
	.type	_ZN4GameD2Ev, %function
_ZN4GameD2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L47
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r5, r0
	ldr	r0, [r0, #152]
.LPIC0:
	add	r3, pc, r3
	add	r3, r3, #8
	cmp	r0, #0
	str	r3, [r5]
	beq	.L2
	ldr	r4, [r0, #-4]
	add	r4, r0, r4, asl #2
	cmp	r0, r4
	beq	.L3
	sub	r4, r4, #4
.L4:
	mov	r0, r4
	bl	_ZN5ImageD1Ev(PLT)
	ldr	r0, [r5, #152]
	cmp	r0, r4
	sub	r4, r4, #4
	bne	.L4
.L3:
	sub	r0, r0, #8
	bl	_ZdaPv(PLT)
.L2:
	ldr	r0, [r5, #160]
	cmp	r0, #0
	beq	.L6
	mov	r6, #0
.L11:
	ldr	r3, [r0, r6]
	cmp	r3, #0
	beq	.L7
	ldr	r4, [r3, #-4]
	add	r4, r3, r4, asl #2
	cmp	r3, r4
	beq	.L8
	sub	r4, r4, #4
.L9:
	mov	r0, r4
	bl	_ZN5ImageD1Ev(PLT)
	ldr	r3, [r5, #160]
	ldr	r3, [r3, r6]
	cmp	r3, r4
	sub	r4, r4, #4
	bne	.L9
.L8:
	sub	r0, r3, #8
	bl	_ZdaPv(PLT)
	ldr	r0, [r5, #160]
.L7:
	add	r6, r6, #4
	cmp	r6, #20
	bne	.L11
	cmp	r0, #0
	beq	.L6
	bl	_ZdaPv(PLT)
.L6:
	ldr	r0, [r5, #156]
	cmp	r0, #0
	beq	.L13
	ldr	r4, [r0, #-4]
	add	r4, r0, r4, asl #2
	cmp	r0, r4
	beq	.L14
	sub	r4, r4, #4
.L15:
	mov	r0, r4
	bl	_ZN5ImageD1Ev(PLT)
	ldr	r0, [r5, #156]
	cmp	r0, r4
	sub	r4, r4, #4
	bne	.L15
.L14:
	sub	r0, r0, #8
	bl	_ZdaPv(PLT)
.L13:
	ldr	r4, [r5, #168]
	cmp	r4, #0
	beq	.L16
	mov	r0, r4
	bl	_ZN5ImageD1Ev(PLT)
	mov	r0, r4
	bl	_ZdlPv(PLT)
.L16:
	ldr	r0, [r5, #164]
	cmp	r0, #0
	beq	.L18
	mov	r6, #0
.L23:
	ldr	r3, [r0, r6]
	cmp	r3, #0
	beq	.L19
	ldr	r4, [r3, #-4]
	add	r4, r3, r4, asl #2
	cmp	r3, r4
	beq	.L20
	sub	r4, r4, #4
.L21:
	mov	r0, r4
	bl	_ZN5ImageD1Ev(PLT)
	ldr	r3, [r5, #164]
	ldr	r3, [r3, r6]
	cmp	r3, r4
	sub	r4, r4, #4
	bne	.L21
.L20:
	sub	r0, r3, #8
	bl	_ZdaPv(PLT)
	ldr	r0, [r5, #164]
.L19:
	add	r6, r6, #4
	cmp	r6, #20
	bne	.L23
	cmp	r0, #0
	beq	.L18
	bl	_ZdaPv(PLT)
.L18:
	mov	r0, r5
	bl	_ZN5SceneD2Ev(PLT)
	mov	r0, r5
	ldmfd	sp!, {r4, r5, r6, pc}
.L48:
	.align	2
.L47:
	.word	.LANCHOR0-(.LPIC0+8)
	.size	_ZN4GameD2Ev, .-_ZN4GameD2Ev
	.global	_ZN4GameD1Ev
	.hidden	_ZN4GameD1Ev
	.set	_ZN4GameD1Ev,_ZN4GameD2Ev
	.section	.text._ZN4GameD0Ev,"ax",%progbits
	.align	2
	.global	_ZN4GameD0Ev
	.hidden	_ZN4GameD0Ev
	.type	_ZN4GameD0Ev, %function
_ZN4GameD0Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	bl	_ZN4GameD1Ev(PLT)
	mov	r0, r4
	bl	_ZdlPv(PLT)
	mov	r0, r4
	ldmfd	sp!, {r4, pc}
	.size	_ZN4GameD0Ev, .-_ZN4GameD0Ev
	.section	.text._ZN4GameC2Ev,"ax",%progbits
	.align	2
	.global	_ZN4GameC2Ev
	.hidden	_ZN4GameC2Ev
	.type	_ZN4GameC2Ev, %function
_ZN4GameC2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	bl	_ZN5SceneC2Ev(PLT)
	ldr	r3, .L51
	mov	r0, #0
.LPIC1:
	add	r3, pc, r3
	add	r3, r3, #8
	str	r3, [r4]
	bl	time(PLT)
	bl	srand(PLT)
	mov	r3, #0
	mov	r2, #10
	str	r2, [r4, #172]
	str	r3, [r4, #164]
	str	r3, [r4, #160]
	str	r3, [r4, #152]
	str	r3, [r4, #168]
	str	r3, [r4, #156]
	str	r3, [r4, #148]
	str	r3, [r4, #144]
	str	r3, [r4, #176]
	strb	r3, [r4, #196]
	strb	r3, [r4, #197]
	strb	r3, [r4, #200]
	strb	r3, [r4, #199]
	strb	r3, [r4, #198]
	mov	r0, r4
	ldmfd	sp!, {r4, pc}
.L52:
	.align	2
.L51:
	.word	.LANCHOR0-(.LPIC1+8)
	.size	_ZN4GameC2Ev, .-_ZN4GameC2Ev
	.global	_ZN4GameC1Ev
	.hidden	_ZN4GameC1Ev
	.set	_ZN4GameC1Ev,_ZN4GameC2Ev
	.section	.text._ZN4Game17UpdateGameObjectsEff,"ax",%progbits
	.align	2
	.global	_ZN4Game17UpdateGameObjectsEff
	.hidden	_ZN4Game17UpdateGameObjectsEff
	.type	_ZN4Game17UpdateGameObjectsEff, %function
_ZN4Game17UpdateGameObjectsEff:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov	r5, r0
	ldrb	r3, [r0, #198]	@ zero_extendqisi2
	mov	r6, r1
	mov	r7, r2
	cmp	r3, #0
	beq	.L56
	mov	r4, #0
.L57:
	ldr	r3, [r5, #152]
	mov	r1, r6
	mov	r2, r7
	ldr	r3, [r3, r4]
	add	r4, r4, #4
	mov	r0, r3
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	blx	r3
	cmp	r4, #20
	bne	.L57
.L56:
	ldr	ip, [r5, #172]
	mov	r8, #0
.L55:
	cmp	ip, #0
	ble	.L61
	mov	r4, #0
.L62:
	ldr	r3, [r5, #160]
	mov	r1, r6
	mov	r2, r7
	ldr	r3, [r3, r8]
	ldr	r3, [r3, r4, asl #2]
	add	r4, r4, #1
	subs	r0, r3, #0
	beq	.L58
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	blx	r3
	ldr	ip, [r5, #172]
.L58:
	cmp	r4, ip
	blt	.L62
.L61:
	add	r8, r8, #4
	cmp	r8, #20
	bne	.L55
	mov	r4, #0
.L64:
	ldr	r3, [r5, #156]
	mov	r1, r6
	mov	r2, r7
	ldr	r3, [r3, r4]
	add	r4, r4, #4
	mov	r0, r3
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	blx	r3
	cmp	r4, #20
	bne	.L64
	ldr	r3, [r5, #176]
	ldr	r2, [r5, #172]
	cmp	r3, r2
	blt	.L86
	ldrb	r2, [r5, #199]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L70
.L71:
	mov	r8, #0
.L72:
	cmp	r3, #0
	ble	.L75
	mov	r4, #0
.L76:
	ldr	r3, [r5, #164]
	mov	r1, r6
	mov	r2, r7
	ldr	r3, [r3, r8]
	ldr	r3, [r3, r4, asl #2]
	add	r4, r4, #1
	mov	r0, r3
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	blx	r3
	ldr	r3, [r5, #176]
	cmp	r3, r4
	bgt	.L76
.L75:
	add	r8, r8, #4
	cmp	r8, #20
	bne	.L72
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
.L70:
	ldr	r0, [r5, #168]
	mov	r1, r6
	mov	r2, r7
	bl	_ZN5Image6UpdateEff(PLT)
	ldr	r3, [r5, #176]
	b	.L71
.L86:
	mov	r4, #0
	mov	r9, r4
	b	.L68
.L87:
	ldr	r3, [r5, #176]
.L68:
	ldr	r2, [r5, #160]
	ldr	r2, [r2, r4]
	add	r4, r4, #4
	ldr	r0, [r2, r3, asl #2]
	bl	_ZN14Iw2DSceneGraph7CSprite8GetImageEv(PLT)
	mov	r8, r0
	bl	_Z11GetResourcev(PLT)
	ldr	r3, [r0, #12]
	cmp	r8, r3
	addeq	r9, r9, #1
	cmp	r4, #20
	bne	.L87
	cmp	r9, #5
	moveq	r3, #1
	streqb	r3, [r5, #199]
	beq	.L70
	mov	r3, #0
	strb	r3, [r5, #199]
	ldr	r3, [r5, #176]
	b	.L71
	.size	_ZN4Game17UpdateGameObjectsEff, .-_ZN4Game17UpdateGameObjectsEff
	.section	.text._ZN4Game19CountChoosenMarblesEv,"ax",%progbits
	.align	2
	.global	_ZN4Game19CountChoosenMarblesEv
	.hidden	_ZN4Game19CountChoosenMarblesEv
	.type	_ZN4Game19CountChoosenMarblesEv, %function
_ZN4Game19CountChoosenMarblesEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}
	mov	r4, #0
	mov	r5, r0
	mov	r7, r4
.L91:
	ldr	r3, [r5, #160]
	ldr	r2, [r5, #176]
	ldr	r3, [r3, r4]
	add	r4, r4, #4
	ldr	r0, [r3, r2, asl #2]
	bl	_ZN14Iw2DSceneGraph7CSprite8GetImageEv(PLT)
	mov	r6, r0
	bl	_Z11GetResourcev(PLT)
	ldr	r3, [r0, #12]
	cmp	r6, r3
	addeq	r7, r7, #1
	cmp	r4, #20
	bne	.L91
	subs	r3, r7, #5
	rsbs	r7, r3, #0
	adcs	r7, r7, r3
	strb	r7, [r5, #199]
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}
	.size	_ZN4Game19CountChoosenMarblesEv, .-_ZN4Game19CountChoosenMarblesEv
	.global	__aeabi_f2d
	.section	.text._ZN4Game10MoveMarbleEv,"ax",%progbits
	.align	2
	.global	_ZN4Game10MoveMarbleEv
	.hidden	_ZN4Game10MoveMarbleEv
	.type	_ZN4Game10MoveMarbleEv, %function
_ZN4Game10MoveMarbleEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub	sp, sp, #40
	ldr	r3, [r0, #144]
	mov	r5, r0
	add	r9, r0, #128
	ldr	r6, [r3]
	bl	_Z11GetResourcev(PLT)
	ldr	r7, .L93
	ldr	r8, .L93+4
.LPIC2:
	add	r8, pc, r8
	ldr	r1, [r0, #12]
	mov	r0, r6
	bl	_ZN14Iw2DSceneGraph7CSprite8SetImageEP10CIw2DImage(PLT)
	mov	r0, #148
	bl	_Znwj(PLT)
	mov	r4, r0
	bl	_ZN14Iw2DSceneGraph7CSpriteC1Ev(PLT)
	ldr	r3, [r6, #4]	@ float
	add	r10, r4, #4
	str	r3, [r4, #4]	@ float
	ldr	r3, [r6, #8]	@ float
	str	r3, [r4, #8]	@ float
	bl	_Z11GetResourcev(PLT)
	ldr	r1, [r0, #12]
	mov	r0, r4
	bl	_ZN14Iw2DSceneGraph7CSprite8SetImageEP10CIw2DImage(PLT)
	ldr	r3, [r6, #12]	@ float
	str	r3, [r4, #12]	@ float
	ldr	r3, [r6, #16]	@ float
	str	r3, [r4, #16]	@ float
	ldr	r3, [r5, #188]	@ float
	str	r3, [r4, #28]	@ float
	ldr	r3, [r5, #188]	@ float
	str	r3, [r4, #32]	@ float
	ldr	r3, [r6, #116]
	str	r3, [r4, #116]
	ldr	r3, [r5, #148]
	ldr	r6, [r3]
	ldr	r0, [r6, #4]	@ float
	bl	__aeabi_f2d(PLT)
	add	r3, r4, #8
	str	r3, [sp, #12]
	str	r7, [sp, #8]
	strd	r0, [sp]
	ldr	r0, [r6, #8]	@ float
	bl	__aeabi_f2d(PLT)
	ldr	lr, .L93+8
	ldr	r3, .L93+12
	ldr	ip, .L93+16
	str	r3, [sp, #24]
	mov	r2, r7
	mov	r3, r10
	strd	r0, [sp, #16]
	ldr	r1, [r8, lr]
	mov	r0, r9
	str	r1, [sp, #28]
	str	ip, [sp, #32]
	mov	r1, #1065353216
	bl	_ZN7IwTween13CTweenManager5TweenEfz(PLT)
	ldr	r0, [r5, #148]
	mov	r1, r4
	add	sp, sp, #40
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	b	_ZN5Image8SetImageEPN14Iw2DSceneGraph7CSpriteE(PLT)
.L94:
	.align	2
.L93:
	.word	263
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC2+8)
	.word	_ZN7IwTween4Ease6sineInEff(GOT)
	.word	270
	.word	274
	.size	_ZN4Game10MoveMarbleEv, .-_ZN4Game10MoveMarbleEv
	.section	.text._ZN4Game13SwitchToSceneEPKc,"ax",%progbits
	.align	2
	.global	_ZN4Game13SwitchToSceneEPKc
	.hidden	_ZN4Game13SwitchToSceneEPKc
	.type	_ZN4Game13SwitchToSceneEPKc, %function
_ZN4Game13SwitchToSceneEPKc:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	_ZN4Game13SwitchToSceneEPKc, .-_ZN4Game13SwitchToSceneEPKc
	.section	.text._ZN4Game14GetRandomColorEv,"ax",%progbits
	.align	2
	.global	_ZN4Game14GetRandomColorEv
	.hidden	_ZN4Game14GetRandomColorEv
	.type	_ZN4Game14GetRandomColorEv, %function
_ZN4Game14GetRandomColorEv:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	sub	sp, sp, #16
	bl	rand(PLT)
	mov	r4, r0
	add	r0, sp, #8
	bl	_ZN14Iw2DSceneGraph6CColorC1Ev(PLT)
	ldr	r3, .L104
	mov	r2, r4, asr #31
	smull	r1, r3, r3, r4
	rsb	r3, r2, r3, asr #1
	add	r3, r3, r3, asl #2
	rsb	r4, r3, r4
	cmp	r4, #4
	addls	pc, pc, r4, asl #2
	b	.L97
.L99:
	b	.L98
	b	.L100
	b	.L101
	b	.L102
	b	.L103
.L98:
	mov	r3, #255
	mov	r1, r3
	str	r3, [sp]
	mov	r2, r3
	add	r0, sp, #12
	mov	r3, #0
	bl	_ZN14Iw2DSceneGraph6CColorC1Ehhhh(PLT)
	ldr	r3, [sp, #12]
	str	r3, [sp, #8]
.L97:
	ldr	r0, [sp, #8]
	add	sp, sp, #16
	@ sp needed
	ldmfd	sp!, {r4, pc}
.L103:
	mov	r3, #255
	str	r3, [sp]
	add	r0, sp, #12
	mov	r1, #0
	mov	r2, #100
	bl	_ZN14Iw2DSceneGraph6CColorC1Ehhhh(PLT)
	ldr	r3, [sp, #12]
	str	r3, [sp, #8]
	ldr	r0, [sp, #8]
	add	sp, sp, #16
	@ sp needed
	ldmfd	sp!, {r4, pc}
.L100:
	mov	r3, #255
	mov	r1, r3
	str	r3, [sp]
	add	r0, sp, #12
	mov	r2, #0
	bl	_ZN14Iw2DSceneGraph6CColorC1Ehhhh(PLT)
	ldr	r3, [sp, #12]
	str	r3, [sp, #8]
	ldr	r0, [sp, #8]
	add	sp, sp, #16
	@ sp needed
	ldmfd	sp!, {r4, pc}
.L101:
	mov	r1, #255
	mov	r2, #0
	mov	r3, r2
	str	r1, [sp]
	add	r0, sp, #12
	bl	_ZN14Iw2DSceneGraph6CColorC1Ehhhh(PLT)
	ldr	r3, [sp, #12]
	str	r3, [sp, #8]
	ldr	r0, [sp, #8]
	add	sp, sp, #16
	@ sp needed
	ldmfd	sp!, {r4, pc}
.L102:
	mov	r2, #255
	mov	r1, #0
	mov	r3, r1
	str	r2, [sp]
	add	r0, sp, #12
	bl	_ZN14Iw2DSceneGraph6CColorC1Ehhhh(PLT)
	ldr	r3, [sp, #12]
	str	r3, [sp, #8]
	ldr	r0, [sp, #8]
	add	sp, sp, #16
	@ sp needed
	ldmfd	sp!, {r4, pc}
.L105:
	.align	2
.L104:
	.word	1717986919
	.size	_ZN4Game14GetRandomColorEv, .-_ZN4Game14GetRandomColorEv
	.global	__aeabi_i2f
	.global	__aeabi_fmul
	.global	__aeabi_ui2f
	.global	__aeabi_fsub
	.global	__aeabi_fadd
	.section	.text._ZN4Game8New_GameEv,"ax",%progbits
	.align	2
	.global	_ZN4Game8New_GameEv
	.hidden	_ZN4Game8New_GameEv
	.type	_ZN4Game8New_GameEv, %function
_ZN4Game8New_GameEv:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r0
	ldr	r0, [r0, #160]
	mov	r7, #0
	ldr	r6, .L186
	mov	r3, #1
	cmp	r0, r7
	sub	sp, sp, #52
	strb	r3, [r4, #199]
	str	r7, [r4, #176]
	strb	r7, [r4, #196]
	strb	r7, [r4, #197]
	strb	r7, [r4, #200]
	strb	r7, [r4, #198]
.LPIC11:
	add	r6, pc, r6
	beq	.L108
.L113:
	ldr	r3, [r0, r7]
	cmp	r3, #0
	beq	.L109
	ldr	r5, [r3, #-4]
	add	r5, r3, r5, asl #2
	cmp	r3, r5
	beq	.L110
.L111:
	sub	r5, r5, #4
	mov	r0, r5
	bl	_ZN5ImageD1Ev(PLT)
	ldr	r3, [r4, #160]
	ldr	r3, [r3, r7]
	cmp	r3, r5
	bne	.L111
.L110:
	sub	r0, r3, #8
	bl	_ZdaPv(PLT)
	ldr	r0, [r4, #160]
.L109:
	add	r7, r7, #4
	cmp	r7, #20
	bne	.L113
	cmp	r0, #0
	beq	.L108
	bl	_ZdaPv(PLT)
.L108:
	mov	r0, #20
	bl	_Znaj(PLT)
	ldr	r3, .L186+4
	mov	r2, #0
	str	r2, [sp, #12]
	add	r2, sp, #28
	str	r2, [sp, #20]
	ldr	r5, [r4, #172]
	str	r0, [r4, #160]
	ldr	r9, [r6, r3]
.L123:
	cmp	r5, #532676608
	addls	r0, r5, #2
	mvnhi	r0, #0
	movls	r0, r0, asl #2
	bl	_Znaj(PLT)
	sub	r6, r5, #1
	mov	r3, #4
	cmn	r6, #1
	add	r7, r0, #8
	stmia	r0, {r3, r5}
	movne	r5, r7
	beq	.L119
.L120:
	mov	r0, r5
	sub	r6, r6, #1
	bl	_ZN5ImageC1Ev(PLT)
	cmn	r6, #1
	add	r5, r5, #4
	bne	.L120
.L119:
	ldr	r3, [r4, #160]
	ldr	r2, [sp, #12]
	ldr	r0, [sp, #12]
	str	r7, [r3, r2, asl #2]
	ldr	r5, [r4, #172]
	mov	r0, r0, asl #2
	cmp	r5, #0
	movgt	r7, #0
	str	r0, [sp, #16]
	movgt	r8, r7
	ble	.L118
.L121:
	mov	r0, #148
	bl	_Znwj(PLT)
	add	r6, r8, #1
	mov	r5, r0
	bl	_ZN14Iw2DSceneGraph7CSpriteC1Ev(PLT)
	bl	_Z11GetResourcev(PLT)
	ldr	r3, [r0, #12]
	mov	r0, r3
	ldr	r3, [r3]
	ldr	r3, [r3]
	blx	r3
	mov	r10, r0
	ldr	r0, [sp, #12]
	bl	__aeabi_i2f(PLT)
	mov	r1, r10
	bl	__aeabi_fmul(PLT)
	ldr	r1, [r4, #188]	@ float
	bl	__aeabi_fmul(PLT)
	ldr	r3, [r9]
	str	r0, [r5, #4]	@ float
	ldr	r0, [r3, #540]
	bl	__aeabi_ui2f(PLT)
	mov	fp, r0
	bl	_Z11GetResourcev(PLT)
	ldr	r3, [r0, #12]
	mov	r0, r3
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	blx	r3
	mov	r1, r0
	mov	r0, r6
	str	r1, [sp, #8]
	bl	__aeabi_i2f(PLT)
	ldr	r1, [sp, #8]
	mov	r10, r0
	mov	r0, r1
	ldr	r1, [r4, #188]	@ float
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, r10
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, fp
	bl	__aeabi_fsub(PLT)
	mov	fp, r0
	mov	r0, r8
	bl	__aeabi_i2f(PLT)
	ldr	r1, [r4, #192]	@ float
	bl	__aeabi_fmul(PLT)
	mov	r8, r6
	mov	r1, r0
	mov	r0, fp
	bl	__aeabi_fsub(PLT)
	str	r0, [r5, #8]	@ float
	bl	_Z11GetResourcev(PLT)
	ldr	r1, [r0, #20]
	mov	r0, r5
	bl	_ZN14Iw2DSceneGraph7CSprite8SetImageEP10CIw2DImage(PLT)
	ldr	r3, [r4, #188]	@ float
	mov	r1, #0
	str	r3, [r5, #28]	@ float
	ldr	r3, [r4, #188]	@ float
	mov	r0, #255
	str	r3, [r5, #32]	@ float
	mov	r2, r1
	mov	r3, r1
	str	r0, [sp]
	add	r0, sp, #28
	bl	_ZN14Iw2DSceneGraph6CColorC1Ehhhh(PLT)
	ldr	r3, [sp, #28]
	ldr	r2, [sp, #16]
	str	r3, [r5, #116]
	ldr	r3, [r4, #160]
	mov	r1, r5
	ldr	r0, [r3, r2]
	add	r0, r0, r7
	bl	_ZN5Image8SetImageEPN14Iw2DSceneGraph7CSpriteE(PLT)
	ldr	r5, [r4, #172]
	add	r7, r7, #4
	cmp	r5, r6
	bgt	.L121
.L118:
	ldr	r3, [sp, #12]
	add	r3, r3, #1
	cmp	r3, #5
	str	r3, [sp, #12]
	bne	.L123
	ldr	r0, [r4, #156]
	cmp	r0, #0
	beq	.L124
	ldr	r5, [r0, #-4]
	add	r5, r0, r5, asl #2
	cmp	r0, r5
	beq	.L125
.L126:
	sub	r5, r5, #4
	mov	r0, r5
	bl	_ZN5ImageD1Ev(PLT)
	ldr	r0, [r4, #156]
	cmp	r0, r5
	bne	.L126
.L125:
	sub	r0, r0, #8
	bl	_ZdaPv(PLT)
.L124:
	mov	r5, #255
	mov	r1, r5
	mov	r3, r5
	str	r5, [sp]
	mov	r2, #0
	add	r0, sp, #28
	bl	_ZN14Iw2DSceneGraph6CColorC1Ehhhh(PLT)
	mov	r1, r5
	mov	r2, r5
	str	r5, [sp]
	mov	r3, #0
	add	r0, sp, #32
	bl	_ZN14Iw2DSceneGraph6CColorC1Ehhhh(PLT)
	mov	r2, #0
	mov	r1, r5
	mov	r3, r2
	str	r5, [sp]
	add	r0, sp, #36
	bl	_ZN14Iw2DSceneGraph6CColorC1Ehhhh(PLT)
	mov	r1, #0
	mov	r2, r5
	mov	r3, r1
	str	r5, [sp]
	add	r0, sp, #40
	bl	_ZN14Iw2DSceneGraph6CColorC1Ehhhh(PLT)
	mov	r3, r5
	mov	r2, #100
	str	r5, [sp]
	mov	r1, #0
	add	r0, sp, #44
	bl	_ZN14Iw2DSceneGraph6CColorC1Ehhhh(PLT)
	mov	r0, #28
	bl	_Znaj(PLT)
	mov	r2, #4
	mov	r3, #5
	add	r8, r0, #8
	add	r6, r0, #28
	mov	r5, r8
	stmia	r0, {r2, r3}
.L128:
	mov	r0, r5
	add	r5, r5, #4
	bl	_ZN5ImageC1Ev(PLT)
	cmp	r5, r6
	bne	.L128
	mov	r6, #0
	str	r8, [r4, #156]
	mov	r7, r6
	add	r8, sp, #28
.L130:
	mov	r0, #148
	bl	_Znwj(PLT)
	add	r7, r7, #1
	mov	r5, r0
	bl	_ZN14Iw2DSceneGraph7CSpriteC1Ev(PLT)
	ldr	r3, [r9]
	ldr	r0, [r3, #536]
	bl	__aeabi_ui2f(PLT)
	mov	r10, r0
	bl	_Z11GetResourcev(PLT)
	ldr	r3, [r0, #12]
	mov	r0, r3
	ldr	r3, [r3]
	ldr	r3, [r3]
	blx	r3
	ldr	r1, [r4, #188]	@ float
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, r10
	bl	__aeabi_fsub(PLT)
	ldr	r3, [r9]
	str	r0, [r5, #4]	@ float
	ldr	r0, [r3, #540]
	bl	__aeabi_ui2f(PLT)
	mov	r10, r0
	bl	_Z11GetResourcev(PLT)
	ldr	r3, [r0, #12]
	mov	r0, r3
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	blx	r3
	mov	fp, r0
	mov	r0, r7
	bl	__aeabi_i2f(PLT)
	mov	r1, fp
	bl	__aeabi_fmul(PLT)
	ldr	r1, [r4, #188]	@ float
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, r10
	bl	__aeabi_fsub(PLT)
	str	r0, [r5, #8]	@ float
	bl	_Z11GetResourcev(PLT)
	ldr	r1, [r0, #12]
	mov	r0, r5
	bl	_ZN14Iw2DSceneGraph7CSprite8SetImageEP10CIw2DImage(PLT)
	ldr	r3, [r4, #188]	@ float
	mov	r1, r5
	str	r3, [r5, #28]	@ float
	ldr	r3, [r4, #188]	@ float
	str	r3, [r5, #32]	@ float
	ldr	r0, [r8, r6]	@ unaligned
	str	r0, [r5, #116]	@ unaligned
	ldr	r0, [r4, #156]
	add	r0, r0, r6
	bl	_ZN5Image8SetImageEPN14Iw2DSceneGraph7CSpriteE(PLT)
	cmp	r7, #5
	add	r6, r6, #4
	bne	.L130
	ldr	r0, [r4, #164]
	cmp	r0, #0
	beq	.L132
	mov	r6, #0
.L137:
	ldr	r3, [r0, r6]
	cmp	r3, #0
	beq	.L133
	ldr	r5, [r3, #-4]
	add	r5, r3, r5, asl #2
	cmp	r3, r5
	beq	.L134
.L135:
	sub	r5, r5, #4
	mov	r0, r5
	bl	_ZN5ImageD1Ev(PLT)
	ldr	r3, [r4, #164]
	ldr	r3, [r3, r6]
	cmp	r3, r5
	bne	.L135
.L134:
	sub	r0, r3, #8
	bl	_ZdaPv(PLT)
	ldr	r0, [r4, #164]
.L133:
	add	r6, r6, #4
	cmp	r6, #20
	bne	.L137
	cmp	r0, #0
	beq	.L132
	bl	_ZdaPv(PLT)
.L132:
	mov	r0, #20
	bl	_Znaj(PLT)
	ldr	fp, [r4, #172]
	mov	r2, #0
	str	r2, [sp, #12]
	str	r0, [r4, #164]
.L147:
	cmp	fp, #532676608
	addls	r0, fp, #2
	mvnhi	r0, #0
	movls	r0, r0, asl #2
	bl	_Znaj(PLT)
	sub	r6, fp, #1
	mov	r3, #4
	cmn	r6, #1
	add	r7, r0, #8
	stmia	r0, {r3, fp}
	movne	r5, r7
	beq	.L143
.L144:
	mov	r0, r5
	sub	r6, r6, #1
	bl	_ZN5ImageC1Ev(PLT)
	cmn	r6, #1
	add	r5, r5, #4
	bne	.L144
.L143:
	ldr	r2, [sp, #12]
	ldr	r3, [r4, #164]
	mov	r2, r2, asl #2
	str	r2, [sp, #16]
	ldr	r2, [sp, #12]
	str	r7, [r3, r2, asl #2]
	ldr	fp, [r4, #172]
	cmp	fp, #0
	movgt	r7, #0
	movgt	r6, r7
	ble	.L142
.L145:
	mov	r0, #148
	bl	_Znwj(PLT)
	add	r6, r6, #1
	mov	r5, r0
	bl	_ZN14Iw2DSceneGraph7CSpriteC1Ev(PLT)
	bl	_Z11GetResourcev(PLT)
	ldr	r3, [r0, #12]
	mov	r0, r3
	ldr	r3, [r3]
	ldr	r3, [r3]
	blx	r3
	ldr	r1, .L186+8
	bl	__aeabi_fmul(PLT)
	ldr	r1, [r4, #188]	@ float
	bl	__aeabi_fmul(PLT)
	mov	fp, r0
	bl	_Z11GetResourcev(PLT)
	ldr	r3, [r0, #8]
	mov	r0, r3
	ldr	r3, [r3]
	ldr	r3, [r3]
	blx	r3
	mov	r8, r0
	ldr	r0, [sp, #12]
	bl	__aeabi_i2f(PLT)
	mov	r1, #1056964608
	bl	__aeabi_fadd(PLT)
	mov	r1, r8
	bl	__aeabi_fmul(PLT)
	ldr	r1, [r4, #188]	@ float
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, fp
	bl	__aeabi_fadd(PLT)
	ldr	r3, [r9]
	str	r0, [r5, #4]	@ float
	ldr	r0, [r3, #540]
	bl	__aeabi_ui2f(PLT)
	mov	fp, r0
	bl	_Z11GetResourcev(PLT)
	ldr	r3, [r0, #12]
	mov	r0, r3
	ldr	r3, [r3]
	ldr	r3, [r3]
	blx	r3
	mov	r8, r0
	mov	r0, r6
	bl	__aeabi_i2f(PLT)
	ldr	r1, [r4, #188]	@ float
	mov	r10, r0
	mov	r0, r8
	bl	__aeabi_fmul(PLT)
	ldr	r1, [r4, #192]	@ float
	bl	__aeabi_fadd(PLT)
	mov	r1, r0
	mov	r0, r10
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, fp
	bl	__aeabi_fsub(PLT)
	str	r0, [r5, #8]	@ float
	bl	_Z11GetResourcev(PLT)
	ldr	r1, [r0, #8]
	mov	r0, r5
	bl	_ZN14Iw2DSceneGraph7CSprite8SetImageEP10CIw2DImage(PLT)
	ldr	r3, [r4, #188]	@ float
	mov	r0, #0
	str	r3, [r5, #28]	@ float
	ldr	r3, [r4, #188]	@ float
	ldr	r2, [sp, #16]
	str	r0, [r5, #40]	@ float
	str	r3, [r5, #32]	@ float
	ldr	r3, [r4, #164]
	mov	r1, r5
	ldr	r0, [r3, r2]
	add	r0, r0, r7
	bl	_ZN5Image8SetImageEPN14Iw2DSceneGraph7CSpriteE(PLT)
	ldr	fp, [r4, #172]
	add	r7, r7, #4
	cmp	fp, r6
	bgt	.L145
.L142:
	ldr	r3, [sp, #12]
	add	r3, r3, #1
	cmp	r3, #5
	str	r3, [sp, #12]
	bne	.L147
	ldr	r5, [r4, #168]
	cmp	r5, #0
	beq	.L148
	mov	r0, r5
	bl	_ZN5ImageD1Ev(PLT)
	mov	r0, r5
	bl	_ZdlPv(PLT)
.L148:
	mov	r0, #148
	bl	_Znwj(PLT)
	mov	r5, r0
	bl	_ZN14Iw2DSceneGraph7CSpriteC1Ev(PLT)
	bl	_Z11GetResourcev(PLT)
	ldr	r3, [r0, #12]
	mov	r0, r3
	ldr	r3, [r3]
	ldr	r3, [r3]
	blx	r3
	ldr	r1, [r4, #188]	@ float
	bl	__aeabi_fmul(PLT)
	ldr	r1, .L186+8
	bl	__aeabi_fmul(PLT)
	mov	r6, r0
	bl	_Z11GetResourcev(PLT)
	ldr	r3, [r0, #32]
	mov	r0, r3
	ldr	r3, [r3]
	ldr	r3, [r3]
	blx	r3
	ldr	r1, [r4, #188]	@ float
	bl	__aeabi_fmul(PLT)
	mov	r1, #1056964608
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, r6
	bl	__aeabi_fadd(PLT)
	ldr	r3, [r9]
	str	r0, [r5, #4]	@ float
	ldr	r0, [r3, #540]
	bl	__aeabi_ui2f(PLT)
	mov	r6, r0
	bl	_Z11GetResourcev(PLT)
	ldr	r3, [r0, #12]
	mov	r0, r3
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	blx	r3
	ldr	r1, [r4, #188]	@ float
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, r6
	bl	__aeabi_fsub(PLT)
	ldr	r1, [r4, #192]	@ float
	bl	__aeabi_fsub(PLT)
	str	r0, [r5, #8]	@ float
	bl	_Z11GetResourcev(PLT)
	ldr	r1, [r0, #32]
	mov	r0, r5
	bl	_ZN14Iw2DSceneGraph7CSprite8SetImageEP10CIw2DImage(PLT)
	ldr	r3, [r4, #188]	@ float
	mov	r0, #4
	str	r3, [r5, #28]	@ float
	ldr	r3, [r4, #188]	@ float
	str	r3, [r5, #32]	@ float
	bl	_Znwj(PLT)
	mov	r1, r5
	mov	r6, r0
	bl	_ZN5ImageC1EPN14Iw2DSceneGraph7CSpriteE(PLT)
	ldr	r0, [r4, #152]
	str	r6, [r4, #168]
	cmp	r0, #0
	beq	.L149
	ldr	r5, [r0, #-4]
	add	r5, r0, r5, asl #2
	cmp	r0, r5
	beq	.L150
	sub	r5, r5, #4
.L151:
	mov	r0, r5
	bl	_ZN5ImageD1Ev(PLT)
	ldr	r0, [r4, #152]
	cmp	r0, r5
	sub	r5, r5, #4
	bne	.L151
.L150:
	sub	r0, r0, #8
	bl	_ZdaPv(PLT)
.L149:
	mov	r0, #28
	bl	_Znaj(PLT)
	mov	r2, #4
	mov	r3, #5
	add	r7, r0, #8
	add	r6, r0, #28
	mov	r5, r7
	stmia	r0, {r2, r3}
.L153:
	mov	r0, r5
	add	r5, r5, #4
	bl	_ZN5ImageC1Ev(PLT)
	cmp	r5, r6
	bne	.L153
	mov	r8, #0
	mov	r6, #0
	str	r7, [r4, #152]
.L155:
	mov	r0, #148
	bl	_Znwj(PLT)
	mov	r5, r0
	bl	_ZN14Iw2DSceneGraph7CSpriteC1Ev(PLT)
	bl	_Z11GetResourcev(PLT)
	ldr	r3, [r0, #12]
	mov	r0, r3
	ldr	r3, [r3]
	ldr	r3, [r3]
	blx	r3
	mov	r7, r0
	mov	r0, r6
	bl	__aeabi_i2f(PLT)
	mov	r1, r7
	bl	__aeabi_fmul(PLT)
	ldr	r1, [r4, #188]	@ float
	bl	__aeabi_fmul(PLT)
	str	r8, [r5, #8]	@ float
	str	r0, [r5, #4]	@ float
	bl	_Z11GetResourcev(PLT)
	ldr	r1, [r0, #12]
	mov	r0, r5
	bl	_ZN14Iw2DSceneGraph7CSprite8SetImageEP10CIw2DImage(PLT)
	ldr	r3, [r4, #188]	@ float
	mov	r0, r4
	str	r3, [r5, #28]	@ float
	ldr	r3, [r4, #188]	@ float
	str	r3, [r5, #32]	@ float
	bl	_ZN4Game14GetRandomColorEv(PLT)
	mov	r1, r5
	str	r0, [r5, #116]
	ldr	r0, [r4, #152]
	add	r0, r0, r6, asl #2
	add	r6, r6, #1
	bl	_ZN5Image8SetImageEPN14Iw2DSceneGraph7CSpriteE(PLT)
	cmp	r6, #5
	bne	.L155
	add	sp, sp, #52
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L187:
	.align	2
.L186:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC11+8)
	.word	g_IwGxState(GOT)
	.word	1084227584
	.size	_ZN4Game8New_GameEv, .-_ZN4Game8New_GameEv
	.section	.text._ZN4Game18GetImageColorValueERK5Image,"ax",%progbits
	.align	2
	.global	_ZN4Game18GetImageColorValueERK5Image
	.hidden	_ZN4Game18GetImageColorValueERK5Image
	.type	_ZN4Game18GetImageColorValueERK5Image, %function
_ZN4Game18GetImageColorValueERK5Image:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	sub	sp, sp, #16
	mov	r4, #255
	add	r5, sp, #12
	mov	r2, r4
	mov	r6, r1
	mov	r3, #0
	mov	r1, r4
	mov	r0, r5
	str	r4, [sp]
	bl	_ZN14Iw2DSceneGraph6CColorC1Ehhhh(PLT)
	mov	r0, r6
	mov	r1, r5
	bl	_ZNK5Image12HasSameColorERKN14Iw2DSceneGraph6CColorE(PLT)
	subs	r2, r0, #0
	movne	r0, #0
	beq	.L196
.L189:
	add	sp, sp, #16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, pc}
.L196:
	mov	r1, r4
	mov	r3, r4
	str	r4, [sp]
	mov	r0, r5
	bl	_ZN14Iw2DSceneGraph6CColorC1Ehhhh(PLT)
	mov	r0, r6
	mov	r1, r5
	bl	_ZNK5Image12HasSameColorERKN14Iw2DSceneGraph6CColorE(PLT)
	subs	r2, r0, #0
	movne	r0, #1
	bne	.L189
	mov	r3, r2
	mov	r1, r4
	str	r4, [sp]
	mov	r0, r5
	bl	_ZN14Iw2DSceneGraph6CColorC1Ehhhh(PLT)
	mov	r1, r5
	mov	r0, r6
	bl	_ZNK5Image12HasSameColorERKN14Iw2DSceneGraph6CColorE(PLT)
	subs	r1, r0, #0
	movne	r0, #2
	bne	.L189
	mov	r3, r1
	mov	r2, r4
	str	r4, [sp]
	mov	r0, r5
	bl	_ZN14Iw2DSceneGraph6CColorC1Ehhhh(PLT)
	mov	r1, r5
	mov	r0, r6
	bl	_ZNK5Image12HasSameColorERKN14Iw2DSceneGraph6CColorE(PLT)
	subs	r1, r0, #0
	movne	r0, #3
	bne	.L189
	mov	r3, r4
	mov	r2, #100
	str	r4, [sp]
	mov	r0, r5
	bl	_ZN14Iw2DSceneGraph6CColorC1Ehhhh(PLT)
	mov	r0, r6
	mov	r1, r5
	bl	_ZNK5Image12HasSameColorERKN14Iw2DSceneGraph6CColorE(PLT)
	cmp	r0, #0
	mvneq	r0, #0
	movne	r0, #4
	b	.L189
	.size	_ZN4Game18GetImageColorValueERK5Image, .-_ZN4Game18GetImageColorValueERK5Image
	.section	.text._ZN4Game23CalculateCorrectMarblesEv,"ax",%progbits
	.align	2
	.global	_ZN4Game23CalculateCorrectMarblesEv
	.hidden	_ZN4Game23CalculateCorrectMarblesEv
	.type	_ZN4Game23CalculateCorrectMarblesEv, %function
_ZN4Game23CalculateCorrectMarblesEv:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r3, #0
	sub	sp, sp, #52
	mov	r5, r3
	mov	r4, r0
	mov	r6, r3
	add	r7, sp, #20
	str	r3, [sp, #28]
	str	r3, [sp, #32]
	str	r3, [sp, #36]
	str	r3, [sp, #40]
	str	r3, [sp, #44]
.L199:
	ldr	r1, [r4, #152]
	strb	r6, [r7, r5]
	add	r1, r1, r5, asl #2
	mov	r0, r4
	bl	_ZN4Game18GetImageColorValueERK5Image(PLT)
	add	r2, sp, #48
	add	r5, r5, #1
	cmp	r5, #5
	add	r0, r2, r0, asl #2
	ldr	r2, [r0, #-20]
	add	r2, r2, #1
	str	r2, [r0, #-20]
	bne	.L199
	add	r6, sp, #16
	mov	fp, #1
	mov	r8, #0
	str	r8, [sp, #12]
.L206:
	ldr	r3, [r4, #160]
	ldr	r9, [r4, #176]
	mov	r5, #0
	ldr	r3, [r3, r8, asl #2]
	add	r9, r3, r9, asl #2
.L204:
	ldr	r1, [r4, #152]
	mov	r0, r4
	add	r1, r1, r5, asl #2
	bl	_ZN4Game18GetImageColorValueERK5Image(PLT)
	ldr	r3, [r4, #152]
	mov	r1, r6
	ldr	r3, [r3, r5, asl #2]
	ldrb	lr, [r3, #117]	@ zero_extendqisi2
	ldrb	ip, [r3, #118]	@ zero_extendqisi2
	ldrb	r2, [r3, #119]	@ zero_extendqisi2
	ldrb	r3, [r3, #116]	@ zero_extendqisi2
	strb	lr, [sp, #17]
	strb	ip, [sp, #18]
	strb	r3, [sp, #16]
	strb	r2, [sp, #19]
	mov	r10, r0
	mov	r0, r9
	bl	_ZNK5Image12HasSameColorERKN14Iw2DSceneGraph6CColorE(PLT)
	cmp	r0, #0
	beq	.L202
	ldrb	r3, [r7, r8]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L202
	cmp	r8, r5
	beq	.L235
.L202:
	add	r5, r5, #1
	cmp	r5, #5
	bne	.L204
	add	r8, r8, #1
	cmp	r8, #5
	bne	.L206
	mov	fp, #0
	mov	r10, fp
.L213:
	ldr	r3, [r4, #160]
	ldr	r9, [r4, #176]
	mov	r5, #0
	ldr	r3, [r3, fp, asl #2]
	add	r9, r3, r9, asl #2
.L211:
	ldr	r1, [r4, #152]
	mov	r0, r4
	add	r1, r1, r5, asl #2
	bl	_ZN4Game18GetImageColorValueERK5Image(PLT)
	ldr	r3, [r4, #152]
	mov	r1, r6
	ldr	r3, [r3, r5, asl #2]
	ldrb	lr, [r3, #117]	@ zero_extendqisi2
	ldrb	ip, [r3, #118]	@ zero_extendqisi2
	ldrb	r2, [r3, #119]	@ zero_extendqisi2
	ldrb	r3, [r3, #116]	@ zero_extendqisi2
	strb	lr, [sp, #17]
	strb	ip, [sp, #18]
	strb	r3, [sp, #16]
	strb	r2, [sp, #19]
	mov	r8, r0
	mov	r0, r9
	bl	_ZNK5Image12HasSameColorERKN14Iw2DSceneGraph6CColorE(PLT)
	cmp	r0, #0
	beq	.L209
	ldrb	r3, [r7, fp]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L209
	add	r2, sp, #48
	add	r8, r2, r8, asl #2
	ldr	r3, [r8, #-20]
	cmp	r3, #0
	sub	r3, r3, #1
	ble	.L209
	cmp	fp, r5
	addne	r10, r10, #1
	movne	r2, #1
	strneb	r2, [r7, fp]
	strne	r3, [r8, #-20]
.L209:
	add	r5, r5, #1
	cmp	r5, #5
	bne	.L211
	add	fp, fp, #1
	cmp	fp, #5
	bne	.L213
	ldr	r3, [sp, #12]
	ldr	r9, [sp, #12]
	cmp	r3, #5
	mov	r5, #0
	mov	r8, #1065353216
	mov	r7, #255
	moveq	r3, #1
	streqb	r3, [r4, #196]
.L215:
	mov	r1, #0
	cmp	r10, r1
	cmple	r9, r1
	mov	r0, r6
	mov	r2, r1
	mov	r3, r1
	ble	.L197
	cmp	r9, #0
	beq	.L216
	ldr	ip, [r4, #164]
	ldr	lr, [r4, #176]
	sub	r9, r9, #1
.L234:
	ldr	ip, [ip, r5]
	ldr	ip, [ip, lr, asl #2]
	str	r8, [ip, #40]	@ float
	ldr	lr, [r4, #164]
	ldr	ip, [r4, #176]
	ldr	fp, [lr, r5]
	str	r7, [sp]
	str	ip, [sp, #8]
	bl	_ZN14Iw2DSceneGraph6CColorC1Ehhhh(PLT)
	ldr	ip, [sp, #8]
	ldrb	r0, [sp, #18]	@ zero_extendqisi2
	ldrb	r2, [sp, #19]	@ zero_extendqisi2
	ldr	r3, [fp, ip, asl #2]
	ldrb	r1, [sp, #16]	@ zero_extendqisi2
	ldrb	ip, [sp, #17]	@ zero_extendqisi2
	strb	r0, [r3, #118]
	strb	r1, [r3, #116]
	strb	ip, [r3, #117]
	strb	r2, [r3, #119]
.L217:
	add	r5, r5, #4
	cmp	r5, #20
	bne	.L215
.L197:
	add	sp, sp, #52
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L216:
	mov	r1, #255
	cmp	r10, #0
	mov	r0, r6
	mov	r2, r1
	mov	r3, r1
	beq	.L217
	ldr	ip, [r4, #164]
	ldr	lr, [r4, #176]
	sub	r10, r10, #1
	b	.L234
.L235:
	add	r3, sp, #48
	add	r10, r3, r10, asl #2
	ldr	r3, [r10, #-20]
	cmp	r3, #0
	ble	.L202
	ldr	r2, [sp, #12]
	sub	r3, r3, #1
	add	r2, r2, #1
	str	r2, [sp, #12]
	str	r3, [r10, #-20]
	strb	fp, [r7, r8]
	b	.L202
	.size	_ZN4Game23CalculateCorrectMarblesEv, .-_ZN4Game23CalculateCorrectMarblesEv
	.section	.text._ZN4Game13ShowEndScreenEPN7IwTween6CTweenE,"ax",%progbits
	.align	2
	.global	_ZN4Game13ShowEndScreenEPN7IwTween6CTweenE
	.hidden	_ZN4Game13ShowEndScreenEPN7IwTween6CTweenE
	.type	_ZN4Game13ShowEndScreenEPN7IwTween6CTweenE, %function
_ZN4Game13ShowEndScreenEPN7IwTween6CTweenE:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	bl	_Z15GetSceneManagerv(PLT)
	ldr	r1, .L237
.LPIC20:
	add	r1, pc, r1
	bl	_ZN12SceneManager4FindEPKc(PLT)
	mov	r4, r0
	bl	_Z15GetSceneManagerv(PLT)
	mov	r1, r4
	ldmfd	sp!, {r4, lr}
	b	_ZN12SceneManager8SwitchToEP5Scene(PLT)
.L238:
	.align	2
.L237:
	.word	.LC0-(.LPIC20+8)
	.size	_ZN4Game13ShowEndScreenEPN7IwTween6CTweenE, .-_ZN4Game13ShowEndScreenEPN7IwTween6CTweenE
	.section	.text._ZN4Game15ShowPauseScreenEv,"ax",%progbits
	.align	2
	.global	_ZN4Game15ShowPauseScreenEv
	.hidden	_ZN4Game15ShowPauseScreenEv
	.type	_ZN4Game15ShowPauseScreenEv, %function
_ZN4Game15ShowPauseScreenEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	bl	_Z8GetInputv(PLT)
	bl	_ZN5Input5ResetEv(PLT)
	bl	_Z15GetSceneManagerv(PLT)
	ldr	r1, .L240
.LPIC21:
	add	r1, pc, r1
	bl	_ZN12SceneManager4FindEPKc(PLT)
	mov	r4, r0
	bl	_Z15GetSceneManagerv(PLT)
	mov	r1, r4
	ldmfd	sp!, {r4, lr}
	b	_ZN12SceneManager8SwitchToEP5Scene(PLT)
.L241:
	.align	2
.L240:
	.word	.LC1-(.LPIC21+8)
	.size	_ZN4Game15ShowPauseScreenEv, .-_ZN4Game15ShowPauseScreenEv
	.global	__aeabi_fdiv
	.global	__aeabi_fcmple
	.section	.text._ZN4Game4InitEv,"ax",%progbits
	.align	2
	.global	_ZN4Game4InitEv
	.hidden	_ZN4Game4InitEv
	.type	_ZN4Game4InitEv, %function
_ZN4Game4InitEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}
	mov	r5, r0
	ldr	r4, .L248
	bl	_ZN5Scene4InitEv(PLT)
	ldr	r2, .L248+4
.LPIC22:
	add	r4, pc, r4
	mov	r3, r4
	ldr	r6, [r4, r2]
	ldr	r4, [r6]
	ldr	r0, [r4, #536]
	bl	__aeabi_ui2f(PLT)
	ldr	r1, .L248+8
	bl	__aeabi_fdiv(PLT)
	str	r0, [r5, #184]	@ float
	ldr	r0, [r4, #536]
	bl	__aeabi_ui2f(PLT)
	ldr	r1, .L248+12
	bl	__aeabi_fdiv(PLT)
	str	r0, [r5, #188]	@ float
	mov	r0, #148
	bl	_Znwj(PLT)
	mov	r4, r0
	bl	_ZN14Iw2DSceneGraph7CSpriteC1Ev(PLT)
	ldr	r7, [r6]
	ldr	r0, [r7, #536]
	bl	__aeabi_ui2f(PLT)
	mov	r1, #1056964608
	bl	__aeabi_fmul(PLT)
	str	r0, [r4, #4]	@ float
	ldr	r0, [r7, #540]
	bl	__aeabi_ui2f(PLT)
	mov	r1, #1056964608
	bl	__aeabi_fmul(PLT)
	str	r0, [r4, #8]	@ float
	bl	_Z11GetResourcev(PLT)
	ldr	r1, [r0, #24]
	mov	r0, r4
	bl	_ZN14Iw2DSceneGraph7CSprite8SetImageEP10CIw2DImage(PLT)
	mov	r0, r4
	bl	_ZN14Iw2DSceneGraph7CSprite8GetImageEv(PLT)
	ldr	r3, [r0]
	ldr	r3, [r3]
	blx	r3
	str	r0, [r4, #12]	@ float
	mov	r0, r4
	bl	_ZN14Iw2DSceneGraph7CSprite8GetImageEv(PLT)
	ldr	r3, [r0]
	ldr	r3, [r3, #4]
	blx	r3
	ldr	r2, [r6]
	mov	r3, #1056964608
	str	r3, [r4, #20]	@ float
	str	r3, [r4, #24]	@ float
	str	r0, [r4, #16]	@ float
	ldr	r0, [r2, #540]
	bl	__aeabi_ui2f(PLT)
	mov	r7, r0
	mov	r0, r4
	bl	_ZN14Iw2DSceneGraph7CSprite8GetImageEv(PLT)
	ldr	r3, [r0]
	ldr	r3, [r3]
	blx	r3
	mov	r1, r0
	mov	r0, r7
	bl	__aeabi_fdiv(PLT)
	ldr	r3, [r6]
	str	r0, [r4, #28]	@ float
	ldr	r0, [r3, #540]
	bl	__aeabi_ui2f(PLT)
	mov	r7, r0
	mov	r0, r4
	bl	_ZN14Iw2DSceneGraph7CSprite8GetImageEv(PLT)
	ldr	r3, [r0]
	ldr	r3, [r3, #4]
	blx	r3
	mov	r1, r0
	mov	r0, r7
	bl	__aeabi_fdiv(PLT)
	mov	r1, r4
	str	r0, [r4, #32]	@ float
	mov	r0, r5
	bl	_ZN18Iw2DSceneGraphCore5CNode8AddChildEPS0_(PLT)
	ldr	r3, [r6]
	ldr	r0, [r3, #540]
	bl	__aeabi_ui2f(PLT)
	mov	r6, r0
	bl	_Z11GetResourcev(PLT)
	ldr	r3, [r0, #12]
	mov	r0, r3
	ldr	r3, [r3]
	ldr	r3, [r3]
	blx	r3
	mov	r7, r0
	ldr	r0, [r5, #172]
	add	r0, r0, #1
	bl	__aeabi_i2f(PLT)
	ldr	r1, [r5, #188]	@ float
	mov	r4, r0
	mov	r0, r7
	bl	__aeabi_fmul(PLT)
	mov	r1, r4
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, r6
	bl	__aeabi_fsub(PLT)
	mov	r1, r4
	bl	__aeabi_fdiv(PLT)
	mov	r1, #0
	mov	r4, r0
	bl	__aeabi_fcmple(PLT)
	cmp	r0, #0
	movne	r0, #0
	moveq	r0, r4
	str	r0, [r5, #192]	@ float
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}
.L249:
	.align	2
.L248:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC22+8)
	.word	g_IwGxState(GOT)
	.word	1134559232
	.word	1145044992
	.size	_ZN4Game4InitEv, .-_ZN4Game4InitEv
	.section	.text._ZN4Game6UpdateEff,"ax",%progbits
	.align	2
	.global	_ZN4Game6UpdateEff
	.hidden	_ZN4Game6UpdateEff
	.type	_ZN4Game6UpdateEff, %function
_ZN4Game6UpdateEff:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}
	mov	r4, r0
	ldrb	r3, [r0, #120]	@ zero_extendqisi2
	mov	r6, r1
	mov	r5, r2
	cmp	r3, #0
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, pc}
	bl	_ZN5Scene6UpdateEff(PLT)
	mov	r2, r5
	mov	r0, r4
	mov	r1, r6
	bl	_ZN4Game17UpdateGameObjectsEff(PLT)
	ldr	r3, [r4, #172]
	ldr	r2, [r4, #176]
	cmp	r2, r3
	movge	r3, #1
	strgeb	r3, [r4, #198]
	ldmgefd	sp!, {r3, r4, r5, r6, r7, pc}
	ldrb	r3, [r4, #196]	@ zero_extendqisi2
	cmp	r3, #0
	movne	r3, #1
	strneb	r3, [r4, #198]
	ldrb	r3, [r4, #121]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L256
	ldr	r3, [r4, #124]
	ldr	r3, [r3]
	cmp	r4, r3
	beq	.L297
.L256:
	ldr	r3, [r4, #144]
	cmp	r3, #0
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, pc}
	ldr	r3, [r4, #148]
	cmp	r3, #0
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, pc}
	mov	r0, r4
	bl	_ZN4Game10MoveMarbleEv(PLT)
	mov	r3, #0
	str	r3, [r4, #148]
	str	r3, [r4, #144]
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}
.L297:
	bl	_Z8GetInputv(PLT)
	ldrb	r3, [r0, #12]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L271
	bl	_Z8GetInputv(PLT)
	bl	_ZN5Input5ResetEv(PLT)
	bl	_Z15GetSceneManagerv(PLT)
	ldr	r1, .L298
.LPIC23:
	add	r1, pc, r1
	bl	_ZN12SceneManager4FindEPKc(PLT)
	mov	r5, r0
	bl	_Z15GetSceneManagerv(PLT)
	mov	r1, r5
	bl	_ZN12SceneManager8SwitchToEP5Scene(PLT)
.L271:
	bl	_Z8GetInputv(PLT)
	ldrb	r5, [r0, #1]	@ zero_extendqisi2
	cmp	r5, #0
	bne	.L256
	bl	_Z8GetInputv(PLT)
	ldrb	r3, [r0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L256
	bl	_Z8GetInputv(PLT)
	bl	_ZN5Input5ResetEv(PLT)
.L272:
	ldr	r3, [r4, #156]
	ldr	r6, [r3, r5]
	bl	_Z8GetInputv(PLT)
	ldr	r7, [r0, #4]
	bl	_Z8GetInputv(PLT)
	mov	r1, r7
	ldr	r2, [r0, #8]
	mov	r0, r6
	bl	_ZN18Iw2DSceneGraphCore5CNode7HitTestEii(PLT)
	cmp	r0, #0
	beq	.L261
	ldr	r3, [r4, #144]
	cmp	r3, #0
	beq	.L262
	ldr	r6, [r3]
	bl	_Z11GetResourcev(PLT)
	ldr	r1, [r0, #12]
	mov	r0, r6
	bl	_ZN14Iw2DSceneGraph7CSprite8SetImageEP10CIw2DImage(PLT)
.L262:
	ldr	r3, [r4, #156]
	add	r2, r3, r5
	str	r2, [r4, #144]
	ldr	r6, [r3, r5]
	bl	_Z11GetResourcev(PLT)
	ldr	r1, [r0, #16]
	mov	r0, r6
	bl	_ZN14Iw2DSceneGraph7CSprite8SetImageEP10CIw2DImage(PLT)
.L261:
	add	r5, r5, #4
	cmp	r5, #20
	bne	.L272
	ldr	r3, [r4, #144]
	cmp	r3, #0
	movne	r5, #0
	beq	.L267
.L268:
	ldr	r3, [r4, #160]
	ldr	r2, [r4, #176]
	ldr	r3, [r3, r5]
	ldr	r6, [r3, r2, asl #2]
	bl	_Z8GetInputv(PLT)
	ldr	r7, [r0, #4]
	bl	_Z8GetInputv(PLT)
	mov	r1, r7
	ldr	r2, [r0, #8]
	mov	r0, r6
	bl	_ZN18Iw2DSceneGraphCore5CNode7HitTestEii(PLT)
	cmp	r0, #0
	ldrne	r3, [r4, #160]
	ldrne	r2, [r4, #176]
	ldrne	r3, [r3, r5]
	add	r5, r5, #4
	addne	r3, r3, r2, asl #2
	strne	r3, [r4, #148]
	cmp	r5, #20
	bne	.L268
.L267:
	ldrb	r3, [r4, #199]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L256
	ldr	r3, [r4, #168]
	ldr	r5, [r3]
	bl	_Z8GetInputv(PLT)
	ldr	r6, [r0, #4]
	bl	_Z8GetInputv(PLT)
	mov	r1, r6
	ldr	r2, [r0, #8]
	mov	r0, r5
	bl	_ZN18Iw2DSceneGraphCore5CNode7HitTestEii(PLT)
	cmp	r0, #0
	beq	.L256
	mov	r0, r4
	bl	_ZN4Game23CalculateCorrectMarblesEv(PLT)
	ldr	r2, [r4, #176]
	mov	r3, #0
	add	r2, r2, #1
	str	r2, [r4, #176]
	strb	r3, [r4, #199]
	bl	_Z11GetResourcev(PLT)
	ldr	r3, [r0, #12]
	mov	r0, r3
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	blx	r3
	ldr	r3, [r4, #168]
	ldr	r1, [r4, #188]	@ float
	ldr	r5, [r3]
	bl	__aeabi_fmul(PLT)
	ldr	r1, [r4, #192]	@ float
	bl	__aeabi_fadd(PLT)
	mov	r1, r0
	ldr	r0, [r5, #8]	@ float
	bl	__aeabi_fsub(PLT)
	str	r0, [r5, #8]	@ float
	b	.L256
.L299:
	.align	2
.L298:
	.word	.LC1-(.LPIC23+8)
	.size	_ZN4Game6UpdateEff, .-_ZN4Game6UpdateEff
	.section	.text._ZN4Game6RenderEv,"ax",%progbits
	.align	2
	.global	_ZN4Game6RenderEv
	.hidden	_ZN4Game6RenderEv
	.type	_ZN4Game6RenderEv, %function
_ZN4Game6RenderEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r4, r0
	ldrb	r3, [r0, #120]	@ zero_extendqisi2
	cmp	r3, #0
	ldmeqfd	sp!, {r4, r5, r6, pc}
	bl	_ZN5Scene6RenderEv(PLT)
	ldrb	r3, [r4, #198]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L302
.L304:
	ldr	r3, [r4, #172]
	mov	r6, #0
.L303:
	cmp	r3, #0
	ble	.L308
	mov	r5, #0
.L309:
	ldr	r3, [r4, #160]
	ldr	r0, [r3, r6]
	add	r0, r0, r5, asl #2
	bl	_ZN5Image6RenderEv(PLT)
	ldr	r3, [r4, #172]
	add	r5, r5, #1
	cmp	r5, r3
	blt	.L309
.L308:
	add	r6, r6, #4
	cmp	r6, #20
	bne	.L303
	mov	r5, #0
.L311:
	ldr	r0, [r4, #156]
	add	r0, r0, r5
	add	r5, r5, #4
	bl	_ZN5Image6RenderEv(PLT)
	cmp	r5, #20
	bne	.L311
	ldrb	r3, [r4, #199]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L329
.L312:
	ldr	r3, [r4, #176]
	mov	r6, #0
.L313:
	cmp	r3, #0
	ble	.L315
	mov	r5, #0
.L316:
	ldr	r3, [r4, #164]
	ldr	r0, [r3, r6]
	add	r0, r0, r5, asl #2
	bl	_ZN5Image6RenderEv(PLT)
	ldr	r3, [r4, #176]
	add	r5, r5, #1
	cmp	r5, r3
	blt	.L316
.L315:
	add	r6, r6, #4
	cmp	r6, #20
	bne	.L313
	ldmfd	sp!, {r4, r5, r6, pc}
.L302:
	mov	r5, #0
.L305:
	ldr	r0, [r4, #152]
	add	r0, r0, r5
	add	r5, r5, #4
	bl	_ZN5Image6RenderEv(PLT)
	cmp	r5, #20
	bne	.L305
	b	.L304
.L329:
	ldr	r0, [r4, #168]
	bl	_ZN5Image6RenderEv(PLT)
	b	.L312
	.size	_ZN4Game6RenderEv, .-_ZN4Game6RenderEv
	.hidden	_ZTS4Game
	.global	_ZTS4Game
	.hidden	_ZTI4Game
	.global	_ZTI4Game
	.hidden	_ZTV4Game
	.global	_ZTV4Game
	.section	.rodata
	.align	2
	.type	_ZTS4Game, %object
	.size	_ZTS4Game, 6
_ZTS4Game:
	.ascii	"4Game\000"
	.section	.data.rel.ro,"aw",%progbits
	.align	3
	.set	.LANCHOR0,. + 0
	.type	_ZTV4Game, %object
	.size	_ZTV4Game, 28
_ZTV4Game:
	.word	0
	.word	_ZTI4Game
	.word	_ZN4GameD1Ev
	.word	_ZN4GameD0Ev
	.word	_ZN4Game6UpdateEff
	.word	_ZN4Game6RenderEv
	.word	_ZN4Game4InitEv
	.type	_ZTI4Game, %object
	.size	_ZTI4Game, 12
_ZTI4Game:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTS4Game
	.word	_ZTI5Scene
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"mainmenu\000"
	.space	3
.LC1:
	.ascii	"pausemenu\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-branch revision 208322]"
