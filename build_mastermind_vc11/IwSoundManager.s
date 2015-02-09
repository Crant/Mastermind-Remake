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
	.file	"IwSoundManager.cpp"
	.section	.text._ZN15CIwSoundManagerD2Ev,"ax",%progbits
	.align	2
	.global	_ZN15CIwSoundManagerD2Ev
	.hidden	_ZN15CIwSoundManagerD2Ev
	.type	_ZN15CIwSoundManagerD2Ev, %function
_ZN15CIwSoundManagerD2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L27
	ldr	r3, .L27+4
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	ldr	r0, [r0, #32]
.LPIC0:
	add	r1, pc, r1
.LPIC1:
	add	r3, pc, r3
	add	r1, r1, #8
	mov	r2, #0
	cmp	r0, #0
	str	r1, [r4]
	str	r2, [r3]
	beq	.L2
	ldr	r3, [r0]
	ldr	r3, [r3, #4]
	blx	r3
.L2:
	ldr	r0, [r4, #36]
	bl	_ZdlPv(PLT)
	ldr	r0, [r4, #8]
	cmp	r0, #0
	beq	.L3
	bl	_ZdaPv(PLT)
.L3:
	ldr	r0, [r4, #12]
	cmp	r0, #0
	beq	.L4
	bl	_ZdaPv(PLT)
.L4:
	ldr	r3, .L27+8
.LPIC2:
	add	r3, pc, r3
	ldr	r0, [r3, #4]
	cmp	r0, #0
	beq	.L5
	bl	_ZdaPv(PLT)
.L5:
	ldr	r3, .L27+12
.LPIC3:
	add	r3, pc, r3
	ldr	r0, [r3, #8]
	cmp	r0, #0
	beq	.L6
	bl	_ZdaPv(PLT)
.L6:
	ldr	r3, .L27+16
.LPIC4:
	add	r3, pc, r3
	ldr	r0, [r3, #12]
	cmp	r0, #0
	beq	.L7
	bl	_ZdaPv(PLT)
.L7:
	mov	r0, r4
	ldmfd	sp!, {r4, pc}
.L28:
	.align	2
.L27:
	.word	.LANCHOR0-(.LPIC0+8)
	.word	.LANCHOR1-(.LPIC1+8)
	.word	.LANCHOR1-(.LPIC2+8)
	.word	.LANCHOR1-(.LPIC3+8)
	.word	.LANCHOR1-(.LPIC4+8)
	.size	_ZN15CIwSoundManagerD2Ev, .-_ZN15CIwSoundManagerD2Ev
	.global	_ZN15CIwSoundManagerD1Ev
	.hidden	_ZN15CIwSoundManagerD1Ev
	.set	_ZN15CIwSoundManagerD1Ev,_ZN15CIwSoundManagerD2Ev
	.section	.text._ZN15CIwChannelADPCM15GenerateAudioCBEP20s3eSoundGenAudioInfoPS_,"axG",%progbits,_ZN15CIwChannelADPCM15GenerateAudioCBEP20s3eSoundGenAudioInfoPS_,comdat
	.align	2
	.weak	_ZN15CIwChannelADPCM15GenerateAudioCBEP20s3eSoundGenAudioInfoPS_
	.hidden	_ZN15CIwChannelADPCM15GenerateAudioCBEP20s3eSoundGenAudioInfoPS_
	.type	_ZN15CIwChannelADPCM15GenerateAudioCBEP20s3eSoundGenAudioInfoPS_, %function
_ZN15CIwChannelADPCM15GenerateAudioCBEP20s3eSoundGenAudioInfoPS_:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, r0
	mov	r0, r1
	mov	r1, r3
	b	_ZN15CIwChannelADPCM13GenerateAudioEP20s3eSoundGenAudioInfo(PLT)
	.size	_ZN15CIwChannelADPCM15GenerateAudioCBEP20s3eSoundGenAudioInfoPS_, .-_ZN15CIwChannelADPCM15GenerateAudioCBEP20s3eSoundGenAudioInfoPS_
	.section	.text._ZN15CIwSoundManagerD0Ev,"ax",%progbits
	.align	2
	.global	_ZN15CIwSoundManagerD0Ev
	.hidden	_ZN15CIwSoundManagerD0Ev
	.type	_ZN15CIwSoundManagerD0Ev, %function
_ZN15CIwSoundManagerD0Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L55
	ldr	r3, .L55+4
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	ldr	r0, [r0, #32]
.LPIC5:
	add	r1, pc, r1
.LPIC6:
	add	r3, pc, r3
	add	r1, r1, #8
	mov	r2, #0
	cmp	r0, #0
	str	r1, [r4]
	str	r2, [r3]
	beq	.L31
	ldr	r3, [r0]
	ldr	r3, [r3, #4]
	blx	r3
.L31:
	ldr	r0, [r4, #36]
	bl	_ZdlPv(PLT)
	ldr	r0, [r4, #8]
	cmp	r0, #0
	beq	.L32
	bl	_ZdaPv(PLT)
.L32:
	ldr	r0, [r4, #12]
	cmp	r0, #0
	beq	.L33
	bl	_ZdaPv(PLT)
.L33:
	ldr	r3, .L55+8
.LPIC7:
	add	r3, pc, r3
	ldr	r0, [r3, #4]
	cmp	r0, #0
	beq	.L34
	bl	_ZdaPv(PLT)
.L34:
	ldr	r3, .L55+12
.LPIC8:
	add	r3, pc, r3
	ldr	r0, [r3, #8]
	cmp	r0, #0
	beq	.L35
	bl	_ZdaPv(PLT)
.L35:
	ldr	r3, .L55+16
.LPIC9:
	add	r3, pc, r3
	ldr	r0, [r3, #12]
	cmp	r0, #0
	beq	.L36
	bl	_ZdaPv(PLT)
.L36:
	mov	r0, r4
	bl	_ZdlPv(PLT)
	mov	r0, r4
	ldmfd	sp!, {r4, pc}
.L56:
	.align	2
.L55:
	.word	.LANCHOR0-(.LPIC5+8)
	.word	.LANCHOR1-(.LPIC6+8)
	.word	.LANCHOR1-(.LPIC7+8)
	.word	.LANCHOR1-(.LPIC8+8)
	.word	.LANCHOR1-(.LPIC9+8)
	.size	_ZN15CIwSoundManagerD0Ev, .-_ZN15CIwSoundManagerD0Ev
	.section	.text._ZN15CIwSoundManagerC2Ev,"ax",%progbits
	.align	2
	.global	_ZN15CIwSoundManagerC2Ev
	.hidden	_ZN15CIwSoundManagerC2Ev
	.type	_ZN15CIwSoundManagerC2Ev, %function
_ZN15CIwSoundManagerC2Ev:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L96
	ldr	r3, .L96+4
.LPIC18:
	add	r2, pc, r2
.LPIC19:
	add	r3, pc, r3
	add	r2, r2, #8
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}
	mov	r4, r0
	sub	sp, sp, #12
	str	r2, [r0]
	mov	r0, #32
	str	r4, [r3]
	bl	_Znwj(PLT)
	ldr	r6, .L96+8
.LPIC25:
	add	r6, pc, r6
	mov	r5, r0
	bl	_ZN13CIwSoundGroupC1Ev(PLT)
	str	r5, [r4, #32]
	mov	r0, #8
	bl	_Znwj(PLT)
	mov	r5, r0
	bl	_ZN14CIwSoundParamsC1Ev(PLT)
	add	r2, sp, #8
	mov	r1, #4096
	mov	r0, #8
	str	r0, [r2, #-4]!
	strh	r1, [r4, #24]	@ movhi
	strh	r1, [r4, #28]	@ movhi
	ldr	r0, .L96+12
	ldr	r1, .L96+16
	mov	r3, #0
	mov	ip, #2
.LPIC21:
	add	r1, pc, r1
	str	r3, [r4, #8]
	str	r3, [r4, #12]
	str	r3, [r4, #20]
	strh	r3, [r4, #26]	@ movhi
	strh	ip, [r4, #30]	@ movhi
	str	r5, [r4, #36]
.LPIC20:
	add	r0, pc, r0
	bl	s3eConfigGetInt(PLT)
	mov	r0, #3
	bl	s3eSoundGetInt(PLT)
	ldr	r5, [sp, #4]
	cmp	r5, r0
	movge	r5, r0
	cmp	r5, #89128960
	addls	r0, r5, r5, asl #1
	mvnhi	r0, #0
	movls	r0, r0, asl #3
	str	r5, [r4, #16]
	bl	_Znaj(PLT)
	cmp	r5, #0
	movne	r1, #0
	movne	r2, r1
	addne	r3, r0, #24
	beq	.L64
.L65:
	add	r1, r1, #1
	cmp	r1, r5
	str	r2, [r3, #-24]
	str	r2, [r3, #-16]
	str	r2, [r3, #-12]
	str	r2, [r3, #-4]
	add	r3, r3, #24
	bne	.L65
.L64:
	ldr	r3, .L96+20
	ldr	r5, [r4, #16]
.LPIC22:
	add	r3, pc, r3
	cmp	r5, #89128960
	str	r0, [r3, #4]
	mvnhi	r0, #0
	addls	r0, r5, r5, asl #1
	movls	r0, r0, asl #3
.L63:
	bl	_Znaj(PLT)
	cmp	r5, #0
	movne	r1, #0
	movne	r2, r1
	addne	r3, r0, #24
	beq	.L69
.L70:
	add	r1, r1, #1
	cmp	r1, r5
	str	r2, [r3, #-24]
	str	r2, [r3, #-16]
	str	r2, [r3, #-12]
	str	r2, [r3, #-4]
	add	r3, r3, #24
	bne	.L70
.L69:
	ldr	r3, .L96+24
	ldr	r7, [r4, #16]
.LPIC23:
	add	r3, pc, r3
	cmp	r7, #1605632
	str	r0, [r3, #8]
	mvnhi	r0, #0
	ldrls	r0, .L96+28
	mulls	r0, r0, r7
.L68:
	bl	_Znaj(PLT)
	subs	r7, r7, #1
	mov	r8, r0
	bcc	.L75
	ldr	r3, .L96+32
	add	r5, r0, #1312
	add	r5, r5, #12
	ldr	r9, [r6, r3]
	mov	r6, #0
	b	.L76
.L74:
	add	r5, r5, #1312
	cmn	r7, #1
	add	r5, r5, #12
	beq	.L75
.L76:
	str	r6, [r5, #-1324]
	ldr	r3, [r9]
	sub	r7, r7, #1
	cmp	r3, #0
	bne	.L74
	bl	_ZN15CIwChannelADPCM4InitEv(PLT)
	add	r5, r5, #1312
	cmn	r7, #1
	add	r5, r5, #12
	bne	.L76
.L75:
	ldr	r3, .L96+36
	ldr	r6, [r4, #16]
.LPIC24:
	add	r3, pc, r3
	cmp	r6, #89128960
	str	r8, [r3, #12]
	mvnhi	r0, #0
	addls	r0, r6, r6, asl #1
	movls	r0, r0, asl #3
.L73:
	bl	_Znaj(PLT)
	subs	r6, r6, #1
	mov	r7, r0
	movcs	r5, r0
	bcc	.L80
.L81:
	mov	r0, r5
	sub	r6, r6, #1
	bl	_ZN12CIwSoundInstC1Ev(PLT)
	cmn	r6, #1
	add	r5, r5, #24
	bne	.L81
.L80:
	ldr	r0, [r4, #16]
	str	r7, [r4, #8]
	cmp	r0, #532676608
	mvnhi	r0, #0
	movls	r0, r0, asl #2
.L79:
	bl	_Znaj(PLT)
	ldr	r3, [r4, #16]
	cmp	r3, #0
	str	r0, [r4, #12]
	beq	.L88
	mov	r2, #0
	mov	r3, r2
	b	.L84
.L95:
	ldr	r0, [r4, #12]
.L84:
	ldr	r1, [r4, #8]
	add	r1, r1, r2
	str	r1, [r0, r3, asl #2]
	ldr	r1, [r4, #16]
	add	r3, r3, #1
	cmp	r1, r3
	add	r2, r2, #24
	bhi	.L95
.L88:
	mov	r0, r4
	add	sp, sp, #12
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}
.L97:
	.align	2
.L96:
	.word	.LANCHOR0-(.LPIC18+8)
	.word	.LANCHOR1-(.LPIC19+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC25+8)
	.word	.LC0-(.LPIC20+8)
	.word	.LC1-(.LPIC21+8)
	.word	.LANCHOR1-(.LPIC22+8)
	.word	.LANCHOR1-(.LPIC23+8)
	.word	1324
	.word	_ZN15CIwChannelADPCM13isInitializedE(GOT)
	.word	.LANCHOR1-(.LPIC24+8)
	.size	_ZN15CIwSoundManagerC2Ev, .-_ZN15CIwSoundManagerC2Ev
	.global	_ZN15CIwSoundManagerC1Ev
	.hidden	_ZN15CIwSoundManagerC1Ev
	.set	_ZN15CIwSoundManagerC1Ev,_ZN15CIwSoundManagerC2Ev
	.section	.text._Z11IwSoundInitv,"ax",%progbits
	.align	2
	.global	_Z11IwSoundInitv
	.hidden	_Z11IwSoundInitv
	.type	_Z11IwSoundInitv, %function
_Z11IwSoundInitv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r0, #40
	bl	_Znwj(PLT)
	bl	_ZN15CIwSoundManagerC1Ev(PLT)
	bl	_Z20_GetCIwSoundDataSizev(PLT)
	ldr	r4, .L99
	ldr	r3, .L99+4
.LPIC27:
	add	r4, pc, r4
	ldr	r1, [r4, r3]
	mov	r2, r0
	ldr	r0, .L99+8
.LPIC26:
	add	r0, pc, r0
	bl	_Z17IwClassFactoryAddPKcPFPvvEj(PLT)
	bl	_Z25_GetCIwSoundDataADPCMSizev(PLT)
	ldr	r3, .L99+12
	ldr	r1, [r4, r3]
	mov	r2, r0
	ldr	r0, .L99+16
.LPIC28:
	add	r0, pc, r0
	bl	_Z17IwClassFactoryAddPKcPFPvvEj(PLT)
	bl	_Z21_GetCIwSoundGroupSizev(PLT)
	ldr	r3, .L99+20
	ldr	r1, [r4, r3]
	mov	r2, r0
	ldr	r0, .L99+24
.LPIC29:
	add	r0, pc, r0
	bl	_Z17IwClassFactoryAddPKcPFPvvEj(PLT)
	bl	_Z20_GetCIwSoundSpecSizev(PLT)
	ldr	r3, .L99+28
	ldr	r1, [r4, r3]
	ldmfd	sp!, {r4, lr}
	mov	r2, r0
	ldr	r0, .L99+32
.LPIC30:
	add	r0, pc, r0
	b	_Z17IwClassFactoryAddPKcPFPvvEj(PLT)
.L100:
	.align	2
.L99:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC27+8)
	.word	_Z20_CIwSoundDataFactoryv(GOT)
	.word	.LC2-(.LPIC26+8)
	.word	_Z25_CIwSoundDataADPCMFactoryv(GOT)
	.word	.LC3-(.LPIC28+8)
	.word	_Z21_CIwSoundGroupFactoryv(GOT)
	.word	.LC4-(.LPIC29+8)
	.word	_Z20_CIwSoundSpecFactoryv(GOT)
	.word	.LC5-(.LPIC30+8)
	.size	_Z11IwSoundInitv, .-_Z11IwSoundInitv
	.section	.text._ZN15CIwSoundManager16SetMaxSoundInstsEj,"ax",%progbits
	.align	2
	.global	_ZN15CIwSoundManager16SetMaxSoundInstsEj
	.hidden	_ZN15CIwSoundManager16SetMaxSoundInstsEj
	.type	_ZN15CIwSoundManager16SetMaxSoundInstsEj, %function
_ZN15CIwSoundManager16SetMaxSoundInstsEj:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	_ZN15CIwSoundManager16SetMaxSoundInstsEj, .-_ZN15CIwSoundManager16SetMaxSoundInstsEj
	.section	.text._ZN15CIwSoundManager15UpdateCompletedEi,"ax",%progbits
	.align	2
	.global	_ZN15CIwSoundManager15UpdateCompletedEi
	.hidden	_ZN15CIwSoundManager15UpdateCompletedEi
	.type	_ZN15CIwSoundManager15UpdateCompletedEi, %function
_ZN15CIwSoundManager15UpdateCompletedEi:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	mov	r5, r0
	ldr	r3, [r0, #12]
	ldr	r4, [r3, r1, asl #2]
	ldr	r3, [r4]
	ldr	r3, [r3, #36]
	cmp	r3, #0
	ldrneh	r2, [r3, #24]
	subne	r2, r2, #1
	strneh	r2, [r3, #24]	@ movhi
	ldr	r3, [r4, #20]
	cmp	r3, #0
	beq	.L104
	mov	r0, r4
	blx	r3
.L104:
	ldrh	r2, [r4, #10]
	ldrh	r3, [r4, #16]
	bic	r2, r2, #2
	orr	r2, r2, #4
	add	r3, r3, #1
	strh	r2, [r4, #10]	@ movhi
	strh	r3, [r4, #16]	@ movhi
	ldr	ip, [r5, #20]
	ldr	r2, [r5, #12]
	sub	ip, ip, #-1073741823
	add	ip, r2, ip, asl #2
	cmp	r2, ip
	ldmhifd	sp!, {r3, r4, r5, pc}
	ldr	r3, [r2]
	cmp	r4, r3
	addne	r3, r2, #4
	bne	.L108
	b	.L106
.L109:
	ldr	r1, [r2]
	add	r3, r3, #4
	cmp	r4, r1
	beq	.L106
.L108:
	cmp	ip, r3
	mov	r2, r3
	bcs	.L109
	ldmfd	sp!, {r3, r4, r5, pc}
.L106:
	ldr	r3, [ip]
	str	r3, [r2]
	str	r4, [ip]
	ldr	r3, [r5, #20]
	sub	r3, r3, #1
	str	r3, [r5, #20]
	ldmfd	sp!, {r3, r4, r5, pc}
	.size	_ZN15CIwSoundManager15UpdateCompletedEi, .-_ZN15CIwSoundManager15UpdateCompletedEi
	.section	.text._ZN15CIwSoundManager6UpdateEv,"ax",%progbits
	.align	2
	.global	_ZN15CIwSoundManager6UpdateEv
	.hidden	_ZN15CIwSoundManager6UpdateEv
	.type	_ZN15CIwSoundManager6UpdateEv, %function
_ZN15CIwSoundManager6UpdateEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}
	mov	r5, r0
	ldrh	r3, [r0, #30]
	tst	r3, #2
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, pc}
	ldr	r2, [r0, #4]
	ldr	r0, [r0, #20]
	add	r2, r2, #1
	cmp	r0, #0
	str	r2, [r5, #4]
	mov	r7, r0
	beq	.L139
	mov	r6, #0
	b	.L131
.L122:
	ldrh	r3, [r4, #14]
	add	r3, r3, #1
	strh	r3, [r4, #14]	@ movhi
	ldr	r0, [r5, #20]
	mov	r7, r0
.L121:
	add	r6, r6, #1
	cmp	r6, r7
	bcs	.L170
.L131:
	ldr	r3, [r5, #12]
	ldr	r4, [r3, r6, asl #2]
	ldr	r3, [r4]
	cmp	r3, #0
	beq	.L121
	ldrh	r2, [r4, #10]
	tst	r2, #2
	beq	.L122
	ldr	r3, [r3, #36]
	cmp	r3, #0
	ldrneh	r2, [r3, #24]
	subne	r2, r2, #1
	strneh	r2, [r3, #24]	@ movhi
	ldr	r3, [r4, #20]
	cmp	r3, #0
	beq	.L124
	mov	r0, r4
	blx	r3
.L124:
	ldrh	r2, [r4, #10]
	ldrh	r3, [r4, #16]
	bic	r2, r2, #2
	orr	r2, r2, #4
	add	r3, r3, #1
	strh	r2, [r4, #10]	@ movhi
	strh	r3, [r4, #16]	@ movhi
	ldr	r0, [r5, #20]
	ldr	r2, [r5, #12]
	sub	ip, r0, #-1073741823
	mov	r7, r0
	add	ip, r2, ip, asl #2
	cmp	r2, ip
	bhi	.L125
	ldr	r3, [r2]
	cmp	r4, r3
	addne	r3, r2, #4
	bne	.L128
	b	.L126
.L129:
	ldr	r1, [r2]
	add	r3, r3, #4
	cmp	r4, r1
	beq	.L126
.L128:
	cmp	ip, r3
	mov	r2, r3
	bcs	.L129
.L125:
	sub	r6, r6, #1
.L171:
	add	r6, r6, #1
	cmp	r6, r7
	bcc	.L131
.L170:
	cmp	r7, #0
	beq	.L169
	ldr	r3, [r5, #12]
	ldr	r4, [r3]
	ldr	r3, [r4]
	cmp	r3, #0
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, pc}
	mov	r6, #0
	b	.L134
.L137:
	ldr	r3, [r5, #12]
	ldr	r4, [r3, r6, asl #2]
	ldr	r3, [r4]
	cmp	r3, #0
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, pc}
.L134:
	ldr	r3, [r3, #36]
	ldrh	r2, [r4, #10]
	cmp	r3, #0
	mov	r1, #3
	ldreq	r3, [r5, #32]
	tst	r2, #1
	bne	.L136
	ldrh	r2, [r3, #26]
	tst	r2, #1
	bne	.L136
	ldrh	r2, [r5, #30]
	tst	r2, #1
	beq	.L143
.L136:
	ldrh	lr, [r5, #24]
	ldrh	r2, [r3, #16]
	ldrsh	ip, [r4, #4]
	ldrh	r0, [r3, #20]
	ldrh	r7, [r5, #28]
	smulbb	r2, lr, r2
	ldrsh	r3, [r4, #8]
	mov	r2, r2, asr #12
	smulbb	r7, r7, r0
	mul	r2, r2, ip
	mov	r7, r7, asr #12
	ldrh	r0, [r4, #12]
	mov	r2, r2, asl #4
	mul	r7, r7, r3
	mov	r2, r2, asr #20
	cmp	r2, #256
	movge	r2, #256
	bl	s3eSoundChannelSetInt(PLT)
	ldr	r3, [r4]
	mov	r7, r7, asr #12
	ldrh	r0, [r4, #12]
	ldr	r3, [r3, #32]
	uxth	r7, r7
	mov	r1, #1
	ldr	r2, [r3, #28]
	sxth	r7, r7
	mul	r2, r2, r7
	mov	r2, r2, asr #12
	bl	s3eSoundChannelSetInt(PLT)
	ldrh	r3, [r4, #10]
	bic	r3, r3, #1
	strh	r3, [r4, #10]	@ movhi
	ldr	r0, [r5, #20]
.L143:
	add	r6, r6, #1
	cmp	r0, r6
	mov	r2, r0
	bhi	.L137
	cmp	r0, #0
	movne	r3, #0
	beq	.L169
.L142:
	ldr	r1, [r5, #12]
	ldr	r1, [r1, r3, asl #2]
	add	r3, r3, #1
	ldr	r1, [r1]
	cmp	r1, #0
	beq	.L140
	ldr	r1, [r1, #36]
	cmp	r1, #0
	ldrneh	r2, [r1, #26]
	bicne	r2, r2, #1
	strneh	r2, [r1, #26]	@ movhi
	ldrne	r2, [r5, #20]
.L140:
	cmp	r3, r2
	bcc	.L142
.L169:
	ldrh	r3, [r5, #30]
.L139:
	bic	r3, r3, #1
	strh	r3, [r5, #30]	@ movhi
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}
.L126:
	ldr	r3, [ip]
	sub	r6, r6, #1
	str	r3, [r2]
	str	r4, [ip]
	ldr	r0, [r5, #20]
	sub	r7, r0, #1
	str	r7, [r5, #20]
	mov	r0, r7
	b	.L171
	.size	_ZN15CIwSoundManager6UpdateEv, .-_ZN15CIwSoundManager6UpdateEv
	.section	.text._Z16IwSoundTerminatev,"ax",%progbits
	.align	2
	.global	_Z16IwSoundTerminatev
	.hidden	_Z16IwSoundTerminatev
	.type	_Z16IwSoundTerminatev, %function
_Z16IwSoundTerminatev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	ldr	r3, .L178
.LPIC31:
	ldr	r5, [pc, r3]		@ tls_load_dot_plus_eight
	ldr	r3, [r5, #20]
	cmp	r3, #0
	movne	r4, #0
	beq	.L176
.L177:
	ldr	r3, [r5, #12]
	ldr	r0, [r3, r4, asl #2]
	bl	_ZN12CIwSoundInst4StopEv(PLT)
	ldr	r3, [r5, #20]
	add	r4, r4, #1
	cmp	r4, r3
	bcc	.L177
.L176:
	mov	r0, r5
	bl	_ZN15CIwSoundManager6UpdateEv(PLT)
	mov	r0, #50
	bl	s3eDeviceYield(PLT)
	ldr	r3, .L178+4
.LPIC32:
	ldr	r0, [pc, r3]		@ tls_load_dot_plus_eight
	cmp	r0, #0
	ldmeqfd	sp!, {r3, r4, r5, pc}
	ldr	r3, [r0]
	ldr	r3, [r3, #4]
	blx	r3
	ldmfd	sp!, {r3, r4, r5, pc}
.L179:
	.align	2
.L178:
	.word	.LANCHOR1-(.LPIC31+8)
	.word	.LANCHOR1-(.LPIC32+8)
	.size	_Z16IwSoundTerminatev, .-_Z16IwSoundTerminatev
	.section	.text._ZN15CIwSoundManager14GetFreeChannelEP12CIwSoundInst17IwSoundDataFormat,"ax",%progbits
	.align	2
	.global	_ZN15CIwSoundManager14GetFreeChannelEP12CIwSoundInst17IwSoundDataFormat
	.hidden	_ZN15CIwSoundManager14GetFreeChannelEP12CIwSoundInst17IwSoundDataFormat
	.type	_ZN15CIwSoundManager14GetFreeChannelEP12CIwSoundInst17IwSoundDataFormat, %function
_ZN15CIwSoundManager14GetFreeChannelEP12CIwSoundInst17IwSoundDataFormat:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov	r6, r0
	ldrh	r3, [r0, #30]
	mov	r7, r1
	mov	r5, r2
	tst	r3, #2
	beq	.L183
	bl	s3eSoundGetFreeChannel(PLT)
	ldr	r3, [r6, #16]
	cmp	r0, r3
	mov	r4, r0
	bge	.L183
	cmp	r5, #1
	beq	.L184
	cmp	r5, #2
	beq	.L185
	cmp	r5, #0
	beq	.L189
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
.L185:
	ldr	r5, .L190
	ldr	r3, .L190+4
	ldr	r2, .L190+8
.LPIC37:
	add	r3, pc, r3
	mul	r5, r5, r0
	ldr	r6, [r3, #12]
	mov	r1, #1
	add	r3, r6, r5
.LPIC38:
	add	r2, pc, r2
	bl	s3eSoundChannelRegister(PLT)
	mov	r3, #0
	mov	r0, r4
	str	r3, [r6, r5]
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
.L189:
	ldr	r3, .L190+12
	add	r8, r0, r0, asl #1
.LPIC33:
	add	r3, pc, r3
	mov	r8, r8, asl #3
	ldr	r9, [r3, #4]
	ldr	r2, .L190+16
	add	r6, r9, r8
	mov	r1, #1
	mov	r3, r6
.LPIC34:
	add	r2, pc, r2
	bl	s3eSoundChannelRegister(PLT)
	str	r5, [r9, r8]
	mov	r0, r4
	str	r7, [r6, #20]
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
.L184:
	ldr	r3, .L190+20
	add	r6, r0, r0, asl #1
.LPIC35:
	add	r3, pc, r3
	mov	r6, r6, asl #3
	ldr	r8, [r3, #8]
	ldr	r2, .L190+24
	mov	r1, r5
	add	r5, r8, r6
	mov	r3, r5
.LPIC36:
	add	r2, pc, r2
	bl	s3eSoundChannelRegister(PLT)
	mov	r3, #0
	str	r3, [r8, r6]
	mov	r0, r4
	str	r7, [r5, #20]
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
.L183:
	mvn	r0, #0
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
.L191:
	.align	2
.L190:
	.word	1324
	.word	.LANCHOR1-(.LPIC37+8)
	.word	_ZN15CIwChannelADPCM15GenerateAudioCBEP20s3eSoundGenAudioInfoPS_-(.LPIC38+8)
	.word	.LANCHOR1-(.LPIC33+8)
	.word	_ZN13CIwChannelPCMIaE15GenerateAudioCBEP20s3eSoundGenAudioInfoPS0_-(.LPIC34+8)
	.word	.LANCHOR1-(.LPIC35+8)
	.word	_ZN13CIwChannelPCMIsE15GenerateAudioCBEP20s3eSoundGenAudioInfoPS0_-(.LPIC36+8)
	.size	_ZN15CIwSoundManager14GetFreeChannelEP12CIwSoundInst17IwSoundDataFormat, .-_ZN15CIwSoundManager14GetFreeChannelEP12CIwSoundInst17IwSoundDataFormat
	.section	.text._ZN15CIwSoundManager11GetFreeInstEv,"ax",%progbits
	.align	2
	.global	_ZN15CIwSoundManager11GetFreeInstEv
	.hidden	_ZN15CIwSoundManager11GetFreeInstEv
	.type	_ZN15CIwSoundManager11GetFreeInstEv, %function
_ZN15CIwSoundManager11GetFreeInstEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #20]
	ldr	r2, [r0, #16]
	cmp	r3, r2
	addcc	r1, r3, #1
	ldrcc	r2, [r0, #12]
	strcc	r1, [r0, #20]
	ldrcc	r3, [r2, r3, asl #2]
	movcc	r0, r3
	ldrcch	r2, [r3, #10]
	movcs	r0, #0
	biccc	r2, r2, #4
	strcch	r2, [r3, #10]	@ movhi
	bx	lr
	.size	_ZN15CIwSoundManager11GetFreeInstEv, .-_ZN15CIwSoundManager11GetFreeInstEv
	.section	.text._ZN15CIwSoundManager11SetFreeInstEP12CIwSoundInst,"ax",%progbits
	.align	2
	.global	_ZN15CIwSoundManager11SetFreeInstEP12CIwSoundInst
	.hidden	_ZN15CIwSoundManager11SetFreeInstEP12CIwSoundInst
	.type	_ZN15CIwSoundManager11SetFreeInstEP12CIwSoundInst, %function
_ZN15CIwSoundManager11SetFreeInstEP12CIwSoundInst:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrh	r2, [r1, #10]
	ldrh	r3, [r1, #16]
	str	r4, [sp, #-4]!
	orr	r2, r2, #4
	add	r3, r3, #1
	strh	r2, [r1, #10]	@ movhi
	strh	r3, [r1, #16]	@ movhi
	ldr	r4, [r0, #20]
	ldr	r2, [r0, #12]
	sub	r4, r4, #-1073741823
	add	r4, r2, r4, asl #2
	cmp	r2, r4
	bhi	.L195
	ldr	r3, [r2]
	cmp	r3, r1
	addne	r3, r2, #4
	bne	.L199
	b	.L197
.L200:
	ldr	ip, [r2]
	add	r3, r3, #4
	cmp	ip, r1
	beq	.L197
.L199:
	cmp	r4, r3
	mov	r2, r3
	bcs	.L200
.L195:
	ldr	r4, [sp], #4
	bx	lr
.L197:
	ldr	r3, [r4]
	str	r3, [r2]
	str	r1, [r4]
	ldr	r3, [r0, #20]
	ldr	r4, [sp], #4
	sub	r3, r3, #1
	str	r3, [r0, #20]
	bx	lr
	.size	_ZN15CIwSoundManager11SetFreeInstEP12CIwSoundInst, .-_ZN15CIwSoundManager11SetFreeInstEP12CIwSoundInst
	.section	.text._ZN15CIwSoundManager7StopAllEv,"ax",%progbits
	.align	2
	.global	_ZN15CIwSoundManager7StopAllEv
	.hidden	_ZN15CIwSoundManager7StopAllEv
	.type	_ZN15CIwSoundManager7StopAllEv, %function
_ZN15CIwSoundManager7StopAllEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	mov	r5, r0
	ldr	r3, [r0, #20]
	cmp	r3, #0
	movne	r4, #0
	beq	.L204
.L205:
	ldr	r3, [r5, #12]
	ldr	r0, [r3, r4, asl #2]
	bl	_ZN12CIwSoundInst4StopEv(PLT)
	ldr	r3, [r5, #20]
	add	r4, r4, #1
	cmp	r3, r4
	bhi	.L205
.L204:
	mov	r0, r5
	bl	_ZN15CIwSoundManager6UpdateEv(PLT)
	mov	r0, #50
	ldmfd	sp!, {r3, r4, r5, lr}
	b	s3eDeviceYield(PLT)
	.size	_ZN15CIwSoundManager7StopAllEv, .-_ZN15CIwSoundManager7StopAllEv
	.section	.text._ZN15CIwSoundManager13StopSoundSpecEP12CIwSoundSpec,"ax",%progbits
	.align	2
	.global	_ZN15CIwSoundManager13StopSoundSpecEP12CIwSoundSpec
	.hidden	_ZN15CIwSoundManager13StopSoundSpecEP12CIwSoundSpec
	.type	_ZN15CIwSoundManager13StopSoundSpecEP12CIwSoundSpec, %function
_ZN15CIwSoundManager13StopSoundSpecEP12CIwSoundSpec:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	subs	r8, r1, #0
	mov	r6, r0
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}
	ldr	r4, [r0, #20]
	subs	r5, r4, #1
	subpl	r4, r4, #-1073741823
	movpl	r4, r4, asl #2
	bmi	.L218
.L219:
	ldr	r3, [r6, #12]
	ldr	r0, [r3, r4]
	ldr	r2, [r0]
	cmp	r8, r2
	beq	.L227
.L210:
	subs	r5, r5, #1
	sub	r4, r4, #4
	bpl	.L219
.L218:
	mov	r0, #50
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	b	s3eDeviceYield(PLT)
.L227:
	bl	_ZN12CIwSoundInst4StopEv(PLT)
	ldr	r3, [r6, #12]
	ldr	r7, [r3, r4]
	ldr	r3, [r7]
	ldr	r3, [r3, #36]
	cmp	r3, #0
	ldrneh	r2, [r3, #24]
	subne	r2, r2, #1
	strneh	r2, [r3, #24]	@ movhi
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L212
	mov	r0, r7
	blx	r3
.L212:
	ldrh	r2, [r7, #10]
	ldrh	r3, [r7, #16]
	bic	r2, r2, #2
	orr	r2, r2, #4
	add	r3, r3, #1
	strh	r2, [r7, #10]	@ movhi
	strh	r3, [r7, #16]	@ movhi
	ldr	r1, [r6, #20]
	ldr	r2, [r6, #12]
	sub	r1, r1, #-1073741823
	add	r1, r2, r1, asl #2
	cmp	r2, r1
	bhi	.L210
	ldr	r3, [r2]
	cmp	r7, r3
	addne	r3, r2, #4
	beq	.L214
.L216:
	cmp	r1, r3
	mov	r2, r3
	bcc	.L210
	ldr	ip, [r2]
	add	r3, r3, #4
	cmp	r7, ip
	bne	.L216
.L214:
	ldr	r3, [r1]
	str	r3, [r2]
	str	r7, [r1]
	ldr	r3, [r6, #20]
	sub	r3, r3, #1
	str	r3, [r6, #20]
	b	.L210
	.size	_ZN15CIwSoundManager13StopSoundSpecEP12CIwSoundSpec, .-_ZN15CIwSoundManager13StopSoundSpecEP12CIwSoundSpec
	.section	.text._ZN15CIwSoundManager8PauseAllEv,"ax",%progbits
	.align	2
	.global	_ZN15CIwSoundManager8PauseAllEv
	.hidden	_ZN15CIwSoundManager8PauseAllEv
	.type	_ZN15CIwSoundManager8PauseAllEv, %function
_ZN15CIwSoundManager8PauseAllEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	mov	r5, r0
	ldr	r3, [r0, #20]
	cmp	r3, #0
	ldmeqfd	sp!, {r3, r4, r5, pc}
	mov	r4, #0
.L231:
	ldr	r3, [r5, #12]
	ldr	r0, [r3, r4, asl #2]
	bl	_ZN12CIwSoundInst5PauseEv(PLT)
	ldr	r3, [r5, #20]
	add	r4, r4, #1
	cmp	r3, r4
	bhi	.L231
	ldmfd	sp!, {r3, r4, r5, pc}
	.size	_ZN15CIwSoundManager8PauseAllEv, .-_ZN15CIwSoundManager8PauseAllEv
	.section	.text._ZN15CIwSoundManager9ResumeAllEv,"ax",%progbits
	.align	2
	.global	_ZN15CIwSoundManager9ResumeAllEv
	.hidden	_ZN15CIwSoundManager9ResumeAllEv
	.type	_ZN15CIwSoundManager9ResumeAllEv, %function
_ZN15CIwSoundManager9ResumeAllEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	mov	r5, r0
	ldr	r3, [r0, #20]
	cmp	r3, #0
	ldmeqfd	sp!, {r3, r4, r5, pc}
	mov	r4, #0
.L235:
	ldr	r3, [r5, #12]
	ldr	r0, [r3, r4, asl #2]
	bl	_ZN12CIwSoundInst6ResumeEv(PLT)
	ldr	r3, [r5, #20]
	add	r4, r4, #1
	cmp	r3, r4
	bhi	.L235
	ldmfd	sp!, {r3, r4, r5, pc}
	.size	_ZN15CIwSoundManager9ResumeAllEv, .-_ZN15CIwSoundManager9ResumeAllEv
	.section	.text._ZN13CIwChannelPCMIaE17GenerateAudioFastEPsiiiiPi,"axG",%progbits,_ZN13CIwChannelPCMIaE17GenerateAudioFastEPsiiiiPi,comdat
	.align	2
	.weak	_ZN13CIwChannelPCMIaE17GenerateAudioFastEPsiiiiPi
	.hidden	_ZN13CIwChannelPCMIaE17GenerateAudioFastEPsiiiiPi
	.type	_ZN13CIwChannelPCMIaE17GenerateAudioFastEPsiiiiPi, %function
_ZN13CIwChannelPCMIaE17GenerateAudioFastEPsiiiiPi:
	@ args = 12, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp}
	sub	sp, sp, #8
	cmp	r2, #0
	ldr	r9, [sp, #44]
	mov	fp, r0
	ldr	r10, [sp, #40]
	moveq	r0, r9
	beq	.L237
	ldr	r0, [fp, #8]
	cmp	r9, #0
	str	r0, [sp, #4]
	mov	r5, r1
	sub	r6, r0, #1
	ldr	ip, [fp]
	ldr	r4, [fp, #12]
	beq	.L239
	ldr	r0, .L306
.L240:
	cmp	ip, r6
	beq	.L243
	bhi	.L302
	cmp	r2, #0
	beq	.L241
	cmp	r10, #0
	beq	.L249
	mov	r7, r5
.L248:
	ldrsb	r5, [ip]
	ldrsb	r8, [ip, #1]
	add	r9, r4, r3
	sub	r2, r2, #1
	rsb	r8, r5, r8
	add	ip, ip, r9, asr #12
	mul	r4, r4, r8
	mov	r9, r9, asl #20
	ldrh	r8, [r7], #2
	add	r5, r5, r4, asr #12
	mov	r4, r9, lsr #20
	mul	r9, r10, r5
	sxth	r8, r8
	mov	r5, r7
	add	r8, r8, r9, asr #8
	add	r9, r8, #32768
	movs	r9, r9, lsr #16
	beq	.L246
	ldr	r9, .L306+4
	cmp	r8, r0
	movlt	r8, r0
	cmp	r8, r9
	movge	r8, r9
.L246:
	cmp	r6, ip
	strh	r8, [r7, #-2]	@ movhi
	bls	.L240
	cmp	r2, #0
	bne	.L248
.L241:
	rsb	r5, r1, r5
	str	ip, [fp]
	mov	r0, r5, asr #1
	str	r4, [fp, #12]
.L237:
	add	sp, sp, #8
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp}
	bx	lr
.L250:
	cmp	r2, #0
	beq	.L241
	ldr	r7, [sp, #4]
	add	r4, r4, r3
	sub	r2, r2, #1
	ldrsb	r0, [r7, #-1]
	add	ip, ip, r4, asr #12
	mov	r4, r4, asl #20
	add	r5, r5, #2
	mul	r0, r0, r10
	mov	r4, r4, lsr #20
	mov	r0, r0, asr #8
	strh	r0, [r5, #-2]	@ movhi
.L239:
	cmp	ip, r6
	beq	.L250
	bhi	.L303
	cmp	r2, #0
	beq	.L241
	cmp	r10, #0
	beq	.L255
	b	.L254
.L304:
	cmp	r2, #0
	beq	.L241
.L254:
	ldrsb	r0, [ip]
	ldrsb	r8, [ip, #1]
	add	r7, r4, r3
	sub	r2, r2, #1
	rsb	r8, r0, r8
	add	ip, ip, r7, asr #12
	mul	r4, r4, r8
	mov	r7, r7, asl #20
	cmp	r6, ip
	add	r0, r0, r4, asr #12
	mov	r4, r7, lsr #20
	mul	r0, r10, r0
	mov	r0, r0, asr #8
	strh	r0, [r5], #2	@ movhi
	bhi	.L304
	b	.L239
.L305:
	cmp	r2, #0
	beq	.L241
.L255:
	add	r4, r4, r3
	strh	r9, [r5], #2	@ movhi
	add	ip, ip, r4, asr #12
	mov	r4, r4, asl #20
	cmp	r6, ip
	mov	r4, r4, lsr #20
	sub	r2, r2, #1
	bhi	.L305
	b	.L239
.L249:
	add	r4, r4, r3
	add	r5, r5, #2
	add	ip, ip, r4, asr #12
	mov	r4, r4, asl #20
	cmp	r6, ip
	mov	r4, r4, lsr #20
	sub	r2, r2, #1
	bls	.L240
	cmp	r2, #0
	bne	.L249
	rsb	r5, r1, r5
	str	ip, [fp]
	mov	r0, r5, asr #1
	str	r4, [fp, #12]
	b	.L237
.L243:
	cmp	r2, #0
	beq	.L241
	ldr	r9, [sp, #4]
	ldrsh	ip, [r5]
	add	r8, r5, #2
	ldrsb	r7, [r9, #-1]
	mul	r7, r10, r7
	add	r7, ip, r7, asr #8
	add	ip, r7, #32768
	movs	ip, ip, lsr #16
	beq	.L242
	ldr	ip, .L306+4
	cmp	r7, r0
	movlt	r7, r0
	cmp	r7, ip
	movge	r7, ip
.L242:
	add	ip, r4, r3
	strh	r7, [r5]	@ movhi
	mov	r4, ip, asl #20
	sub	r2, r2, #1
	mov	r5, r8
	mov	r4, r4, lsr #20
	add	ip, r6, ip, asr #12
	b	.L240
.L303:
	ldr	r9, [sp, #48]
	mov	r3, #1
	str	r3, [r9]
	b	.L241
.L302:
	ldr	r0, [sp, #48]
	mov	r3, #1
	str	r3, [r0]
	b	.L241
.L307:
	.align	2
.L306:
	.word	-32768
	.word	32767
	.size	_ZN13CIwChannelPCMIaE17GenerateAudioFastEPsiiiiPi, .-_ZN13CIwChannelPCMIaE17GenerateAudioFastEPsiiiiPi
	.global	__aeabi_idiv
	.section	.text._ZN13CIwChannelPCMIaE15GenerateAudioCBEP20s3eSoundGenAudioInfoPS0_,"axG",%progbits,_ZN13CIwChannelPCMIaE15GenerateAudioCBEP20s3eSoundGenAudioInfoPS0_,comdat
	.align	2
	.weak	_ZN13CIwChannelPCMIaE15GenerateAudioCBEP20s3eSoundGenAudioInfoPS0_
	.hidden	_ZN13CIwChannelPCMIaE15GenerateAudioCBEP20s3eSoundGenAudioInfoPS0_
	.type	_ZN13CIwChannelPCMIaE15GenerateAudioCBEP20s3eSoundGenAudioInfoPS0_, %function
_ZN13CIwChannelPCMIaE15GenerateAudioCBEP20s3eSoundGenAudioInfoPS0_:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r1
	ldr	r3, [r1]
	sub	sp, sp, #28
	cmp	r3, #0
	mov	r8, r0
	ldr	r5, [r0, #4]
	ldr	r7, [r0, #8]
	ldr	r9, [r0, #12]
	beq	.L333
.L309:
	mov	r1, #1
	ldr	r0, [r8]
	bl	s3eSoundChannelGetInt(PLT)
	mov	r6, r0
	mov	r0, #1
	bl	s3eSoundGetInt(PLT)
	mov	r1, r0
	mov	r0, r6, asl #12
	bl	__aeabi_idiv(PLT)
	mov	r1, #3
	mov	r10, r0
	ldr	r0, [r8]
	bl	s3eSoundChannelGetInt(PLT)
	cmp	r10, #4096
	mov	r6, r0
	beq	.L310
	add	ip, sp, #24
	mov	fp, #0
	stmia	sp, {r6, r9}
	mov	r3, r10
	str	fp, [ip, #-4]!
	mov	r1, r5
	mov	r2, r7
	mov	r0, r4
	str	ip, [sp, #8]
	bl	_ZN13CIwChannelPCMIaE17GenerateAudioFastEPsiiiiPi(PLT)
	ldr	r3, [sp, #20]
	cmp	r3, fp
	movne	r3, #1
	strneb	r3, [r8, #28]
	strne	fp, [r4]
.L312:
	add	sp, sp, #28
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L310:
	ldr	r1, [r4, #8]
	ldr	r3, [r4]
	b	.L325
.L336:
	cmp	r9, #0
	mov	fp, r10, asl #1
	beq	.L314
.L315:
	add	r5, r5, fp
	add	r3, r3, r10
	str	r3, [r4]
.L316:
	cmp	r3, r1
	beq	.L334
.L323:
	cmp	r7, #0
	beq	.L335
.L325:
	rsb	r10, r3, r1
	cmp	r10, r7
	movge	r10, r7
	cmp	r6, #0
	rsb	r7, r10, r7
	beq	.L336
	cmp	r9, #0
	bne	.L317
	cmp	r10, #0
	addne	r10, r5, r10, asl #1
	beq	.L316
.L322:
	ldrsb	r3, [r3]
	mul	r3, r3, r6
	mov	r3, r3, asr #8
	strh	r3, [r5], #2	@ movhi
	ldr	r3, [r4]
	cmp	r5, r10
	add	r3, r3, #1
	str	r3, [r4]
	bne	.L322
	ldr	r1, [r4, #8]
	cmp	r3, r1
	bne	.L323
.L334:
	mov	r3, #0
	str	r3, [r4]
	ldr	r0, [r8, #8]
	mov	r3, #1
	rsb	r0, r7, r0
	strb	r3, [r8, #28]
	add	sp, sp, #28
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L317:
	cmp	r10, #0
	beq	.L316
	mov	ip, r5
	add	r10, r5, r10, asl #1
.L320:
	ldrsb	r3, [r3]
	ldrh	r2, [ip]
	mul	r3, r3, r6
	add	r3, r2, r3, asr #8
	strh	r3, [ip], #2	@ movhi
	ldr	r3, [r4]
	cmp	ip, r10
	add	r3, r3, #1
	str	r3, [r4]
	bne	.L320
	mov	r5, ip
	ldr	r1, [r4, #8]
	b	.L316
.L314:
	mov	r1, r9
	mov	r2, fp
	mov	r0, r5
	bl	memset(PLT)
	ldr	r3, [r4]
	ldr	r1, [r4, #8]
	b	.L315
.L335:
	ldr	r0, [r8, #8]
	add	sp, sp, #28
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L333:
	ldr	r2, [r0, #16]
	str	r2, [r1]
	ldr	r1, [r0, #20]
	ldr	r2, [r0, #16]
	str	r3, [r4, #12]
	add	r3, r2, r1, asl #1
	str	r3, [r4, #8]
	b	.L309
	.size	_ZN13CIwChannelPCMIaE15GenerateAudioCBEP20s3eSoundGenAudioInfoPS0_, .-_ZN13CIwChannelPCMIaE15GenerateAudioCBEP20s3eSoundGenAudioInfoPS0_
	.section	.text._ZN13CIwChannelPCMIsE17GenerateAudioFastEPsiiiiPi,"axG",%progbits,_ZN13CIwChannelPCMIsE17GenerateAudioFastEPsiiiiPi,comdat
	.align	2
	.weak	_ZN13CIwChannelPCMIsE17GenerateAudioFastEPsiiiiPi
	.hidden	_ZN13CIwChannelPCMIsE17GenerateAudioFastEPsiiiiPi
	.type	_ZN13CIwChannelPCMIsE17GenerateAudioFastEPsiiiiPi, %function
_ZN13CIwChannelPCMIsE17GenerateAudioFastEPsiiiiPi:
	@ args = 12, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp}
	sub	sp, sp, #8
	cmp	r2, #0
	ldr	r10, [sp, #44]
	mov	fp, r0
	ldr	r9, [sp, #40]
	moveq	r0, r10
	beq	.L338
	ldr	r0, [fp, #8]
	cmp	r10, #0
	str	r0, [sp, #4]
	mov	r8, r1
	sub	r5, r0, #2
	ldr	ip, [fp]
	ldr	r4, [fp, #12]
	beq	.L340
.L341:
	cmp	ip, r5
	beq	.L344
	bhi	.L403
	cmp	r2, #0
	beq	.L342
	cmp	r9, #0
	beq	.L350
	mov	r0, r8
	b	.L349
.L404:
	cmp	r2, #0
	beq	.L342
.L349:
	ldrsh	r7, [ip]
	ldrsh	r6, [ip, #2]
	add	r8, r4, r3
	sub	r2, r2, #1
	rsb	r6, r7, r6
	mov	r10, r8, asr #12
	mul	r6, r4, r6
	add	ip, ip, r10, asl #1
	mov	r10, r8, asl #20
	add	r6, r7, r6, asr #12
	ldrh	r8, [r0], #2
	mul	r6, r9, r6
	mov	r4, r10, lsr #20
	sxth	r8, r8
	add	r6, r8, r6, asr #8
	add	r7, r6, #32768
	movs	r7, r7, lsr #16
	mov	r8, r0
	beq	.L347
	ldr	r7, .L409
	cmp	r6, r7
	movlt	r6, r7
	ldr	r7, .L409+4
	cmp	r6, r7
	movge	r6, r7
.L347:
	cmp	r5, ip
	strh	r6, [r0, #-2]	@ movhi
	bhi	.L404
	b	.L341
.L351:
	cmp	r2, #0
	beq	.L342
	ldr	r6, [sp, #4]
	add	r4, r4, r3
	sub	r2, r2, #1
	ldrsh	r0, [r6, #-2]
	mov	r6, r4, asr #12
	mov	r4, r4, asl #20
	add	ip, ip, r6, asl #1
	mul	r0, r0, r9
	mov	r4, r4, lsr #20
	add	r8, r8, #2
	mov	r0, r0, asr #8
	strh	r0, [r8, #-2]	@ movhi
.L340:
	cmp	ip, r5
	beq	.L351
	bhi	.L405
	cmp	r2, #0
	beq	.L342
	cmp	r9, #0
	beq	.L356
	b	.L355
.L406:
	cmp	r2, #0
	beq	.L342
.L355:
	ldrsh	r0, [ip]
	ldrsh	r7, [ip, #2]
	add	r6, r4, r3
	sub	r2, r2, #1
	rsb	r7, r0, r7
	mul	r4, r4, r7
	mov	r7, r6, asr #12
	mov	r6, r6, asl #20
	add	r0, r0, r4, asr #12
	add	ip, ip, r7, asl #1
	mul	r0, r9, r0
	cmp	r5, ip
	mov	r4, r6, lsr #20
	mov	r0, r0, asr #8
	strh	r0, [r8], #2	@ movhi
	bhi	.L406
	b	.L340
.L407:
	cmp	r2, #0
	beq	.L342
.L356:
	add	r4, r4, r3
	strh	r10, [r8], #2	@ movhi
	mov	r0, r4, asr #12
	mov	r4, r4, asl #20
	add	ip, ip, r0, asl #1
	cmp	r5, ip
	sub	r2, r2, #1
	mov	r4, r4, lsr #20
	bhi	.L407
	b	.L340
.L408:
	cmp	r2, #0
	beq	.L342
.L350:
	add	r4, r4, r3
	add	r8, r8, #2
	mov	r0, r4, asr #12
	mov	r4, r4, asl #20
	add	ip, ip, r0, asl #1
	cmp	r5, ip
	sub	r2, r2, #1
	mov	r4, r4, lsr #20
	bhi	.L408
	b	.L341
.L403:
	ldr	r0, [sp, #48]
	mov	r3, #1
	str	r3, [r0]
.L342:
	rsb	r1, r1, r8
	str	ip, [fp]
	mov	r0, r1, asr #1
	str	r4, [fp, #12]
.L338:
	add	sp, sp, #8
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp}
	bx	lr
.L344:
	cmp	r2, #0
	beq	.L342
	ldr	r6, [sp, #4]
	ldrsh	ip, [r8]
	ldrsh	r0, [r6, #-2]
	add	r6, r8, #2
	mul	r0, r9, r0
	add	r0, ip, r0, asr #8
	add	ip, r0, #32768
	movs	ip, ip, lsr #16
	beq	.L343
	ldr	r7, .L409
	ldr	ip, .L409+4
	cmp	r0, r7
	movlt	r0, r7
	cmp	r0, ip
	movge	r0, ip
.L343:
	add	r4, r4, r3
	strh	r0, [r8]	@ movhi
	mov	ip, r4, asr #12
	mov	r4, r4, asl #20
	sub	r2, r2, #1
	mov	r8, r6
	add	ip, r5, ip, asl #1
	mov	r4, r4, lsr #20
	b	.L341
.L405:
	ldr	r7, [sp, #48]
	mov	r3, #1
	str	r3, [r7]
	b	.L342
.L410:
	.align	2
.L409:
	.word	-32768
	.word	32767
	.size	_ZN13CIwChannelPCMIsE17GenerateAudioFastEPsiiiiPi, .-_ZN13CIwChannelPCMIsE17GenerateAudioFastEPsiiiiPi
	.section	.text._ZN13CIwChannelPCMIsE15GenerateAudioCBEP20s3eSoundGenAudioInfoPS0_,"axG",%progbits,_ZN13CIwChannelPCMIsE15GenerateAudioCBEP20s3eSoundGenAudioInfoPS0_,comdat
	.align	2
	.weak	_ZN13CIwChannelPCMIsE15GenerateAudioCBEP20s3eSoundGenAudioInfoPS0_
	.hidden	_ZN13CIwChannelPCMIsE15GenerateAudioCBEP20s3eSoundGenAudioInfoPS0_
	.type	_ZN13CIwChannelPCMIsE15GenerateAudioCBEP20s3eSoundGenAudioInfoPS0_, %function
_ZN13CIwChannelPCMIsE15GenerateAudioCBEP20s3eSoundGenAudioInfoPS0_:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r1
	ldr	r3, [r1]
	sub	sp, sp, #28
	cmp	r3, #0
	mov	r8, r0
	ldr	r5, [r0, #4]
	ldr	r7, [r0, #8]
	ldr	r9, [r0, #12]
	beq	.L436
.L412:
	mov	r1, #1
	ldr	r0, [r8]
	bl	s3eSoundChannelGetInt(PLT)
	mov	r6, r0
	mov	r0, #1
	bl	s3eSoundGetInt(PLT)
	mov	r1, r0
	mov	r0, r6, asl #12
	bl	__aeabi_idiv(PLT)
	mov	r1, #3
	mov	r10, r0
	ldr	r0, [r8]
	bl	s3eSoundChannelGetInt(PLT)
	cmp	r10, #4096
	mov	r6, r0
	beq	.L413
	add	ip, sp, #24
	mov	fp, #0
	stmia	sp, {r6, r9}
	mov	r3, r10
	str	fp, [ip, #-4]!
	mov	r1, r5
	mov	r2, r7
	mov	r0, r4
	str	ip, [sp, #8]
	bl	_ZN13CIwChannelPCMIsE17GenerateAudioFastEPsiiiiPi(PLT)
	ldr	r3, [sp, #20]
	cmp	r3, fp
	movne	r3, #1
	strneb	r3, [r8, #28]
	strne	fp, [r4]
.L415:
	add	sp, sp, #28
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L413:
	ldr	r1, [r4, #8]
	ldr	r3, [r4]
	b	.L428
.L439:
	cmp	r9, #0
	mov	r10, r2, asl #1
	beq	.L417
.L418:
	add	r5, r5, r10
	add	r3, r3, r10
	str	r3, [r4]
.L419:
	cmp	r3, r1
	beq	.L437
.L426:
	cmp	r7, #0
	beq	.L438
.L428:
	rsb	r2, r3, r1
	mov	r2, r2, asr #1
	cmp	r2, r7
	movge	r2, r7
	cmp	r6, #0
	rsb	r7, r2, r7
	beq	.L439
	cmp	r9, #0
	bne	.L420
	cmp	r2, #0
	addne	r2, r5, r2, asl #1
	beq	.L419
.L425:
	ldrsh	r3, [r3]
	mul	r3, r3, r6
	mov	r3, r3, asr #8
	strh	r3, [r5], #2	@ movhi
	ldr	r3, [r4]
	cmp	r5, r2
	add	r3, r3, #2
	str	r3, [r4]
	bne	.L425
	ldr	r1, [r4, #8]
	cmp	r3, r1
	bne	.L426
.L437:
	mov	r3, #0
	str	r3, [r4]
	ldr	r0, [r8, #8]
	mov	r3, #1
	rsb	r0, r7, r0
	strb	r3, [r8, #28]
	add	sp, sp, #28
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L420:
	cmp	r2, #0
	beq	.L419
	mov	ip, r5
	add	r1, r5, r2, asl #1
.L423:
	ldrsh	r3, [r3]
	ldrh	r2, [ip]
	mul	r3, r3, r6
	add	r3, r2, r3, asr #8
	strh	r3, [ip], #2	@ movhi
	ldr	r3, [r4]
	cmp	ip, r1
	add	r3, r3, #2
	str	r3, [r4]
	bne	.L423
	mov	r5, ip
	ldr	r1, [r4, #8]
	b	.L419
.L417:
	mov	r1, r9
	mov	r2, r10
	mov	r0, r5
	bl	memset(PLT)
	ldr	r3, [r4]
	ldr	r1, [r4, #8]
	b	.L418
.L438:
	ldr	r0, [r8, #8]
	add	sp, sp, #28
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L436:
	ldr	r2, [r0, #16]
	str	r2, [r1]
	ldr	r1, [r0, #20]
	ldr	r2, [r0, #16]
	str	r3, [r4, #12]
	add	r3, r2, r1, asl #1
	str	r3, [r4, #8]
	b	.L412
	.size	_ZN13CIwChannelPCMIsE15GenerateAudioCBEP20s3eSoundGenAudioInfoPS0_, .-_ZN13CIwChannelPCMIsE15GenerateAudioCBEP20s3eSoundGenAudioInfoPS0_
	.hidden	_ZTS15CIwSoundManager
	.global	_ZTS15CIwSoundManager
	.hidden	_ZTI15CIwSoundManager
	.global	_ZTI15CIwSoundManager
	.hidden	_ZTV15CIwSoundManager
	.global	_ZTV15CIwSoundManager
	.hidden	_ZN15CIwSoundManager15s_ChannelsADPCME
	.global	_ZN15CIwSoundManager15s_ChannelsADPCME
	.hidden	_ZN15CIwSoundManager15s_ChannelsPCM16E
	.global	_ZN15CIwSoundManager15s_ChannelsPCM16E
	.hidden	_ZN15CIwSoundManager14s_ChannelsPCM8E
	.global	_ZN15CIwSoundManager14s_ChannelsPCM8E
	.hidden	g_IwSoundManager
	.global	g_IwSoundManager
	.section	.rodata
	.align	2
	.type	_ZTS15CIwSoundManager, %object
	.size	_ZTS15CIwSoundManager, 18
_ZTS15CIwSoundManager:
	.ascii	"15CIwSoundManager\000"
	.section	.data.rel.ro,"aw",%progbits
	.align	3
	.set	.LANCHOR0,. + 0
	.type	_ZTV15CIwSoundManager, %object
	.size	_ZTV15CIwSoundManager, 16
_ZTV15CIwSoundManager:
	.word	0
	.word	_ZTI15CIwSoundManager
	.word	_ZN15CIwSoundManagerD1Ev
	.word	_ZN15CIwSoundManagerD0Ev
	.type	_ZTI15CIwSoundManager, %object
	.size	_ZTI15CIwSoundManager, 8
_ZTI15CIwSoundManager:
	.word	_ZTVN10__cxxabiv117__class_type_infoE+8
	.word	_ZTS15CIwSoundManager
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"SOUND\000"
	.space	2
.LC1:
	.ascii	"MaxChannels\000"
.LC2:
	.ascii	"CIwSoundData\000"
	.space	3
.LC3:
	.ascii	"CIwSoundDataADPCM\000"
	.space	2
.LC4:
	.ascii	"CIwSoundGroup\000"
	.space	2
.LC5:
	.ascii	"CIwSoundSpec\000"
	.bss
	.align	2
	.set	.LANCHOR1,. + 0
	.type	g_IwSoundManager, %object
	.size	g_IwSoundManager, 4
g_IwSoundManager:
	.space	4
	.type	_ZN15CIwSoundManager14s_ChannelsPCM8E, %object
	.size	_ZN15CIwSoundManager14s_ChannelsPCM8E, 4
_ZN15CIwSoundManager14s_ChannelsPCM8E:
	.space	4
	.type	_ZN15CIwSoundManager15s_ChannelsPCM16E, %object
	.size	_ZN15CIwSoundManager15s_ChannelsPCM16E, 4
_ZN15CIwSoundManager15s_ChannelsPCM16E:
	.space	4
	.type	_ZN15CIwSoundManager15s_ChannelsADPCME, %object
	.size	_ZN15CIwSoundManager15s_ChannelsADPCME, 4
_ZN15CIwSoundManager15s_ChannelsADPCME:
	.space	4
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-branch revision 208322]"
