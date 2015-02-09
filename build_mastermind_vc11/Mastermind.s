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
	.file	"Mastermind.cpp"
	.section	.text._ZN10MastermindC2Ev,"ax",%progbits
	.align	2
	.global	_ZN10MastermindC2Ev
	.hidden	_ZN10MastermindC2Ev
	.type	_ZN10MastermindC2Ev, %function
_ZN10MastermindC2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #0
	str	r2, [r0, #8]
	str	r2, [r0, #4]
	str	r2, [r0]
	bx	lr
	.size	_ZN10MastermindC2Ev, .-_ZN10MastermindC2Ev
	.global	_ZN10MastermindC1Ev
	.hidden	_ZN10MastermindC1Ev
	.set	_ZN10MastermindC1Ev,_ZN10MastermindC2Ev
	.section	.text._ZN10MastermindD2Ev,"ax",%progbits
	.align	2
	.global	_ZN10MastermindD2Ev
	.hidden	_ZN10MastermindD2Ev
	.type	_ZN10MastermindD2Ev, %function
_ZN10MastermindD2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov	r8, r0
	bl	_Z9FreeAudiov(PLT)
	bl	_Z9FreeInputv(PLT)
	bl	_Z12FreeResourcev(PLT)
	bl	_Z16FreeSceneManagerv(PLT)
	ldr	r7, [r8, #12]
	cmp	r7, #0
	beq	.L3
	ldmia	r7, {r5, r9}
	cmp	r5, r9
	beq	.L9
	mov	r4, r5
	add	r6, r5, #44
.L7:
	rsb	r3, r5, r4
	add	r4, r4, #60
	ldr	r3, [r6, r3]
	subs	r0, r3, #0
	beq	.L5
	bl	free(PLT)
.L5:
	cmp	r9, r4
	bne	.L7
	ldr	r0, [r7]
.L4:
	cmp	r0, #0
	beq	.L8
	bl	free(PLT)
.L8:
	mov	r0, r7
	bl	_ZdlPv(PLT)
.L3:
	mov	r0, r8
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
.L9:
	mov	r0, r5
	b	.L4
	.size	_ZN10MastermindD2Ev, .-_ZN10MastermindD2Ev
	.global	_ZN10MastermindD1Ev
	.hidden	_ZN10MastermindD1Ev
	.set	_ZN10MastermindD1Ev,_ZN10MastermindD2Ev
	.section	.text._ZN10Mastermind4InitEv,"ax",%progbits
	.align	2
	.global	_ZN10Mastermind4InitEv
	.hidden	_ZN10Mastermind4InitEv
	.type	_ZN10Mastermind4InitEv, %function
_ZN10Mastermind4InitEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r4, r0
	bl	_Z9InputInitv(PLT)
	bl	_Z9AudioInitv(PLT)
	bl	_Z16SceneManagerInitv(PLT)
	bl	_Z12ResourceInitv(PLT)
	bl	_Z8GetAudiov(PLT)
	str	r0, [r4, #8]
	bl	_Z8GetInputv(PLT)
	str	r0, [r4, #4]
	bl	_Z15GetSceneManagerv(PLT)
	str	r0, [r4]
	mov	r0, #12
	bl	_Znwj(PLT)
	mov	r2, #0
	mov	r3, r0
	str	r2, [r0]
	str	r2, [r0, #4]
	str	r2, [r0, #8]
	str	r3, [r4, #12]
	mov	r0, #204
	bl	_Znwj(PLT)
	mov	r5, r0
	bl	_ZN4GameC1Ev(PLT)
	ldr	r1, .L21
	mov	r0, r5
.LPIC8:
	add	r1, pc, r1
	bl	_ZN5Scene7SetNameEPKc(PLT)
	ldr	r3, [r5]
	ldr	r2, [r4, #12]
	mov	r0, r5
	str	r2, [r5, #140]
	ldr	r3, [r3, #16]
	blx	r3
	mov	r1, r5
	ldr	r0, [r4]
	bl	_ZN12SceneManager3AddEP5Scene(PLT)
	mov	r0, r5
	bl	_ZN4Game8New_GameEv(PLT)
	mov	r0, #148
	bl	_Znwj(PLT)
	mov	r5, r0
	bl	_ZN8MainMenuC1Ev(PLT)
	ldr	r1, .L21+4
	mov	r0, r5
.LPIC9:
	add	r1, pc, r1
	bl	_ZN5Scene7SetNameEPKc(PLT)
	ldr	r3, [r5]
	ldr	r2, [r4, #12]
	mov	r0, r5
	str	r2, [r5, #140]
	ldr	r3, [r3, #16]
	blx	r3
	mov	r1, r5
	ldr	r0, [r4]
	bl	_ZN12SceneManager3AddEP5Scene(PLT)
	mov	r0, #152
	bl	_Znwj(PLT)
	mov	r6, r0
	bl	_ZN9PauseMenuC1Ev(PLT)
	ldr	r1, .L21+8
	mov	r0, r6
.LPIC10:
	add	r1, pc, r1
	bl	_ZN5Scene7SetNameEPKc(PLT)
	ldr	r3, [r6]
	ldr	r2, [r4, #12]
	mov	r0, r6
	str	r2, [r6, #140]
	ldr	r3, [r3, #16]
	blx	r3
	mov	r1, r6
	ldr	r0, [r4]
	bl	_ZN12SceneManager3AddEP5Scene(PLT)
	ldr	r0, [r4]
	mov	r1, r5
	ldmfd	sp!, {r4, r5, r6, lr}
	b	_ZN12SceneManager8SwitchToEP5Scene(PLT)
.L22:
	.align	2
.L21:
	.word	.LC0-(.LPIC8+8)
	.word	.LC1-(.LPIC9+8)
	.word	.LC2-(.LPIC10+8)
	.size	_ZN10Mastermind4InitEv, .-_ZN10Mastermind4InitEv
	.section	.text._ZN10Mastermind3RunEv,"ax",%progbits
	.align	2
	.global	_ZN10Mastermind3RunEv
	.hidden	_ZN10Mastermind3RunEv
	.type	_ZN10Mastermind3RunEv, %function
_ZN10Mastermind3RunEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	mov	r4, r0
.L26:
	bl	s3eDeviceCheckQuitRequest(PLT)
	cmp	r0, #0
	ldmnefd	sp!, {r3, r4, r5, pc}
	bl	_Z8GetInputv(PLT)
	ldrb	r5, [r0, #13]	@ zero_extendqisi2
	cmp	r5, #0
	ldmnefd	sp!, {r3, r4, r5, pc}
	ldr	r0, [r4, #8]
	bl	_ZN5Audio6UpdateEv(PLT)
	ldr	r0, [r4, #4]
	bl	_ZN5Input6UpdateEv(PLT)
	ldr	r0, [r4, #12]
	ldr	r1, .L27
	bl	_ZN7IwTween13CTweenManager6UpdateEf(PLT)
	ldr	r1, .L27
	ldr	r0, [r4]
	bl	_ZN12SceneManager6UpdateEf(PLT)
	mov	r0, #-16777216
	bl	_Z16Iw2DSurfaceClearj(PLT)
	ldr	r0, [r4]
	bl	_ZN12SceneManager6RenderEv(PLT)
	bl	_Z15Iw2DSurfaceShowv(PLT)
	mov	r0, r5
	bl	s3eDeviceYield(PLT)
	b	.L26
.L28:
	.align	2
.L27:
	.word	1022739087
	.size	_ZN10Mastermind3RunEv, .-_ZN10Mastermind3RunEv
	.section	.text._ZN10Mastermind6UpdateEv,"ax",%progbits
	.align	2
	.global	_ZN10Mastermind6UpdateEv
	.hidden	_ZN10Mastermind6UpdateEv
	.type	_ZN10Mastermind6UpdateEv, %function
_ZN10Mastermind6UpdateEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	mov	r4, r0
	ldr	r5, .L30
	ldr	r0, [r0, #8]
	bl	_ZN5Audio6UpdateEv(PLT)
	ldr	r0, [r4, #4]
	bl	_ZN5Input6UpdateEv(PLT)
	ldr	r0, [r4, #12]
	mov	r1, r5
	bl	_ZN7IwTween13CTweenManager6UpdateEf(PLT)
	ldr	r0, [r4]
	mov	r1, r5
	ldmfd	sp!, {r3, r4, r5, lr}
	b	_ZN12SceneManager6UpdateEf(PLT)
.L31:
	.align	2
.L30:
	.word	1022739087
	.size	_ZN10Mastermind6UpdateEv, .-_ZN10Mastermind6UpdateEv
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"game\000"
	.space	3
.LC1:
	.ascii	"mainmenu\000"
	.space	3
.LC2:
	.ascii	"pausemenu\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-branch revision 208322]"
