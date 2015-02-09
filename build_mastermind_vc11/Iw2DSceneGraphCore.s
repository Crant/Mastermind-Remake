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
	.file	"Iw2DSceneGraphCore.cpp"
	.section	.text._ZN18Iw2DSceneGraphCore5CNodeD2Ev,"ax",%progbits
	.align	2
	.global	_ZN18Iw2DSceneGraphCore5CNodeD2Ev
	.hidden	_ZN18Iw2DSceneGraphCore5CNodeD2Ev
	.type	_ZN18Iw2DSceneGraphCore5CNodeD2Ev, %function
_ZN18Iw2DSceneGraphCore5CNodeD2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L15
	stmfd	sp!, {r4, r5, r6, lr}
.LPIC8:
	add	r3, pc, r3
	ldr	r4, [r0, #56]
	ldr	r5, [r0, #60]
	add	r3, r3, #8
	cmp	r4, r5
	mov	r6, r0
	str	r3, [r0]
	beq	.L7
.L5:
	ldr	r3, [r4], #4
	subs	r0, r3, #0
	beq	.L3
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	blx	r3
.L3:
	cmp	r5, r4
	bne	.L5
	ldr	r0, [r6, #56]
.L2:
	cmp	r0, #0
	beq	.L6
	bl	free(PLT)
.L6:
	mov	r0, r6
	ldmfd	sp!, {r4, r5, r6, pc}
.L7:
	mov	r0, r4
	b	.L2
.L16:
	.align	2
.L15:
	.word	.LANCHOR0-(.LPIC8+8)
	.size	_ZN18Iw2DSceneGraphCore5CNodeD2Ev, .-_ZN18Iw2DSceneGraphCore5CNodeD2Ev
	.global	_ZN18Iw2DSceneGraphCore5CNodeD1Ev
	.hidden	_ZN18Iw2DSceneGraphCore5CNodeD1Ev
	.set	_ZN18Iw2DSceneGraphCore5CNodeD1Ev,_ZN18Iw2DSceneGraphCore5CNodeD2Ev
	.section	.text._ZN18Iw2DSceneGraphCore5CNode6RenderEv,"ax",%progbits
	.align	2
	.global	_ZN18Iw2DSceneGraphCore5CNode6RenderEv
	.hidden	_ZN18Iw2DSceneGraphCore5CNode6RenderEv
	.type	_ZN18Iw2DSceneGraphCore5CNode6RenderEv, %function
_ZN18Iw2DSceneGraphCore5CNode6RenderEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	ldrb	r3, [r0, #44]	@ zero_extendqisi2
	cmp	r3, #0
	ldmeqfd	sp!, {r3, r4, r5, pc}
	ldr	r4, [r0, #56]
	ldr	r5, [r0, #60]
	cmp	r4, r5
	ldmeqfd	sp!, {r3, r4, r5, pc}
.L20:
	ldr	r3, [r4], #4
	mov	r0, r3
	ldr	r3, [r3]
	ldr	r3, [r3, #12]
	blx	r3
	cmp	r5, r4
	bne	.L20
	ldmfd	sp!, {r3, r4, r5, pc}
	.size	_ZN18Iw2DSceneGraphCore5CNode6RenderEv, .-_ZN18Iw2DSceneGraphCore5CNode6RenderEv
	.section	.text._ZN18Iw2DSceneGraphCore5CNodeD0Ev,"ax",%progbits
	.align	2
	.global	_ZN18Iw2DSceneGraphCore5CNodeD0Ev
	.hidden	_ZN18Iw2DSceneGraphCore5CNodeD0Ev
	.type	_ZN18Iw2DSceneGraphCore5CNodeD0Ev, %function
_ZN18Iw2DSceneGraphCore5CNodeD0Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L34
	stmfd	sp!, {r4, r5, r6, lr}
.LPIC9:
	add	r3, pc, r3
	ldr	r4, [r0, #56]
	ldr	r5, [r0, #60]
	add	r3, r3, #8
	cmp	r4, r5
	mov	r6, r0
	str	r3, [r0]
	beq	.L27
.L25:
	ldr	r3, [r4], #4
	subs	r0, r3, #0
	beq	.L23
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	blx	r3
.L23:
	cmp	r5, r4
	bne	.L25
	ldr	r0, [r6, #56]
.L22:
	cmp	r0, #0
	beq	.L26
	bl	free(PLT)
.L26:
	mov	r0, r6
	bl	_ZdlPv(PLT)
	mov	r0, r6
	ldmfd	sp!, {r4, r5, r6, pc}
.L27:
	mov	r0, r4
	b	.L22
.L35:
	.align	2
.L34:
	.word	.LANCHOR0-(.LPIC9+8)
	.size	_ZN18Iw2DSceneGraphCore5CNodeD0Ev, .-_ZN18Iw2DSceneGraphCore5CNodeD0Ev
	.section	.text._ZN18Iw2DSceneGraphCore5CNodeC2Ev,"ax",%progbits
	.align	2
	.global	_ZN18Iw2DSceneGraphCore5CNodeC2Ev
	.hidden	_ZN18Iw2DSceneGraphCore5CNodeC2Ev
	.type	_ZN18Iw2DSceneGraphCore5CNodeC2Ev, %function
_ZN18Iw2DSceneGraphCore5CNodeC2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5}
	mov	r2, #0
	ldr	r5, .L37
	mov	r1, #1065353216
.LPIC10:
	add	r5, pc, r5
	mov	ip, #0
	add	r5, r5, #8
	mov	r4, #1
	str	r5, [r0]
	strb	r4, [r0, #44]
	str	ip, [r0, #56]
	str	ip, [r0, #60]
	str	ip, [r0, #64]
	str	ip, [r0, #52]
	str	r2, [r0, #16]	@ float
	str	r2, [r0, #12]	@ float
	str	r2, [r0, #8]	@ float
	str	r2, [r0, #4]	@ float
	str	r2, [r0, #24]	@ float
	str	r2, [r0, #20]	@ float
	str	r2, [r0, #36]	@ float
	str	r1, [r0, #32]	@ float
	str	r1, [r0, #28]	@ float
	str	r1, [r0, #48]	@ float
	str	r1, [r0, #40]	@ float
	ldmfd	sp!, {r4, r5}
	bx	lr
.L38:
	.align	2
.L37:
	.word	.LANCHOR0-(.LPIC10+8)
	.size	_ZN18Iw2DSceneGraphCore5CNodeC2Ev, .-_ZN18Iw2DSceneGraphCore5CNodeC2Ev
	.global	_ZN18Iw2DSceneGraphCore5CNodeC1Ev
	.hidden	_ZN18Iw2DSceneGraphCore5CNodeC1Ev
	.set	_ZN18Iw2DSceneGraphCore5CNodeC1Ev,_ZN18Iw2DSceneGraphCore5CNodeC2Ev
	.global	__aeabi_fadd
	.global	__aeabi_fmul
	.global	__aeabi_fdiv
	.global	__aeabi_f2d
	.global	__aeabi_d2f
	.global	__aeabi_fsub
	.section	.text._ZN18Iw2DSceneGraphCore5CNode17CalculateMatricesEv,"ax",%progbits
	.align	2
	.global	_ZN18Iw2DSceneGraphCore5CNode17CalculateMatricesEv
	.hidden	_ZN18Iw2DSceneGraphCore5CNode17CalculateMatricesEv
	.type	_ZN18Iw2DSceneGraphCore5CNode17CalculateMatricesEv, %function
_ZN18Iw2DSceneGraphCore5CNode17CalculateMatricesEv:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r6, r0
	ldr	r7, [r0, #52]
	ldr	r3, .L42
	cmp	r7, #0
.LPIC11:
	add	r3, pc, r3
	sub	sp, sp, #28
	beq	.L41
	add	r7, r7, #92
.L40:
	ldr	r3, [r6, #4]	@ float
	ldr	fp, [r6, #8]	@ float
	ldr	r0, [r6, #36]	@ float
	str	r3, [r6, #84]	@ float
	str	fp, [r6, #88]	@ float
	mov	r1, r0
	str	r3, [sp, #4]
	bl	__aeabi_fadd(PLT)
	ldr	r1, .L42+4
	bl	__aeabi_fmul(PLT)
	ldr	r1, .L42+8
	bl	__aeabi_fdiv(PLT)
	bl	__aeabi_f2d(PLT)
	mov	r4, r0
	mov	r5, r1
	bl	cos(PLT)
	bl	__aeabi_d2f(PLT)
	ldr	r2, [r6, #28]	@ float
	mov	r1, r2
	str	r2, [sp, #12]
	mov	r10, r0
	bl	__aeabi_fmul(PLT)
	mov	r1, r5
	mov	r8, r0
	str	r0, [r6, #68]	@ float
	mov	r0, r4
	bl	sin(PLT)
	bl	__aeabi_d2f(PLT)
	ldr	r9, [r6, #32]	@ float
	mov	r1, r9
	mov	r4, r0
	add	r0, r0, #-2147483648
	bl	__aeabi_fmul(PLT)
	mov	r1, r4
	str	r0, [r6, #72]	@ float
	ldr	r2, [sp, #12]
	mov	r5, r0
	mov	r0, r2
	bl	__aeabi_fmul(PLT)
	mov	r1, r9
	mov	r4, r0
	str	r0, [r6, #76]	@ float
	mov	r0, r10
	bl	__aeabi_fmul(PLT)
	ldr	r1, [r6, #20]	@ float
	str	r0, [sp, #16]	@ float
	str	r0, [r6, #80]	@ float
	ldr	r0, [r6, #12]	@ float
	bl	__aeabi_fmul(PLT)
	ldr	r1, [r6, #24]	@ float
	mov	r10, r0
	ldr	r0, [r6, #16]	@ float
	bl	__aeabi_fmul(PLT)
	mov	r1, r10
	mov	r9, r0
	mov	r0, r8
	bl	__aeabi_fmul(PLT)
	mov	r1, r9
	mov	r2, r0
	mov	r0, r4
	str	r2, [sp, #12]
	bl	__aeabi_fmul(PLT)
	ldr	r2, [sp, #12]
	mov	r1, r0
	mov	r0, r2
	bl	__aeabi_fadd(PLT)
	ldr	r3, [sp, #4]
	mov	r1, r0
	mov	r0, r3
	bl	__aeabi_fsub(PLT)
	mov	r1, r10
	mov	r3, r0
	str	r0, [r6, #84]	@ float
	mov	r0, r5
	str	r3, [sp, #4]
	bl	__aeabi_fmul(PLT)
	mov	r1, r9
	mov	r10, r0
	ldr	r0, [sp, #16]	@ float
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, r10
	bl	__aeabi_fadd(PLT)
	mov	r1, r0
	mov	r0, fp
	bl	__aeabi_fsub(PLT)
	str	r0, [r6, #88]	@ float
	ldr	fp, [r7]	@ float
	ldr	r3, [sp, #4]
	mov	r2, r0
	mov	r1, fp
	mov	r0, r3
	ldr	r10, [r7, #8]	@ float
	str	r2, [sp, #12]
	bl	__aeabi_fmul(PLT)
	ldr	r2, [sp, #12]
	mov	r1, r10
	mov	r9, r0
	mov	r0, r2
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, r9
	bl	__aeabi_fadd(PLT)
	ldr	r1, [r7, #16]	@ float
	bl	__aeabi_fadd(PLT)
	ldr	r3, [sp, #4]
	ldr	r9, [r7, #4]	@ float
	mov	r1, r9
	mov	ip, r0
	mov	r0, r3
	ldr	r3, [r7, #12]	@ float
	str	ip, [sp, #8]
	str	r3, [sp, #20]	@ float
	bl	__aeabi_fmul(PLT)
	ldr	r2, [sp, #12]
	ldr	r1, [sp, #20]	@ float
	mov	r3, r0
	mov	r0, r2
	str	r3, [sp, #4]
	bl	__aeabi_fmul(PLT)
	ldr	r3, [sp, #4]
	mov	r1, r0
	mov	r0, r3
	bl	__aeabi_fadd(PLT)
	ldr	r1, [r7, #20]	@ float
	bl	__aeabi_fadd(PLT)
	mov	r1, fp
	mov	r7, r0
	mov	r0, r8
	bl	__aeabi_fmul(PLT)
	mov	r1, r10
	mov	r3, r0
	mov	r0, r5
	str	r3, [sp, #4]
	bl	__aeabi_fmul(PLT)
	ldr	r3, [sp, #4]
	mov	r1, r0
	mov	r0, r3
	bl	__aeabi_fadd(PLT)
	mov	r1, r9
	str	r0, [r6, #92]	@ float
	mov	r0, r8
	bl	__aeabi_fmul(PLT)
	ldr	r1, [sp, #20]	@ float
	mov	r8, r0
	mov	r0, r5
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, r8
	bl	__aeabi_fadd(PLT)
	mov	r1, fp
	str	r0, [r6, #96]	@ float
	mov	r0, r4
	bl	__aeabi_fmul(PLT)
	mov	r1, r10
	mov	r5, r0
	ldr	r0, [sp, #16]	@ float
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fadd(PLT)
	mov	r1, r9
	str	r0, [r6, #100]	@ float
	mov	r0, r4
	bl	__aeabi_fmul(PLT)
	ldr	r1, [sp, #20]	@ float
	mov	r4, r0
	ldr	r0, [sp, #16]	@ float
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, r4
	bl	__aeabi_fadd(PLT)
	ldr	ip, [sp, #8]
	str	ip, [r6, #108]	@ float
	str	r7, [r6, #112]	@ float
	str	r0, [r6, #104]	@ float
	add	sp, sp, #28
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L41:
	ldr	r2, .L42+12
	ldr	r7, [r3, r2]
	b	.L40
.L43:
	.align	2
.L42:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC11+8)
	.word	1078530011
	.word	1135869952
	.word	_ZN9CIwFMat2D10g_IdentityE(GOT)
	.size	_ZN18Iw2DSceneGraphCore5CNode17CalculateMatricesEv, .-_ZN18Iw2DSceneGraphCore5CNode17CalculateMatricesEv
	.section	.text._ZN18Iw2DSceneGraphCore5CNode6UpdateEff,"ax",%progbits
	.align	2
	.global	_ZN18Iw2DSceneGraphCore5CNode6UpdateEff
	.hidden	_ZN18Iw2DSceneGraphCore5CNode6UpdateEff
	.type	_ZN18Iw2DSceneGraphCore5CNode6UpdateEff, %function
_ZN18Iw2DSceneGraphCore5CNode6UpdateEff:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}
	mov	r5, r0
	mov	r7, r1
	mov	r0, r2
	ldr	r1, [r5, #40]	@ float
	bl	__aeabi_fmul(PLT)
	str	r0, [r5, #48]	@ float
	mov	r6, r0
	mov	r0, r5
	bl	_ZN18Iw2DSceneGraphCore5CNode17CalculateMatricesEv(PLT)
	ldr	r4, [r5, #56]
	ldr	r5, [r5, #60]
	cmp	r4, r5
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, pc}
.L47:
	ldr	r3, [r4], #4
	mov	r1, r7
	mov	r0, r3
	ldr	r3, [r3]
	mov	r2, r6
	ldr	r3, [r3, #8]
	blx	r3
	cmp	r5, r4
	bne	.L47
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}
	.size	_ZN18Iw2DSceneGraphCore5CNode6UpdateEff, .-_ZN18Iw2DSceneGraphCore5CNode6UpdateEff
	.section	.text._ZN18Iw2DSceneGraphCore5CNode8AddChildEPS0_,"ax",%progbits
	.align	2
	.global	_ZN18Iw2DSceneGraphCore5CNode8AddChildEPS0_
	.hidden	_ZN18Iw2DSceneGraphCore5CNode8AddChildEPS0_
	.type	_ZN18Iw2DSceneGraphCore5CNode8AddChildEPS0_, %function
_ZN18Iw2DSceneGraphCore5CNode8AddChildEPS0_:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov	r4, r1
	ldr	r6, [r1, #52]
	mov	r5, r0
	cmp	r6, #0
	beq	.L49
	ldr	r0, [r6, #56]
	ldr	r1, [r6, #60]
	cmp	r0, r1
	beq	.L49
	ldr	r2, [r0]
	cmp	r2, r4
	addne	r3, r0, #4
	bne	.L52
	b	.L50
.L54:
	ldr	r2, [r3], #4
	cmp	r2, r4
	beq	.L50
.L52:
	cmp	r1, r3
	mov	r0, r3
	bne	.L54
.L49:
	ldr	r6, [r5, #60]
	ldr	r3, [r5, #64]
	cmp	r6, r3
	beq	.L55
.L72:
	str	r4, [r6]
	ldr	r3, [r5, #60]
	add	r3, r3, #4
	str	r3, [r5, #60]
	str	r5, [r4, #52]
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
.L50:
	mov	r3, #0
	str	r3, [r2, #52]
	ldr	r2, [r6, #60]
	add	r1, r0, #4
	cmp	r1, r2
	beq	.L53
	rsb	r2, r1, r2
	bl	memmove(PLT)
	ldr	r2, [r6, #60]
.L53:
	sub	r2, r2, #4
	str	r2, [r6, #60]
	ldr	r6, [r5, #60]
	ldr	r3, [r5, #64]
	cmp	r6, r3
	bne	.L72
.L55:
	ldr	r7, [r5, #56]
	rsb	r3, r7, r6
	movs	r3, r3, asr #2
	beq	.L62
	movs	r9, r3, asl #1
	moveq	r8, r9
	bne	.L57
.L58:
	cmp	r6, r7
	moveq	r0, r8
	beq	.L60
	rsb	r6, r7, r6
	mov	r1, r7
	mov	r2, r6
	mov	r0, r8
	bl	memmove(PLT)
	add	r0, r0, r6
.L60:
	mov	r6, r0
	str	r4, [r6], #4
	ldr	r0, [r5, #56]
	cmp	r0, #0
	beq	.L61
	bl	free(PLT)
.L61:
	add	r9, r8, r9
	str	r9, [r5, #64]
	str	r8, [r5, #56]
	str	r6, [r5, #60]
	str	r5, [r4, #52]
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
.L62:
	mov	r9, #1
.L57:
	mov	r9, r9, asl #2
	mov	r0, r9
	bl	malloc(PLT)
	subs	r8, r0, #0
	bne	.L58
	mov	r0, r9
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	ldr	r7, [r5, #56]
	mov	r8, r0
	b	.L58
	.size	_ZN18Iw2DSceneGraphCore5CNode8AddChildEPS0_, .-_ZN18Iw2DSceneGraphCore5CNode8AddChildEPS0_
	.section	.text._ZN18Iw2DSceneGraphCore5CNode11RemoveChildEPS0_,"ax",%progbits
	.align	2
	.global	_ZN18Iw2DSceneGraphCore5CNode11RemoveChildEPS0_
	.hidden	_ZN18Iw2DSceneGraphCore5CNode11RemoveChildEPS0_
	.type	_ZN18Iw2DSceneGraphCore5CNode11RemoveChildEPS0_, %function
_ZN18Iw2DSceneGraphCore5CNode11RemoveChildEPS0_:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	mov	r5, r0
	ldr	r0, [r0, #56]
	ldr	r4, [r5, #60]
	cmp	r0, r4
	ldmeqfd	sp!, {r3, r4, r5, pc}
	ldr	r2, [r0]
	cmp	r2, r1
	addne	r3, r0, #4
	bne	.L77
	b	.L75
.L79:
	ldr	r2, [r3], #4
	cmp	r2, r1
	beq	.L75
.L77:
	cmp	r4, r3
	mov	r0, r3
	bne	.L79
	ldmfd	sp!, {r3, r4, r5, pc}
.L75:
	mov	r3, #0
	str	r3, [r2, #52]
	ldr	r2, [r5, #60]
	add	r1, r0, #4
	cmp	r1, r2
	beq	.L78
	rsb	r2, r1, r2
	bl	memmove(PLT)
	ldr	r2, [r5, #60]
.L78:
	sub	r2, r2, #4
	str	r2, [r5, #60]
	ldmfd	sp!, {r3, r4, r5, pc}
	.size	_ZN18Iw2DSceneGraphCore5CNode11RemoveChildEPS0_, .-_ZN18Iw2DSceneGraphCore5CNode11RemoveChildEPS0_
	.section	.text._ZN18Iw2DSceneGraphCore5CNode7IsChildEPS0_,"ax",%progbits
	.align	2
	.global	_ZN18Iw2DSceneGraphCore5CNode7IsChildEPS0_
	.hidden	_ZN18Iw2DSceneGraphCore5CNode7IsChildEPS0_
	.type	_ZN18Iw2DSceneGraphCore5CNode7IsChildEPS0_, %function
_ZN18Iw2DSceneGraphCore5CNode7IsChildEPS0_:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #56]
	ldr	r0, [r0, #60]
	cmp	r3, r0
	beq	.L85
	ldr	r2, [r3]
	cmp	r2, r1
	beq	.L87
	add	r3, r3, #4
	b	.L83
.L84:
	ldr	r2, [r2]
	add	r3, r3, #4
	cmp	r2, r1
	beq	.L87
.L83:
	cmp	r0, r3
	mov	r2, r3
	bne	.L84
.L85:
	mov	r0, #0
	bx	lr
.L87:
	mov	r0, #1
	bx	lr
	.size	_ZN18Iw2DSceneGraphCore5CNode7IsChildEPS0_, .-_ZN18Iw2DSceneGraphCore5CNode7IsChildEPS0_
	.global	__aeabi_i2f
	.global	__aeabi_fcmpge
	.section	.text._ZN18Iw2DSceneGraphCore5CNode7HitTestEii,"ax",%progbits
	.align	2
	.global	_ZN18Iw2DSceneGraphCore5CNode7HitTestEii
	.hidden	_ZN18Iw2DSceneGraphCore5CNode7HitTestEii
	.type	_ZN18Iw2DSceneGraphCore5CNode7HitTestEii, %function
_ZN18Iw2DSceneGraphCore5CNode7HitTestEii:
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, #0
	sub	sp, sp, #84
	mov	r5, r0
	mov	r8, r1
	ldr	r0, [r0, #12]	@ float
	mov	r1, r4
	mov	fp, r2
	bl	__aeabi_fadd(PLT)
	mov	r1, r4
	str	r0, [sp, #32]	@ float
	ldr	r0, [r5, #16]	@ float
	bl	__aeabi_fadd(PLT)
	ldr	r3, [r5, #92]	@ float
	mov	r1, r4
	str	r3, [sp, #28]	@ float
	ldr	r3, [r5, #100]	@ float
	str	r3, [sp, #24]	@ float
	str	r0, [sp, #12]	@ float
	ldr	r0, [sp, #28]	@ float
	bl	__aeabi_fmul(PLT)
	ldr	r1, [sp, #24]	@ float
	mov	r7, r0
	ldr	r0, [sp, #12]	@ float
	bl	__aeabi_fmul(PLT)
	ldr	r3, [r5, #108]	@ float
	str	r3, [sp, #4]	@ float
	str	r0, [sp, #36]	@ float
	ldr	r1, [sp, #36]	@ float
	mov	r0, r7
	bl	__aeabi_fadd(PLT)
	ldr	r1, [sp, #4]	@ float
	bl	__aeabi_fadd(PLT)
	ldr	r6, [r5, #96]	@ float
	ldr	r3, [r5, #104]	@ float
	mov	r1, r4
	str	r3, [sp, #8]	@ float
	mov	r10, r0
	mov	r0, r6
	bl	__aeabi_fmul(PLT)
	ldr	r1, [sp, #8]	@ float
	ldr	r5, [r5, #112]	@ float
	mov	r9, r0
	ldr	r0, [sp, #12]	@ float
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, r9
	bl	__aeabi_fadd(PLT)
	mov	r1, r5
	bl	__aeabi_fadd(PLT)
	mov	r9, r0
	mov	r0, r8
	bl	__aeabi_i2f(PLT)
	str	r0, [sp, #16]	@ float
	mov	r0, fp
	bl	__aeabi_i2f(PLT)
	mov	r1, r4
	str	r0, [sp, #20]	@ float
	ldr	r0, [sp, #24]	@ float
	bl	__aeabi_fmul(PLT)
	mov	fp, r0
	mov	r1, fp
	mov	r0, r7
	bl	__aeabi_fadd(PLT)
	mov	r1, r0
	ldr	r0, [sp, #4]	@ float
	bl	__aeabi_fadd(PLT)
	mov	r1, r4
	mov	r8, r0
	mov	r0, r6
	bl	__aeabi_fmul(PLT)
	mov	r1, r4
	mov	r7, r0
	ldr	r0, [sp, #8]	@ float
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, r7
	bl	__aeabi_fadd(PLT)
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fadd(PLT)
	mov	r1, r10
	mov	r7, r0
	ldr	r0, [sp, #16]	@ float
	bl	__aeabi_fsub(PLT)
	mov	r1, r9
	mov	r3, r0
	mov	r0, r7
	str	r3, [sp]
	bl	__aeabi_fsub(PLT)
	ldr	r3, [sp]
	mov	r1, r0
	mov	r0, r3
	bl	__aeabi_fmul(PLT)
	mov	r1, r10
	mov	r3, r0
	mov	r0, r8
	str	r3, [sp]
	bl	__aeabi_fsub(PLT)
	mov	r1, r9
	mov	r10, r0
	ldr	r0, [sp, #20]	@ float
	bl	__aeabi_fsub(PLT)
	mov	r1, r0
	mov	r0, r10
	bl	__aeabi_fmul(PLT)
	ldr	r3, [sp]
	mov	r1, r0
	mov	r0, r3
	bl	__aeabi_fsub(PLT)
	mov	r1, r4
	bl	__aeabi_fcmpge(PLT)
	cmp	r0, #0
	str	r0, [sp, #40]
	bne	.L91
	ldr	r1, [sp, #32]	@ float
	ldr	r0, [sp, #28]	@ float
	bl	__aeabi_fmul(PLT)
	mov	r1, fp
	mov	r3, r0
	str	r3, [sp]
	bl	__aeabi_fadd(PLT)
	mov	r1, r0
	ldr	r0, [sp, #4]	@ float
	bl	__aeabi_fadd(PLT)
	ldr	r1, [sp, #32]	@ float
	mov	r10, r0
	mov	r0, r6
	bl	__aeabi_fmul(PLT)
	mov	r1, r4
	mov	r9, r0
	ldr	r0, [sp, #8]	@ float
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, r9
	bl	__aeabi_fadd(PLT)
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fadd(PLT)
	mov	r1, r8
	mov	r9, r0
	ldr	r0, [sp, #16]	@ float
	bl	__aeabi_fsub(PLT)
	mov	r1, r7
	mov	fp, r0
	mov	r0, r9
	bl	__aeabi_fsub(PLT)
	mov	r1, r0
	mov	r0, fp
	bl	__aeabi_fmul(PLT)
	mov	r1, r8
	mov	fp, r0
	mov	r0, r10
	bl	__aeabi_fsub(PLT)
	mov	r1, r7
	mov	r8, r0
	ldr	r0, [sp, #20]	@ float
	bl	__aeabi_fsub(PLT)
	mov	r1, r0
	mov	r0, r8
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, fp
	bl	__aeabi_fsub(PLT)
	mov	r1, r4
	bl	__aeabi_fcmpge(PLT)
	ldr	r3, [sp]
	cmp	r0, #0
	str	r0, [sp, #44]
	bne	.L92
	mov	r0, r3
	ldr	r1, [sp, #36]	@ float
	bl	__aeabi_fadd(PLT)
	mov	r1, r0
	ldr	r0, [sp, #4]	@ float
	bl	__aeabi_fadd(PLT)
	ldr	r1, [sp, #32]	@ float
	mov	r8, r0
	mov	r0, r6
	bl	__aeabi_fmul(PLT)
	ldr	r1, [sp, #12]	@ float
	mov	r7, r0
	ldr	r0, [sp, #8]	@ float
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, r7
	bl	__aeabi_fadd(PLT)
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fadd(PLT)
	mov	r1, r10
	mov	r7, r0
	ldr	r0, [sp, #16]	@ float
	bl	__aeabi_fsub(PLT)
	mov	r1, r9
	mov	fp, r0
	mov	r0, r7
	bl	__aeabi_fsub(PLT)
	mov	r1, r0
	mov	r0, fp
	bl	__aeabi_fmul(PLT)
	mov	r1, r10
	mov	fp, r0
	mov	r0, r8
	bl	__aeabi_fsub(PLT)
	mov	r1, r9
	mov	r10, r0
	ldr	r0, [sp, #20]	@ float
	bl	__aeabi_fsub(PLT)
	mov	r1, r0
	mov	r0, r10
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, fp
	bl	__aeabi_fsub(PLT)
	mov	r1, r4
	bl	__aeabi_fcmpge(PLT)
	cmp	r0, #0
	bne	.L93
	mov	r1, r8
	ldr	r0, [sp, #16]	@ float
	bl	__aeabi_fsub(PLT)
	mov	r1, r4
	mov	fp, #1
	mov	r9, r0
	mov	r0, r6
	bl	__aeabi_fmul(PLT)
	ldr	r1, [sp, #12]	@ float
	mov	r6, r0
	ldr	r0, [sp, #8]	@ float
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, r6
	bl	__aeabi_fadd(PLT)
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fadd(PLT)
	mov	r1, r7
	bl	__aeabi_fsub(PLT)
	mov	r1, r0
	mov	r0, r9
	bl	__aeabi_fmul(PLT)
	mov	r1, r4
	mov	r5, r0
	ldr	r0, [sp, #28]	@ float
	bl	__aeabi_fmul(PLT)
	ldr	r1, [sp, #12]	@ float
	mov	r6, r0
	ldr	r0, [sp, #24]	@ float
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, r6
	bl	__aeabi_fadd(PLT)
	mov	r1, r0
	ldr	r0, [sp, #4]	@ float
	bl	__aeabi_fadd(PLT)
	mov	r1, r8
	bl	__aeabi_fsub(PLT)
	mov	r1, r7
	mov	r6, r0
	ldr	r0, [sp, #20]	@ float
	bl	__aeabi_fsub(PLT)
	mov	r1, r0
	mov	r0, r6
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fsub(PLT)
	mov	r1, r4
	bl	__aeabi_fcmpge(PLT)
	cmp	r0, #0
	moveq	fp, r0
	eor	fp, fp, #1
	uxtb	r0, fp
.L89:
	add	sp, sp, #84
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L91:
	mov	r0, #0
	b	.L89
.L92:
	ldr	r0, [sp, #40]
	b	.L89
.L93:
	ldr	r0, [sp, #44]
	b	.L89
	.size	_ZN18Iw2DSceneGraphCore5CNode7HitTestEii, .-_ZN18Iw2DSceneGraphCore5CNode7HitTestEii
	.hidden	_ZTSN18Iw2DSceneGraphCore5CNodeE
	.global	_ZTSN18Iw2DSceneGraphCore5CNodeE
	.hidden	_ZTIN18Iw2DSceneGraphCore5CNodeE
	.global	_ZTIN18Iw2DSceneGraphCore5CNodeE
	.hidden	_ZTVN18Iw2DSceneGraphCore5CNodeE
	.global	_ZTVN18Iw2DSceneGraphCore5CNodeE
	.section	.rodata
	.align	2
	.type	_ZTSN18Iw2DSceneGraphCore5CNodeE, %object
	.size	_ZTSN18Iw2DSceneGraphCore5CNodeE, 29
_ZTSN18Iw2DSceneGraphCore5CNodeE:
	.ascii	"N18Iw2DSceneGraphCore5CNodeE\000"
	.section	.data.rel.ro,"aw",%progbits
	.align	3
	.set	.LANCHOR0,. + 0
	.type	_ZTVN18Iw2DSceneGraphCore5CNodeE, %object
	.size	_ZTVN18Iw2DSceneGraphCore5CNodeE, 24
_ZTVN18Iw2DSceneGraphCore5CNodeE:
	.word	0
	.word	_ZTIN18Iw2DSceneGraphCore5CNodeE
	.word	_ZN18Iw2DSceneGraphCore5CNodeD1Ev
	.word	_ZN18Iw2DSceneGraphCore5CNodeD0Ev
	.word	_ZN18Iw2DSceneGraphCore5CNode6UpdateEff
	.word	_ZN18Iw2DSceneGraphCore5CNode6RenderEv
	.type	_ZTIN18Iw2DSceneGraphCore5CNodeE, %object
	.size	_ZTIN18Iw2DSceneGraphCore5CNodeE, 8
_ZTIN18Iw2DSceneGraphCore5CNodeE:
	.word	_ZTVN10__cxxabiv117__class_type_infoE+8
	.word	_ZTSN18Iw2DSceneGraphCore5CNodeE
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-branch revision 208322]"
