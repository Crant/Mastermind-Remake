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
	.file	"PauseMenu.cpp"
	.section	.text._ZN9PauseMenuD2Ev,"ax",%progbits
	.align	2
	.global	_ZN9PauseMenuD2Ev
	.hidden	_ZN9PauseMenuD2Ev
	.type	_ZN9PauseMenuD2Ev, %function
_ZN9PauseMenuD2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	mov	r4, r0
	ldr	r3, .L11
	ldr	r5, [r0, #148]
.LPIC0:
	add	r3, pc, r3
	add	r3, r3, #8
	cmp	r5, #0
	str	r3, [r0]
	beq	.L2
	mov	r0, r5
	bl	_ZN6ButtonD1Ev(PLT)
	mov	r0, r5
	bl	_ZdlPv(PLT)
.L2:
	ldr	r5, [r4, #144]
	cmp	r5, #0
	beq	.L3
	mov	r0, r5
	bl	_ZN6ButtonD1Ev(PLT)
	mov	r0, r5
	bl	_ZdlPv(PLT)
.L3:
	mov	r0, r4
	bl	_ZN5SceneD2Ev(PLT)
	mov	r0, r4
	ldmfd	sp!, {r3, r4, r5, pc}
.L12:
	.align	2
.L11:
	.word	.LANCHOR0-(.LPIC0+8)
	.size	_ZN9PauseMenuD2Ev, .-_ZN9PauseMenuD2Ev
	.global	_ZN9PauseMenuD1Ev
	.hidden	_ZN9PauseMenuD1Ev
	.set	_ZN9PauseMenuD1Ev,_ZN9PauseMenuD2Ev
	.section	.text._ZN9PauseMenu10ResumeGameEPN7IwTween6CTweenE,"ax",%progbits
	.align	2
	.global	_ZN9PauseMenu10ResumeGameEPN7IwTween6CTweenE
	.hidden	_ZN9PauseMenu10ResumeGameEPN7IwTween6CTweenE
	.type	_ZN9PauseMenu10ResumeGameEPN7IwTween6CTweenE, %function
_ZN9PauseMenu10ResumeGameEPN7IwTween6CTweenE:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	bl	_Z15GetSceneManagerv(PLT)
	ldr	r1, .L14
.LPIC1:
	add	r1, pc, r1
	bl	_ZN12SceneManager4FindEPKc(PLT)
	mov	r4, r0
	bl	_Z15GetSceneManagerv(PLT)
	mov	r1, r4
	ldmfd	sp!, {r4, lr}
	b	_ZN12SceneManager8SwitchToEP5Scene(PLT)
.L15:
	.align	2
.L14:
	.word	.LC0-(.LPIC1+8)
	.size	_ZN9PauseMenu10ResumeGameEPN7IwTween6CTweenE, .-_ZN9PauseMenu10ResumeGameEPN7IwTween6CTweenE
	.section	.text._ZN9PauseMenu7NewGameEPN7IwTween6CTweenE,"ax",%progbits
	.align	2
	.global	_ZN9PauseMenu7NewGameEPN7IwTween6CTweenE
	.hidden	_ZN9PauseMenu7NewGameEPN7IwTween6CTweenE
	.type	_ZN9PauseMenu7NewGameEPN7IwTween6CTweenE, %function
_ZN9PauseMenu7NewGameEPN7IwTween6CTweenE:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	bl	_Z15GetSceneManagerv(PLT)
	ldr	r1, .L17
.LPIC2:
	add	r1, pc, r1
	bl	_ZN12SceneManager4FindEPKc(PLT)
	mov	r4, r0
	bl	_Z15GetSceneManagerv(PLT)
	mov	r1, r4
	bl	_ZN12SceneManager8SwitchToEP5Scene(PLT)
	mov	r0, r4
	ldmfd	sp!, {r4, lr}
	b	_ZN4Game8New_GameEv(PLT)
.L18:
	.align	2
.L17:
	.word	.LC0-(.LPIC2+8)
	.size	_ZN9PauseMenu7NewGameEPN7IwTween6CTweenE, .-_ZN9PauseMenu7NewGameEPN7IwTween6CTweenE
	.section	.text._ZN9PauseMenuD0Ev,"ax",%progbits
	.align	2
	.global	_ZN9PauseMenuD0Ev
	.hidden	_ZN9PauseMenuD0Ev
	.type	_ZN9PauseMenuD0Ev, %function
_ZN9PauseMenuD0Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	mov	r4, r0
	ldr	r3, .L28
	ldr	r5, [r0, #148]
.LPIC3:
	add	r3, pc, r3
	add	r3, r3, #8
	cmp	r5, #0
	str	r3, [r0]
	beq	.L20
	mov	r0, r5
	bl	_ZN6ButtonD1Ev(PLT)
	mov	r0, r5
	bl	_ZdlPv(PLT)
.L20:
	ldr	r5, [r4, #144]
	cmp	r5, #0
	beq	.L21
	mov	r0, r5
	bl	_ZN6ButtonD1Ev(PLT)
	mov	r0, r5
	bl	_ZdlPv(PLT)
.L21:
	mov	r0, r4
	bl	_ZN5SceneD2Ev(PLT)
	mov	r0, r4
	bl	_ZdlPv(PLT)
	mov	r0, r4
	ldmfd	sp!, {r3, r4, r5, pc}
.L29:
	.align	2
.L28:
	.word	.LANCHOR0-(.LPIC3+8)
	.size	_ZN9PauseMenuD0Ev, .-_ZN9PauseMenuD0Ev
	.section	.text._ZN9PauseMenuC2Ev,"ax",%progbits
	.align	2
	.global	_ZN9PauseMenuC2Ev
	.hidden	_ZN9PauseMenuC2Ev
	.type	_ZN9PauseMenuC2Ev, %function
_ZN9PauseMenuC2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	bl	_ZN5SceneC2Ev(PLT)
	ldr	r2, .L31
	mov	r3, #0
.LPIC4:
	add	r2, pc, r2
	add	r2, r2, #8
	str	r2, [r4]
	str	r3, [r4, #148]
	str	r3, [r4, #144]
	mov	r0, r4
	ldmfd	sp!, {r4, pc}
.L32:
	.align	2
.L31:
	.word	.LANCHOR0-(.LPIC4+8)
	.size	_ZN9PauseMenuC2Ev, .-_ZN9PauseMenuC2Ev
	.global	_ZN9PauseMenuC1Ev
	.hidden	_ZN9PauseMenuC1Ev
	.set	_ZN9PauseMenuC1Ev,_ZN9PauseMenuC2Ev
	.global	__aeabi_ui2f
	.global	__aeabi_fmul
	.global	__aeabi_fdiv
	.global	__aeabi_fadd
	.global	__aeabi_fsub
	.section	.text._ZN9PauseMenu4InitEv,"ax",%progbits
	.align	2
	.global	_ZN9PauseMenu4InitEv
	.hidden	_ZN9PauseMenu4InitEv
	.type	_ZN9PauseMenu4InitEv, %function
_ZN9PauseMenu4InitEv:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #28
	mov	r8, r0
	bl	_ZN5Scene4InitEv(PLT)
	mov	r0, #148
	bl	_Znwj(PLT)
	ldr	r5, .L89
	mov	r7, #1056964608
.LPIC5:
	add	r5, pc, r5
	mov	r4, r0
	bl	_ZN14Iw2DSceneGraph7CSpriteC1Ev(PLT)
	ldr	r2, .L89+4
	mov	r3, r5
	ldr	r9, [r5, r2]
	ldr	r5, [r9]
	ldr	r0, [r5, #536]
	bl	__aeabi_ui2f(PLT)
	mov	r1, r7
	bl	__aeabi_fmul(PLT)
	str	r0, [r4, #4]	@ float
	ldr	r0, [r5, #540]
	bl	__aeabi_ui2f(PLT)
	mov	r1, r7
	bl	__aeabi_fmul(PLT)
	str	r0, [r4, #8]	@ float
	bl	_Z11GetResourcev(PLT)
	ldr	r1, [r0, #28]
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
	ldr	r3, [r9]
	str	r7, [r4, #20]	@ float
	str	r7, [r4, #24]	@ float
	str	r0, [r4, #16]	@ float
	ldr	r0, [r3, #540]
	bl	__aeabi_ui2f(PLT)
	mov	r5, r0
	mov	r0, r4
	bl	_ZN14Iw2DSceneGraph7CSprite8GetImageEv(PLT)
	ldr	r3, [r0]
	ldr	r3, [r3]
	blx	r3
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fdiv(PLT)
	ldr	r3, [r9]
	str	r0, [r4, #28]	@ float
	ldr	r0, [r3, #540]
	bl	__aeabi_ui2f(PLT)
	mov	r5, r0
	mov	r0, r4
	bl	_ZN14Iw2DSceneGraph7CSprite8GetImageEv(PLT)
	ldr	r3, [r0]
	ldr	r3, [r3, #4]
	blx	r3
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fdiv(PLT)
	mov	r1, r4
	str	r0, [r4, #32]	@ float
	mov	r0, r8
	bl	_ZN18Iw2DSceneGraphCore5CNode8AddChildEPS0_(PLT)
	bl	_Z15GetSceneManagerv(PLT)
	ldr	r1, .L89+8
.LPIC6:
	add	r1, pc, r1
	bl	_ZN12SceneManager4FindEPKc(PLT)
	mov	r6, r0
	mov	r0, #148
	bl	_Znwj(PLT)
	mov	r5, r0
	bl	_ZN14Iw2DSceneGraph7CSpriteC1Ev(PLT)
	ldr	r4, [r9]
	ldr	r0, [r4, #536]
	mov	r0, r0, lsr #1
	bl	__aeabi_ui2f(PLT)
	str	r0, [r5, #4]	@ float
	ldr	r0, [r4, #540]
	mov	r0, r0, lsr #1
	bl	__aeabi_ui2f(PLT)
	mov	r4, r0
	bl	_Z11GetResourcev(PLT)
	ldr	r3, [r0, #36]
	mov	r0, r3
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	blx	r3
	ldr	r1, [r6, #188]	@ float
	bl	__aeabi_fmul(PLT)
	ldr	r1, .L89+12
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, r4
	bl	__aeabi_fadd(PLT)
	str	r0, [r5, #8]	@ float
	bl	_Z11GetResourcev(PLT)
	ldr	r1, [r0, #36]
	mov	r0, r5
	bl	_ZN14Iw2DSceneGraph7CSprite8SetImageEP10CIw2DImage(PLT)
	str	r7, [r5, #20]	@ float
	str	r7, [r5, #24]	@ float
	ldr	r3, [r6, #188]	@ float
	mov	r0, #152
	str	r3, [r5, #28]	@ float
	ldr	r3, [r6, #188]	@ float
	str	r3, [r5, #32]	@ float
	bl	_Znwj(PLT)
	mov	r4, r0
	bl	_ZN14Iw2DSceneGraph6CLabelC1Ev(PLT)
	ldr	r2, [r5, #4]	@ float
	mov	r3, #1
	str	r2, [r4, #4]	@ float
	ldr	r2, [r5, #8]	@ float
	str	r2, [r4, #8]	@ float
	ldr	r2, [r5, #12]	@ float
	str	r2, [r4, #12]	@ float
	ldr	r2, [r5, #16]	@ float
	str	r7, [r4, #20]	@ float
	str	r7, [r4, #24]	@ float
	str	r2, [r4, #16]	@ float
	str	r3, [r4, #132]
	str	r3, [r4, #136]
	ldr	r3, [r6, #184]	@ float
	str	r3, [r4, #28]	@ float
	str	r3, [r4, #32]	@ float
	bl	_Z11GetResourcev(PLT)
	ldr	ip, [r4, #140]
	ldr	r7, [r4, #144]
	rsb	r7, ip, r7
	cmp	r7, #7
	ldr	r3, [r0, #40]
	str	r3, [r4, #128]
	bls	.L34
	ldr	r3, .L89+16
.LPIC7:
	add	r3, pc, r3
	ldmia	r3!, {r0, r1}
	str	r0, [ip]	@ unaligned
	str	r1, [ip, #4]	@ unaligned
	ldr	r1, [r4, #140]
	ldr	r3, [r4, #144]
	add	r0, r1, #8
	cmp	r0, r3
	beq	.L36
	ldrb	r2, [r3]	@ zero_extendqisi2
	rsb	r3, r0, r3
	strb	r2, [r1, #8]
	ldr	r2, [r4, #144]
	rsb	r3, r3, r2
	str	r3, [r4, #144]
.L36:
	mov	r1, #0
	mov	r3, #255
	add	r7, sp, #20
	mov	r2, r1
	str	r3, [sp]
	mov	r0, r7
	mov	r3, r1
	bl	_ZN14Iw2DSceneGraph6CColorC1Ehhhh(PLT)
	ldr	r3, [sp, #20]
	mov	r0, #8
	str	r3, [r4, #116]
	bl	_Znwj(PLT)
	mov	r2, r4
	mov	r1, r5
	mov	r10, r0
	bl	_ZN6ButtonC1EPN14Iw2DSceneGraph7CSpriteEPNS0_6CLabelE(PLT)
	str	r10, [r8, #148]
	mov	r0, #148
	bl	_Znwj(PLT)
	mov	r5, r0
	bl	_ZN14Iw2DSceneGraph7CSpriteC1Ev(PLT)
	ldr	r4, [r9]
	mov	r9, #1056964608
	ldr	r0, [r4, #536]
	mov	r0, r0, lsr #1
	bl	__aeabi_ui2f(PLT)
	str	r0, [r5, #4]	@ float
	ldr	r0, [r4, #540]
	mov	r0, r0, lsr #1
	bl	__aeabi_ui2f(PLT)
	mov	r4, r0
	bl	_Z11GetResourcev(PLT)
	ldr	r3, [r0, #36]
	mov	r0, r3
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	blx	r3
	ldr	r1, [r6, #188]	@ float
	bl	__aeabi_fmul(PLT)
	ldr	r1, .L89+12
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, r4
	bl	__aeabi_fsub(PLT)
	str	r0, [r5, #8]	@ float
	bl	_Z11GetResourcev(PLT)
	ldr	r1, [r0, #36]
	mov	r0, r5
	bl	_ZN14Iw2DSceneGraph7CSprite8SetImageEP10CIw2DImage(PLT)
	str	r9, [r5, #20]	@ float
	str	r9, [r5, #24]	@ float
	ldr	r3, [r6, #188]	@ float
	mov	r0, #152
	str	r3, [r5, #28]	@ float
	ldr	r3, [r6, #188]	@ float
	str	r3, [r5, #32]	@ float
	bl	_Znwj(PLT)
	mov	r4, r0
	bl	_ZN14Iw2DSceneGraph6CLabelC1Ev(PLT)
	ldr	r2, [r5, #4]	@ float
	mov	r3, #1
	str	r2, [r4, #4]	@ float
	ldr	r2, [r5, #8]	@ float
	str	r2, [r4, #8]	@ float
	ldr	r2, [r5, #12]	@ float
	str	r2, [r4, #12]	@ float
	ldr	r2, [r5, #16]	@ float
	str	r3, [r4, #132]
	str	r2, [r4, #16]	@ float
	str	r3, [r4, #136]
	str	r9, [r4, #20]	@ float
	str	r9, [r4, #24]	@ float
	ldr	r0, [r6, #184]	@ float
	ldr	r1, [r6, #188]	@ float
	bl	__aeabi_fdiv(PLT)
	str	r0, [r4, #28]	@ float
	str	r0, [r4, #32]	@ float
	bl	_Z11GetResourcev(PLT)
	ldr	r3, [r4, #140]
	ldr	r6, [r4, #144]
	rsb	r6, r3, r6
	cmp	r6, #5
	ldr	r2, [r0, #40]
	str	r2, [r4, #128]
	bls	.L47
	ldr	r2, .L89+20
.LPIC13:
	add	r2, pc, r2
	ldrh	r1, [r2, #4]	@ unaligned
	ldr	r0, [r2]	@ unaligned
	strh	r1, [r3, #4]	@ unaligned
	str	r0, [r3]	@ unaligned
	ldr	r1, [r4, #140]
	ldr	r3, [r4, #144]
	add	r0, r1, #6
	cmp	r0, r3
	beq	.L49
	ldrb	r2, [r3]	@ zero_extendqisi2
	rsb	r3, r0, r3
	strb	r2, [r1, #6]
	ldr	r2, [r4, #144]
	rsb	r3, r3, r2
	str	r3, [r4, #144]
.L49:
	mov	r1, #0
	mov	r3, #255
	mov	r2, r1
	str	r3, [sp]
	mov	r0, r7
	mov	r3, r1
	bl	_ZN14Iw2DSceneGraph6CColorC1Ehhhh(PLT)
	ldr	r3, [sp, #20]
	mov	r0, #8
	str	r3, [r4, #116]
	bl	_Znwj(PLT)
	mov	r1, r5
	mov	r2, r4
	mov	r6, r0
	bl	_ZN6ButtonC1EPN14Iw2DSceneGraph7CSpriteEPNS0_6CLabelE(PLT)
	str	r6, [r8, #144]
	add	sp, sp, #28
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L47:
	cmp	r6, #0
	moveq	r1, r3
	bne	.L83
.L50:
	ldr	fp, .L89+24
.LPIC15:
	add	fp, pc, fp
	add	r10, r6, fp
	add	fp, fp, #6
	cmp	r10, fp
	beq	.L49
	rsb	r9, r10, fp
	cmn	r9, #1
	beq	.L52
	mvn	r2, #1
	rsb	r2, r9, r2
	cmp	r2, r6
	bcc	.L52
.L61:
	ldr	r0, [r4, #148]
	add	r2, r9, r6
	rsb	r3, r3, r0
	sub	r3, r3, #1
	cmp	r2, r3
	bls	.L53
	add	r3, r6, #1
	cmp	r9, r6
	addcs	r6, r3, r9
	addcc	r6, r3, r6
	cmp	r6, #0
	moveq	fp, r6
	bne	.L84
.L54:
	ldr	r2, [r4, #144]
	cmp	r1, r2
	moveq	r0, fp
	beq	.L56
	rsb	r3, r1, r2
	mov	r2, r3
	mov	r0, fp
	str	r3, [sp, #8]
	bl	memmove(PLT)
	ldr	r3, [sp, #8]
	add	r0, r0, r3
.L56:
	mov	r2, r9
	mov	r1, r10
	bl	memcpy(PLT)
	mov	r3, #0
	strb	r3, [r0, r9]
	ldr	r3, [r4, #140]
	add	r9, r0, r9
	cmp	r3, #0
	beq	.L57
	mov	r0, r3
	bl	free(PLT)
.L57:
	add	r6, fp, r6
	str	r6, [r4, #148]
	str	fp, [r4, #140]
	str	r9, [r4, #144]
	b	.L49
.L34:
	cmp	r7, #0
	moveq	r1, ip
	bne	.L85
.L37:
	ldr	fp, .L89+28
.LPIC9:
	add	fp, pc, fp
	add	r3, r7, fp
	add	fp, fp, #8
	cmp	r3, fp
	beq	.L36
	rsb	r10, r3, fp
	cmn	r10, #1
	beq	.L39
	mvn	r2, #1
	rsb	r2, r10, r2
	cmp	r2, r7
	bcc	.L39
.L60:
	ldr	r0, [r4, #148]
	add	r2, r10, r7
	rsb	ip, ip, r0
	sub	ip, ip, #1
	cmp	r2, ip
	bls	.L40
	add	r2, r7, #1
	cmp	r10, r7
	addcs	r7, r2, r10
	addcc	r7, r2, r7
	cmp	r7, #0
	moveq	fp, r7
	bne	.L86
.L41:
	ldr	ip, [r4, #144]
	cmp	ip, r1
	moveq	r0, fp
	beq	.L43
	rsb	ip, r1, ip
	mov	r2, ip
	mov	r0, fp
	str	r3, [sp, #8]
	str	ip, [sp, #12]
	bl	memmove(PLT)
	ldr	ip, [sp, #12]
	ldr	r3, [sp, #8]
	add	r0, r0, ip
.L43:
	mov	r1, r3
	mov	r2, r10
	bl	memcpy(PLT)
	mov	r3, #0
	strb	r3, [r0, r10]
	ldr	r3, [r4, #140]
	add	r10, r0, r10
	cmp	r3, #0
	beq	.L44
	mov	r0, r3
	bl	free(PLT)
.L44:
	add	r7, fp, r7
	str	r7, [r4, #148]
	str	fp, [r4, #140]
	str	r10, [r4, #144]
	b	.L36
.L39:
	ldr	r0, .L89+32
	str	r3, [sp, #8]
.LPIC19:
	add	r0, pc, r0
	bl	_ZN4_STL24__stl_throw_length_errorEPKc(PLT)
	ldr	r1, [r4, #140]
	ldr	r3, [sp, #8]
	mov	ip, r1
	b	.L60
.L52:
	ldr	r0, .L89+36
.LPIC20:
	add	r0, pc, r0
	bl	_ZN4_STL24__stl_throw_length_errorEPKc(PLT)
	ldr	r1, [r4, #140]
	mov	r3, r1
	b	.L61
.L53:
	ldr	r3, .L89+40
	add	r1, r10, #1
.LPIC18:
	add	r3, pc, r3
	add	r3, r3, #6
	cmp	r1, r3
	ldr	r0, [r4, #144]
	beq	.L59
	rsb	r2, r1, fp
	add	r0, r0, #1
	bl	memcpy(PLT)
	ldr	r0, [r4, #144]
.L59:
	mov	r3, #0
	strb	r3, [r0, r9]
	ldrb	r2, [r10]	@ zero_extendqisi2
	ldr	r3, [r4, #144]
	strb	r2, [r3]
	ldr	r3, [r4, #144]
	add	r9, r3, r9
	str	r9, [r4, #144]
	b	.L49
.L40:
	ldr	r2, .L89+44
	add	r1, r3, #1
.LPIC12:
	add	r2, pc, r2
	add	r2, r2, #8
	cmp	r1, r2
	ldr	r0, [r4, #144]
	beq	.L46
	rsb	r2, r1, fp
	add	r0, r0, #1
	str	r3, [sp, #8]
	bl	memcpy(PLT)
	ldr	r0, [r4, #144]
	ldr	r3, [sp, #8]
.L46:
	mov	r1, #0
	strb	r1, [r0, r10]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r4, #144]
	strb	r2, [r3]
	ldr	r3, [r4, #144]
	add	r10, r3, r10
	str	r10, [r4, #144]
	b	.L36
.L83:
	ldr	r1, .L89+48
	mov	r0, r3
	mov	r2, r6
.LPIC14:
	add	r1, pc, r1
	bl	memcpy(PLT)
	ldr	r3, [r4, #140]
	ldr	r6, [r4, #144]
	mov	r1, r3
	rsb	r6, r3, r6
	b	.L50
.L85:
	ldr	r1, .L89+52
	mov	r0, ip
	mov	r2, r7
.LPIC8:
	add	r1, pc, r1
	bl	memcpy(PLT)
	ldr	ip, [r4, #140]
	ldr	r7, [r4, #144]
	mov	r1, ip
	rsb	r7, ip, r7
	b	.L37
.L84:
	mov	r0, r6
	str	r1, [sp, #12]
	bl	malloc(PLT)
	ldr	r1, [sp, #12]
	cmp	r0, #0
	beq	.L87
.L55:
	mov	fp, r0
	b	.L54
.L86:
	mov	r0, r7
	str	r1, [sp, #12]
	str	r3, [sp, #8]
	bl	malloc(PLT)
	ldr	r1, [sp, #12]
	ldr	r3, [sp, #8]
	cmp	r0, #0
	beq	.L88
.L42:
	mov	fp, r0
	b	.L41
.L87:
	mov	r0, r6
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	ldr	r1, [r4, #140]
	b	.L55
.L88:
	mov	r0, r7
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	ldr	r1, [r4, #140]
	ldr	r3, [sp, #8]
	b	.L42
.L90:
	.align	2
.L89:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC5+8)
	.word	g_IwGxState(GOT)
	.word	.LC0-(.LPIC6+8)
	.word	1060320051
	.word	.LC1-(.LPIC7+8)
	.word	.LC2-(.LPIC13+8)
	.word	.LC2-(.LPIC15+8)
	.word	.LC1-(.LPIC9+8)
	.word	.LC3-(.LPIC19+8)
	.word	.LC3-(.LPIC20+8)
	.word	.LC2-(.LPIC18+8)
	.word	.LC1-(.LPIC12+8)
	.word	.LC2-(.LPIC14+8)
	.word	.LC1-(.LPIC8+8)
	.size	_ZN9PauseMenu4InitEv, .-_ZN9PauseMenu4InitEv
	.section	.text._ZN9PauseMenu6UpdateEff,"ax",%progbits
	.align	2
	.global	_ZN9PauseMenu6UpdateEff
	.hidden	_ZN9PauseMenu6UpdateEff
	.type	_ZN9PauseMenu6UpdateEff, %function
_ZN9PauseMenu6UpdateEff:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r4, r0
	ldrb	r3, [r0, #120]	@ zero_extendqisi2
	sub	sp, sp, #24
	mov	r6, r1
	cmp	r3, #0
	mov	r5, r2
	bne	.L119
.L91:
	add	sp, sp, #24
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, pc}
.L119:
	bl	_ZN5Scene6UpdateEff(PLT)
	ldr	r0, [r4, #148]
	cmp	r0, #0
	beq	.L94
	mov	r1, r6
	mov	r2, r5
	bl	_ZN6Button6UpdateEff(PLT)
.L94:
	ldr	r0, [r4, #144]
	cmp	r0, #0
	beq	.L95
	mov	r1, r6
	mov	r2, r5
	bl	_ZN6Button6UpdateEff(PLT)
.L95:
	ldrb	r3, [r4, #121]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L91
	ldr	r3, [r4, #124]
	ldr	r3, [r3]
	cmp	r4, r3
	bne	.L91
	bl	_Z8GetInputv(PLT)
	ldrb	r3, [r0, #12]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L120
	bl	_Z8GetInputv(PLT)
	ldrb	r3, [r0, #1]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L91
	bl	_Z8GetInputv(PLT)
	ldrb	r3, [r0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L91
	bl	_Z8GetInputv(PLT)
	bl	_ZN5Input5ResetEv(PLT)
	ldr	r3, [r4, #148]
	ldr	r5, [r3]
	bl	_Z8GetInputv(PLT)
	ldr	r6, [r0, #4]
	bl	_Z8GetInputv(PLT)
	mov	r1, r6
	ldr	r2, [r0, #8]
	mov	r0, r5
	bl	_ZN18Iw2DSceneGraphCore5CNode7HitTestEii(PLT)
	cmp	r0, #0
	bne	.L121
	ldr	r3, [r4, #144]
	ldr	r5, [r3]
	bl	_Z8GetInputv(PLT)
	ldr	r6, [r0, #4]
	bl	_Z8GetInputv(PLT)
	mov	r1, r6
	ldr	r2, [r0, #8]
	mov	r0, r5
	bl	_ZN18Iw2DSceneGraphCore5CNode7HitTestEii(PLT)
	cmp	r0, #0
	beq	.L91
	ldr	ip, .L122
	ldr	r3, .L122+4
	ldr	lr, .L122+8
	mov	r2, #0
.LPIC22:
	add	ip, pc, ip
.L118:
	ldr	r1, .L122+12
	strd	r2, [sp]
	str	r1, [sp, #16]
	add	r0, r4, #128
	str	lr, [sp, #8]
	str	ip, [sp, #12]
	ldr	r1, .L122+16
	mov	r2, #268
	bl	_ZN7IwTween13CTweenManager5TweenEfz(PLT)
	b	.L91
.L121:
	ldr	ip, .L122+20
	mov	r2, #0
	ldr	r3, .L122+4
	ldr	lr, .L122+8
.LPIC21:
	add	ip, pc, ip
	b	.L118
.L120:
	mov	r0, #0
	bl	s3eDeviceExit(PLT)
.L123:
	.align	2
.L122:
	.word	_ZN9PauseMenu10ResumeGameEPN7IwTween6CTweenE-(.LPIC22+8)
	.word	1070596096
	.word	273
	.word	274
	.word	1045220557
	.word	_ZN9PauseMenu7NewGameEPN7IwTween6CTweenE-(.LPIC21+8)
	.size	_ZN9PauseMenu6UpdateEff, .-_ZN9PauseMenu6UpdateEff
	.section	.text._ZN9PauseMenu6RenderEv,"ax",%progbits
	.align	2
	.global	_ZN9PauseMenu6RenderEv
	.hidden	_ZN9PauseMenu6RenderEv
	.type	_ZN9PauseMenu6RenderEv, %function
_ZN9PauseMenu6RenderEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	ldrb	r3, [r0, #120]	@ zero_extendqisi2
	cmp	r3, #0
	ldmeqfd	sp!, {r4, pc}
	bl	_ZN5Scene6RenderEv(PLT)
	ldr	r0, [r4, #148]
	cmp	r0, #0
	beq	.L127
	bl	_ZN6Button6RenderEv(PLT)
.L127:
	ldr	r0, [r4, #144]
	cmp	r0, #0
	ldmeqfd	sp!, {r4, pc}
	ldmfd	sp!, {r4, lr}
	b	_ZN6Button6RenderEv(PLT)
	.size	_ZN9PauseMenu6RenderEv, .-_ZN9PauseMenu6RenderEv
	.hidden	_ZTS9PauseMenu
	.global	_ZTS9PauseMenu
	.hidden	_ZTI9PauseMenu
	.global	_ZTI9PauseMenu
	.hidden	_ZTV9PauseMenu
	.global	_ZTV9PauseMenu
	.section	.rodata
	.align	2
	.type	_ZTS9PauseMenu, %object
	.size	_ZTS9PauseMenu, 11
_ZTS9PauseMenu:
	.ascii	"9PauseMenu\000"
	.section	.data.rel.ro,"aw",%progbits
	.align	3
	.set	.LANCHOR0,. + 0
	.type	_ZTV9PauseMenu, %object
	.size	_ZTV9PauseMenu, 28
_ZTV9PauseMenu:
	.word	0
	.word	_ZTI9PauseMenu
	.word	_ZN9PauseMenuD1Ev
	.word	_ZN9PauseMenuD0Ev
	.word	_ZN9PauseMenu6UpdateEff
	.word	_ZN9PauseMenu6RenderEv
	.word	_ZN9PauseMenu4InitEv
	.type	_ZTI9PauseMenu, %object
	.size	_ZTI9PauseMenu, 12
_ZTI9PauseMenu:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTS9PauseMenu
	.word	_ZTI5Scene
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"game\000"
	.space	3
.LC1:
	.ascii	"New Game\000"
	.space	3
.LC2:
	.ascii	"Resume\000"
	.space	1
.LC3:
	.ascii	"basic_string\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-branch revision 208322]"
