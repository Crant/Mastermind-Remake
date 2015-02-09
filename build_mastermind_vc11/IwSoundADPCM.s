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
	.file	"IwSoundADPCM.cpp"
	.global	__aeabi_idiv
	.section	.text._ZN15CIwChannelADPCM13GenerateAudioEP20s3eSoundGenAudioInfo,"ax",%progbits
	.align	2
	.global	_ZN15CIwChannelADPCM13GenerateAudioEP20s3eSoundGenAudioInfo
	.hidden	_ZN15CIwChannelADPCM13GenerateAudioEP20s3eSoundGenAudioInfo
	.type	_ZN15CIwChannelADPCM13GenerateAudioEP20s3eSoundGenAudioInfo, %function
_ZN15CIwChannelADPCM13GenerateAudioEP20s3eSoundGenAudioInfo:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #68
	ldr	r5, [r0]
	ldr	r9, [r1, #8]
	ldr	r3, [r1, #4]
	ldr	fp, [r1, #12]
	cmp	r5, #0
	mov	r6, r0
	mov	r8, r1
	mov	r4, r9
	str	r3, [sp, #32]
	str	fp, [sp, #16]
	beq	.L125
.L2:
	mov	r1, #1
	ldr	r0, [r8]
	bl	s3eSoundChannelGetInt(PLT)
	str	r0, [sp, #12]
	mov	r0, #1
	bl	s3eSoundGetInt(PLT)
	mov	r1, #3
	mov	r7, r0
	ldr	r0, [r8]
	bl	s3eSoundChannelGetInt(PLT)
	ldr	ip, [r6]
	ldrh	r3, [r6, #16]
	str	ip, [sp, #24]
	ldrh	ip, [r6, #20]
	cmp	r9, #0
	str	r3, [sp, #28]
	str	ip, [sp, #20]
	ldrb	ip, [r6, #23]	@ zero_extendqisi2
	ldr	r5, [r6, #8]
	ldr	fp, [r6, #12]
	ldrb	r3, [r6, #22]	@ zero_extendqisi2
	str	ip, [sp, #36]
	mov	r10, r0
	beq	.L65
	ldr	r2, [sp, #12]
	mov	r1, r7
	str	r3, [sp, #8]
	mov	r0, r2, asl #12
	bl	__aeabi_idiv(PLT)
	ldr	r3, [sp, #8]
	cmp	r10, #7
	sxtb	r3, r3
	str	r3, [sp, #12]
	mov	r7, r0
	bgt	.L4
	ldr	r3, [sp, #16]
	cmp	r3, #0
	beq	.L126
	ldr	r3, [sp, #32]
	add	r9, r3, r9, asl #1
	ldr	r3, [sp, #24]
.L20:
	tst	fp, #1
	bne	.L7
.L8:
	cmp	fp, #0
	bne	.L15
	ldr	r2, [r6, #4]
	cmp	r2, r3
	bls	.L70
	ldr	r0, [r6, #36]
	ldr	r1, [r6, #28]
	cmp	r0, #0
	addne	r3, r0, r1
	add	r1, r3, r1
	str	r3, [r6, #36]
	ldrh	ip, [r3]
	cmp	r2, r1
	rsbcc	fp, r3, r2
	ldr	r1, [r6, #24]
	subcc	fp, fp, #4
	str	ip, [sp, #20]
	ldrb	ip, [r3, #2]	@ zero_extendqisi2
	ldr	r2, [r6, #32]
	subcs	fp, r1, #1
	movcc	fp, fp, asl #1
	rsb	r1, r1, r2
	str	ip, [sp, #12]
	tst	fp, #1
	mov	ip, #0
	add	r3, r3, #4
	str	r1, [r6, #32]
	str	ip, [sp, #36]
	bne	.L7
	b	.L8
.L4:
	ldr	r2, [sp, #16]
	cmp	r2, #0
	beq	.L21
	ldr	r9, .L135
	ldr	r3, .L135+4
.LPIC8:
	add	r9, pc, r9
	str	r9, [sp, #48]
	ldr	r9, [sp, #32]
	rsb	ip, r0, #0
	mov	r0, fp
.LPIC10:
	add	r3, pc, r3
	str	r3, [sp, #52]
	str	ip, [sp, #44]
	str	fp, [sp, #16]
	str	r8, [sp, #56]
.L43:
	cmp	r0, #0
	beq	.L22
	tst	r0, #1
	beq	.L23
	ldr	r1, [sp, #24]
	ldr	r3, [sp, #20]
	ldr	r8, [sp, #28]
	ldrb	r1, [r1]	@ zero_extendqisi2
	str	r8, [sp, #20]
	str	r3, [sp, #28]
	str	r1, [sp, #40]
.L24:
	ldr	r3, [sp, #28]
	cmp	r7, r5
	sxth	r8, r3
	bgt	.L31
	ldr	fp, [sp, #20]
	ldr	ip, [sp, #44]
	rsb	r3, r7, r5
	sxth	r0, fp
	rsb	r0, r8, r0
	str	r6, [sp, #60]
	mul	fp, r0, ip
	mov	r2, r9
	mul	r0, r0, r3
	str	fp, [sp]
	mov	r6, ip
	b	.L32
.L119:
	cmp	r7, ip
	ldr	ip, [sp]
	add	r0, r0, ip
	bgt	.L127
.L32:
	add	r1, r8, r0, asr #12
	ldrh	ip, [r2], #2
	mul	r1, r1, r10
	mov	r5, r3
	add	r3, r3, r6
	mov	r1, r1, asr #8
	sxtah	r1, r1, ip
	add	ip, r1, #32768
	movs	ip, ip, lsr #16
	sub	r4, r4, #1
	mov	r9, r2
	str	r1, [sp, #4]
	add	ip, r3, r7
	beq	.L28
	ldr	fp, .L135+8
	cmp	r1, fp
	movlt	r1, fp
	ldr	fp, .L135+12
	cmp	r1, fp
	movge	r1, fp
	str	r1, [sp, #4]
.L28:
	cmp	r4, #0
	strh	r1, [r2, #-2]	@ movhi
	bne	.L119
	ldr	fp, [sp, #16]
	ldr	r6, [sp, #60]
	ldr	r8, [sp, #56]
.L123:
	ldr	r3, [sp, #28]
	ldr	ip, [sp, #20]
	str	r3, [sp, #20]
	str	ip, [sp, #28]
	ldr	r3, [sp, #24]
	b	.L9
.L65:
	ldr	r0, [sp, #16]
.L3:
	add	sp, sp, #68
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L128:
	subs	r4, r4, #1
	rsb	r5, r7, r5
	beq	.L122
.L7:
	cmp	r7, r5
	ble	.L128
	add	r5, r5, #4096
	cmp	r7, r5
	sub	fp, fp, #1
	add	r3, r3, #1
	ble	.L14
	b	.L8
.L129:
	cmp	r7, r5
	bgt	.L8
.L14:
	subs	r4, r4, #1
	rsb	r5, r7, r5
	bne	.L129
.L122:
	str	r3, [sp, #24]
.L9:
	ldr	ip, [sp, #32]
	str	r3, [r6]
	rsb	r0, ip, r9
	str	fp, [r6, #12]
	ldr	r9, [sp, #28]
	ldr	fp, [sp, #20]
	ldr	ip, [sp, #36]
	ldr	r3, [sp, #12]
	cmp	r4, #0
	mov	r0, r0, asr #1
	str	r5, [r6, #8]
	strh	r9, [r6, #16]	@ movhi
	strh	fp, [r6, #20]	@ movhi
	strb	ip, [r6, #23]
	strb	r3, [r6, #22]
	beq	.L3
	mov	r2, #1
	mov	r3, #0
	strb	r2, [r8, #28]
	str	r3, [r6]
	add	sp, sp, #68
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L21:
	ldr	r9, .L135+16
	ldr	ip, .L135+20
	str	r8, [sp, #48]
	ldr	r0, [sp, #32]
	ldr	r8, [sp, #24]
.LPIC14:
	add	r9, pc, r9
.LPIC12:
	add	ip, pc, ip
	rsb	r1, r7, #0
	str	r9, [sp, #44]
	str	ip, [sp, #16]
	str	r1, [sp, #40]
.L64:
	cmp	fp, #0
	beq	.L44
	tst	fp, #1
	beq	.L45
	ldrb	ip, [r8]	@ zero_extendqisi2
	ldr	r3, [sp, #20]
	ldr	r9, [sp, #28]
	str	r3, [sp, #28]
	str	r9, [sp, #20]
.L46:
	cmp	r7, r5
	bgt	.L130
	ldr	r9, [sp, #28]
	ldr	r3, [sp, #20]
	rsb	r5, r7, r5
	sxth	r1, r9
	sxth	r2, r3
	rsb	r2, r1, r2
	subs	r4, r4, #1
	mul	r3, r2, r5
	add	r9, r0, #2
	add	r3, r1, r3, asr #12
	mul	r3, r3, r10
	mov	r3, r3, asr #8
	strh	r3, [r0]	@ movhi
	beq	.L75
	ldr	r0, [sp, #40]
	rsb	r3, r7, r5
	mul	r0, r0, r2
	mul	r3, r3, r2
	str	r0, [sp, #24]
	b	.L53
.L50:
	mov	r2, r2, asr #8
	subs	r4, r4, #1
	rsb	r5, r7, r5
	strh	r2, [r9], #2	@ movhi
	add	r3, r3, r0
	beq	.L75
.L53:
	add	r2, r1, r3, asr #12
	cmp	r7, r5
	mul	r2, r2, r10
	ble	.L50
.L51:
	ldr	r0, [sp, #12]
	mov	ip, ip, asr #4
	and	r3, ip, #7
	tst	ip, #8
	add	r2, r3, r0, asl #3
	ldr	ip, [sp, #44]
	add	r2, r2, #16
	sub	fp, fp, #1
	ldr	r2, [ip, r2, asl #2]
	ldr	r3, [ip, r3, asl #2]
	ldr	ip, [sp, #12]
	rsbne	r2, r2, r1
	addeq	r2, r2, r1
	add	r3, r3, ip
	cmp	r3, #88
	movge	r3, #88
	add	r0, r2, #32768
	bic	r3, r3, r3, asr #31
	movs	r0, r0, lsr #16
	add	r8, r8, #1
	str	r3, [sp, #12]
	beq	.L56
	ldr	r0, .L135+8
	ldr	r3, .L135+12
	cmp	r2, r0
	movlt	r2, r0
	cmp	r2, r3
	movge	r2, r3
.L56:
	add	r5, r5, #4096
	uxth	r2, r2
	cmp	r7, r5
	str	r2, [sp, #20]
	bgt	.L76
	sxth	r2, r2
	rsb	r5, r7, r5
	rsb	r1, r2, r1
	subs	r4, r4, #1
	mul	r3, r1, r5
	add	r0, r9, #2
	add	r3, r2, r3, asr #12
	mul	r3, r3, r10
	mov	r3, r3, asr #8
	strh	r3, [r9]	@ movhi
	beq	.L78
	ldr	r9, [sp, #40]
	rsb	r3, r7, r5
	mul	ip, r9, r1
	mul	r3, r3, r1
	b	.L58
.L59:
	mov	r1, r1, asr #8
	subs	r4, r4, #1
	rsb	r5, r7, r5
	strh	r1, [r0], #2	@ movhi
	add	r3, r3, ip
	beq	.L78
.L58:
	add	r1, r2, r3, asr #12
	cmp	r7, r5
	mul	r1, r1, r10
	ble	.L59
.L57:
	cmp	fp, #0
	ble	.L44
.L45:
	ldrb	ip, [r8]	@ zero_extendqisi2
	ldr	r9, [sp, #12]
	ldr	r1, [sp, #16]
	and	r2, ip, #7
	add	r3, r2, r9, asl #3
	add	r3, r3, #16
	tst	ip, #8
	sub	fp, fp, #1
	ldr	r9, [sp, #20]
	ldr	r3, [r1, r3, asl #2]
	ldr	r2, [r1, r2, asl #2]
	bne	.L131
	sxtah	r3, r3, r9
.L48:
	ldr	r9, [sp, #12]
	add	r1, r3, #32768
	add	r2, r9, r2
	cmp	r2, #88
	movge	r2, #88
	bic	r2, r2, r2, asr #31
	movs	r1, r1, lsr #16
	str	r2, [sp, #12]
	beq	.L49
	ldr	r1, .L135+8
	ldr	r2, .L135+12
	cmp	r3, r1
	movlt	r3, r1
	cmp	r3, r2
	movge	r3, r2
.L49:
	uxth	r3, r3
	str	r3, [sp, #28]
	add	r5, r5, #4096
	b	.L46
.L126:
	mov	r9, r9, asl #1
	mov	r1, r3
	mov	r2, r9
	ldr	r0, [sp, #32]
	bl	memset(PLT)
	ldr	ip, [sp, #32]
	ldr	r3, [sp, #24]
	add	r9, ip, r9
	b	.L20
.L44:
	ldr	r2, [r6, #4]
	cmp	r2, r8
	bls	.L79
	ldr	r3, [r6, #36]
	mov	r9, #0
	cmp	r3, #0
	moveq	r3, r8
	ldrne	r1, [r6, #28]
	ldreq	r1, [r6, #28]
	addne	r3, r3, r1
	add	r1, r3, r1
	cmp	r2, r1
	rsbcc	fp, r3, r2
	str	r3, [r6, #36]
	ldr	r1, [r6, #24]
	ldrb	r8, [r3, #2]	@ zero_extendqisi2
	ldr	r2, [r6, #32]
	ldrh	ip, [r3]
	subcc	fp, fp, #4
	rsb	r2, r1, r2
	str	r8, [sp, #12]
	subcs	fp, r1, #1
	movcc	fp, fp, asl #1
	str	ip, [sp, #20]
	add	r8, r3, #4
	str	r2, [r6, #32]
	str	r9, [sp, #36]
	b	.L64
.L133:
	ldr	r6, [sp, #40]
.L36:
	ldr	ip, [sp, #16]
	cmp	ip, #0
	bgt	.L23
.L22:
	ldr	r2, [r6, #4]
	ldr	r3, [sp, #24]
	cmp	r2, r3
	bls	.L73
	ldr	r3, [r6, #36]
	cmp	r3, #0
	ldrne	r1, [r6, #28]
	ldreq	r3, [sp, #24]
	ldreq	r1, [r6, #28]
	addne	r3, r3, r1
	add	r1, r3, r1
	cmp	r2, r1
	rsbcc	r2, r3, r2
	subcc	r2, r2, #4
	str	r3, [r6, #36]
	movcc	r2, r2, asl #1
	ldrh	fp, [r3]
	ldrb	ip, [r3, #2]	@ zero_extendqisi2
	ldr	r1, [r6, #24]
	strcc	r2, [sp, #16]
	ldr	r2, [r6, #32]
	add	r3, r3, #4
	subcs	r8, r1, #1
	rsb	r2, r1, r2
	str	r3, [sp, #24]
	mov	r3, #0
	strcs	r8, [sp, #16]
	str	fp, [sp, #20]
	str	ip, [sp, #12]
	str	r2, [r6, #32]
	str	r3, [sp, #36]
	ldr	r0, [sp, #16]
	b	.L43
.L15:
	sub	fp, fp, #1
	add	r5, r5, #4096
	b	.L7
.L23:
	ldr	fp, [sp, #24]
	ldr	r8, [sp, #12]
	ldr	ip, [sp, #16]
	ldrb	fp, [fp]	@ zero_extendqisi2
	sub	ip, ip, #1
	str	ip, [sp, #16]
	and	r2, fp, #7
	add	r3, r2, r8, asl #3
	str	fp, [sp, #40]
	tst	fp, #8
	ldr	fp, [sp, #48]
	add	r3, r3, #16
	ldr	r2, [fp, r2, asl #2]
	ldr	r3, [fp, r3, asl #2]
	bne	.L132
	ldr	r8, [sp, #20]
	sxtah	r3, r3, r8
.L26:
	ldr	fp, [sp, #12]
	add	r1, r3, #32768
	add	r2, fp, r2
	cmp	r2, #88
	movge	r2, #88
	bic	r2, r2, r2, asr #31
	movs	r1, r1, lsr #16
	str	r2, [sp, #12]
	beq	.L27
	ldr	ip, .L135+8
	ldr	r0, .L135+12
	cmp	r3, ip
	movlt	r3, ip
	cmp	r3, r0
	movge	r3, r0
.L27:
	uxth	r3, r3
	str	r3, [sp, #28]
	add	r5, r5, #4096
	b	.L24
.L125:
	ldr	r3, [r1, #16]
	mov	r1, #2
	str	r3, [r0]
	ldr	r3, [r8, #20]
	ldr	r2, [r8, #16]
	bic	r3, r3, #1
	add	r3, r2, r3, asl #1
	str	r3, [r0, #4]
	ldr	r0, [r8]
	bl	s3eSoundChannelGetInt(PLT)
	ldr	r3, [r0, #36]
	str	r3, [r6, #24]
	ldr	r3, [r0, #40]
	str	r3, [r6, #28]
	ldr	r3, [r0, #20]
	str	r5, [r6, #36]
	str	r3, [r6, #32]
	str	r5, [r6, #8]
	str	r5, [r6, #12]
	strh	r5, [r6, #16]	@ movhi
	strh	r5, [r6, #20]	@ movhi
	strb	r5, [r6, #23]
	strb	r5, [r6, #22]
	b	.L2
.L131:
	sxth	r1, r9
	rsb	r3, r3, r1
	b	.L48
.L132:
	ldr	ip, [sp, #20]
	sxth	r1, ip
	rsb	r3, r3, r1
	b	.L26
.L127:
	ldr	r6, [sp, #60]
.L31:
	ldr	r0, [sp, #40]
	ldr	fp, [sp, #12]
	ldr	ip, [sp, #16]
	mov	r3, r0, asr #4
	and	r2, r3, #7
	tst	r3, #8
	add	r1, r2, fp, asl #3
	ldr	r3, [sp, #24]
	ldr	fp, [sp, #52]
	add	r1, r1, #16
	sub	ip, ip, #1
	add	r3, r3, #1
	str	ip, [sp, #16]
	str	r3, [sp, #24]
	ldr	ip, [sp, #12]
	ldr	r3, [fp, r1, asl #2]
	ldr	r2, [fp, r2, asl #2]
	rsbne	r3, r3, r8
	addeq	r3, r3, r8
	add	r2, r2, ip
	cmp	r2, #88
	movge	r2, #88
	add	r1, r3, #32768
	bic	r2, r2, r2, asr #31
	movs	r1, r1, lsr #16
	str	r2, [sp, #12]
	beq	.L35
	ldr	r0, .L135+8
	ldr	r1, .L135+12
	cmp	r3, r0
	movlt	r3, r0
	cmp	r3, r1
	movge	r3, r1
.L35:
	add	r5, r5, #4096
	uxth	r3, r3
	cmp	r7, r5
	str	r3, [sp, #20]
	bgt	.L36
	sxth	fp, r3
	mov	r2, r9
	ldr	r9, [sp, #44]
	rsb	r0, fp, r8
	rsb	r3, r7, r5
	mul	r8, r0, r9
	str	r6, [sp, #40]
	mul	r0, r3, r0
	str	r8, [sp, #4]
	mov	r6, r9
	b	.L38
.L134:
	ldr	r8, [sp, #4]
	cmp	r7, ip
	add	r0, r0, r8
	bgt	.L133
.L38:
	add	r1, fp, r0, asr #12
	ldrh	ip, [r2], #2
	mul	r1, r1, r10
	mov	r5, r3
	add	r3, r3, r6
	mov	r1, r1, asr #8
	sxtah	r1, r1, ip
	add	ip, r1, #32768
	movs	ip, ip, lsr #16
	sub	r4, r4, #1
	mov	r9, r2
	str	r1, [sp, #60]
	add	ip, r3, r7
	beq	.L37
	ldr	r8, .L135+8
	cmp	r1, r8
	movlt	r1, r8
	ldr	r8, .L135+12
	cmp	r1, r8
	movge	r1, r8
	str	r1, [sp, #60]
.L37:
	cmp	r4, #0
	strh	r1, [r2, #-2]	@ movhi
	bne	.L134
	ldr	fp, [sp, #16]
	ldr	r6, [sp, #40]
	ldr	r8, [sp, #56]
	ldr	r3, [sp, #24]
	b	.L9
.L75:
	str	r8, [sp, #24]
	ldr	r8, [sp, #48]
	b	.L123
.L78:
	str	r8, [sp, #24]
	mov	r9, r0
	ldr	r8, [sp, #48]
	ldr	r3, [sp, #24]
	b	.L9
.L73:
	mov	r3, #0
	ldr	fp, [sp, #16]
	ldr	r8, [sp, #56]
	mov	r4, #1
	str	r3, [sp, #24]
	b	.L9
.L79:
	ldr	r8, [sp, #48]
	mov	r9, r0
	mov	r4, #1
	mov	r3, #0
	b	.L122
.L70:
	mov	r4, #1
	str	fp, [sp, #24]
	mov	r3, fp
	b	.L9
.L130:
	ldr	r3, [sp, #28]
	mov	r9, r0
	sxth	r1, r3
	b	.L51
.L76:
	mov	r0, r9
	b	.L57
.L136:
	.align	2
.L135:
	.word	.LANCHOR0-(.LPIC8+8)
	.word	.LANCHOR0-(.LPIC10+8)
	.word	-32768
	.word	32767
	.word	.LANCHOR0-(.LPIC14+8)
	.word	.LANCHOR0-(.LPIC12+8)
	.size	_ZN15CIwChannelADPCM13GenerateAudioEP20s3eSoundGenAudioInfo, .-_ZN15CIwChannelADPCM13GenerateAudioEP20s3eSoundGenAudioInfo
	.section	.text._ZN15CIwChannelADPCM4InitEv,"ax",%progbits
	.align	2
	.global	_ZN15CIwChannelADPCM4InitEv
	.hidden	_ZN15CIwChannelADPCM4InitEv
	.type	_ZN15CIwChannelADPCM4InitEv, %function
_ZN15CIwChannelADPCM4InitEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7, r8, r9}
	mov	r1, #1
	ldr	r9, .L141
	ldr	r2, .L141+4
	ldr	r3, .L141+8
.LPIC25:
	add	r9, pc, r9
.LPIC24:
	add	r2, pc, r2
	sub	r0, r9, #4
.LPIC26:
	add	r3, pc, r3
	add	r9, r9, #352
	str	r1, [r2]
.L139:
	ldr	r1, [r0, #4]!
	add	r3, r3, #32
	cmp	r0, r9
	mov	r4, r1, asl #1
	add	r5, r4, r1
	mov	ip, r1, asl #2
	add	r7, ip, r1
	mov	r8, r5, asl #1
	rsb	r6, r1, r1, asl #3
	mov	r2, r1, asr #3
	add	r8, r2, r8, asr #2
	add	r5, r2, r5, asr #2
	add	r4, r2, r4, asr #2
	add	r7, r2, r7, asr #2
	add	ip, r2, ip, asr #2
	add	r1, r2, r1, asr #2
	add	r6, r2, r6, asr #2
	str	r8, [r3, #56]
	str	r5, [r3, #44]
	str	r4, [r3, #40]
	str	r2, [r3, #32]
	str	r7, [r3, #52]
	str	ip, [r3, #48]
	str	r1, [r3, #36]
	str	r6, [r3, #60]
	bne	.L139
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9}
	bx	lr
.L142:
	.align	2
.L141:
	.word	.LANCHOR2-(.LPIC25+8)
	.word	.LANCHOR1-(.LPIC24+8)
	.word	.LANCHOR0-(.LPIC26+8)
	.size	_ZN15CIwChannelADPCM4InitEv, .-_ZN15CIwChannelADPCM4InitEv
	.section	.text._ZN15CIwChannelADPCM22GenerateADPCMAudioFastEPsiiiiPi,"ax",%progbits
	.align	2
	.global	_ZN15CIwChannelADPCM22GenerateADPCMAudioFastEPsiiiiPi
	.hidden	_ZN15CIwChannelADPCM22GenerateADPCMAudioFastEPsiiiiPi
	.type	_ZN15CIwChannelADPCM22GenerateADPCMAudioFastEPsiiiiPi, %function
_ZN15CIwChannelADPCM22GenerateADPCMAudioFastEPsiiiiPi:
	@ args = 12, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #60
	ldrh	r7, [r0, #16]
	ldrb	r8, [r0, #23]	@ zero_extendqisi2
	str	r1, [sp, #20]
	ldr	r1, [sp, #100]
	subs	r4, r2, #0
	mov	r6, r0
	ldr	fp, [r0]
	ldr	r5, [r0, #8]
	ldr	r9, [r0, #12]
	ldrh	r10, [r0, #20]
	ldrb	r2, [r0, #22]	@ zero_extendqisi2
	str	r7, [sp, #16]
	str	r8, [sp, #24]
	moveq	r0, r1
	beq	.L144
	ldr	ip, [sp, #96]
	sxtb	r2, r2
	cmp	ip, #7
	str	r2, [sp, #12]
	bgt	.L145
	cmp	r1, #0
	beq	.L272
	ldr	ip, [sp, #20]
	add	r2, ip, r4, asl #1
.L162:
	tst	r9, #1
	bne	.L148
.L149:
	cmp	r9, #0
	bne	.L156
	ldr	r1, [r6, #4]
	cmp	fp, r1
	bcs	.L273
	ldr	ip, [r6, #36]
	ldr	r0, [r6, #28]
	cmp	ip, #0
	addne	fp, ip, r0
	add	r0, fp, r0
	cmp	r1, r0
	rsbcc	r9, fp, r1
	ldr	r0, [r6, #24]
	subcc	r9, r9, #4
	str	fp, [r6, #36]
	ldr	r1, [r6, #32]
	ldrb	r7, [fp, #2]	@ zero_extendqisi2
	subcs	r9, r0, #1
	movcc	r9, r9, asl #1
	rsb	r0, r0, r1
	mov	r8, #0
	tst	r9, #1
	ldrh	r10, [fp]
	str	r7, [sp, #12]
	add	fp, fp, #4
	str	r0, [r6, #32]
	str	r8, [sp, #24]
	bne	.L148
	b	.L149
.L215:
	mov	r2, r0
.L150:
	ldr	ip, [sp, #20]
	ldr	r3, [sp, #16]
	rsb	r2, ip, r2
	ldr	r7, [sp, #24]
	ldr	r8, [sp, #12]
	mov	r0, r2, asr #1
	str	fp, [r6]
	str	r5, [r6, #8]
	str	r9, [r6, #12]
	strh	r3, [r6, #16]	@ movhi
	strh	r10, [r6, #20]	@ movhi
	strb	r7, [r6, #23]
	strb	r8, [r6, #22]
.L144:
	add	sp, sp, #60
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L145:
	cmp	r1, #0
	beq	.L163
	rsb	r1, r3, #0
	ldr	ip, .L284
	ldr	r0, .L284+4
	ldr	r2, [sp, #20]
	str	r10, [sp, #36]
	mov	r10, r1
	mov	r1, r9
.LPIC30:
	add	ip, pc, ip
.LPIC28:
	add	r0, pc, r0
	str	ip, [sp, #48]
	str	r0, [sp, #44]
	str	fp, [sp, #32]
	str	r9, [sp, #28]
.L186:
	cmp	r1, #0
	beq	.L164
	tst	r1, #1
	beq	.L165
	ldr	r7, [sp, #32]
	ldr	r1, [sp, #36]
	ldr	r8, [sp, #16]
	ldrb	r7, [r7]	@ zero_extendqisi2
	str	r8, [sp, #36]
	str	r1, [sp, #16]
	str	r7, [sp, #40]
.L166:
	cmp	r3, r5
	ldrgt	ip, [sp, #16]
	sxthgt	r9, ip
	bgt	.L173
	ldr	fp, [sp, #16]
	ldr	ip, [sp, #36]
	rsb	r1, r3, r5
	sxth	r9, fp
	sxth	r7, ip
	rsb	r7, r9, r7
	mov	r0, r2
	mul	fp, r7, r10
	str	r6, [sp, #52]
	mul	r7, r7, r1
	str	fp, [sp, #4]
	ldr	r8, [sp, #96]
	b	.L174
.L267:
	ldr	ip, [sp, #4]
	cmp	r3, r6
	add	r7, r7, ip
	bgt	.L274
.L174:
	add	ip, r9, r7, asr #12
	ldrh	r2, [r0], #2
	mul	ip, r8, ip
	mov	r5, r1
	sxth	r2, r2
	add	ip, r2, ip, asr #8
	add	r2, ip, #32768
	movs	r2, r2, lsr #16
	add	r1, r1, r10
	sub	r4, r4, #1
	mov	r2, r0
	add	r6, r1, r3
	beq	.L170
	ldr	fp, .L284+8
	cmp	ip, fp
	movlt	ip, fp
	ldr	fp, .L284+12
	cmp	ip, fp
	movge	ip, fp
.L170:
	cmp	r4, #0
	strh	ip, [r0, #-2]	@ movhi
	bne	.L267
	ldr	r10, [sp, #36]
	ldr	r3, [sp, #16]
	ldr	fp, [sp, #32]
	str	r10, [sp, #16]
	ldr	r9, [sp, #28]
	ldr	r6, [sp, #52]
	mov	r10, r3
	b	.L150
.L275:
	subs	r4, r4, #1
	rsb	r5, r3, r5
	beq	.L150
.L148:
	cmp	r3, r5
	ble	.L275
	add	r5, r5, #4096
	cmp	r3, r5
	sub	r9, r9, #1
	add	fp, fp, #1
	ble	.L155
	b	.L149
.L276:
	cmp	r3, r5
	bgt	.L149
.L155:
	subs	r4, r4, #1
	rsb	r5, r3, r5
	bne	.L276
	b	.L150
.L163:
	ldr	r0, .L284+16
	ldr	r1, .L284+20
.LPIC34:
	add	r0, pc, r0
	str	r0, [sp, #40]
	ldr	ip, [sp, #96]
	ldr	r0, [sp, #20]
.LPIC32:
	add	r1, pc, r1
	rsb	r2, r3, #0
	str	r1, [sp, #32]
	str	r2, [sp, #36]
.L208:
	cmp	r9, #0
	beq	.L187
	tst	r9, #1
	beq	.L188
	ldrb	r7, [fp]	@ zero_extendqisi2
	mov	r2, r10
	ldr	r10, [sp, #16]
	str	r7, [sp, #28]
	str	r2, [sp, #16]
.L189:
	cmp	r5, r3
	blt	.L277
	ldr	r8, [sp, #16]
	sxth	r1, r10
	rsb	r5, r3, r5
	sxth	r7, r8
	rsb	r1, r7, r1
	subs	r4, r4, #1
	mul	r8, r5, r1
	add	r2, r0, #2
	add	r8, r7, r8, asr #12
	mul	r8, ip, r8
	mov	r8, r8, asr #8
	strh	r8, [r0]	@ movhi
	beq	.L212
	ldr	r8, [sp, #36]
	rsb	r0, r3, r5
	mul	r8, r8, r1
	mul	r1, r0, r1
	str	r8, [sp, #44]
	b	.L196
.L193:
	mov	r0, r0, asr #8
	subs	r4, r4, #1
	rsb	r5, r3, r5
	strh	r0, [r2], #2	@ movhi
	add	r1, r1, r8
	beq	.L212
.L196:
	add	r0, r7, r1, asr #12
	cmp	r3, r5
	mul	r0, ip, r0
	ble	.L193
.L194:
	ldr	r10, [sp, #28]
	sub	r9, r9, #1
	add	fp, fp, #1
	mov	r0, r10, asr #4
	ldr	r10, [sp, #12]
	and	r1, r0, #7
	tst	r0, #8
	add	r8, r1, r10, asl #3
	ldr	r0, [sp, #40]
	add	r8, r8, #16
	ldr	r1, [r0, r1, asl #2]
	ldr	r10, [r0, r8, asl #2]
	ldr	r8, [sp, #12]
	rsbne	r10, r10, r7
	addeq	r10, r10, r7
	add	r1, r1, r8
	cmp	r1, #88
	movge	r1, #88
	add	r0, r10, #32768
	bic	r1, r1, r1, asr #31
	movs	r0, r0, lsr #16
	str	r1, [sp, #12]
	beq	.L199
	ldr	r0, .L284+8
	ldr	r1, .L284+12
	cmp	r10, r0
	movlt	r10, r0
	cmp	r10, r1
	movge	r10, r1
.L199:
	add	r5, r5, #4096
	cmp	r3, r5
	uxth	r10, r10
	bgt	.L213
	sxth	r1, r10
	rsb	r5, r3, r5
	rsb	r7, r1, r7
	subs	r4, r4, #1
	mul	r8, r5, r7
	add	r0, r2, #2
	add	r8, r1, r8, asr #12
	mul	r8, ip, r8
	mov	r8, r8, asr #8
	strh	r8, [r2]	@ movhi
	beq	.L215
	ldr	r8, [sp, #36]
	rsb	r2, r3, r5
	mul	r8, r8, r7
	mul	r2, r2, r7
	str	r8, [sp, #28]
	b	.L201
.L202:
	mov	r7, r7, asr #8
	subs	r4, r4, #1
	rsb	r5, r3, r5
	strh	r7, [r0], #2	@ movhi
	add	r2, r2, r8
	beq	.L215
.L201:
	add	r7, r1, r2, asr #12
	cmp	r3, r5
	mul	r7, ip, r7
	ble	.L202
.L200:
	cmp	r9, #0
	ble	.L187
.L188:
	ldrb	r8, [fp]	@ zero_extendqisi2
	ldr	r7, [sp, #12]
	sub	r9, r9, #1
	and	r2, r8, #7
	add	r1, r2, r7, asl #3
	str	r8, [sp, #28]
	tst	r8, #8
	ldr	r8, [sp, #32]
	add	r1, r1, #16
	ldr	r2, [r8, r2, asl #2]
	ldr	r1, [r8, r1, asl #2]
	bne	.L278
	sxtah	r1, r1, r10
.L191:
	ldr	r7, [sp, #12]
	add	r2, r7, r2
	cmp	r2, #88
	movge	r2, #88
	add	r7, r1, #32768
	bic	r2, r2, r2, asr #31
	movs	r7, r7, lsr #16
	str	r2, [sp, #12]
	beq	.L192
	ldr	r8, .L284+8
	ldr	r2, .L284+12
	cmp	r1, r8
	movlt	r1, r8
	cmp	r1, r2
	movge	r1, r2
.L192:
	uxth	r1, r1
	str	r1, [sp, #16]
	add	r5, r5, #4096
	b	.L189
.L272:
	mov	r7, r4, asl #1
	mov	r2, r7
	ldr	r0, [sp, #20]
	str	r3, [sp, #8]
	bl	memset(PLT)
	ldr	r8, [sp, #20]
	ldr	r3, [sp, #8]
	add	r2, r8, r7
	b	.L162
.L282:
	ldr	r6, [sp, #40]
.L178:
	ldr	r0, [sp, #28]
	cmp	r0, #0
	bgt	.L165
.L164:
	ldr	r0, [r6, #4]
	ldr	r1, [sp, #32]
	cmp	r1, r0
	bcs	.L279
	ldr	r1, [r6, #36]
	cmp	r1, #0
	ldrne	ip, [r6, #28]
	ldreq	r1, [sp, #32]
	ldreq	ip, [r6, #28]
	addne	r1, r1, ip
	add	ip, r1, ip
	cmp	r0, ip
	rsbcc	r0, r1, r0
	subcc	r0, r0, #4
	str	r1, [r6, #36]
	movcc	r0, r0, asl #1
	ldrh	r9, [r1]
	ldrb	fp, [r1, #2]	@ zero_extendqisi2
	ldr	ip, [r6, #24]
	strcc	r0, [sp, #28]
	ldr	r0, [r6, #32]
	subcs	r8, ip, #1
	rsb	r0, ip, r0
	add	r1, r1, #4
	mov	ip, #0
	strcs	r8, [sp, #28]
	str	r1, [sp, #32]
	str	r9, [sp, #36]
	str	fp, [sp, #12]
	str	r0, [r6, #32]
	str	ip, [sp, #24]
	ldr	r1, [sp, #28]
	b	.L186
.L187:
	ldr	r2, [r6, #4]
	cmp	fp, r2
	bcs	.L280
	ldr	r7, [r6, #36]
	ldr	r1, [r6, #28]
	cmp	r7, #0
	addne	fp, r7, r1
	add	r1, fp, r1
	cmp	r2, r1
	rsbcc	r9, fp, r2
	str	fp, [r6, #36]
	ldr	r1, [r6, #24]
	ldrb	r7, [fp, #2]	@ zero_extendqisi2
	ldr	r2, [r6, #32]
	subcc	r9, r9, #4
	rsb	r2, r1, r2
	mov	r8, #0
	ldrh	r10, [fp]
	subcs	r9, r1, #1
	movcc	r9, r9, asl #1
	str	r7, [sp, #12]
	add	fp, fp, #4
	str	r2, [r6, #32]
	str	r8, [sp, #24]
	b	.L208
.L156:
	sub	r9, r9, #1
	add	r5, r5, #4096
	b	.L148
.L165:
	ldr	r9, [sp, #32]
	ldr	r7, [sp, #12]
	ldr	ip, [sp, #28]
	ldrb	r9, [r9]	@ zero_extendqisi2
	ldr	r8, [sp, #44]
	sub	ip, ip, #1
	and	r0, r9, #7
	add	r1, r0, r7, asl #3
	add	r1, r1, #16
	tst	r9, #8
	str	r9, [sp, #40]
	str	ip, [sp, #28]
	ldr	r1, [r8, r1, asl #2]
	ldr	r0, [r8, r0, asl #2]
	bne	.L281
	ldr	ip, [sp, #36]
	sxtah	r1, r1, ip
.L168:
	ldr	r7, [sp, #12]
	add	ip, r1, #32768
	add	r0, r7, r0
	cmp	r0, #88
	movge	r0, #88
	bic	r0, r0, r0, asr #31
	movs	ip, ip, lsr #16
	str	r0, [sp, #12]
	beq	.L169
	ldr	r8, .L284+8
	ldr	r9, .L284+12
	cmp	r1, r8
	movlt	r1, r8
	cmp	r1, r9
	movge	r1, r9
.L169:
	uxth	r1, r1
	str	r1, [sp, #16]
	add	r5, r5, #4096
	b	.L166
.L281:
	ldr	r9, [sp, #36]
	sxth	ip, r9
	rsb	r1, r1, ip
	b	.L168
.L278:
	sxth	r7, r10
	rsb	r1, r1, r7
	b	.L191
.L274:
	ldr	r6, [sp, #52]
.L173:
	ldr	r1, [sp, #40]
	ldr	r7, [sp, #12]
	ldr	r8, [sp, #28]
	mov	r0, r1, asr #4
	and	r1, r0, #7
	tst	r0, #8
	add	ip, r1, r7, asl #3
	ldr	r0, [sp, #32]
	ldr	r7, [sp, #48]
	add	ip, ip, #16
	sub	r8, r8, #1
	add	r0, r0, #1
	str	r8, [sp, #28]
	str	r0, [sp, #32]
	ldr	r8, [sp, #12]
	ldr	r0, [r7, ip, asl #2]
	ldr	r1, [r7, r1, asl #2]
	rsbne	ip, r0, r9
	addeq	ip, r0, r9
	add	r1, r8, r1
	cmp	r1, #88
	movge	r1, #88
	add	r0, ip, #32768
	bic	r1, r1, r1, asr #31
	movs	r0, r0, lsr #16
	str	r1, [sp, #12]
	beq	.L177
	ldr	r1, .L284+8
	cmp	r1, ip
	movlt	r1, ip
	ldr	ip, .L284+12
	cmp	ip, r1
	movge	ip, r1
.L177:
	add	r5, r5, #4096
	uxth	ip, ip
	cmp	r3, r5
	str	ip, [sp, #36]
	bgt	.L178
	sxth	fp, ip
	rsb	r7, fp, r9
	rsb	r1, r3, r5
	mul	r9, r7, r10
	mov	r0, r2
	mul	r7, r7, r1
	str	r9, [sp, #4]
	str	r6, [sp, #40]
	ldr	r8, [sp, #96]
	b	.L180
.L283:
	ldr	ip, [sp, #4]
	cmp	r3, r6
	add	r7, r7, ip
	bgt	.L282
.L180:
	add	ip, fp, r7, asr #12
	ldrh	r2, [r0], #2
	mul	ip, r8, ip
	mov	r5, r1
	sxth	r2, r2
	add	r2, r2, ip, asr #8
	str	r2, [sp, #52]
	add	r2, r2, #32768
	movs	r2, r2, lsr #16
	add	r1, r1, r10
	sub	r4, r4, #1
	mov	r2, r0
	add	r6, r1, r3
	beq	.L179
	ldr	r9, [sp, #52]
	ldr	ip, .L284+8
	cmp	r9, ip
	movlt	r9, ip
	ldr	ip, .L284+12
	cmp	r9, ip
	movge	r9, ip
	str	r9, [sp, #52]
.L179:
	ldr	r9, [sp, #52]
	cmp	r4, #0
	strh	r9, [r0, #-2]	@ movhi
	bne	.L283
	ldr	fp, [sp, #32]
	ldr	r9, [sp, #28]
	ldr	r10, [sp, #36]
	ldr	r6, [sp, #40]
	b	.L150
.L212:
	ldr	r3, [sp, #16]
	str	r10, [sp, #16]
	mov	r10, r3
	b	.L150
.L280:
	ldr	fp, [sp, #104]
	mov	r3, #1
	mov	r2, r0
	str	r3, [fp]
	mov	fp, #0
	b	.L150
.L279:
	ldr	r7, [sp, #104]
	mov	r3, #1
	ldr	r9, [sp, #28]
	ldr	r10, [sp, #36]
	str	r3, [r7]
	mov	fp, #0
	b	.L150
.L273:
	ldr	r0, [sp, #104]
	mov	r3, #1
	mov	fp, r9
	str	r3, [r0]
	b	.L150
.L277:
	ldr	r8, [sp, #16]
	mov	r2, r0
	sxth	r7, r8
	b	.L194
.L213:
	mov	r0, r2
	b	.L200
.L285:
	.align	2
.L284:
	.word	.LANCHOR0-(.LPIC30+8)
	.word	.LANCHOR0-(.LPIC28+8)
	.word	-32768
	.word	32767
	.word	.LANCHOR0-(.LPIC34+8)
	.word	.LANCHOR0-(.LPIC32+8)
	.size	_ZN15CIwChannelADPCM22GenerateADPCMAudioFastEPsiiiiPi, .-_ZN15CIwChannelADPCM22GenerateADPCMAudioFastEPsiiiiPi
	.hidden	_ZN15CIwChannelADPCM13isInitializedE
	.global	_ZN15CIwChannelADPCM13isInitializedE
	.section	.rodata
	.align	2
	.set	.LANCHOR2,. + 0
	.type	_ZL13stepsizeTable, %object
	.size	_ZL13stepsizeTable, 356
_ZL13stepsizeTable:
	.word	7
	.word	8
	.word	9
	.word	10
	.word	11
	.word	12
	.word	13
	.word	14
	.word	16
	.word	17
	.word	19
	.word	21
	.word	23
	.word	25
	.word	28
	.word	31
	.word	34
	.word	37
	.word	41
	.word	45
	.word	50
	.word	55
	.word	60
	.word	66
	.word	73
	.word	80
	.word	88
	.word	97
	.word	107
	.word	118
	.word	130
	.word	143
	.word	157
	.word	173
	.word	190
	.word	209
	.word	230
	.word	253
	.word	279
	.word	307
	.word	337
	.word	371
	.word	408
	.word	449
	.word	494
	.word	544
	.word	598
	.word	658
	.word	724
	.word	796
	.word	876
	.word	963
	.word	1060
	.word	1166
	.word	1282
	.word	1411
	.word	1552
	.word	1707
	.word	1878
	.word	2066
	.word	2272
	.word	2499
	.word	2749
	.word	3024
	.word	3327
	.word	3660
	.word	4026
	.word	4428
	.word	4871
	.word	5358
	.word	5894
	.word	6484
	.word	7132
	.word	7845
	.word	8630
	.word	9493
	.word	10442
	.word	11487
	.word	12635
	.word	13899
	.word	15289
	.word	16818
	.word	18500
	.word	20350
	.word	22385
	.word	24623
	.word	27086
	.word	29794
	.word	32767
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	_ZL6sTable, %object
	.size	_ZL6sTable, 2912
_ZL6sTable:
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	2
	.word	4
	.word	6
	.word	8
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	2
	.word	4
	.word	6
	.word	8
	.word	0
	.space	2844
	.bss
	.align	2
	.set	.LANCHOR1,. + 0
	.type	_ZN15CIwChannelADPCM13isInitializedE, %object
	.size	_ZN15CIwChannelADPCM13isInitializedE, 4
_ZN15CIwChannelADPCM13isInitializedE:
	.space	4
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-branch revision 208322]"
