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
	.file	"IwTween.cpp"
	.section	.text._ZN7IwTween4Ease6linearEff,"ax",%progbits
	.align	2
	.global	_ZN7IwTween4Ease6linearEff
	.hidden	_ZN7IwTween4Ease6linearEff
	.type	_ZN7IwTween4Ease6linearEff, %function
_ZN7IwTween4Ease6linearEff:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	_ZN7IwTween4Ease6linearEff, .-_ZN7IwTween4Ease6linearEff
	.section	.text._ZN7IwTween4Ease3oneEff,"ax",%progbits
	.align	2
	.global	_ZN7IwTween4Ease3oneEff
	.hidden	_ZN7IwTween4Ease3oneEff
	.type	_ZN7IwTween4Ease3oneEff, %function
_ZN7IwTween4Ease3oneEff:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #1065353216
	bx	lr
	.size	_ZN7IwTween4Ease3oneEff, .-_ZN7IwTween4Ease3oneEff
	.section	.text._ZN7IwTween4Ease4zeroEff,"ax",%progbits
	.align	2
	.global	_ZN7IwTween4Ease4zeroEff
	.hidden	_ZN7IwTween4Ease4zeroEff
	.type	_ZN7IwTween4Ease4zeroEff, %function
_ZN7IwTween4Ease4zeroEff:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #0
	bx	lr
	.size	_ZN7IwTween4Ease4zeroEff, .-_ZN7IwTween4Ease4zeroEff
	.global	__aeabi_fcmpeq
	.section	.text._ZN7IwTween4Ease5powInEff,"ax",%progbits
	.align	2
	.global	_ZN7IwTween4Ease5powInEff
	.hidden	_ZN7IwTween4Ease5powInEff
	.type	_ZN7IwTween4Ease5powInEff, %function
_ZN7IwTween4Ease5powInEff:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	mov	r4, r1
	mov	r5, r0
	mov	r1, #0
	mov	r0, r4
	bl	__aeabi_fcmpeq(PLT)
	cmp	r0, #0
	movne	r4, #1073741824
	mov	r0, r5
	mov	r1, r4
	ldmfd	sp!, {r3, r4, r5, lr}
	b	powf(PLT)
	.size	_ZN7IwTween4Ease5powInEff, .-_ZN7IwTween4Ease5powInEff
	.global	__aeabi_fdiv
	.section	.text._ZN7IwTween4Ease6powOutEff,"ax",%progbits
	.align	2
	.global	_ZN7IwTween4Ease6powOutEff
	.hidden	_ZN7IwTween4Ease6powOutEff
	.type	_ZN7IwTween4Ease6powOutEff, %function
_ZN7IwTween4Ease6powOutEff:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	mov	r4, r1
	mov	r5, r0
	mov	r1, #0
	mov	r0, r4
	bl	__aeabi_fcmpeq(PLT)
	cmp	r0, #0
	movne	r1, #1056964608
	bne	.L8
	mov	r1, r4
	mov	r0, #1065353216
	bl	__aeabi_fdiv(PLT)
	mov	r1, r0
.L8:
	mov	r0, r5
	ldmfd	sp!, {r3, r4, r5, lr}
	b	powf(PLT)
	.size	_ZN7IwTween4Ease6powOutEff, .-_ZN7IwTween4Ease6powOutEff
	.global	__aeabi_f2iz
	.global	__aeabi_fadd
	.global	__aeabi_fcmplt
	.global	__aeabi_fmul
	.global	__aeabi_fsub
	.global	__aeabi_i2f
	.section	.text._ZN7IwTween4Ease8powInOutEff,"ax",%progbits
	.align	2
	.global	_ZN7IwTween4Ease8powInOutEff
	.hidden	_ZN7IwTween4Ease8powInOutEff
	.type	_ZN7IwTween4Ease8powInOutEff, %function
_ZN7IwTween4Ease8powInOutEff:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}
	mov	r4, r1
	mov	r5, r0
	mov	r1, #0
	mov	r0, r4
	bl	__aeabi_fcmpeq(PLT)
	cmp	r0, #0
	bne	.L17
	mov	r0, r4
	bl	__aeabi_f2iz(PLT)
	tst	r0, #1
	movne	r6, #1056964608
	movne	r7, #2
	beq	.L12
.L13:
	mov	r1, r5
	mov	r0, r5
	bl	__aeabi_fadd(PLT)
	mov	r1, #1065353216
	mov	r5, r0
	bl	__aeabi_fcmplt(PLT)
	cmp	r0, #0
	mov	r0, r5
	bne	.L21
	mov	r1, #1073741824
	bl	__aeabi_fsub(PLT)
	mov	r1, r4
	bl	powf(PLT)
	mov	r4, r0
	mov	r0, r7
	bl	__aeabi_i2f(PLT)
	mov	r1, r0
	mov	r0, r4
	bl	__aeabi_fadd(PLT)
	mov	r1, r6
	bl	__aeabi_fmul(PLT)
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}
.L17:
	mov	r4, #1073741824
.L12:
	mvn	r7, #1
	mov	r6, #-1090519040
	b	.L13
.L21:
	mov	r1, r4
	bl	powf(PLT)
	mov	r1, #1056964608
	bl	__aeabi_fmul(PLT)
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}
	.size	_ZN7IwTween4Ease8powInOutEff, .-_ZN7IwTween4Ease8powInOutEff
	.section	.text._ZN7IwTween4Ease5expInEff,"ax",%progbits
	.align	2
	.global	_ZN7IwTween4Ease5expInEff
	.hidden	_ZN7IwTween4Ease5expInEff
	.type	_ZN7IwTween4Ease5expInEff, %function
_ZN7IwTween4Ease5expInEff:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	mov	r4, r1
	mov	r5, r0
	mov	r1, #0
	mov	r0, r4
	bl	__aeabi_fcmpeq(PLT)
	mov	r1, #0
	cmp	r0, #0
	mov	r0, r5
	movne	r4, #1073741824
	bl	__aeabi_fcmpeq(PLT)
	cmp	r0, #0
	beq	.L30
	mov	r0, #0
	ldmfd	sp!, {r3, r4, r5, pc}
.L30:
	mov	r0, r5
	mov	r1, #1065353216
	bl	__aeabi_fsub(PLT)
	ldr	r1, .L31
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, r4
	bl	powf(PLT)
	ldr	r1, .L31+4
	bl	__aeabi_fsub(PLT)
	ldmfd	sp!, {r3, r4, r5, pc}
.L32:
	.align	2
.L31:
	.word	1092616192
	.word	981668463
	.size	_ZN7IwTween4Ease5expInEff, .-_ZN7IwTween4Ease5expInEff
	.section	.text._ZN7IwTween4Ease6expOutEff,"ax",%progbits
	.align	2
	.global	_ZN7IwTween4Ease6expOutEff
	.hidden	_ZN7IwTween4Ease6expOutEff
	.type	_ZN7IwTween4Ease6expOutEff, %function
_ZN7IwTween4Ease6expOutEff:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	mov	r4, r1
	mov	r5, r0
	mov	r1, #0
	mov	r0, r4
	bl	__aeabi_fcmpeq(PLT)
	mov	r1, #1065353216
	cmp	r0, #0
	mov	r0, r5
	movne	r4, #1073741824
	bl	__aeabi_fcmpeq(PLT)
	cmp	r0, #0
	beq	.L41
	mov	r0, #1065353216
	ldmfd	sp!, {r3, r4, r5, pc}
.L41:
	mov	r0, r5
	ldr	r1, .L42
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, r4
	bl	powf(PLT)
	mov	r1, r0
	mov	r0, #1065353216
	bl	__aeabi_fsub(PLT)
	ldmfd	sp!, {r3, r4, r5, pc}
.L43:
	.align	2
.L42:
	.word	-1054867456
	.size	_ZN7IwTween4Ease6expOutEff, .-_ZN7IwTween4Ease6expOutEff
	.section	.text._ZN7IwTween4Ease8expInOutEff,"ax",%progbits
	.align	2
	.global	_ZN7IwTween4Ease8expInOutEff
	.hidden	_ZN7IwTween4Ease8expInOutEff
	.type	_ZN7IwTween4Ease8expInOutEff, %function
_ZN7IwTween4Ease8expInOutEff:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	mov	r4, r1
	mov	r5, r0
	mov	r1, #0
	mov	r0, r4
	bl	__aeabi_fcmpeq(PLT)
	mov	r1, r5
	cmp	r0, #0
	mov	r0, r5
	movne	r4, #1073741824
	bl	__aeabi_fadd(PLT)
	mov	r1, #1065353216
	mov	r5, r0
	bl	__aeabi_fcmplt(PLT)
	mov	r1, #1065353216
	cmp	r0, #0
	mov	r0, r5
	bne	.L52
	bl	__aeabi_fsub(PLT)
	ldr	r1, .L53
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, #1073741824
	bl	powf(PLT)
	mov	r1, r0
	mov	r0, #1073741824
	bl	__aeabi_fsub(PLT)
	mov	r1, #1056964608
	bl	__aeabi_fmul(PLT)
	ldmfd	sp!, {r3, r4, r5, pc}
.L52:
	bl	__aeabi_fsub(PLT)
	ldr	r1, .L53+4
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, r4
	bl	powf(PLT)
	mov	r1, #1056964608
	bl	__aeabi_fmul(PLT)
	ldmfd	sp!, {r3, r4, r5, pc}
.L54:
	.align	2
.L53:
	.word	-1054867456
	.word	1092616192
	.size	_ZN7IwTween4Ease8expInOutEff, .-_ZN7IwTween4Ease8expInOutEff
	.section	.text._ZN7IwTween4Ease6sineInEff,"ax",%progbits
	.align	2
	.global	_ZN7IwTween4Ease6sineInEff
	.hidden	_ZN7IwTween4Ease6sineInEff
	.type	_ZN7IwTween4Ease6sineInEff, %function
_ZN7IwTween4Ease6sineInEff:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	mov	r4, r1
	mov	r5, r0
	mov	r1, #0
	mov	r0, r4
	bl	__aeabi_fcmpeq(PLT)
	ldr	r1, .L61
	cmp	r0, #0
	mov	r0, r5
	bne	.L56
	bl	__aeabi_fmul(PLT)
	bl	cosf(PLT)
	mov	r1, r0
	mov	r0, #1065353216
	bl	__aeabi_fsub(PLT)
	mov	r1, #1065353216
	mov	r5, r0
	mov	r0, r4
	bl	__aeabi_fcmpeq(PLT)
	mov	r3, r5
	cmp	r0, #0
	bne	.L60
	mov	r0, r5
	mov	r1, r4
	ldmfd	sp!, {r3, r4, r5, lr}
	b	powf(PLT)
.L56:
	bl	__aeabi_fmul(PLT)
	bl	cosf(PLT)
	mov	r1, r0
	mov	r0, #1065353216
	bl	__aeabi_fsub(PLT)
	mov	r3, r0
.L60:
	mov	r0, r3
	ldmfd	sp!, {r3, r4, r5, pc}
.L62:
	.align	2
.L61:
	.word	1070141403
	.size	_ZN7IwTween4Ease6sineInEff, .-_ZN7IwTween4Ease6sineInEff
	.section	.text._ZN7IwTween4Ease7sineOutEff,"ax",%progbits
	.align	2
	.global	_ZN7IwTween4Ease7sineOutEff
	.hidden	_ZN7IwTween4Ease7sineOutEff
	.type	_ZN7IwTween4Ease7sineOutEff, %function
