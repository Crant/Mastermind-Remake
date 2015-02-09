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
	.file	"Scene.cpp"
	.section	.text._ZN5Scene4InitEv,"ax",%progbits
	.align	2
	.global	_ZN5Scene4InitEv
	.hidden	_ZN5Scene4InitEv
	.type	_ZN5Scene4InitEv, %function
_ZN5Scene4InitEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	_ZN5Scene4InitEv, .-_ZN5Scene4InitEv
	.section	.text._ZN5SceneD2Ev,"ax",%progbits
	.align	2
	.global	_ZN5SceneD2Ev
	.hidden	_ZN5SceneD2Ev
	.type	_ZN5SceneD2Ev, %function
_ZN5SceneD2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L16
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
.LPIC8:
	add	r3, pc, r3
	ldr	r5, [r0, #128]
	ldr	r6, [r0, #132]
	add	r3, r3, #8
	cmp	r5, r6
	mov	r8, r0
	str	r3, [r0]
	beq	.L8
	mov	r4, r5
	add	r7, r5, #44
.L6:
	rsb	r3, r5, r4
	add	r4, r4, #60
	ldr	r3, [r7, r3]
	subs	r0, r3, #0
	beq	.L4
	bl	free(PLT)
.L4:
	cmp	r6, r4
	bne	.L6
	ldr	r0, [r8, #128]
.L3:
	cmp	r0, #0
	beq	.L7
	bl	free(PLT)
.L7:
	mov	r0, r8
	bl	_ZN18Iw2DSceneGraphCore5CNodeD2Ev(PLT)
	mov	r0, r8
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L8:
	mov	r0, r5
	b	.L3
.L17:
	.align	2
.L16:
	.word	.LANCHOR0-(.LPIC8+8)
	.size	_ZN5SceneD2Ev, .-_ZN5SceneD2Ev
	.global	_ZN5SceneD1Ev
	.hidden	_ZN5SceneD1Ev
	.set	_ZN5SceneD1Ev,_ZN5SceneD2Ev
	.section	.text._ZN5SceneD0Ev,"ax",%progbits
	.align	2
	.global	_ZN5SceneD0Ev
	.hidden	_ZN5SceneD0Ev
	.type	_ZN5SceneD0Ev, %function
_ZN5SceneD0Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L31
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
.LPIC9:
	add	r3, pc, r3
	ldr	r5, [r0, #128]
	ldr	r6, [r0, #132]
	add	r3, r3, #8
	cmp	r5, r6
	mov	r8, r0
	str	r3, [r0]
	beq	.L24
	mov	r4, r5
	add	r7, r5, #44
.L22:
	rsb	r3, r5, r4
	add	r4, r4, #60
	ldr	r3, [r7, r3]
	subs	r0, r3, #0
	beq	.L20
	bl	free(PLT)
.L20:
	cmp	r6, r4
	bne	.L22
	ldr	r0, [r8, #128]
.L19:
	cmp	r0, #0
	beq	.L23
	bl	free(PLT)
.L23:
	mov	r0, r8
	bl	_ZN18Iw2DSceneGraphCore5CNodeD2Ev(PLT)
	mov	r0, r8
	bl	_ZdlPv(PLT)
	mov	r0, r8
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L24:
	mov	r0, r5
	b	.L19
.L32:
	.align	2
.L31:
	.word	.LANCHOR0-(.LPIC9+8)
	.size	_ZN5SceneD0Ev, .-_ZN5SceneD0Ev
	.section	.text._ZN12SceneManager16OnSwitchCompleteEPN7IwTween6CTweenE,"ax",%progbits
	.align	2
	.global	_ZN12SceneManager16OnSwitchCompleteEPN7IwTween6CTweenE
	.hidden	_ZN12SceneManager16OnSwitchCompleteEPN7IwTween6CTweenE
	.type	_ZN12SceneManager16OnSwitchCompleteEPN7IwTween6CTweenE, %function
_ZN12SceneManager16OnSwitchCompleteEPN7IwTween6CTweenE:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L34
	stmfd	sp!, {r4, lr}
.LPIC10:
	add	r2, pc, r2
	mov	r3, #1
	ldr	r4, [r2]
	mov	r1, #0
	mov	r2, #1065353216
	ldr	r0, [r4, #4]
	strb	r3, [r0, #121]
	ldr	r0, [r4, #4]
	strb	r3, [r0, #120]
	ldr	r3, [r4]
	mov	r0, r3
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	blx	r3
	ldr	r2, [r4]
	mov	r3, #0
	strb	r3, [r2, #120]
	ldr	r2, [r4, #4]
	stmia	r4, {r2, r3}
	ldmfd	sp!, {r4, pc}
.L35:
	.align	2
.L34:
	.word	.LANCHOR1-(.LPIC10+8)
	.size	_ZN12SceneManager16OnSwitchCompleteEPN7IwTween6CTweenE, .-_ZN12SceneManager16OnSwitchCompleteEPN7IwTween6CTweenE
	.global	__aeabi_ui2f
	.section	.text._ZN5SceneC2Ev,"ax",%progbits
	.align	2
	.global	_ZN5SceneC2Ev
	.hidden	_ZN5SceneC2Ev
	.type	_ZN5SceneC2Ev, %function
_ZN5SceneC2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r4, r0
	ldr	r6, .L37
	bl	_ZN18Iw2DSceneGraphCore5CNodeC2Ev(PLT)
	ldr	r3, .L37+4
	ldr	r2, .L37+8
.LPIC12:
	add	r6, pc, r6
.LPIC11:
	add	r3, pc, r3
	mov	r5, #0
	add	r3, r3, #8
	str	r3, [r4]
	str	r5, [r4, #128]
	str	r5, [r4, #132]
	str	r5, [r4, #136]
	ldr	r2, [r6, r2]
	mov	r3, r6
	ldr	r3, [r2]
	ldr	r0, [r3, #536]
	bl	__aeabi_ui2f(PLT)
	strb	r5, [r4, #120]
	strb	r5, [r4, #121]
	add	r0, r0, #-2147483648
	str	r0, [r4, #4]	@ float
	mov	r0, r4
	ldmfd	sp!, {r4, r5, r6, pc}
.L38:
	.align	2
.L37:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC12+8)
	.word	.LANCHOR0-(.LPIC11+8)
	.word	g_IwGxState(GOT)
	.size	_ZN5SceneC2Ev, .-_ZN5SceneC2Ev
	.global	_ZN5SceneC1Ev
	.hidden	_ZN5SceneC1Ev
	.set	_ZN5SceneC1Ev,_ZN5SceneC2Ev
	.section	.text._ZN5Scene7SetNameEPKc,"ax",%progbits
	.align	2
	.global	_ZN5Scene7SetNameEPKc
	.hidden	_ZN5Scene7SetNameEPKc
	.type	_ZN5Scene7SetNameEPKc, %function
_ZN5Scene7SetNameEPKc:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	mov	r0, r1
	bl	_Z12IwHashStringPKc(PLT)
	str	r0, [r4, #116]
	ldmfd	sp!, {r4, pc}
	.size	_ZN5Scene7SetNameEPKc, .-_ZN5Scene7SetNameEPKc
	.section	.text._ZN12SceneManagerC2Ev,"ax",%progbits
	.align	2
	.global	_ZN12SceneManagerC2Ev
	.hidden	_ZN12SceneManagerC2Ev
	.type	_ZN12SceneManagerC2Ev, %function
_ZN12SceneManagerC2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	str	r3, [r0, #8]
	mov	r0, #12
	bl	malloc(PLT)
	subs	r3, r0, #0
	beq	.L42
.L41:
	mov	r2, #0
	str	r3, [r3]
	str	r3, [r3, #4]
	mov	r0, r4
	str	r3, [r4, #8]
	str	r2, [r4]
	str	r2, [r4, #4]
	ldmfd	sp!, {r4, pc}
.L42:
	mov	r0, #12
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	mov	r3, r0
	b	.L41
	.size	_ZN12SceneManagerC2Ev, .-_ZN12SceneManagerC2Ev
	.global	_ZN12SceneManagerC1Ev
	.hidden	_ZN12SceneManagerC1Ev
	.set	_ZN12SceneManagerC1Ev,_ZN12SceneManagerC2Ev
	.section	.text._ZN12SceneManagerD2Ev,"ax",%progbits
	.align	2
	.global	_ZN12SceneManagerD2Ev
	.hidden	_ZN12SceneManagerD2Ev
	.type	_ZN12SceneManagerD2Ev, %function
_ZN12SceneManagerD2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	mov	r5, r0
	ldr	r3, [r0, #8]
	ldr	r4, [r3]
	cmp	r3, r4
	beq	.L44
.L47:
	ldr	r2, [r4, #8]
	subs	r0, r2, #0
	beq	.L45
	ldr	r3, [r2]
	ldr	r3, [r3, #4]
	blx	r3
	ldr	r3, [r5, #8]
.L45:
	ldr	r4, [r4]
	cmp	r4, r3
	bne	.L47
	ldr	r2, [r3]
	cmp	r2, r3
	beq	.L44
.L48:
	mov	r0, r2
	ldr	r4, [r2]
	bl	free(PLT)
	ldr	r3, [r5, #8]
	mov	r2, r4
	cmp	r4, r3
	bne	.L48
.L44:
	str	r3, [r3]
	ldr	r3, [r5, #8]
	str	r3, [r3, #4]
	ldr	r0, [r5, #8]
	cmp	r0, #0
	beq	.L49
	bl	free(PLT)
.L49:
	mov	r0, r5
	ldmfd	sp!, {r3, r4, r5, pc}
	.size	_ZN12SceneManagerD2Ev, .-_ZN12SceneManagerD2Ev
	.global	_ZN12SceneManagerD1Ev
	.hidden	_ZN12SceneManagerD1Ev
	.set	_ZN12SceneManagerD1Ev,_ZN12SceneManagerD2Ev
	.global	__aeabi_f2d
	.section	.text._ZN12SceneManager8SwitchToEP5Scene,"ax",%progbits
	.align	2
	.global	_ZN12SceneManager8SwitchToEP5Scene
	.hidden	_ZN12SceneManager8SwitchToEP5Scene
	.type	_ZN12SceneManager8SwitchToEP5Scene, %function
_ZN12SceneManager8SwitchToEP5Scene:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r2, #0
	ldr	r3, [r0]
	ldr	r7, .L60
	cmp	r3, #0
	sub	sp, sp, #48
	str	r1, [r0, #4]
	mov	r6, r0
.LPIC13:
	add	r7, pc, r7
	beq	.L59
	strb	r2, [r3, #121]
	ldr	r3, .L60+4
	ldr	r2, [r0, #4]
	mov	r1, #1
	ldr	r8, .L60+8
	strb	r1, [r2, #120]
	ldr	r3, [r7, r3]
	ldr	r10, [r0, #4]
	mov	r4, #0
	ldr	r9, [r3]
	mov	r5, #0
	ldr	r0, [r9, #536]
	bl	__aeabi_ui2f(PLT)
	add	r0, r0, #-2147483648
	str	r0, [r10, #4]	@ float
	ldr	r2, [r6, #4]
	ldr	r3, [r6]
	add	r10, r2, #4
	add	r3, r3, #4
	ldr	r6, [r2, #140]
	str	r3, [sp, #12]
	strd	r4, [sp]
	str	r8, [sp, #8]
	ldr	r0, [r9, #536]
	bl	__aeabi_ui2f(PLT)
	bl	__aeabi_f2d(PLT)
	ldr	r5, .L60+12
	ldr	r3, .L60+16
	ldr	lr, .L60+20
	str	r3, [sp, #24]
	ldr	ip, .L60+24
	ldr	r4, .L60+28
.LPIC14:
	add	lr, pc, lr
	mov	r3, r10
	mov	r2, r8
	strd	r0, [sp, #16]
	ldr	r1, [r7, r5]
	mov	r0, r6
	str	r1, [sp, #28]
	str	r4, [sp, #32]
	str	lr, [sp, #36]
	str	ip, [sp, #40]
	mov	r1, #1056964608
	bl	_ZN7IwTween13CTweenManager5TweenEfz(PLT)
	add	sp, sp, #48
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
.L59:
	str	r1, [r0]
	str	r2, [r1, #4]	@ float
	ldr	r1, [r0]
	mov	r2, #1
	strb	r2, [r1, #120]
	ldr	r1, [r0]
	strb	r2, [r1, #121]
	str	r3, [r0, #4]
	add	sp, sp, #48
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
.L61:
	.align	2
.L60:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC13+8)
	.word	g_IwGxState(GOT)
	.word	263
	.word	_ZN7IwTween4Ease6sineInEff(GOT)
	.word	270
	.word	_ZN12SceneManager16OnSwitchCompleteEPN7IwTween6CTweenE-(.LPIC14+8)
	.word	274
	.word	273
	.size	_ZN12SceneManager8SwitchToEP5Scene, .-_ZN12SceneManager8SwitchToEP5Scene
	.section	.text._ZN12SceneManager6RenderEv,"ax",%progbits
	.align	2
	.global	_ZN12SceneManager6RenderEv
	.hidden	_ZN12SceneManager6RenderEv
	.type	_ZN12SceneManager6RenderEv, %function
_ZN12SceneManager6RenderEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	mov	r5, r0
	ldr	r3, [r0, #8]
	ldr	r4, [r3]
	cmp	r3, r4
	ldmeqfd	sp!, {r3, r4, r5, pc}
.L65:
	ldr	r3, [r4, #8]
	mov	r0, r3
	ldr	r3, [r3]
	ldr	r3, [r3, #12]
	blx	r3
	ldr	r4, [r4]
	ldr	r3, [r5, #8]
	cmp	r4, r3
	bne	.L65
	ldmfd	sp!, {r3, r4, r5, pc}
	.size	_ZN12SceneManager6RenderEv, .-_ZN12SceneManager6RenderEv
	.section	.text._ZN12SceneManager6UpdateEf,"ax",%progbits
	.align	2
	.global	_ZN12SceneManager6UpdateEf
	.hidden	_ZN12SceneManager6UpdateEf
	.type	_ZN12SceneManager6UpdateEf, %function
_ZN12SceneManager6UpdateEf:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r5, r0
	ldr	r3, [r0, #8]
	mov	r6, r1
	ldr	r4, [r3]
	cmp	r3, r4
	ldmeqfd	sp!, {r4, r5, r6, pc}
.L69:
	ldr	r3, [r4, #8]
	mov	r1, r6
	mov	r0, r3
	ldr	r3, [r3]
	mov	r2, #1065353216
	ldr	r3, [r3, #8]
	blx	r3
	ldr	r4, [r4]
	ldr	r3, [r5, #8]
	cmp	r4, r3
	bne	.L69
	ldmfd	sp!, {r4, r5, r6, pc}
	.size	_ZN12SceneManager6UpdateEf, .-_ZN12SceneManager6UpdateEf
	.section	.text._ZN12SceneManager3AddEP5Scene,"ax",%progbits
	.align	2
	.global	_ZN12SceneManager3AddEP5Scene
	.hidden	_ZN12SceneManager3AddEP5Scene
	.type	_ZN12SceneManager3AddEP5Scene, %function
_ZN12SceneManager3AddEP5Scene:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r5, r0
	mov	r0, #12
	mov	r6, r1
	ldr	r4, [r5, #8]
	bl	malloc(PLT)
	cmp	r0, #0
	beq	.L72
.L71:
	str	r6, [r0, #8]
	ldr	r2, [r4, #4]
	str	r4, [r0]
	str	r2, [r0, #4]
	str	r0, [r2]
	str	r0, [r4, #4]
	str	r5, [r6, #124]
	ldmfd	sp!, {r4, r5, r6, pc}
.L72:
	mov	r0, #12
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	b	.L71
	.size	_ZN12SceneManager3AddEP5Scene, .-_ZN12SceneManager3AddEP5Scene
	.section	.text._ZN12SceneManager6RemoveEP5Scene,"ax",%progbits
	.align	2
	.global	_ZN12SceneManager6RemoveEP5Scene
	.hidden	_ZN12SceneManager6RemoveEP5Scene
	.type	_ZN12SceneManager6RemoveEP5Scene, %function
_ZN12SceneManager6RemoveEP5Scene:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r6, r1
	ldr	r5, [r0, #8]
	ldr	r0, [r5]
	cmp	r5, r0
	ldmeqfd	sp!, {r4, r5, r6, pc}
.L77:
	ldr	r3, [r0, #8]
	ldr	r4, [r0]
	cmp	r3, r6
	beq	.L78
.L75:
	cmp	r5, r4
	mov	r0, r4
	bne	.L77
	ldmfd	sp!, {r4, r5, r6, pc}
.L78:
	ldr	r3, [r0, #4]
	str	r4, [r3]
	str	r3, [r4, #4]
	bl	free(PLT)
	b	.L75
	.size	_ZN12SceneManager6RemoveEP5Scene, .-_ZN12SceneManager6RemoveEP5Scene
	.section	.text._ZN12SceneManager4FindEPKc,"ax",%progbits
	.align	2
	.global	_ZN12SceneManager4FindEPKc
	.hidden	_ZN12SceneManager4FindEPKc
	.type	_ZN12SceneManager4FindEPKc, %function
_ZN12SceneManager4FindEPKc:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	mov	r0, r1
	bl	_Z12IwHashStringPKc(PLT)
	ldr	ip, [r4, #8]
	ldr	r3, [ip]
	cmp	ip, r3
	bne	.L82
	b	.L83
.L84:
	ldr	r3, [r3]
	cmp	ip, r3
	beq	.L83
.L82:
	ldr	r2, [r3, #8]
	ldr	r1, [r2, #116]
	cmp	r0, r1
	bne	.L84
	mov	r0, r2
	ldmfd	sp!, {r4, pc}
.L83:
	mov	r2, #0
	mov	r0, r2
	ldmfd	sp!, {r4, pc}
	.size	_ZN12SceneManager4FindEPKc, .-_ZN12SceneManager4FindEPKc
	.section	.text._ZN12SceneManager12FinishSwitchEv,"ax",%progbits
	.align	2
	.global	_ZN12SceneManager12FinishSwitchEv
	.hidden	_ZN12SceneManager12FinishSwitchEv
	.type	_ZN12SceneManager12FinishSwitchEv, %function
_ZN12SceneManager12FinishSwitchEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	ldr	r0, [r0, #4]
	mov	r3, #1
	mov	r2, #1065353216
	strb	r3, [r0, #121]
	ldr	r0, [r4, #4]
	mov	r1, #0
	strb	r3, [r0, #120]
	ldr	r3, [r4]
	mov	r0, r3
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	blx	r3
	ldr	r2, [r4]
	mov	r3, #0
	strb	r3, [r2, #120]
	ldr	r2, [r4, #4]
	stmia	r4, {r2, r3}
	ldmfd	sp!, {r4, pc}
	.size	_ZN12SceneManager12FinishSwitchEv, .-_ZN12SceneManager12FinishSwitchEv
	.section	.text._Z16SceneManagerInitv,"ax",%progbits
	.align	2
	.global	_Z16SceneManagerInitv
	.hidden	_Z16SceneManagerInitv
	.type	_Z16SceneManagerInitv, %function
_Z16SceneManagerInitv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	ldr	r3, .L105
.LPIC15:
	ldr	r5, [pc, r3]		@ tls_load_dot_plus_eight
	cmp	r5, #0
	beq	.L87
	ldr	r3, [r5, #8]
	ldr	r4, [r3]
	cmp	r3, r4
	beq	.L88
.L91:
	ldr	r2, [r4, #8]
	subs	r0, r2, #0
	beq	.L89
	ldr	r3, [r2]
	ldr	r3, [r3, #4]
	blx	r3
	ldr	r3, [r5, #8]
.L89:
	ldr	r4, [r4]
	cmp	r4, r3
	bne	.L91
	ldr	r2, [r3]
	cmp	r2, r3
	beq	.L88
.L92:
	mov	r0, r2
	ldr	r4, [r2]
	bl	free(PLT)
	ldr	r3, [r5, #8]
	mov	r2, r4
	cmp	r4, r3
	bne	.L92
.L88:
	str	r3, [r3]
	ldr	r3, [r5, #8]
	str	r3, [r3, #4]
	ldr	r0, [r5, #8]
	cmp	r0, #0
	beq	.L93
	bl	free(PLT)
.L93:
	mov	r0, r5
	bl	_ZdlPv(PLT)
.L87:
	mov	r0, #12
	bl	_Znwj(PLT)
	mov	r3, #0
	str	r3, [r0, #8]
	mov	r4, r0
	mov	r0, #12
	bl	malloc(PLT)
	cmp	r0, #0
	beq	.L104
.L94:
	ldr	r1, .L105+4
	mov	r2, #0
.LPIC16:
	add	r1, pc, r1
	str	r0, [r0]
	str	r0, [r0, #4]
	str	r4, [r1]
	str	r0, [r4, #8]
	str	r2, [r4]
	str	r2, [r4, #4]
	mov	r0, #1
	ldmfd	sp!, {r3, r4, r5, pc}
.L104:
	mov	r0, #12
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	b	.L94
.L106:
	.align	2
.L105:
	.word	.LANCHOR1-(.LPIC15+8)
	.word	.LANCHOR1-(.LPIC16+8)
	.size	_Z16SceneManagerInitv, .-_Z16SceneManagerInitv
	.section	.text._Z15GetSceneManagerv,"ax",%progbits
	.align	2
	.global	_Z15GetSceneManagerv
	.hidden	_Z15GetSceneManagerv
	.type	_Z15GetSceneManagerv, %function
_Z15GetSceneManagerv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L108
.LPIC17:
	ldr	r0, [pc, r3]		@ tls_load_dot_plus_eight
	bx	lr
.L109:
	.align	2
.L108:
	.word	.LANCHOR1-(.LPIC17+8)
	.size	_Z15GetSceneManagerv, .-_Z15GetSceneManagerv
	.section	.text._Z16FreeSceneManagerv,"ax",%progbits
	.align	2
	.global	_Z16FreeSceneManagerv
	.hidden	_Z16FreeSceneManagerv
	.type	_Z16FreeSceneManagerv, %function
_Z16FreeSceneManagerv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	ldr	r3, .L125
.LPIC18:
	ldr	r5, [pc, r3]		@ tls_load_dot_plus_eight
	cmp	r5, #0
	beq	.L118
	ldr	r3, [r5, #8]
	ldr	r4, [r3]
	cmp	r3, r4
	beq	.L112
.L115:
	ldr	r2, [r4, #8]
	subs	r0, r2, #0
	beq	.L113
	ldr	r3, [r2]
	ldr	r3, [r3, #4]
	blx	r3
	ldr	r3, [r5, #8]
.L113:
	ldr	r4, [r4]
	cmp	r4, r3
	bne	.L115
	ldr	r2, [r3]
	cmp	r2, r3
	beq	.L112
.L116:
	mov	r0, r2
	ldr	r4, [r2]
	bl	free(PLT)
	ldr	r3, [r5, #8]
	mov	r2, r4
	cmp	r4, r3
	bne	.L116
.L112:
	str	r3, [r3]
	ldr	r3, [r5, #8]
	str	r3, [r3, #4]
	ldr	r0, [r5, #8]
	cmp	r0, #0
	beq	.L117
	bl	free(PLT)
.L117:
	mov	r0, r5
	bl	_ZdlPv(PLT)
	ldr	r3, .L125+4
	mov	r2, #0
.LPIC19:
	add	r3, pc, r3
	mov	r0, #1
	str	r2, [r3]
	ldmfd	sp!, {r3, r4, r5, pc}
.L118:
	mov	r0, r5
	ldmfd	sp!, {r3, r4, r5, pc}
.L126:
	.align	2
.L125:
	.word	.LANCHOR1-(.LPIC18+8)
	.word	.LANCHOR1-(.LPIC19+8)
	.size	_Z16FreeSceneManagerv, .-_Z16FreeSceneManagerv
	.section	.text._ZN5Scene6UpdateEff,"ax",%progbits
	.align	2
	.global	_ZN5Scene6UpdateEff
	.hidden	_ZN5Scene6UpdateEff
	.type	_ZN5Scene6UpdateEff, %function
_ZN5Scene6UpdateEff:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r4, r0
	ldrb	r3, [r0, #120]	@ zero_extendqisi2
	mov	r5, r2
	mov	r6, r1
	cmp	r3, #0
	ldmeqfd	sp!, {r4, r5, r6, pc}
	add	r0, r0, #128
	bl	_ZN7IwTween13CTweenManager6UpdateEf(PLT)
	mov	r0, r4
	mov	r1, r6
	mov	r2, r5
	ldmfd	sp!, {r4, r5, r6, lr}
	b	_ZN18Iw2DSceneGraphCore5CNode6UpdateEff(PLT)
	.size	_ZN5Scene6UpdateEff, .-_ZN5Scene6UpdateEff
	.section	.text._ZN5Scene6RenderEv,"ax",%progbits
	.align	2
	.global	_ZN5Scene6RenderEv
	.hidden	_ZN5Scene6RenderEv
	.type	_ZN5Scene6RenderEv, %function
_ZN5Scene6RenderEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	_ZN18Iw2DSceneGraphCore5CNode6RenderEv(PLT)
	.size	_ZN5Scene6RenderEv, .-_ZN5Scene6RenderEv
	.hidden	_ZTS5Scene
	.global	_ZTS5Scene
	.hidden	_ZTI5Scene
	.global	_ZTI5Scene
	.hidden	_ZTV5Scene
	.global	_ZTV5Scene
	.section	.rodata
	.align	2
	.type	_ZTS5Scene, %object
	.size	_ZTS5Scene, 7
_ZTS5Scene:
	.ascii	"5Scene\000"
	.section	.data.rel.ro,"aw",%progbits
	.align	3
	.set	.LANCHOR0,. + 0
	.type	_ZTV5Scene, %object
	.size	_ZTV5Scene, 28
_ZTV5Scene:
	.word	0
	.word	_ZTI5Scene
	.word	_ZN5SceneD1Ev
	.word	_ZN5SceneD0Ev
	.word	_ZN5Scene6UpdateEff
	.word	_ZN5Scene6RenderEv
	.word	_ZN5Scene4InitEv
	.type	_ZTI5Scene, %object
	.size	_ZTI5Scene, 12
_ZTI5Scene:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTS5Scene
	.word	_ZTIN18Iw2DSceneGraphCore5CNodeE
	.bss
	.align	2
	.set	.LANCHOR1,. + 0
	.type	_ZN12_GLOBAL__N_1L12sceneManagerE, %object
	.size	_ZN12_GLOBAL__N_1L12sceneManagerE, 4
_ZN12_GLOBAL__N_1L12sceneManagerE:
	.space	4
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-branch revision 208322]"