_ZN7IwTween4Ease7sineOutEff:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	mov	r4, r1
	mov	r5, r0
	mov	r1, #0
	mov	r0, r4
	bl	__aeabi_fcmpeq(PLT)
	ldr	r1, .L69
	cmp	r0, #0
	mov	r0, r5
	bne	.L64
	bl	__aeabi_fmul(PLT)
	bl	sinf(PLT)
	mov	r1, #1065353216
	mov	r5, r0
	mov	r0, r4
	bl	__aeabi_fcmpeq(PLT)
	cmp	r0, #0
	mov	r0, r5
	bne	.L68
	mov	r1, r4
	ldmfd	sp!, {r3, r4, r5, lr}
	b	powf(PLT)
.L64:
	bl	__aeabi_fmul(PLT)
	ldmfd	sp!, {r3, r4, r5, lr}
	b	sinf(PLT)
.L68:
	ldmfd	sp!, {r3, r4, r5, pc}
.L70:
	.align	2
.L69:
	.word	1070141403
	.size	_ZN7IwTween4Ease7sineOutEff, .-_ZN7IwTween4Ease7sineOutEff
	.section	.text._ZN7IwTween4Ease9sineInOutEff,"ax",%progbits
	.align	2
	.global	_ZN7IwTween4Ease9sineInOutEff
	.hidden	_ZN7IwTween4Ease9sineInOutEff
	.type	_ZN7IwTween4Ease9sineInOutEff, %function
_ZN7IwTween4Ease9sineInOutEff:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	mov	r4, r1
	mov	r5, r0
	mov	r1, #0
	mov	r0, r4
	bl	__aeabi_fcmpeq(PLT)
	ldr	r1, .L77
	cmp	r0, #0
	mov	r0, r5
	bne	.L72
	bl	__aeabi_fmul(PLT)
	bl	cosf(PLT)
	mov	r1, #1065353216
	bl	__aeabi_fsub(PLT)
	mov	r1, #-1090519040
	bl	__aeabi_fmul(PLT)
	mov	r1, #1065353216
	mov	r5, r0
	mov	r0, r4
	bl	__aeabi_fcmpeq(PLT)
	mov	r3, r5
	cmp	r0, #0
	bne	.L76
	mov	r0, r5
	mov	r1, r4
	ldmfd	sp!, {r3, r4, r5, lr}
	b	powf(PLT)
.L72:
	bl	__aeabi_fmul(PLT)
	bl	cosf(PLT)
	mov	r1, #1065353216
	bl	__aeabi_fsub(PLT)
	mov	r1, #-1090519040
	bl	__aeabi_fmul(PLT)
	mov	r3, r0
.L76:
	mov	r0, r3
	ldmfd	sp!, {r3, r4, r5, pc}
.L78:
	.align	2
.L77:
	.word	1078530011
	.size	_ZN7IwTween4Ease9sineInOutEff, .-_ZN7IwTween4Ease9sineInOutEff
	.section	.text._ZN7IwTween4Ease9elasticInEff,"ax",%progbits
	.align	2
	.global	_ZN7IwTween4Ease9elasticInEff
	.hidden	_ZN7IwTween4Ease9elasticInEff
	.type	_ZN7IwTween4Ease9elasticInEff, %function
_ZN7IwTween4Ease9elasticInEff:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r5, r1
	mov	r4, r0
	mov	r1, #0
	mov	r0, r5
	bl	__aeabi_fcmpeq(PLT)
	mov	r1, #1065353216
	mov	r6, #1
	cmp	r0, #0
	mov	r0, r4
	ldrne	r5, .L87
	bl	__aeabi_fcmpeq(PLT)
	mov	r1, #0
	cmp	r0, #0
	moveq	r6, r0
	mov	r0, r4
	bl	__aeabi_fcmpeq(PLT)
	mov	r3, #1
	cmp	r0, #0
	moveq	r3, r0
	orr	r6, r6, r3
	tst	r6, #255
	mov	r0, r4
	beq	.L86
	ldmfd	sp!, {r4, r5, r6, pc}
.L86:
	mov	r1, #1065353216
	bl	__aeabi_fsub(PLT)
	ldr	r1, .L87+4
	mov	r6, r0
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, #1073741824
	bl	powf(PLT)
	mov	r1, #1048576000
	mov	r4, r0
	mov	r0, r5
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, r6
	bl	__aeabi_fsub(PLT)
	ldr	r1, .L87+8
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	bl	__aeabi_fadd(PLT)
	mov	r1, r5
	bl	__aeabi_fdiv(PLT)
	bl	sinf(PLT)
	mov	r1, r0
	add	r0, r4, #-2147483648
	bl	__aeabi_fmul(PLT)
	ldmfd	sp!, {r4, r5, r6, pc}
.L88:
	.align	2
.L87:
	.word	1086918619
	.word	1092616192
	.word	1078530011
	.size	_ZN7IwTween4Ease9elasticInEff, .-_ZN7IwTween4Ease9elasticInEff
	.section	.text._ZN7IwTween4Ease10elasticOutEff,"ax",%progbits
	.align	2
	.global	_ZN7IwTween4Ease10elasticOutEff
	.hidden	_ZN7IwTween4Ease10elasticOutEff
	.type	_ZN7IwTween4Ease10elasticOutEff, %function
_ZN7IwTween4Ease10elasticOutEff:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r5, r1
	mov	r4, r0
	mov	r1, #0
	mov	r0, r5
	bl	__aeabi_fcmpeq(PLT)
	mov	r1, #1065353216
	mov	r6, #1
	cmp	r0, #0
	mov	r0, r4
	ldrne	r5, .L97
	bl	__aeabi_fcmpeq(PLT)
	mov	r1, #0
	cmp	r0, #0
	moveq	r6, r0
	mov	r0, r4
	bl	__aeabi_fcmpeq(PLT)
	mov	r3, #1
	cmp	r0, #0
	moveq	r3, r0
	orr	r6, r6, r3
	tst	r6, #255
	mov	r0, r4
	beq	.L96
	ldmfd	sp!, {r4, r5, r6, pc}
.L96:
	ldr	r1, .L97+4
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, #1073741824
	bl	powf(PLT)
	mov	r1, #1048576000
	mov	r6, r0
	mov	r0, r5
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, r4
	bl	__aeabi_fsub(PLT)
	ldr	r1, .L97+8
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	bl	__aeabi_fadd(PLT)
	mov	r1, r5
	bl	__aeabi_fdiv(PLT)
	bl	sinf(PLT)
	mov	r1, r0
	mov	r0, r6
	bl	__aeabi_fmul(PLT)
	mov	r1, #1065353216
	bl	__aeabi_fadd(PLT)
	ldmfd	sp!, {r4, r5, r6, pc}
.L98:
	.align	2
.L97:
	.word	1086918619
	.word	-1054867456
	.word	1078530011
	.size	_ZN7IwTween4Ease10elasticOutEff, .-_ZN7IwTween4Ease10elasticOutEff
	.section	.text._ZN7IwTween4Ease12elasticInOutEff,"ax",%progbits
	.align	2
	.global	_ZN7IwTween4Ease12elasticInOutEff
	.hidden	_ZN7IwTween4Ease12elasticInOutEff
	.type	_ZN7IwTween4Ease12elasticInOutEff, %function
_ZN7IwTween4Ease12elasticInOutEff:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}
	mov	r4, r1
	mov	r5, r0
	mov	r1, #0
	mov	r0, r4
	bl	__aeabi_fcmpeq(PLT)
	mov	r1, #1065353216
	mov	r6, #1
	cmp	r0, #0
	mov	r0, r5
	ldrne	r4, .L113
	bl	__aeabi_fcmpeq(PLT)
	mov	r1, #0
	cmp	r0, #0
	moveq	r6, r0
	mov	r0, r5
	bl	__aeabi_fcmpeq(PLT)
	mov	r3, #1
	cmp	r0, #0
	moveq	r3, r0
	orr	r6, r6, r3
	tst	r6, #255
	mov	r0, r5
	bne	.L108
	mov	r1, r5
	bl	__aeabi_fadd(PLT)
	mov	r1, #0
	mov	r5, r0
	mov	r0, r4
	bl	__aeabi_fcmpeq(PLT)
	cmp	r0, #0
	bne	.L109
	mov	r0, r4
	mov	r1, #1048576000
	bl	__aeabi_fmul(PLT)
	mov	r6, r0
.L104:
	mov	r0, r5
	mov	r1, #1065353216
	bl	__aeabi_fsub(PLT)
	mov	r1, #0
	mov	r5, r0
	bl	__aeabi_fcmplt(PLT)
	cmp	r0, #0
	mov	r0, r5
	bne	.L112
	ldr	r1, .L113+4
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, #1073741824
	bl	powf(PLT)
	mov	r1, r6
	mov	r7, r0
	mov	r0, r5
	bl	__aeabi_fsub(PLT)
	ldr	r1, .L113+8
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	bl	__aeabi_fadd(PLT)
	mov	r1, r4
	bl	__aeabi_fdiv(PLT)
	bl	sinf(PLT)
	mov	r1, r0
	mov	r0, r7
	bl	__aeabi_fmul(PLT)
	mov	r1, #1056964608
	bl	__aeabi_fmul(PLT)
	mov	r1, #1065353216
	bl	__aeabi_fadd(PLT)
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}
.L109:
	ldr	r6, .L113+12
	ldr	r4, .L113+16
	b	.L104
.L108:
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}
.L112:
	ldr	r1, .L113+20
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, #1073741824
	bl	powf(PLT)
	mov	r1, r6
	mov	r7, r0
	mov	r0, r5
	bl	__aeabi_fsub(PLT)
	ldr	r1, .L113+8
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	bl	__aeabi_fadd(PLT)
	mov	r1, r4
	bl	__aeabi_fdiv(PLT)
	bl	sinf(PLT)
	mov	r1, #-1090519040
	mov	r4, r0
	mov	r0, r7
	bl	__aeabi_fmul(PLT)
	mov	r1, r4
	bl	__aeabi_fmul(PLT)
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}
.L114:
	.align	2
.L113:
	.word	1086918619
	.word	-1054867456
	.word	1078530011
	.word	1038509671
	.word	1055286887
	.word	1092616192
	.size	_ZN7IwTween4Ease12elasticInOutEff, .-_ZN7IwTween4Ease12elasticInOutEff
	.global	__aeabi_f2d
	.global	__aeabi_dcmplt
	.section	.text._ZN7IwTween4Ease11_bounceTimeEf,"ax",%progbits
	.align	2
	.global	_ZN7IwTween4Ease11_bounceTimeEf
	.hidden	_ZN7IwTween4Ease11_bounceTimeEf
	.type	_ZN7IwTween4Ease11_bounceTimeEf, %function
_ZN7IwTween4Ease11_bounceTimeEf:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r6, r0
	bl	__aeabi_f2d(PLT)
	ldr	r2, .L132
	ldr	r3, .L132+4
	mov	r4, r0
	mov	r5, r1
	bl	__aeabi_dcmplt(PLT)
	cmp	r0, #0
	bne	.L129
	mov	r0, r4
	mov	r1, r5
	ldr	r2, .L132
	ldr	r3, .L132+8
	bl	__aeabi_dcmplt(PLT)
	cmp	r0, #0
	bne	.L130
	mov	r0, r4
	mov	r1, r5
	ldr	r2, .L132+12
	ldr	r3, .L132+16
	bl	__aeabi_dcmplt(PLT)
	cmp	r0, #0
	mov	r0, r6
	bne	.L131
	ldr	r1, .L132+20
	bl	__aeabi_fsub(PLT)
	ldr	r1, .L132+24
	mov	r4, r0
	bl	__aeabi_fmul(PLT)
	mov	r1, r4
	bl	__aeabi_fmul(PLT)
	ldr	r1, .L132+28
	bl	__aeabi_fadd(PLT)
	ldmfd	sp!, {r4, r5, r6, pc}
.L130:
	mov	r0, r6
	ldr	r1, .L132+32
	bl	__aeabi_fsub(PLT)
	ldr	r1, .L132+24
	mov	r4, r0
	bl	__aeabi_fmul(PLT)
	mov	r1, r4
	bl	__aeabi_fmul(PLT)
	mov	r1, #1061158912
	bl	__aeabi_fadd(PLT)
	ldmfd	sp!, {r4, r5, r6, pc}
.L129:
	mov	r0, r6
	ldr	r1, .L132+24
	bl	__aeabi_fmul(PLT)
	mov	r1, r6
	bl	__aeabi_fmul(PLT)
	ldmfd	sp!, {r4, r5, r6, pc}
.L131:
	ldr	r1, .L132+36
	bl	__aeabi_fsub(PLT)
	ldr	r1, .L132+24
	mov	r4, r0
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, r4
	bl	__aeabi_fmul(PLT)
	ldr	r1, .L132+40
	bl	__aeabi_fadd(PLT)
	ldmfd	sp!, {r4, r5, r6, pc}
.L133:
	.align	2
.L132:
	.word	1952257862
	.word	1071072721
	.word	1072121297
	.word	-780903145
	.word	1072502597
	.word	1064590615
	.word	1089601536
	.word	1065091072
	.word	1057727209
	.word	1062302813
	.word	1064304640
	.size	_ZN7IwTween4Ease11_bounceTimeEf, .-_ZN7IwTween4Ease11_bounceTimeEf
	.section	.text._ZN7IwTween4Ease8bounceInEff,"ax",%progbits
	.align	2
	.global	_ZN7IwTween4Ease8bounceInEff
	.hidden	_ZN7IwTween4Ease8bounceInEff
	.type	_ZN7IwTween4Ease8bounceInEff, %function
_ZN7IwTween4Ease8bounceInEff:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r1, r0
	mov	r0, #1065353216
	bl	__aeabi_fsub(PLT)
	mov	r6, r0
	bl	__aeabi_f2d(PLT)
	ldr	r2, .L151
	ldr	r3, .L151+4
	mov	r4, r0
	mov	r5, r1
	bl	__aeabi_dcmplt(PLT)
	cmp	r0, #0
	bne	.L148
	mov	r0, r4
	mov	r1, r5
	ldr	r2, .L151
	ldr	r3, .L151+8
	bl	__aeabi_dcmplt(PLT)
	cmp	r0, #0
	bne	.L149
	mov	r0, r4
	mov	r1, r5
	ldr	r2, .L151+12
	ldr	r3, .L151+16
	bl	__aeabi_dcmplt(PLT)
	cmp	r0, #0
	mov	r0, r6
	bne	.L150
	ldr	r1, .L151+20
	bl	__aeabi_fsub(PLT)
	ldr	r1, .L151+24
	mov	r4, r0
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, r4
	bl	__aeabi_fmul(PLT)
	ldr	r1, .L151+28
	bl	__aeabi_fadd(PLT)
	mov	r1, r0
.L137:
	mov	r0, #1065353216
	bl	__aeabi_fsub(PLT)
	ldmfd	sp!, {r4, r5, r6, pc}
.L149:
	ldr	r1, .L151+32
	mov	r0, r6
	bl	__aeabi_fsub(PLT)
	ldr	r1, .L151+24
	mov	r4, r0
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, r4
	bl	__aeabi_fmul(PLT)
	mov	r1, #1061158912
	bl	__aeabi_fadd(PLT)
	mov	r1, r0
	b	.L137
.L148:
	ldr	r1, .L151+24
	mov	r0, r6
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, r6
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	b	.L137
.L150:
	ldr	r1, .L151+36
	bl	__aeabi_fsub(PLT)
	ldr	r1, .L151+24
	mov	r4, r0
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, r4
	bl	__aeabi_fmul(PLT)
	ldr	r1, .L151+40
	bl	__aeabi_fadd(PLT)
	mov	r1, r0
	b	.L137
.L152:
	.align	2
.L151:
	.word	1952257862
	.word	1071072721
	.word	1072121297
	.word	-780903145
	.word	1072502597
	.word	1064590615
	.word	1089601536
	.word	1065091072
	.word	1057727209
	.word	1062302813
	.word	1064304640
	.size	_ZN7IwTween4Ease8bounceInEff, .-_ZN7IwTween4Ease8bounceInEff
	.section	.text._ZN7IwTween4Ease9bounceOutEff,"ax",%progbits
	.align	2
	.global	_ZN7IwTween4Ease9bounceOutEff
	.hidden	_ZN7IwTween4Ease9bounceOutEff
	.type	_ZN7IwTween4Ease9bounceOutEff, %function
_ZN7IwTween4Ease9bounceOutEff:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r1, r0
	mov	r0, #1065353216
	bl	__aeabi_fsub(PLT)
	mov	r6, r0
	bl	__aeabi_f2d(PLT)
	ldr	r2, .L170
	ldr	r3, .L170+4
	mov	r4, r0
	mov	r5, r1
	bl	__aeabi_dcmplt(PLT)
	cmp	r0, #0
	bne	.L167
	mov	r0, r4
	mov	r1, r5
	ldr	r2, .L170
	ldr	r3, .L170+8
	bl	__aeabi_dcmplt(PLT)
	cmp	r0, #0
	bne	.L168
	mov	r0, r4
	mov	r1, r5
	ldr	r2, .L170+12
	ldr	r3, .L170+16
	bl	__aeabi_dcmplt(PLT)
	cmp	r0, #0
	mov	r0, r6
	bne	.L169
	ldr	r1, .L170+20
	bl	__aeabi_fsub(PLT)
	ldr	r1, .L170+24
	mov	r4, r0
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, r4
	bl	__aeabi_fmul(PLT)
	ldr	r1, .L170+28
	bl	__aeabi_fadd(PLT)
	ldmfd	sp!, {r4, r5, r6, pc}
.L168:
	mov	r0, r6
	ldr	r1, .L170+32
	bl	__aeabi_fsub(PLT)
	ldr	r1, .L170+24
	mov	r4, r0
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, r4
	bl	__aeabi_fmul(PLT)
	mov	r1, #1061158912
	bl	__aeabi_fadd(PLT)
	ldmfd	sp!, {r4, r5, r6, pc}
.L167:
	mov	r0, r6
	ldr	r1, .L170+24
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, r6
	bl	__aeabi_fmul(PLT)
	ldmfd	sp!, {r4, r5, r6, pc}
.L169:
	ldr	r1, .L170+36
	bl	__aeabi_fsub(PLT)
	ldr	r1, .L170+24
	mov	r4, r0
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, r4
	bl	__aeabi_fmul(PLT)
	ldr	r1, .L170+40
	bl	__aeabi_fadd(PLT)
	ldmfd	sp!, {r4, r5, r6, pc}
.L171:
	.align	2
.L170:
	.word	1952257862
	.word	1071072721
	.word	1072121297
	.word	-780903145
	.word	1072502597
	.word	1064590615
	.word	1089601536
	.word	1065091072
	.word	1057727209
	.word	1062302813
	.word	1064304640
	.size	_ZN7IwTween4Ease9bounceOutEff, .-_ZN7IwTween4Ease9bounceOutEff
	.section	.text._ZN7IwTween4Ease11bounceInOutEff,"ax",%progbits
	.align	2
	.global	_ZN7IwTween4Ease11bounceInOutEff
	.hidden	_ZN7IwTween4Ease11bounceInOutEff
	.type	_ZN7IwTween4Ease11bounceInOutEff, %function
_ZN7IwTween4Ease11bounceInOutEff:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r1, #1056964608
	mov	r4, r0
	bl	__aeabi_fcmplt(PLT)
	mov	r1, r4
	cmp	r0, #0
	mov	r0, r4
	bne	.L204
	bl	__aeabi_fadd(PLT)
	mov	r1, #1065353216
	bl	__aeabi_fsub(PLT)
	mov	r6, r0
	bl	__aeabi_f2d(PLT)
	ldr	r2, .L211
	ldr	r3, .L211+4
	mov	r4, r0
	mov	r5, r1
	bl	__aeabi_dcmplt(PLT)
	cmp	r0, #0
	bne	.L205
	mov	r0, r4
	mov	r1, r5
	ldr	r2, .L211
	ldr	r3, .L211+8
	bl	__aeabi_dcmplt(PLT)
	cmp	r0, #0
	bne	.L206
	mov	r0, r4
	mov	r1, r5
	ldr	r2, .L211+12
	ldr	r3, .L211+16
	bl	__aeabi_dcmplt(PLT)
	cmp	r0, #0
	mov	r0, r6
	bne	.L207
	ldr	r1, .L211+20
	bl	__aeabi_fsub(PLT)
	ldr	r1, .L211+24
	mov	r4, r0
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, r4
	bl	__aeabi_fmul(PLT)
	ldr	r1, .L211+28
	bl	__aeabi_fadd(PLT)
	b	.L185
.L205:
	ldr	r1, .L211+24
	mov	r0, r6
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, r6
	bl	__aeabi_fmul(PLT)
.L185:
	mov	r1, #1056964608
	bl	__aeabi_fmul(PLT)
	mov	r1, #1056964608
	bl	__aeabi_fadd(PLT)
	ldmfd	sp!, {r4, r5, r6, pc}
.L204:
	bl	__aeabi_fadd(PLT)
	mov	r1, r0
	mov	r0, #1065353216
	bl	__aeabi_fsub(PLT)
	mov	r6, r0
	bl	__aeabi_f2d(PLT)
	ldr	r2, .L211
	ldr	r3, .L211+4
	mov	r4, r0
	mov	r5, r1
	bl	__aeabi_dcmplt(PLT)
	cmp	r0, #0
	bne	.L208
	mov	r0, r4
	mov	r1, r5
	ldr	r2, .L211
	ldr	r3, .L211+8
	bl	__aeabi_dcmplt(PLT)
	cmp	r0, #0
	bne	.L209
	mov	r0, r4
	mov	r1, r5
	ldr	r2, .L211+12
	ldr	r3, .L211+16
	bl	__aeabi_dcmplt(PLT)
	cmp	r0, #0
	mov	r0, r6
	bne	.L210
	ldr	r1, .L211+20
	bl	__aeabi_fsub(PLT)
	ldr	r1, .L211+24
	mov	r4, r0
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, r4
	bl	__aeabi_fmul(PLT)
	ldr	r1, .L211+28
	bl	__aeabi_fadd(PLT)
	mov	r1, r0
.L177:
	mov	r0, #1065353216
	bl	__aeabi_fsub(PLT)
	mov	r1, #1056964608
	bl	__aeabi_fmul(PLT)
	ldmfd	sp!, {r4, r5, r6, pc}
.L209:
	ldr	r1, .L211+32
	mov	r0, r6
	bl	__aeabi_fsub(PLT)
	ldr	r1, .L211+24
	mov	r4, r0
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, r4
	bl	__aeabi_fmul(PLT)
	mov	r1, #1061158912
	bl	__aeabi_fadd(PLT)
	mov	r1, r0
	b	.L177
.L207:
	ldr	r1, .L211+36
	bl	__aeabi_fsub(PLT)
	ldr	r1, .L211+24
	mov	r4, r0
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, r4
	bl	__aeabi_fmul(PLT)
	ldr	r1, .L211+40
	bl	__aeabi_fadd(PLT)
	b	.L185
.L208:
	ldr	r1, .L211+24
	mov	r0, r6
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, r6
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	b	.L177
.L206:
	mov	r0, r6
	ldr	r1, .L211+32
	bl	__aeabi_fsub(PLT)
	ldr	r1, .L211+24
	mov	r4, r0
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, r4
	bl	__aeabi_fmul(PLT)
	mov	r1, #1061158912
	bl	__aeabi_fadd(PLT)
	b	.L185
.L210:
	ldr	r1, .L211+36
	bl	__aeabi_fsub(PLT)
	ldr	r1, .L211+24
	mov	r4, r0
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, r4
	bl	__aeabi_fmul(PLT)
	ldr	r1, .L211+40
	bl	__aeabi_fadd(PLT)
	mov	r1, r0
	b	.L177
.L212:
	.align	2
.L211:
	.word	1952257862
	.word	1071072721
	.word	1072121297
	.word	-780903145
	.word	1072502597
	.word	1064590615
	.word	1089601536
	.word	1065091072
	.word	1057727209
	.word	1062302813
	.word	1064304640
	.size	_ZN7IwTween4Ease11bounceInOutEff, .-_ZN7IwTween4Ease11bounceInOutEff
	.section	.text._ZN7IwTween4Ease6backInEff,"ax",%progbits
	.align	2
	.global	_ZN7IwTween4Ease6backInEff
	.hidden	_ZN7IwTween4Ease6backInEff
	.type	_ZN7IwTween4Ease6backInEff, %function
_ZN7IwTween4Ease6backInEff:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	mov	r1, r0
	mov	r4, r0
	bl	__aeabi_fmul(PLT)
	ldr	r1, .L214
	mov	r5, r0
	mov	r0, r4
	bl	__aeabi_fmul(PLT)
	ldr	r1, .L214+4
	bl	__aeabi_fsub(PLT)
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fmul(PLT)
	ldmfd	sp!, {r3, r4, r5, pc}
.L215:
	.align	2
.L214:
	.word	1076684464
	.word	1071238496
	.size	_ZN7IwTween4Ease6backInEff, .-_ZN7IwTween4Ease6backInEff
	.section	.text._ZN7IwTween4Ease7backOutEff,"ax",%progbits
	.align	2
	.global	_ZN7IwTween4Ease7backOutEff
	.hidden	_ZN7IwTween4Ease7backOutEff
	.type	_ZN7IwTween4Ease7backOutEff, %function
_ZN7IwTween4Ease7backOutEff:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	mov	r1, #1065353216
	bl	__aeabi_fsub(PLT)
	mov	r1, r0
	mov	r4, r0
	bl	__aeabi_fmul(PLT)
	ldr	r1, .L217
	mov	r5, r0
	mov	r0, r4
	bl	__aeabi_fmul(PLT)
	ldr	r1, .L217+4
	bl	__aeabi_fadd(PLT)
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fmul(PLT)
	mov	r1, #1065353216
	bl	__aeabi_fadd(PLT)
	ldmfd	sp!, {r3, r4, r5, pc}
.L218:
	.align	2
.L217:
	.word	1076684464
	.word	1071238496
	.size	_ZN7IwTween4Ease7backOutEff, .-_ZN7IwTween4Ease7backOutEff
	.section	.text._ZN7IwTween4Ease9backInOutEff,"ax",%progbits
	.align	2
	.global	_ZN7IwTween4Ease9backInOutEff
	.hidden	_ZN7IwTween4Ease9backInOutEff
	.type	_ZN7IwTween4Ease9backInOutEff, %function
_ZN7IwTween4Ease9backInOutEff:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	mov	r1, r0
	bl	__aeabi_fadd(PLT)
	mov	r1, #1065353216
	mov	r4, r0
	bl	__aeabi_fcmplt(PLT)
	cmp	r0, #0
	mov	r0, r4
	bne	.L225
	mov	r1, #1073741824
	bl	__aeabi_fsub(PLT)
	mov	r1, r0
	mov	r4, r0
	bl	__aeabi_fmul(PLT)
	ldr	r1, .L226
	mov	r5, r0
	mov	r0, r4
	bl	__aeabi_fmul(PLT)
	ldr	r1, .L226+4
	bl	__aeabi_fadd(PLT)
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fmul(PLT)
	mov	r1, #1056964608
	bl	__aeabi_fmul(PLT)
	mov	r1, #1065353216
	bl	__aeabi_fadd(PLT)
	ldmfd	sp!, {r3, r4, r5, pc}
.L225:
	mov	r1, r4
	bl	__aeabi_fmul(PLT)
	ldr	r1, .L226
	mov	r5, r0
	mov	r0, r4
	bl	__aeabi_fmul(PLT)
	ldr	r1, .L226+4
	bl	__aeabi_fsub(PLT)
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fmul(PLT)
	mov	r1, #1056964608
	bl	__aeabi_fmul(PLT)
	ldmfd	sp!, {r3, r4, r5, pc}
.L227:
	.align	2
.L226:
	.word	1080431359
	.word	1076237055
	.size	_ZN7IwTween4Ease9backInOutEff, .-_ZN7IwTween4Ease9backInOutEff
	.section	.text._ZN7IwTween6CTween9ValueType19SetFromCurrentValueEPvS2_b,"ax",%progbits
	.align	2
	.global	_ZN7IwTween6CTween9ValueType19SetFromCurrentValueEPvS2_b
	.hidden	_ZN7IwTween6CTween9ValueType19SetFromCurrentValueEPvS2_b
	.type	_ZN7IwTween6CTween9ValueType19SetFromCurrentValueEPvS2_b, %function
_ZN7IwTween6CTween9ValueType19SetFromCurrentValueEPvS2_b:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	sub	sp, sp, #12
	ldr	ip, [r0]
	sub	ip, ip, #256
	cmp	ip, #7
	addls	pc, pc, ip, asl #2
	b	.L228
.L231:
	b	.L230
	b	.L232
	b	.L233
	b	.L234
	b	.L235
	b	.L237
	b	.L237
	b	.L238
.L234:
	ldr	r0, [r0, #4]
	cmp	r3, #0
	ldrh	r0, [r0]
	strh	r0, [r1]	@ movhi
	ldrh	r1, [r2]
	uxthne	r3, r0
.L254:
	add	r3, r3, r1
	strh	r3, [r2]	@ movhi
.L228:
	add	sp, sp, #12
	@ sp needed
	ldr	pc, [sp], #4
.L237:
	ldr	r0, [r0, #4]
	cmp	r3, #0
	moveq	r3, #0
	ldr	r0, [r0]
	str	r0, [r1]
	ldr	r1, [r2]
	movne	r3, r0
	add	r3, r3, r1
	str	r3, [r2]
	add	sp, sp, #12
	@ sp needed
	ldr	pc, [sp], #4
.L238:
	ldr	r0, [r0, #4]
	cmp	r3, #0
	ldr	r3, [r0]	@ float
	str	r3, [r1]	@ float
	moveq	r1, #0
	ldr	r0, [r2]	@ float
	movne	r1, r3
	str	r2, [sp, #4]
	bl	__aeabi_fadd(PLT)
	ldr	r2, [sp, #4]
	str	r0, [r2]	@ float
	add	sp, sp, #12
	@ sp needed
	ldr	pc, [sp], #4
.L230:
	ldr	r3, [r0, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	strb	r3, [r1]
	add	sp, sp, #12
	@ sp needed
	ldr	pc, [sp], #4
.L232:
	ldr	r0, [r0, #4]
	cmp	r3, #0
	ldrb	r0, [r0]	@ zero_extendqisi2
	strb	r0, [r1]
	ldrb	r1, [r2]	@ zero_extendqisi2
	uxtbne	r3, r0
.L253:
	add	r3, r3, r1
	strb	r3, [r2]
	add	sp, sp, #12
	@ sp needed
	ldr	pc, [sp], #4
.L233:
	ldr	r0, [r0, #4]
	cmp	r3, #0
	moveq	r3, #0
	ldrb	r0, [r0]	@ zero_extendqisi2
	strb	r0, [r1]
	movne	r3, r0
	ldrb	r1, [r2]	@ zero_extendqisi2
	b	.L253
.L235:
	ldr	r0, [r0, #4]
	cmp	r3, #0
	moveq	r3, #0
	ldrh	r0, [r0]
	strh	r0, [r1]	@ movhi
	movne	r3, r0
	ldrh	r1, [r2]
	b	.L254
	.size	_ZN7IwTween6CTween9ValueType19SetFromCurrentValueEPvS2_b, .-_ZN7IwTween6CTween9ValueType19SetFromCurrentValueEPvS2_b
	.global	__aeabi_ui2f
	.global	__aeabi_f2uiz
	.section	.text._ZN7IwTween6CTween9ValueType13SetFromInterpEf,"ax",%progbits
	.align	2
	.global	_ZN7IwTween6CTween9ValueType13SetFromInterpEf
	.hidden	_ZN7IwTween6CTween9ValueType13SetFromInterpEf
	.type	_ZN7IwTween6CTween9ValueType13SetFromInterpEf, %function
_ZN7IwTween6CTween9ValueType13SetFromInterpEf:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r4, r0
	ldr	r3, [r0]
	mov	r5, r1
	sub	r3, r3, #256
	cmp	r3, #7
	addls	pc, pc, r3, asl #2
	b	.L255
.L258:
	b	.L257
	b	.L259
	b	.L260
	b	.L261
	b	.L262
	b	.L263
	b	.L264
	b	.L265
.L265:
	ldr	r6, [r0, #12]	@ float
	ldr	r0, [r0, #8]	@ float
	mov	r1, r6
	bl	__aeabi_fsub(PLT)
	mov	r1, r5
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, r6
	bl	__aeabi_fadd(PLT)
	ldr	r3, [r4, #4]
	str	r0, [r3]	@ float
.L255:
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L257:
	mov	r0, r1
	mov	r1, #1065353216
	bl	__aeabi_fcmpeq(PLT)
	ldr	r3, [r4, #4]
	cmp	r0, #0
	ldrneb	r2, [r4, #8]	@ zero_extendqisi2
	ldreqb	r2, [r4, #12]	@ zero_extendqisi2
	strb	r2, [r3]
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L259:
	ldrsb	r0, [r0, #12]
	bl	__aeabi_i2f(PLT)
	mov	r6, r0
	ldrsb	r0, [r4, #8]
	bl	__aeabi_i2f(PLT)
	mov	r1, r6
	bl	__aeabi_fsub(PLT)
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, r6
	bl	__aeabi_fadd(PLT)
	bl	__aeabi_f2iz(PLT)
	ldr	r3, [r4, #4]
	strb	r0, [r3]
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L260:
	ldrb	r6, [r0, #12]	@ zero_extendqisi2
	ldr	r7, [r0, #4]
	mov	r0, r6
	bl	__aeabi_i2f(PLT)
	mov	r8, r0
	ldrb	r0, [r4, #8]	@ zero_extendqisi2
	bl	__aeabi_ui2f(PLT)
	mov	r4, r0
	mov	r0, r6
	bl	__aeabi_ui2f(PLT)
	mov	r1, r0
	mov	r0, r4
	bl	__aeabi_fsub(PLT)
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, r8
	bl	__aeabi_fadd(PLT)
	bl	__aeabi_f2uiz(PLT)
	strb	r0, [r7]
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L261:
	ldrsh	r0, [r0, #12]
	bl	__aeabi_i2f(PLT)
	mov	r6, r0
	ldrsh	r0, [r4, #8]
	bl	__aeabi_i2f(PLT)
	mov	r1, r6
	bl	__aeabi_fsub(PLT)
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, r6
	bl	__aeabi_fadd(PLT)
	bl	__aeabi_f2iz(PLT)
	ldr	r3, [r4, #4]
	strh	r0, [r3]	@ movhi
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L262:
	ldrh	r6, [r0, #12]
	ldr	r7, [r0, #4]
	mov	r0, r6
	bl	__aeabi_i2f(PLT)
	mov	r8, r0
	ldrh	r0, [r4, #8]
	bl	__aeabi_ui2f(PLT)
	mov	r4, r0
	mov	r0, r6
	bl	__aeabi_ui2f(PLT)
	mov	r1, r0
	mov	r0, r4
	bl	__aeabi_fsub(PLT)
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, r8
	bl	__aeabi_fadd(PLT)
	bl	__aeabi_f2uiz(PLT)
	strh	r0, [r7]	@ movhi
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L263:
	ldr	r6, [r0, #12]
	ldr	r0, [r0, #8]
	ldr	r4, [r4, #4]
	rsb	r0, r6, r0
	bl	__aeabi_i2f(PLT)
	mov	r1, r5
	bl	__aeabi_fmul(PLT)
	bl	__aeabi_f2iz(PLT)
	add	r0, r6, r0
	str	r0, [r4]
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L264:
	ldr	r6, [r0, #12]
	ldr	r7, [r0, #4]
	mov	r0, r6
	bl	__aeabi_ui2f(PLT)
	mov	r8, r0
	ldr	r0, [r4, #8]
	rsb	r0, r6, r0
	bl	__aeabi_i2f(PLT)
	mov	r1, r5
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, r8
	bl	__aeabi_fadd(PLT)
	bl	__aeabi_f2uiz(PLT)
	str	r0, [r7]
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
	.size	_ZN7IwTween6CTween9ValueType13SetFromInterpEf, .-_ZN7IwTween6CTween9ValueType13SetFromInterpEf
	.section	.text._ZN7IwTween6CTween4SpecC2Ev,"ax",%progbits
	.align	2
	.global	_ZN7IwTween6CTween4SpecC2Ev
	.hidden	_ZN7IwTween6CTween4SpecC2Ev
	.type	_ZN7IwTween6CTween4SpecC2Ev, %function
_ZN7IwTween6CTween4SpecC2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, .L272
	stmfd	sp!, {r4, r5}
	mov	r2, #0
	ldr	r4, .L272+4
	mov	r5, #1065353216
	mov	r1, #0
.LPIC0:
	add	ip, pc, ip
	str	r5, [r0]	@ float
	str	r4, [r0, #12]
	str	ip, [r0, #16]
	str	r1, [r0, #4]	@ float
	str	r1, [r0, #20]	@ float
	strb	r2, [r0, #8]
	str	r2, [r0, #24]
	str	r2, [r0, #28]
	ldmfd	sp!, {r4, r5}
	bx	lr
.L273:
	.align	2
.L272:
	.word	_ZN7IwTween4Ease6linearEff-(.LPIC0+8)
	.word	265
	.size	_ZN7IwTween6CTween4SpecC2Ev, .-_ZN7IwTween6CTween4SpecC2Ev
	.global	_ZN7IwTween6CTween4SpecC1Ev
	.hidden	_ZN7IwTween6CTween4SpecC1Ev
	.set	_ZN7IwTween6CTween4SpecC1Ev,_ZN7IwTween6CTween4SpecC2Ev
	.global	__aeabi_fcmpge
	.global	__aeabi_fcmpgt
	.section	.text._ZN7IwTween6CTween6UpdateEf,"ax",%progbits
	.align	2
	.global	_ZN7IwTween6CTween6UpdateEf
	.hidden	_ZN7IwTween6CTween6UpdateEf
	.type	_ZN7IwTween6CTween6UpdateEf, %function
_ZN7IwTween6CTween6UpdateEf:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	fp, r0
	ldrb	r8, [r0, #37]	@ zero_extendqisi2
	sub	sp, sp, #20
	cmp	r8, #0
	bne	.L346
	mov	r0, r1
	ldr	r1, [fp, #32]	@ float
	bl	__aeabi_fadd(PLT)
	ldr	r4, [fp, #4]	@ float
	mov	r1, r4
	str	r0, [fp, #32]	@ float
	mov	r5, r0
	bl	__aeabi_fcmplt(PLT)
	cmp	r0, #0
	bne	.L276
	ldr	r7, [fp, #40]
	ldr	r6, [fp]	@ float
	mov	r0, r7
	bl	__aeabi_i2f(PLT)
	mov	r1, r0
	mov	r0, r6
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fsub(PLT)
	mov	r1, r4
	bl	__aeabi_fsub(PLT)
	mov	r1, r6
	bl	__aeabi_fdiv(PLT)
	ldr	r1, [fp, #12]
	ldr	r2, .L387
	cmp	r1, r2
	mov	r1, #1065353216
	str	r0, [sp, #8]	@ float
	beq	.L279
	bl	__aeabi_fcmpge(PLT)
	cmp	r0, #0
	beq	.L381
	ldr	r0, [sp, #8]	@ float
	bl	__aeabi_f2iz(PLT)
	bl	__aeabi_i2f(PLT)
	add	r7, r7, #1
	mov	r1, r0
	ldr	r0, [sp, #8]	@ float
	bl	__aeabi_fsub(PLT)
	mov	r3, #1
	str	r7, [fp, #40]
	str	r3, [sp, #12]
	str	r0, [sp, #8]	@ float
.L280:
	ldr	r2, [fp, #16]
	ldr	r1, [fp, #20]	@ float
	blx	r2
	ldr	r2, .L387+4
	ldr	r1, [fp, #12]
	cmp	r1, r2
	mov	r7, r0
	beq	.L385
.L284:
	ldrb	r2, [fp, #38]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L310
	ldr	r2, [fp, #24]
	mov	r1, #1
	cmp	r2, #0
	strb	r1, [fp, #38]
	beq	.L288
	mov	r0, fp
	blx	r2
.L288:
	ldrb	r2, [fp, #36]	@ zero_extendqisi2
	ldr	r4, [fp, #44]
	ldr	r10, [fp, #48]
	cmp	r2, #0
	bne	.L289
	cmp	r4, r10
	addne	r5, r4, #16
	movne	r6, r5
	beq	.L287
.L329:
	ldr	r2, [r6, #-16]
	ldrb	r1, [fp, #8]	@ zero_extendqisi2
	sub	r2, r2, #256
	cmp	r2, #7
	addls	pc, pc, r2, asl #2
	b	.L312
.L314:
	b	.L313
	b	.L315
	b	.L316
	b	.L317
	b	.L318
	b	.L320
	b	.L320
	b	.L321
.L287:
	ldr	r2, .L387
	ldr	r1, [fp, #12]
	cmp	r1, r2
	beq	.L386
	ldr	r3, [sp, #12]
	cmp	r3, #0
	beq	.L276
	ldr	r2, [fp, #28]
	cmp	r2, #0
	beq	.L276
.L384:
	mov	r0, fp
	blx	r2
.L276:
	mov	r0, r8
	add	sp, sp, #20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L386:
	ldr	r0, [sp, #8]	@ float
	mov	r1, #1065353216
	bl	__aeabi_fcmpge(PLT)
	cmp	r0, #0
	beq	.L276
	ldr	r2, [fp, #28]
	mov	r8, #1
	cmp	r2, #0
	strb	r8, [fp, #37]
	bne	.L384
.L346:
	mov	r8, #1
	mov	r0, r8
	add	sp, sp, #20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L320:
	ldr	r2, [r6, #-12]
	cmp	r1, #0
	ldr	r0, [r4, #8]
	ldr	r2, [r2]
	moveq	r1, #0
	movne	r1, r2
	add	r1, r1, r0
	str	r2, [r4, #12]
	str	r1, [r4, #8]
.L312:
	ldr	r1, [r4, #12]
	ldr	r2, [r4, #8]
	cmp	r10, r5
	str	r1, [r4, #8]
	str	r2, [r4, #12]
	add	r6, r6, #16
	mov	r4, r5
	beq	.L310
	add	r5, r5, #16
	b	.L329
.L321:
	ldr	r2, [r6, #-12]
	cmp	r1, #0
	ldr	r0, [r4, #8]	@ float
	ldr	r1, [r2]	@ float
	str	r1, [r4, #12]	@ float
	moveq	r1, #0
	bl	__aeabi_fadd(PLT)
	str	r0, [r4, #8]	@ float
	b	.L312
.L313:
	ldr	r2, [r6, #-12]
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r4, #12]
	b	.L312
.L318:
	ldr	r2, [r6, #-12]
	ldrh	r0, [r4, #8]
	cmp	r1, #0
	ldrh	r2, [r2]
	moveq	r1, #0
	movne	r1, r2
	add	r1, r1, r0
	strh	r2, [r4, #12]	@ movhi
	strh	r1, [r4, #8]	@ movhi
	b	.L312
.L317:
	ldr	r2, [r6, #-12]
	ldrh	r0, [r4, #8]
	cmp	r1, #0
	ldrh	r2, [r2]
	strh	r2, [r4, #12]	@ movhi
	uxthne	r1, r2
	add	r2, r1, r0
	strh	r2, [r4, #8]	@ movhi
	b	.L312
.L316:
	ldr	r2, [r6, #-12]
	ldrb	r0, [r4, #8]	@ zero_extendqisi2
	cmp	r1, #0
	ldrb	r2, [r2]	@ zero_extendqisi2
	moveq	r1, #0
	movne	r1, r2
	add	r1, r1, r0
	strb	r2, [r4, #12]
	strb	r1, [r4, #8]
	b	.L312
.L315:
	ldr	r2, [r6, #-12]
	ldrb	r0, [r4, #8]	@ zero_extendqisi2
	cmp	r1, #0
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r4, #12]
	uxtbne	r1, r2
	add	r2, r1, r0
	strb	r2, [r4, #8]
	b	.L312
.L381:
	str	r8, [sp, #12]
	ldr	r0, [sp, #8]	@ float
	b	.L280
.L310:
	ldr	r9, [fp, #44]
	ldr	r6, [fp, #48]
	cmp	r9, r6
	addne	r4, r9, #16
	movne	r5, r4
	beq	.L287
.L343:
	ldr	r1, [r5, #-16]
	sub	r1, r1, #256
	cmp	r1, #7
	addls	pc, pc, r1, asl #2
	b	.L330
.L332:
	b	.L331
	b	.L333
	b	.L334
	b	.L335
	b	.L336
	b	.L337
	b	.L338
	b	.L339
.L339:
	ldr	r10, [r9, #12]	@ float
	ldr	r0, [r9, #8]	@ float
	mov	r1, r10
	bl	__aeabi_fsub(PLT)
	mov	r1, r0
	mov	r0, r7
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, r10
	bl	__aeabi_fadd(PLT)
	ldr	r2, [r5, #-12]
	str	r0, [r2]	@ float
.L330:
	cmp	r6, r4
	add	r5, r5, #16
	mov	r9, r4
	beq	.L287
	add	r4, r4, #16
	b	.L343
.L338:
	ldr	r1, [r9, #12]
	ldr	r10, [r5, #-12]
	mov	r0, r1
	str	r1, [sp, #4]
	bl	__aeabi_ui2f(PLT)
	ldr	r1, [sp, #4]
	mov	ip, r0
	ldr	r0, [r9, #8]
	str	ip, [sp]
	rsb	r0, r1, r0
	bl	__aeabi_i2f(PLT)
	mov	r1, r0
	mov	r0, r7
	bl	__aeabi_fmul(PLT)
	ldr	ip, [sp]
	mov	r1, r0
	mov	r0, ip
	bl	__aeabi_fadd(PLT)
	bl	__aeabi_f2uiz(PLT)
	str	r0, [r10]
	b	.L330
.L337:
	ldr	r10, [r9, #12]
	ldr	r0, [r9, #8]
	ldr	r9, [r5, #-12]
	rsb	r0, r10, r0
	bl	__aeabi_i2f(PLT)
	mov	r1, r0
	mov	r0, r7
	bl	__aeabi_fmul(PLT)
	bl	__aeabi_f2iz(PLT)
	add	r0, r10, r0
	str	r0, [r9]
	b	.L330
.L336:
	ldrh	r1, [r9, #12]
	ldr	r10, [r5, #-12]
	mov	r0, r1
	str	r1, [sp, #4]
	bl	__aeabi_i2f(PLT)
	mov	ip, r0
	ldrh	r0, [r9, #8]
	str	ip, [sp]
	bl	__aeabi_ui2f(PLT)
	ldr	r1, [sp, #4]
	mov	r9, r0
	mov	r0, r1
	bl	__aeabi_ui2f(PLT)
	mov	r1, r0
	mov	r0, r9
	bl	__aeabi_fsub(PLT)
	mov	r1, r0
	mov	r0, r7
	bl	__aeabi_fmul(PLT)
	ldr	ip, [sp]
	mov	r1, r0
	mov	r0, ip
	bl	__aeabi_fadd(PLT)
	bl	__aeabi_f2uiz(PLT)
	strh	r0, [r10]	@ movhi
	b	.L330
.L335:
	ldrsh	r0, [r9, #12]
	bl	__aeabi_i2f(PLT)
	mov	r10, r0
	ldrsh	r0, [r9, #8]
	bl	__aeabi_i2f(PLT)
	mov	r1, r10
	bl	__aeabi_fsub(PLT)
	mov	r1, r0
	mov	r0, r7
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, r10
	bl	__aeabi_fadd(PLT)
	bl	__aeabi_f2iz(PLT)
	ldr	r2, [r5, #-12]
	strh	r0, [r2]	@ movhi
	b	.L330
.L334:
	ldrb	r1, [r9, #12]	@ zero_extendqisi2
	ldr	r10, [r5, #-12]
	mov	r0, r1
	str	r1, [sp, #4]
	bl	__aeabi_i2f(PLT)
	mov	ip, r0
	ldrb	r0, [r9, #8]	@ zero_extendqisi2
	str	ip, [sp]
	bl	__aeabi_ui2f(PLT)
	ldr	r1, [sp, #4]
	mov	r9, r0
	mov	r0, r1
	bl	__aeabi_ui2f(PLT)
	mov	r1, r0
	mov	r0, r9
	bl	__aeabi_fsub(PLT)
	mov	r1, r0
	mov	r0, r7
	bl	__aeabi_fmul(PLT)
	ldr	ip, [sp]
	mov	r1, r0
	mov	r0, ip
	bl	__aeabi_fadd(PLT)
	bl	__aeabi_f2uiz(PLT)
	strb	r0, [r10]
	b	.L330
.L331:
	mov	r1, #1065353216
	mov	r0, r7
	bl	__aeabi_fcmpeq(PLT)
	ldr	r1, [r5, #-12]
	cmp	r0, #0
	ldrneb	r2, [r9, #8]	@ zero_extendqisi2
	ldreqb	r2, [r9, #12]	@ zero_extendqisi2
	strb	r2, [r1]
	b	.L330
.L333:
	ldrsb	r0, [r9, #12]
	bl	__aeabi_i2f(PLT)
	mov	r10, r0
	ldrsb	r0, [r9, #8]
	bl	__aeabi_i2f(PLT)
	mov	r1, r10
	bl	__aeabi_fsub(PLT)
	mov	r1, r0
	mov	r0, r7
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, r10
	bl	__aeabi_fadd(PLT)
	bl	__aeabi_f2iz(PLT)
	ldr	r2, [r5, #-12]
	strb	r0, [r2]
	b	.L330
.L279:
	bl	__aeabi_fcmpgt(PLT)
	cmp	r0, #0
	movne	r3, #1065353216
	strne	r3, [sp, #8]	@ float
	mov	r3, #0
	str	r3, [sp, #12]
	ldr	r0, [sp, #8]	@ float
	b	.L280
.L385:
	ldr	r2, [fp, #40]
	tst	r2, #1
	beq	.L284
	mov	r1, r0
	mov	r0, #1065353216
	bl	__aeabi_fsub(PLT)
	mov	r7, r0
	b	.L284
.L289:
	cmp	r4, r10
	beq	.L287
	add	r5, r4, #16
	mov	r6, r5
.L311:
	ldr	r2, [r6, #-16]
	ldrb	r1, [fp, #8]	@ zero_extendqisi2
	sub	r2, r2, #256
	cmp	r2, #7
	addls	pc, pc, r2, asl #2
	b	.L293
.L295:
	b	.L294
	b	.L296
	b	.L297
	b	.L298
	b	.L299
	b	.L301
	b	.L301
	b	.L302
.L301:
	ldr	r2, [r6, #-12]
	cmp	r1, #0
	ldr	r0, [r4, #8]
	ldr	r2, [r2]
	moveq	r1, #0
	movne	r1, r2
	add	r1, r1, r0
	str	r2, [r4, #12]
	str	r1, [r4, #8]
.L293:
	cmp	r10, r5
	add	r6, r6, #16
	mov	r4, r5
	beq	.L310
	add	r5, r5, #16
	b	.L311
.L302:
	ldr	r2, [r6, #-12]
	cmp	r1, #0
	ldr	r0, [r4, #8]	@ float
	ldr	r1, [r2]	@ float
	str	r1, [r4, #12]	@ float
	moveq	r1, #0
	bl	__aeabi_fadd(PLT)
	str	r0, [r4, #8]	@ float
	b	.L293
.L299:
	ldr	r2, [r6, #-12]
	ldrh	r0, [r4, #8]
	cmp	r1, #0
	ldrh	r2, [r2]
	moveq	r1, #0
	movne	r1, r2
	add	r1, r1, r0
	strh	r2, [r4, #12]	@ movhi
	strh	r1, [r4, #8]	@ movhi
	b	.L293
.L298:
	ldr	r2, [r6, #-12]
	ldrh	r0, [r4, #8]
	cmp	r1, #0
	ldrh	r2, [r2]
	strh	r2, [r4, #12]	@ movhi
	uxthne	r1, r2
	add	r2, r1, r0
	strh	r2, [r4, #8]	@ movhi
	b	.L293
.L297:
	ldr	r2, [r6, #-12]
	ldrb	r0, [r4, #8]	@ zero_extendqisi2
	cmp	r1, #0
	ldrb	r2, [r2]	@ zero_extendqisi2
	moveq	r1, #0
	movne	r1, r2
	add	r1, r1, r0
	strb	r2, [r4, #12]
	strb	r1, [r4, #8]
	b	.L293
.L294:
	ldr	r2, [r6, #-12]
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r4, #12]
	b	.L293
.L296:
	ldr	r2, [r6, #-12]
	ldrb	r0, [r4, #8]	@ zero_extendqisi2
	cmp	r1, #0
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r4, #12]
	uxtbne	r1, r2
	add	r2, r1, r0
	strb	r2, [r4, #8]
	b	.L293
.L388:
	.align	2
.L387:
	.word	265
	.word	267
	.size	_ZN7IwTween6CTween6UpdateEf, .-_ZN7IwTween6CTween6UpdateEf
	.section	.text._ZN7IwTween6CTweenC2ERKS0_,"axG",%progbits,_ZN7IwTween6CTweenC5ERKS0_,comdat
	.align	2
	.weak	_ZN7IwTween6CTweenC2ERKS0_
	.hidden	_ZN7IwTween6CTweenC2ERKS0_
	.type	_ZN7IwTween6CTweenC2ERKS0_, %function
_ZN7IwTween6CTweenC2ERKS0_:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov	r4, r1
	mov	r5, r0
	mov	r7, r1
	ldmia	r4!, {r0, r1, r2, r3}
	mov	ip, r5
	mov	r6, #0
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	r4, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	ldr	r3, [r7, #32]	@ float
	str	r3, [r5, #32]	@ float
	ldrb	r3, [r7, #36]	@ zero_extendqisi2
	strb	r3, [r5, #36]
	ldrb	r3, [r7, #37]	@ zero_extendqisi2
	strb	r3, [r5, #37]
	ldrb	r3, [r7, #38]	@ zero_extendqisi2
	strb	r3, [r5, #38]
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	strb	r3, [r5, #39]
	ldr	r3, [r7, #40]
	str	r3, [r5, #40]
	ldr	r4, [r7, #48]
	ldr	r3, [r7, #44]
	str	r6, [r5, #44]
	rsb	r4, r3, r4
	str	r6, [r5, #48]
	movs	r4, r4, asr #4
	str	r6, [r5, #52]
	moveq	r8, r4
	bne	.L396
.L390:
	add	r4, r8, r4
	str	r4, [r5, #52]
	str	r8, [r5, #44]
	str	r8, [r5, #48]
	ldr	r9, [r7, #44]
	ldr	r6, [r7, #48]
	cmp	r9, r6
	beq	.L392
	add	r4, r8, #16
	mov	ip, r9
.L394:
	ldmia	ip, {r0, r1, r2, r3}
	add	ip, ip, #16
	cmp	r6, ip
	stmdb	r4, {r0, r1, r2, r3}
	add	r4, r4, #16
	bne	.L394
	add	r9, r9, #16
	rsb	r6, r9, r6
	bic	r6, r6, #15
	add	r6, r6, #16
	add	r8, r8, r6
.L392:
	str	r8, [r5, #48]
	ldr	r3, [r7, #56]
	mov	r0, r5
	str	r3, [r5, #56]
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
.L396:
	mov	r4, r4, asl #4
	mov	r0, r4
	bl	malloc(PLT)
	subs	r8, r0, #0
	bne	.L390
	mov	r0, r4
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	mov	r8, r0
	b	.L390
	.size	_ZN7IwTween6CTweenC2ERKS0_, .-_ZN7IwTween6CTweenC2ERKS0_
	.weak	_ZN7IwTween6CTweenC1ERKS0_
	.hidden	_ZN7IwTween6CTweenC1ERKS0_
	.set	_ZN7IwTween6CTweenC1ERKS0_,_ZN7IwTween6CTweenC2ERKS0_
	.global	__aeabi_d2f
	.section	.text._ZN7IwTween13CTweenManager5TweenEfz,"ax",%progbits
	.align	2
	.global	_ZN7IwTween13CTweenManager5TweenEfz
	.hidden	_ZN7IwTween13CTweenManager5TweenEfz
	.type	_ZN7IwTween13CTweenManager5TweenEfz, %function
_ZN7IwTween13CTweenManager5TweenEfz:
	@ args = 4, pretend = 12, frame = 112
	@ frame_needed = 0, uses_anonymous_args = 1
	stmfd	sp!, {r1, r2, r3}
	mov	r3, #0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #112
	ldr	r2, .L469
	str	r0, [sp]
	ldr	r4, [sp]
	ldr	r0, [sp, #148]	@ float
	ldr	r1, .L469+4
	ldmib	r4, {r9, ip}
	mov	r7, #0
.LPIC41:
	add	r2, pc, r2
	cmp	r9, ip
	str	r0, [sp, #52]	@ float
	str	r3, [sp, #56]	@ float
	str	r3, [sp, #72]	@ float
	str	r1, [sp, #64]
	str	r2, [sp, #68]
	strb	r7, [sp, #60]
	str	r7, [sp, #76]
	str	r7, [sp, #80]
	beq	.L398
	add	r4, sp, #52
	mov	ip, r9
	ldmia	r4!, {r0, r1, r2, r3}
	mov	fp, #0
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	r4, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	ldr	ip, [sp]
	str	r7, [r9, #52]
	str	r7, [r9, #44]
	str	r7, [r9, #48]
	str	fp, [r9, #32]	@ float
	strb	r7, [r9, #36]
	strb	r7, [r9, #37]
	strb	r7, [r9, #38]
	strb	r7, [r9, #39]
	str	r7, [r9, #40]
	str	r7, [r9, #56]
	ldmia	ip, {r0, r1}
	mov	r4, r0
	add	r1, r1, #60
	str	r1, [ip, #4]
	str	r0, [sp, #28]
.L399:
	rsb	r1, r4, r1
	mov	r3, #0
	mov	r1, r1, asr #2
	mov	r2, #1
	add	r1, r1, r1, asl #4
	ldr	r4, [sp]
	add	r1, r1, r1, asl #8
	mov	r10, r2
	add	r1, r1, r1, asl #16
	mvn	r1, r1
	mov	r9, r3
	rsb	r1, r1, r1, asl #4
	add	r6, sp, #152
	add	r5, r0, r1, asl #2
	mov	ip, #0
	str	r4, [r5, #56]
	str	ip, [r5, #32]	@ float
	strb	r2, [r5, #36]
	strb	r3, [r5, #37]
	strb	r3, [r5, #39]
	strb	r3, [r5, #38]
	str	r3, [r5, #40]
.L416:
	ldr	r4, [r6]
	add	r2, r6, #4
	sub	r3, r4, #264
	str	r2, [sp, #44]
	cmp	r3, #10
	addls	pc, pc, r3, asl #2
	b	.L426
.L446:
	b	.L417
	b	.L421
	b	.L421
	b	.L421
	b	.L419
	b	.L420
	b	.L422
	b	.L423
	b	.L424
	b	.L425
	b	.L447
.L447:
	mov	r0, r5
	add	sp, sp, #112
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	sp, sp, #12
	bx	lr
.L425:
	ldr	r3, [r6, #4]
	add	r6, r6, #8
	str	r3, [r5, #28]
	str	r6, [sp, #44]
	b	.L416
.L424:
	ldr	r3, [r6, #4]
	add	r6, r6, #8
	str	r3, [r5, #24]
	str	r6, [sp, #44]
	b	.L416
.L423:
	add	r6, r6, #11
	bic	r3, r6, #7
	add	r6, r3, #8
	ldrd	r0, [r3]
	str	r6, [sp, #44]
	bl	__aeabi_d2f(PLT)
	str	r0, [r5, #20]	@ float
	b	.L416
.L422:
	ldr	r3, [r6, #4]
	add	r6, r6, #8
	str	r3, [r5, #16]
	str	r6, [sp, #44]
	b	.L416
.L420:
	strb	r10, [r5, #8]
	mov	r6, r2
	b	.L416
.L419:
	add	r6, r6, #11
	bic	r3, r6, #7
	add	r6, r3, #8
	ldrd	r0, [r3]
	str	r6, [sp, #44]
	bl	__aeabi_d2f(PLT)
	str	r0, [r5, #4]	@ float
	b	.L416
.L421:
	str	r4, [r5, #12]
	mov	r6, r2
	b	.L416
.L417:
	strb	r9, [r5, #36]
	mov	r6, r2
	b	.L416
.L426:
	add	r2, r6, #8
	sub	r3, r4, #256
	str	r2, [sp, #44]
	ldr	r8, [r6, #4]
	cmp	r3, #7
	addls	pc, pc, r3, asl #2
	b	.L427
.L429:
	b	.L428
	b	.L431
	b	.L431
	b	.L433
	b	.L433
	b	.L435
	b	.L435
	b	.L436
.L433:
	ldr	r3, [r6, #8]
	add	r6, r6, #12
	strh	r3, [sp, #48]	@ movhi
	ldr	ip, [sp, #48]
	str	r6, [sp, #44]
	str	ip, [sp, #4]
.L427:
	ldr	r7, [r5, #48]
	ldr	r3, [r5, #52]
	cmp	r7, r3
	beq	.L437
.L464:
	stmia	r7, {r4, r8}
	ldr	r4, [sp, #4]
	str	r4, [r7, #8]
	ldr	r3, [r5, #48]
	add	r3, r3, #16
	str	r3, [r5, #48]
.L438:
	ldr	r6, [sp, #44]
	b	.L416
.L435:
	add	r3, r6, #12
	str	r3, [sp, #44]
	ldr	r7, [r5, #48]
	ldr	r3, [r5, #52]
	ldr	r6, [r6, #8]
	cmp	r7, r3
	str	r6, [sp, #4]
	bne	.L464
.L437:
	ldr	ip, [r5, #44]
	rsb	r3, ip, r7
	str	ip, [sp]
	movs	r3, r3, asr #4
	beq	.L452
	movs	r3, r3, asl #1
	streq	r3, [sp, #8]
	moveq	fp, r3
	moveq	r6, #16
	bne	.L439
.L440:
	ldr	ip, [sp]
	cmp	r7, ip
	beq	.L454
	add	r6, fp, #16
.L444:
	ldmia	ip, {r0, r1, r2, r3}
	add	ip, ip, #16
	cmp	r7, ip
	stmdb	r6, {r0, r1, r2, r3}
	add	r6, r6, #16
	bne	.L444
	ldr	ip, [sp]
	add	r3, ip, #16
	rsb	r3, r3, r7
	bic	r3, r3, #15
	add	r3, r3, #16
	add	r3, fp, r3
	add	r6, r3, #16
.L442:
	stmia	r3, {r4, r8}
	ldr	r4, [sp, #4]
	str	r4, [r3, #8]
	ldr	r0, [r5, #44]
	cmp	r0, #0
	beq	.L445
	bl	free(PLT)
.L445:
	ldr	ip, [sp, #8]
	str	fp, [r5, #44]
	add	r3, fp, ip
	str	r3, [r5, #52]
	str	r6, [r5, #48]
	b	.L438
.L431:
	ldr	r3, [r6, #8]
	add	r6, r6, #12
	strb	r3, [sp, #48]
	ldr	ip, [sp, #48]
	str	r6, [sp, #44]
	str	ip, [sp, #4]
	b	.L427
.L428:
	ldr	r3, [r6, #8]
	add	r6, r6, #12
	adds	r3, r3, #0
	movne	r3, #1
	strb	r3, [sp, #48]
	ldr	ip, [sp, #48]
	str	r6, [sp, #44]
	str	ip, [sp, #4]
	b	.L427
.L436:
	add	r3, r6, #15
	bic	r3, r3, #7
	add	r2, r3, #8
	ldrd	r0, [r3]
	str	r2, [sp, #44]
	bl	__aeabi_d2f(PLT)
	str	r0, [sp, #4]
	b	.L427
.L452:
	mov	r3, #1
.L439:
	mov	r3, r3, asl #4
	mov	r0, r3
	str	r3, [sp, #8]
	bl	malloc(PLT)
	subs	fp, r0, #0
	beq	.L465
.L441:
	add	r6, fp, #16
	b	.L440
.L398:
	ldr	r4, [r4]
	rsb	r3, r4, r9
	str	r4, [sp, #16]
	mov	r3, r3, asr #2
	add	r3, r3, r3, asl #4
	add	r3, r3, r3, asl #8
	add	r3, r3, r3, asl #16
	rsb	r3, r3, #0
	cmp	r3, #0
	bne	.L466
	mov	r3, #1
.L400:
	rsb	r3, r3, r3, asl #4
	mov	r3, r3, asl #2
	mov	r0, r3
	str	r3, [sp, #32]
	bl	malloc(PLT)
	cmp	r0, #0
	str	r0, [sp, #12]
	beq	.L467
.L402:
	ldr	r4, [sp, #12]
	add	ip, r4, #60
	str	r4, [sp, #28]
	str	ip, [sp, #8]
.L401:
	ldr	ip, [sp, #16]
	cmp	ip, r9
	beq	.L450
	ldr	r7, [sp, #12]
	ldr	r4, [sp, #12]
	add	fp, r7, #44
	add	r4, r4, #52
	mov	r5, ip
	add	ip, ip, #44
	str	r4, [sp, #20]
	str	r4, [sp, #8]
	str	ip, [sp, #36]
	str	r9, [sp, #24]
.L410:
	mov	r6, r5
	mov	ip, r7
	ldmia	r6!, {r0, r1, r2, r3}
	ldr	r4, [sp, #12]
	stmia	ip!, {r0, r1, r2, r3}
	rsb	r9, r4, r7
	ldmia	r6, {r0, r1, r2, r3}
	mov	r4, r9
	stmia	ip, {r0, r1, r2, r3}
	mov	ip, #0
	ldr	r3, [r5, #32]	@ float
	ldr	r1, [sp, #20]
	str	r3, [r7, #32]	@ float
	ldrb	r3, [r5, #36]	@ zero_extendqisi2
	strb	r3, [r7, #36]
	ldrb	r3, [r5, #37]	@ zero_extendqisi2
	strb	r3, [r7, #37]
	ldrb	r3, [r5, #38]	@ zero_extendqisi2
	strb	r3, [r7, #38]
	ldrb	r3, [r5, #39]	@ zero_extendqisi2
	strb	r3, [r7, #39]
	ldr	r3, [r5, #40]
	str	r3, [r7, #40]
	ldr	r6, [r5, #48]
	ldr	r3, [r5, #44]
	str	ip, [r4, fp]!
	rsb	r6, r3, r6
	str	ip, [r4, #4]
	movs	r6, r6, asr #4
	str	ip, [r9, r1]
	moveq	r8, r6
	bne	.L468
.L404:
	ldr	ip, [sp, #16]
	str	r8, [r9, fp]
	rsb	r3, ip, r5
	str	r8, [r4, #4]
	ldr	ip, [sp, #36]
	ldr	r4, [sp, #8]
	add	r6, r8, r6
	str	r6, [r4]
	ldr	r10, [r3, ip]!
	ldr	r6, [r3, #4]
	cmp	r10, r6
	beq	.L406
	add	r4, r8, #16
	mov	ip, r10
.L408:
	ldmia	ip, {r0, r1, r2, r3}
	add	ip, ip, #16
	cmp	r6, ip
	stmdb	r4, {r0, r1, r2, r3}
	add	r4, r4, #16
	bne	.L408
	add	r3, r10, #16
	rsb	r3, r3, r6
	bic	r3, r3, #15
	add	r3, r3, #16
	ldr	r4, [sp, #8]
	add	r8, r8, r3
.L406:
	add	r9, r9, fp
	ldr	ip, [sp, #24]
	str	r8, [r9, #4]
	add	r5, r5, #60
	ldr	r3, [r5, #-4]
	add	r4, r4, #60
	cmp	ip, r5
	str	r3, [r7, #56]
	str	r4, [sp, #8]
	add	r7, r7, #60
	bne	.L410
	add	r4, r7, #60
	str	r4, [sp, #8]
.L403:
	add	r4, sp, #52
	mov	ip, r7
	ldmia	r4!, {r0, r1, r2, r3}
	mov	r10, #0
	mov	fp, #0
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	r4, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	ldr	ip, [sp]
	str	fp, [r7, #32]	@ float
	strb	r10, [r7, #36]
	strb	r10, [r7, #37]
	strb	r10, [r7, #38]
	strb	r10, [r7, #39]
	str	r10, [r7, #40]
	str	r10, [r7, #52]
	str	r10, [r7, #44]
	str	r10, [r7, #48]
	str	r10, [r7, #56]
	ldmia	ip, {r4, r7}
	cmp	r7, r4
	beq	.L411
	mov	r6, r4
	add	r5, r4, #44
.L414:
	rsb	r3, r4, r6
	add	r6, r6, #60
	ldr	r3, [r5, r3]
	subs	r0, r3, #0
	beq	.L412
	bl	free(PLT)
.L412:
	cmp	r7, r6
	bne	.L414
	ldr	r4, [sp]
	ldr	r7, [r4]
.L411:
	cmp	r7, #0
	beq	.L415
	mov	r0, r7
	bl	free(PLT)
.L415:
	ldr	r4, [sp]
	ldr	r0, [sp, #12]
	ldr	ip, [sp, #32]
	ldr	r1, [sp, #8]
	add	r3, r0, ip
	str	r3, [r4, #8]
	str	r0, [r4]
	str	r1, [r4, #4]
	ldr	r4, [sp, #28]
	b	.L399
.L466:
	movs	r3, r3, asl #1
	bne	.L400
	mov	r4, #60
	str	r3, [sp, #28]
	str	r3, [sp, #32]
	str	r3, [sp, #12]
	str	r4, [sp, #8]
	b	.L401
.L468:
	mov	r6, r6, asl #4
	mov	r0, r6
	bl	malloc(PLT)
	subs	r8, r0, #0
	bne	.L404
	mov	r0, r6
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	mov	r8, r0
	b	.L404
.L465:
	ldr	r0, [sp, #8]
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	ldr	ip, [r5, #44]
	str	ip, [sp]
	mov	fp, r0
	b	.L441
.L454:
	mov	r3, fp
	b	.L442
.L450:
	ldr	r7, [sp, #12]
	b	.L403
.L467:
	ldr	r0, [sp, #32]
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	ldr	ip, [sp]
	ldr	ip, [ip]
	str	ip, [sp, #16]
	str	r0, [sp, #12]
	b	.L402
.L470:
	.align	2
.L469:
	.word	_ZN7IwTween4Ease6linearEff-(.LPIC41+8)
	.word	265
	.size	_ZN7IwTween13CTweenManager5TweenEfz, .-_ZN7IwTween13CTweenManager5TweenEfz
	.section	.text._ZN4_STL6vectorIN7IwTween6CTween9ValueTypeENS_9allocatorIS3_EEEaSERKS6_,"axG",%progbits,_ZN4_STL6vectorIN7IwTween6CTween9ValueTypeENS_9allocatorIS3_EEEaSERKS6_,comdat
	.align	2
	.weak	_ZN4_STL6vectorIN7IwTween6CTween9ValueTypeENS_9allocatorIS3_EEEaSERKS6_
	.hidden	_ZN4_STL6vectorIN7IwTween6CTween9ValueTypeENS_9allocatorIS3_EEEaSERKS6_
	.type	_ZN4_STL6vectorIN7IwTween6CTween9ValueTypeENS_9allocatorIS3_EEEaSERKS6_, %function
_ZN4_STL6vectorIN7IwTween6CTween9ValueTypeENS_9allocatorIS3_EEEaSERKS6_:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, r0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov	r5, r0
	mov	r9, r1
	beq	.L472
	ldmia	r1, {r4, r8}
	ldr	r3, [r0]
	ldr	r2, [r0, #8]
	rsb	r7, r4, r8
	rsb	r2, r3, r2
	mov	r7, r7, asr #4
	cmp	r7, r2, asr #4
	mov	r6, r7
	bhi	.L496
	ldr	r2, [r0, #4]
	rsb	ip, r3, r2
	mov	ip, ip, asr #4
	cmp	r7, ip
	bls	.L497
	subs	r7, ip, #0
	add	ip, r4, ip, asl #4
	ble	.L493
	add	r4, r4, #16
	add	ip, r3, #16
.L488:
	ldmdb	r4, {r0, r1, r2, r3}
	subs	r7, r7, #1
	add	r4, r4, #16
	stmdb	ip, {r0, r1, r2, r3}
	add	ip, ip, #16
	bne	.L488
	ldmia	r5, {r3, r4}
	ldr	r2, [r9]
	ldr	r8, [r9, #4]
	rsb	ip, r3, r4
	bic	ip, ip, #15
	add	ip, r2, ip
.L486:
	cmp	ip, r8
	addne	r4, r4, #16
	beq	.L495
.L491:
	ldmia	ip, {r0, r1, r2, r3}
	add	ip, ip, #16
	cmp	ip, r8
	stmdb	r4, {r0, r1, r2, r3}
	add	r4, r4, #16
	bne	.L491
	ldr	r7, [r5]
	add	r7, r7, r6, asl #4
	str	r7, [r5, #4]
.L472:
	mov	r0, r5
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
.L497:
	cmp	r7, #0
	addgt	r4, r4, #16
	addgt	ip, r3, #16
	ble	.L495
.L485:
	ldmdb	r4, {r0, r1, r2, r3}
	subs	r6, r6, #1
	add	r4, r4, #16
	stmdb	ip, {r0, r1, r2, r3}
	add	ip, ip, #16
	bne	.L485
	ldr	r3, [r5]
	add	r7, r3, r7, asl #4
.L481:
	str	r7, [r5, #4]
	mov	r0, r5
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
.L496:
	cmp	r7, #0
	moveq	r6, r7
	beq	.L474
	mov	r7, r7, asl #4
	mov	r0, r7
	bl	malloc(PLT)
	subs	r6, r0, #0
	beq	.L498
.L474:
	cmp	r4, r8
	addne	ip, r6, #16
	beq	.L479
.L480:
	ldmia	r4, {r0, r1, r2, r3}
	add	r4, r4, #16
	cmp	r8, r4
	stmdb	ip, {r0, r1, r2, r3}
	add	ip, ip, #16
	bne	.L480
.L479:
	ldr	r0, [r5]
	cmp	r0, #0
	beq	.L478
	bl	free(PLT)
.L478:
	add	r7, r6, r7
	str	r7, [r5, #8]
	str	r6, [r5]
	b	.L481
.L495:
	add	r7, r3, r6, asl #4
	b	.L481
.L498:
	mov	r0, r7
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	mov	r6, r0
	b	.L474
.L493:
	mov	r4, r2
	b	.L486
	.size	_ZN4_STL6vectorIN7IwTween6CTween9ValueTypeENS_9allocatorIS3_EEEaSERKS6_, .-_ZN4_STL6vectorIN7IwTween6CTween9ValueTypeENS_9allocatorIS3_EEEaSERKS6_
	.section	.text._ZN7IwTween13CTweenManager6UpdateEf,"ax",%progbits
	.align	2
	.global	_ZN7IwTween13CTweenManager6UpdateEf
	.hidden	_ZN7IwTween13CTweenManager6UpdateEf
	.type	_ZN7IwTween13CTweenManager6UpdateEf, %function
_ZN7IwTween13CTweenManager6UpdateEf:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r6, r0
	ldr	r5, [r0]
	ldr	r2, [r0, #4]
	mov	r7, r1
.L500:
	cmp	r5, r2
	beq	.L511
.L507:
	ldrb	r3, [r5, #37]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L501
	ldrb	r3, [r5, #39]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L512
.L501:
	add	r5, r5, #60
	cmp	r5, r2
	bne	.L507
.L511:
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
.L512:
	mov	r0, r5
	mov	r1, r7
	bl	_ZN7IwTween6CTween6UpdateEf(PLT)
	cmp	r0, #0
	addeq	r5, r5, #60
	ldreq	r2, [r6, #4]
	beq	.L500
.L513:
	ldr	r3, [r6, #4]
	add	r2, r5, #60
	cmp	r2, r3
	beq	.L503
	rsb	r8, r2, r3
	mov	r8, r8, asr #2
	add	r8, r8, r8, asl #4
	add	r8, r8, r8, asl #8
	add	r8, r8, r8, asl #16
	rsb	r8, r8, #0
	cmp	r8, #0
	ble	.L503
	add	r4, r5, #44
.L505:
	add	lr, r4, #16
	sub	ip, r4, #44
	ldmia	lr!, {r0, r1, r2, r3}
	add	r9, r4, #60
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	mov	r1, r9
	ldrb	r0, [r4, #55]	@ zero_extendqisi2
	ldrb	r10, [r4, #52]	@ zero_extendqisi2
	ldrb	lr, [r4, #53]	@ zero_extendqisi2
	ldrb	ip, [r4, #54]	@ zero_extendqisi2
	ldr	r3, [r4, #56]
	ldr	r2, [r4, #48]	@ float
	strb	r0, [r4, #-5]
	str	r3, [r4, #-4]
	strb	r10, [r4, #-8]
	strb	lr, [r4, #-7]
	strb	ip, [r4, #-6]
	str	r2, [r4, #-12]	@ float
	mov	r0, r4
	bl	_ZN4_STL6vectorIN7IwTween6CTween9ValueTypeENS_9allocatorIS3_EEEaSERKS6_(PLT)
	ldr	r3, [r4, #72]
	subs	r8, r8, #1
	str	r3, [r4, #12]
	mov	r4, r9
	bne	.L505
	ldr	r3, [r6, #4]
.L503:
	sub	r2, r3, #60
	str	r2, [r6, #4]
	ldr	r0, [r3, #-16]
	cmp	r0, #0
	beq	.L500
	bl	free(PLT)
	ldr	r2, [r6, #4]
	b	.L500
	.size	_ZN7IwTween13CTweenManager6UpdateEf, .-_ZN7IwTween13CTweenManager6UpdateEf
	.section	.text._ZN7IwTween6CTween6CancelEv,"ax",%progbits
	.align	2
	.global	_ZN7IwTween6CTween6CancelEv
	.hidden	_ZN7IwTween6CTween6CancelEv
	.type	_ZN7IwTween6CTween6CancelEv, %function
_ZN7IwTween6CTween6CancelEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	add	r2, r0, #60
	ldr	r7, [r0, #56]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	beq	.L515
	rsb	r5, r2, r3
	mov	r5, r5, asr #2
	add	r5, r5, r5, asl #4
	add	r5, r5, r5, asl #8
	add	r5, r5, r5, asl #16
	rsb	r5, r5, #0
	cmp	r5, #0
	ble	.L515
	add	r4, r0, #44
.L517:
	add	lr, r4, #16
	sub	ip, r4, #44
	ldmia	lr!, {r0, r1, r2, r3}
	add	r6, r4, #60
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	mov	r1, r6
	ldrb	r0, [r4, #55]	@ zero_extendqisi2
	ldrb	r8, [r4, #52]	@ zero_extendqisi2
	ldrb	lr, [r4, #53]	@ zero_extendqisi2
	ldrb	ip, [r4, #54]	@ zero_extendqisi2
	ldr	r3, [r4, #56]
	ldr	r2, [r4, #48]	@ float
	strb	r0, [r4, #-5]
	str	r3, [r4, #-4]
	strb	r8, [r4, #-8]
	strb	lr, [r4, #-7]
	strb	ip, [r4, #-6]
	str	r2, [r4, #-12]	@ float
	mov	r0, r4
	bl	_ZN4_STL6vectorIN7IwTween6CTween9ValueTypeENS_9allocatorIS3_EEEaSERKS6_(PLT)
	ldr	r3, [r4, #72]
	subs	r5, r5, #1
	str	r3, [r4, #12]
	mov	r4, r6
	bne	.L517
	ldr	r3, [r7, #4]
.L515:
	sub	r2, r3, #60
	str	r2, [r7, #4]
	ldr	r0, [r3, #-16]
	cmp	r0, #0
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	b	free(PLT)
	.size	_ZN7IwTween6CTween6CancelEv, .-_ZN7IwTween6CTween6CancelEv
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-branch revision 208322]"
