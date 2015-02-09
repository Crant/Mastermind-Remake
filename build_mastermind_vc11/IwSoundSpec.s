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
	.file	"IwSoundSpec.cpp"
	.section	.text._ZN10CIwManaged9ParseOpenEP16CIwTextParserITX,"axG",%progbits,_ZN10CIwManaged9ParseOpenEP16CIwTextParserITX,comdat
	.align	2
	.weak	_ZN10CIwManaged9ParseOpenEP16CIwTextParserITX
	.hidden	_ZN10CIwManaged9ParseOpenEP16CIwTextParserITX
	.type	_ZN10CIwManaged9ParseOpenEP16CIwTextParserITX, %function
_ZN10CIwManaged9ParseOpenEP16CIwTextParserITX:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	_ZN10CIwManaged9ParseOpenEP16CIwTextParserITX, .-_ZN10CIwManaged9ParseOpenEP16CIwTextParserITX
	.section	.text._ZN10CIwManaged11HandleEventEP8CIwEvent,"axG",%progbits,_ZN10CIwManaged11HandleEventEP8CIwEvent,comdat
	.align	2
	.weak	_ZN10CIwManaged11HandleEventEP8CIwEvent
	.hidden	_ZN10CIwManaged11HandleEventEP8CIwEvent
	.type	_ZN10CIwManaged11HandleEventEP8CIwEvent, %function
_ZN10CIwManaged11HandleEventEP8CIwEvent:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #0
	bx	lr
	.size	_ZN10CIwManaged11HandleEventEP8CIwEvent, .-_ZN10CIwManaged11HandleEventEP8CIwEvent
	.section	.text._ZN10CIwManaged11DebugRenderEv,"axG",%progbits,_ZN10CIwManaged11DebugRenderEv,comdat
	.align	2
	.weak	_ZN10CIwManaged11DebugRenderEv
	.hidden	_ZN10CIwManaged11DebugRenderEv
	.type	_ZN10CIwManaged11DebugRenderEv, %function
_ZN10CIwManaged11DebugRenderEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	_ZN10CIwManaged11DebugRenderEv, .-_ZN10CIwManaged11DebugRenderEv
	.section	.text._ZN11CIwResource10ApplyScaleEi,"axG",%progbits,_ZN11CIwResource10ApplyScaleEi,comdat
	.align	2
	.weak	_ZN11CIwResource10ApplyScaleEi
	.hidden	_ZN11CIwResource10ApplyScaleEi
	.type	_ZN11CIwResource10ApplyScaleEi, %function
_ZN11CIwResource10ApplyScaleEi:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	_ZN11CIwResource10ApplyScaleEi, .-_ZN11CIwResource10ApplyScaleEi
	.section	.text._ZN11CIwResource10ApplyScaleEf,"axG",%progbits,_ZN11CIwResource10ApplyScaleEf,comdat
	.align	2
	.weak	_ZN11CIwResource10ApplyScaleEf
	.hidden	_ZN11CIwResource10ApplyScaleEf
	.type	_ZN11CIwResource10ApplyScaleEf, %function
_ZN11CIwResource10ApplyScaleEf:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	_ZN11CIwResource10ApplyScaleEf, .-_ZN11CIwResource10ApplyScaleEf
	.section	.text._Z24_IwSoundSpec_EndSampleCBP21s3eSoundEndSampleInfoPv,"ax",%progbits
	.align	2
	.global	_Z24_IwSoundSpec_EndSampleCBP21s3eSoundEndSampleInfoPv
	.hidden	_Z24_IwSoundSpec_EndSampleCBP21s3eSoundEndSampleInfoPv
	.type	_Z24_IwSoundSpec_EndSampleCBP21s3eSoundEndSampleInfoPv, %function
_Z24_IwSoundSpec_EndSampleCBP21s3eSoundEndSampleInfoPv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #4]
	cmp	r0, #0
	movne	r0, #1
	ldreqh	r3, [r1, #10]
	orreq	r3, r3, #2
	streqh	r3, [r1, #10]	@ movhi
	bx	lr
	.size	_Z24_IwSoundSpec_EndSampleCBP21s3eSoundEndSampleInfoPv, .-_Z24_IwSoundSpec_EndSampleCBP21s3eSoundEndSampleInfoPv
	.section	.text._ZNK12CIwSoundSpec12GetClassNameEv,"ax",%progbits
	.align	2
	.global	_ZNK12CIwSoundSpec12GetClassNameEv
	.hidden	_ZNK12CIwSoundSpec12GetClassNameEv
	.type	_ZNK12CIwSoundSpec12GetClassNameEv, %function
_ZNK12CIwSoundSpec12GetClassNameEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, .L10
.LPIC0:
	add	r0, pc, r0
	bx	lr
.L11:
	.align	2
.L10:
	.word	.LC2-(.LPIC0+8)
	.size	_ZNK12CIwSoundSpec12GetClassNameEv, .-_ZNK12CIwSoundSpec12GetClassNameEv
	.section	.text._ZN12CIwSoundSpec14ParseAttributeEP16CIwTextParserITXPKc,"ax",%progbits
	.align	2
	.global	_ZN12CIwSoundSpec14ParseAttributeEP16CIwTextParserITXPKc
	.hidden	_ZN12CIwSoundSpec14ParseAttributeEP16CIwTextParserITXPKc
	.type	_ZN12CIwSoundSpec14ParseAttributeEP16CIwTextParserITXPKc, %function
_ZN12CIwSoundSpec14ParseAttributeEP16CIwTextParserITXPKc:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #0
	bx	lr
	.size	_ZN12CIwSoundSpec14ParseAttributeEP16CIwTextParserITXPKc, .-_ZN12CIwSoundSpec14ParseAttributeEP16CIwTextParserITXPKc
	.section	.text._ZN12CIwSoundSpec10ParseCloseEP16CIwTextParserITX,"ax",%progbits
	.align	2
	.global	_ZN12CIwSoundSpec10ParseCloseEP16CIwTextParserITX
	.hidden	_ZN12CIwSoundSpec10ParseCloseEP16CIwTextParserITX
	.type	_ZN12CIwSoundSpec10ParseCloseEP16CIwTextParserITX, %function
_ZN12CIwSoundSpec10ParseCloseEP16CIwTextParserITX:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	_ZN12CIwSoundSpec10ParseCloseEP16CIwTextParserITX, .-_ZN12CIwSoundSpec10ParseCloseEP16CIwTextParserITX
	.section	.text._ZN12CIwSoundSpecD2Ev,"ax",%progbits
	.align	2
	.global	_ZN12CIwSoundSpecD2Ev
	.hidden	_ZN12CIwSoundSpecD2Ev
	.type	_ZN12CIwSoundSpecD2Ev, %function
_ZN12CIwSoundSpecD2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	mov	r4, r0
	ldr	r2, .L20
	ldr	r5, .L20+4
	ldr	r3, .L20+8
.LPIC2:
	add	r5, pc, r5
.LPIC1:
	add	r2, pc, r2
	add	r2, r2, #8
	str	r2, [r0]
	ldr	r3, [r5, r3]
	ldr	r0, [r3]
	cmp	r0, #0
	beq	.L15
	mov	r1, r4
	bl	_ZN15CIwSoundManager13StopSoundSpecEP12CIwSoundSpec(PLT)
.L15:
	ldr	r3, .L20+12
	mov	r0, r4
	ldr	r3, [r5, r3]
	add	r3, r3, #8
	str	r3, [r4]
	bl	_ZN10CIwManagedD2Ev(PLT)
	mov	r0, r4
	ldmfd	sp!, {r3, r4, r5, pc}
.L21:
	.align	2
.L20:
	.word	.LANCHOR0-(.LPIC1+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC2+8)
	.word	g_IwSoundManager(GOT)
	.word	_ZTV18CIwManagedRefCount(GOT)
	.size	_ZN12CIwSoundSpecD2Ev, .-_ZN12CIwSoundSpecD2Ev
	.global	_ZN12CIwSoundSpecD1Ev
	.hidden	_ZN12CIwSoundSpecD1Ev
	.set	_ZN12CIwSoundSpecD1Ev,_ZN12CIwSoundSpecD2Ev
	.section	.text._ZN12CIwSoundSpec9SerialiseEv,"ax",%progbits
	.align	2
	.global	_ZN12CIwSoundSpec9SerialiseEv
	.hidden	_ZN12CIwSoundSpec9SerialiseEv
	.type	_ZN12CIwSoundSpec9SerialiseEv, %function
_ZN12CIwSoundSpec9SerialiseEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	bl	_ZN10CIwManaged9SerialiseEv(PLT)
	add	r0, r4, #16
	mov	r1, #1
	mov	r2, #16
	mov	r3, #2
	bl	_Z17IwSerialiseUInt16Rtiii(PLT)
	add	r0, r4, #20
	mov	r1, #1
	mov	r2, #15
	mov	r3, #2
	bl	_Z16IwSerialiseInt16Rsiii(PLT)
	add	r0, r4, #22
	mov	r1, #1
	mov	r2, #15
	mov	r3, #2
	bl	_Z16IwSerialiseInt16Rsiii(PLT)
	add	r0, r4, #24
	mov	r1, #1
	mov	r2, #15
	mov	r3, #2
	bl	_Z16IwSerialiseInt16Rsiii(PLT)
	add	r0, r4, #26
	mov	r1, #1
	mov	r2, #15
	mov	r3, #2
	bl	_Z16IwSerialiseInt16Rsiii(PLT)
	add	r0, r4, #28
	mov	r1, #1
	mov	r2, #15
	mov	r3, #2
	bl	_Z16IwSerialiseInt16Rsiii(PLT)
	add	r0, r4, #30
	mov	r1, #1
	mov	r2, #15
	mov	r3, #2
	bl	_Z16IwSerialiseInt16Rsiii(PLT)
	add	r0, r4, #32
	bl	_Z22IwSerialiseManagedHashPv(PLT)
	add	r0, r4, #36
	ldmfd	sp!, {r4, lr}
	b	_Z22IwSerialiseManagedHashPv(PLT)
	.size	_ZN12CIwSoundSpec9SerialiseEv, .-_ZN12CIwSoundSpec9SerialiseEv
	.section	.text._ZN12CIwSoundSpec7ResolveEv,"ax",%progbits
	.align	2
	.global	_ZN12CIwSoundSpec7ResolveEv
	.hidden	_ZN12CIwSoundSpec7ResolveEv
	.type	_ZN12CIwSoundSpec7ResolveEv, %function
_ZN12CIwSoundSpec7ResolveEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	bl	_ZN10CIwManaged7ResolveEv(PLT)
	ldr	r1, .L24
	add	r0, r4, #32
.LPIC3:
	add	r1, pc, r1
	mov	r2, #0
	bl	_Z20IwResolveManagedHashPvPKcj(PLT)
	ldr	r1, .L24+4
	add	r0, r4, #36
.LPIC4:
	add	r1, pc, r1
	mov	r2, #0
	ldmfd	sp!, {r4, lr}
	b	_Z20IwResolveManagedHashPvPKcj(PLT)
.L25:
	.align	2
.L24:
	.word	.LC3-(.LPIC3+8)
	.word	.LC4-(.LPIC4+8)
	.size	_ZN12CIwSoundSpec7ResolveEv, .-_ZN12CIwSoundSpec7ResolveEv
	.section	.text._ZN12CIwSoundSpecD0Ev,"ax",%progbits
	.align	2
	.global	_ZN12CIwSoundSpecD0Ev
	.hidden	_ZN12CIwSoundSpecD0Ev
	.type	_ZN12CIwSoundSpecD0Ev, %function
_ZN12CIwSoundSpecD0Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	mov	r4, r0
	ldr	r2, .L31
	ldr	r5, .L31+4
	ldr	r3, .L31+8
.LPIC6:
	add	r5, pc, r5
.LPIC5:
	add	r2, pc, r2
	add	r2, r2, #8
	str	r2, [r0]
	ldr	r3, [r5, r3]
	ldr	r0, [r3]
	cmp	r0, #0
	beq	.L27
	mov	r1, r4
	bl	_ZN15CIwSoundManager13StopSoundSpecEP12CIwSoundSpec(PLT)
.L27:
	ldr	r3, .L31+12
	mov	r0, r4
	ldr	r3, [r5, r3]
	add	r3, r3, #8
	str	r3, [r4]
	bl	_ZN10CIwManagedD2Ev(PLT)
	mov	r0, r4
	bl	_ZdlPv(PLT)
	mov	r0, r4
	ldmfd	sp!, {r3, r4, r5, pc}
.L32:
	.align	2
.L31:
	.word	.LANCHOR0-(.LPIC5+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC6+8)
	.word	g_IwSoundManager(GOT)
	.word	_ZTV18CIwManagedRefCount(GOT)
	.size	_ZN12CIwSoundSpecD0Ev, .-_ZN12CIwSoundSpecD0Ev
	.section	.text._Z20_CIwSoundSpecFactoryv,"ax",%progbits
	.align	2
	.global	_Z20_CIwSoundSpecFactoryv
	.hidden	_Z20_CIwSoundSpecFactoryv
	.type	_Z20_CIwSoundSpecFactoryv, %function
_Z20_CIwSoundSpecFactoryv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L34
	stmfd	sp!, {r4, lr}
	mov	r0, #40
.LPIC7:
	add	r3, pc, r3
	bl	_Znwj(PLT)
	mov	r4, r0
	bl	_ZN10CIwManagedC2Ev(PLT)
	ldr	r1, .L34+4
	mov	r3, #0
.LPIC8:
	add	r1, pc, r1
	mov	r2, #4096
	add	r1, r1, #8
	str	r1, [r4]
	strh	r3, [r4, #12]	@ movhi
	strh	r3, [r4, #14]	@ movhi
	str	r3, [r4, #32]
	strh	r3, [r4, #24]	@ movhi
	strh	r3, [r4, #26]	@ movhi
	str	r3, [r4, #36]
	strh	r3, [r4, #16]	@ movhi
	strh	r2, [r4, #20]	@ movhi
	strh	r2, [r4, #22]	@ movhi
	strh	r2, [r4, #28]	@ movhi
	strh	r2, [r4, #30]	@ movhi
	mov	r0, r4
	ldmfd	sp!, {r4, pc}
.L35:
	.align	2
.L34:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC7+8)
	.word	.LANCHOR0-(.LPIC8+8)
	.size	_Z20_CIwSoundSpecFactoryv, .-_Z20_CIwSoundSpecFactoryv
	.section	.text._Z20_GetCIwSoundSpecSizev,"ax",%progbits
	.align	2
	.global	_Z20_GetCIwSoundSpecSizev
	.hidden	_Z20_GetCIwSoundSpecSizev
	.type	_Z20_GetCIwSoundSpecSizev, %function
_Z20_GetCIwSoundSpecSizev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #40
	bx	lr
	.size	_Z20_GetCIwSoundSpecSizev, .-_Z20_GetCIwSoundSpecSizev
	.section	.text._ZN12CIwSoundSpecC2Ev,"ax",%progbits
	.align	2
	.global	_ZN12CIwSoundSpecC2Ev
	.hidden	_ZN12CIwSoundSpecC2Ev
	.type	_ZN12CIwSoundSpecC2Ev, %function
_ZN12CIwSoundSpecC2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L38
	stmfd	sp!, {r4, lr}
.LPIC9:
	add	r3, pc, r3
	mov	r4, r0
	bl	_ZN10CIwManagedC2Ev(PLT)
	ldr	r1, .L38+4
	mov	r3, #0
.LPIC10:
	add	r1, pc, r1
	mov	r2, #4096
	add	r1, r1, #8
	str	r1, [r4]
	strh	r3, [r4, #12]	@ movhi
	strh	r3, [r4, #14]	@ movhi
	str	r3, [r4, #32]
	strh	r3, [r4, #24]	@ movhi
	strh	r3, [r4, #26]	@ movhi
	str	r3, [r4, #36]
	strh	r3, [r4, #16]	@ movhi
	strh	r2, [r4, #20]	@ movhi
	strh	r2, [r4, #22]	@ movhi
	strh	r2, [r4, #28]	@ movhi
	strh	r2, [r4, #30]	@ movhi
	mov	r0, r4
	ldmfd	sp!, {r4, pc}
.L39:
	.align	2
.L38:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC9+8)
	.word	.LANCHOR0-(.LPIC10+8)
	.size	_ZN12CIwSoundSpecC2Ev, .-_ZN12CIwSoundSpecC2Ev
	.global	_ZN12CIwSoundSpecC1Ev
	.hidden	_ZN12CIwSoundSpecC1Ev
	.set	_ZN12CIwSoundSpecC1Ev,_ZN12CIwSoundSpecC2Ev
	.global	__aeabi_idivmod
	.section	.text._ZN12CIwSoundSpec4PlayEPK14CIwSoundParams,"ax",%progbits
	.align	2
	.global	_ZN12CIwSoundSpec4PlayEPK14CIwSoundParams
	.hidden	_ZN12CIwSoundSpec4PlayEPK14CIwSoundParams
	.type	_ZN12CIwSoundSpec4PlayEPK14CIwSoundParams, %function
_ZN12CIwSoundSpec4PlayEPK14CIwSoundParams:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L87
	ldr	r2, .L87+4
.LPIC11:
	add	r3, pc, r3
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r0
	ldr	r10, [r3, r2]
	sub	sp, sp, #36
	mov	r8, r1
	ldr	r0, [r10]
	bl	_ZN15CIwSoundManager11GetFreeInstEv(PLT)
	subs	r5, r0, #0
	beq	.L78
	ldr	r3, [r4, #32]
	ldr	r0, [r10]
	mov	r1, r5
	ldr	r2, [r3, #32]
	bl	_ZN15CIwSoundManager14GetFreeChannelEP12CIwSoundInst17IwSoundDataFormat(PLT)
	subs	r7, r0, #0
	blt	.L80
	cmp	r8, #0
	ldreq	r3, [r10]
	ldreq	r8, [r3, #36]
	ldr	r3, [r4, #36]
	cmp	r3, #0
	beq	.L44
	ldrh	r1, [r3, #22]
	ldrh	r2, [r3, #24]
	cmp	r1, #0
	bne	.L81
.L46:
	add	r2, r2, #1
	strh	r2, [r3, #24]	@ movhi
.L48:
	mov	r2, #0
	strh	r2, [r5, #14]	@ movhi
	ldrh	r9, [r4, #20]
	ldrsh	r1, [r4, #22]
	sxth	r6, r9
	cmp	r6, r1
	beq	.L49
	subs	r9, r1, r6
	bne	.L82
.L50:
	add	r9, r6, r9
	uxth	r9, r9
.L49:
	ldrsh	fp, [r4, #24]
	ldrsh	r1, [r4, #26]
	cmp	fp, r1
	beq	.L51
	subs	r6, r1, fp
	bne	.L83
.L52:
	add	fp, fp, r6
	sxth	fp, fp
.L51:
	ldrh	r2, [r4, #28]
	ldrsh	r1, [r4, #30]
	sxth	r6, r2
	cmp	r6, r1
	beq	.L53
	subs	r1, r1, r6
	bne	.L84
.L54:
	add	r1, r6, r1
	uxth	r2, r1
	sxth	r6, r2
.L53:
	str	r4, [r5]
	ldrh	r1, [r8]
	smulbb	r9, r9, r1
	mov	r9, r9, asr #12
	uxth	r9, r9
	strh	r9, [r5, #4]	@ movhi
	ldrsh	r1, [r8, #2]
	add	fp, fp, r1
	cmn	fp, #4096
	movlt	fp, #61440
	bge	.L85
.L55:
	strh	fp, [r5, #6]	@ movhi
	ldrh	r0, [r8, #4]
	ldr	r1, [r10]
	mov	r8, #0
	strh	r7, [r5, #12]	@ movhi
	smulbb	r2, r2, r0
	str	r8, [r5, #20]
	mov	r2, r2, asr #12
	strh	r2, [r5, #8]	@ movhi
	ldrh	r2, [r1, #30]
	ldrh	fp, [r1, #24]
	ldrh	r10, [r3, #16]
	ldrh	r1, [r1, #28]
	ldrh	r3, [r3, #20]
	tst	r2, #2
	str	r1, [sp, #20]
	str	r3, [sp, #24]
	ldrh	ip, [r4, #16]
	bne	.L86
.L78:
	mov	r0, r5
.L41:
	add	sp, sp, #36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L85:
	cmp	fp, #4096
	movge	fp, #4096
	uxth	fp, fp
	b	.L55
.L81:
	cmp	r1, r2
	bne	.L46
	ldrh	r6, [r3, #26]
	and	r6, r6, #2
	uxth	r6, r6
	cmp	r6, #0
	beq	.L80
	mov	r0, r3
	mov	r1, #1
	str	r3, [sp, #12]
	bl	_ZN13CIwSoundGroup14KillOldestInstEb(PLT)
	ldr	r3, [sp, #12]
	ldrh	r2, [r3, #24]
	b	.L46
.L86:
	ldr	r2, .L87+8
	and	ip, ip, #1
	mov	r3, r5
	mov	r1, r8
.LPIC12:
	add	r2, pc, r2
	mov	r0, r7
	str	ip, [sp, #28]
	bl	s3eSoundChannelRegister(PLT)
	smulbb	r2, fp, r10
	sxth	r9, r9
	mov	r1, #3
	mov	r2, r2, asr #12
	mov	r0, r7
	mul	r2, r2, r9
	mov	r2, r2, asl #4
	mov	r2, r2, asr #20
	cmp	r2, #256
	movge	r2, #256
	bl	s3eSoundChannelSetInt(PLT)
	ldr	r1, [sp, #20]
	ldr	r3, [sp, #24]
	mov	r0, r7
	smulbb	r2, r1, r3
	ldr	r3, [r5]
	mov	r1, #1
	mov	r2, r2, asr #12
	ldr	r3, [r3, #32]
	mul	r2, r2, r6
	ldr	r3, [r3, #28]
	mov	r2, r2, asr #12
	sxth	r2, r2
	mul	r2, r3, r2
	mov	r2, r2, asr #12
	bl	s3eSoundChannelSetInt(PLT)
	ldr	r6, [r4, #32]
	ldr	r9, [r6, #32]
	cmp	r9, #1
	beq	.L56
	cmp	r9, #2
	beq	.L57
	cmp	r9, r8
	bne	.L78
	mov	r0, r6
	ldr	r8, [r6, #24]
	bl	_ZNK12CIwSoundData13GetBufferSizeEv(PLT)
	mov	r4, r0
	mov	r0, r6
	bl	_ZNK12CIwSoundData13GetBufferSizeEv(PLT)
	ldr	r1, [sp, #28]
	mov	r2, r4, asr #1
	cmp	r1, #0
	str	r9, [sp]
	mov	r1, r8
	mov	r0, r7
	moveq	r3, #1
	mvnne	r3, #0
	bl	s3eSoundChannelPlay(PLT)
	mov	r0, r5
	b	.L41
.L83:
	str	r3, [sp, #12]
	bl	IwRand(PLT)
	mov	r1, r6
	bl	__aeabi_idivmod(PLT)
	ldr	r3, [sp, #12]
	mov	r6, r1
	b	.L52
.L84:
	str	r3, [sp, #12]
	str	r1, [sp, #16]
	bl	IwRand(PLT)
	ldr	r1, [sp, #16]
	bl	__aeabi_idivmod(PLT)
	ldr	r3, [sp, #12]
	b	.L54
.L82:
	str	r3, [sp, #12]
	bl	IwRand(PLT)
	mov	r1, r9
	bl	__aeabi_idivmod(PLT)
	ldr	r3, [sp, #12]
	mov	r9, r1
	b	.L50
.L57:
	mov	r0, r6
	ldr	fp, [r6, #24]
	bl	_ZNK12CIwSoundData13GetBufferSizeEv(PLT)
	mov	r10, r0
	mov	r0, r6
	bl	_ZNK12CIwSoundData13GetBufferSizeEv(PLT)
	mov	r1, r9
	ldr	r2, [r4, #32]
	mov	r0, r7
	bl	s3eSoundChannelSetInt(PLT)
	ldr	r1, [sp, #28]
	mov	r2, r10, asr #1
	cmp	r1, #0
	mov	r1, fp
.L79:
	str	r8, [sp]
	mov	r0, r7
	moveq	r3, #1
	mvnne	r3, #0
	bl	s3eSoundChannelPlay(PLT)
	mov	r0, r5
	add	sp, sp, #36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L44:
	ldr	r3, [r10]
	ldr	r3, [r3, #32]
	b	.L48
.L56:
	mov	r0, r6
	ldr	r9, [r6, #24]
	bl	_ZNK12CIwSoundData13GetBufferSizeEv(PLT)
	mov	r4, r0
	mov	r0, r6
	bl	_ZNK12CIwSoundData13GetBufferSizeEv(PLT)
	ldr	r3, [sp, #28]
	mov	r1, r9
	cmp	r3, #0
	mov	r2, r4, asr #1
	b	.L79
.L80:
	ldr	r0, [r10]
	mov	r1, r5
	bl	_ZN15CIwSoundManager11SetFreeInstEP12CIwSoundInst(PLT)
	mov	r0, #0
	b	.L41
.L88:
	.align	2
.L87:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC11+8)
	.word	g_IwSoundManager(GOT)
	.word	_Z24_IwSoundSpec_EndSampleCBP21s3eSoundEndSampleInfoPv-(.LPIC12+8)
	.size	_ZN12CIwSoundSpec4PlayEPK14CIwSoundParams, .-_ZN12CIwSoundSpec4PlayEPK14CIwSoundParams
	.global	__aeabi_idiv
	.section	.text._ZN12CIwSoundSpec5TraceEv,"ax",%progbits
	.align	2
	.global	_ZN12CIwSoundSpec5TraceEv
	.hidden	_ZN12CIwSoundSpec5TraceEv
	.type	_ZN12CIwSoundSpec5TraceEv, %function
_ZN12CIwSoundSpec5TraceEv:
	@ args = 0, pretend = 0, frame = 152
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #156
	ldr	r2, .L112
	str	r0, [sp, #40]
	ldr	r1, [sp, #40]
.LPIC21:
	add	r2, pc, r2
	mov	r3, r2
	ldr	r4, [r1, #32]
	ldr	r0, [r2]	@ unaligned
	ldrb	r2, [r2, #4]	@ zero_extendqisi2
	ldr	r1, [r4, #32]
	str	r0, [sp, #48]	@ unaligned
	ldr	r0, [r3, #8]!	@ unaligned
	str	r1, [sp, #32]
	add	r1, sp, #48
	str	r1, [sp, #16]
	add	r1, sp, #56
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	str	r1, [sp, #20]
	ldr	r1, [sp, #32]
	strb	r2, [sp, #52]
	cmp	r1, #0
	str	r0, [sp, #56]	@ unaligned
	strb	r3, [sp, #60]
	ldr	r10, [r4, #20]
	beq	.L91
	cmp	r1, #1
	bne	.L108
	ldr	r3, [r4, #24]
	mov	r0, r4
	str	r3, [sp, #4]
	mov	r7, #512
	bl	_ZNK12CIwSoundData13GetBufferSizeEv(PLT)
	mov	r0, r4
	bl	_ZNK12CIwSoundData13GetBufferSizeEv(PLT)
	mov	r3, #0
	str	r3, [sp, #36]
	str	r3, [sp]
.L93:
	ldr	r2, [sp, #40]
	mov	r3, #14
	str	r3, [sp, #12]
	mov	r3, #15
	str	r3, [sp, #8]
	ldr	r2, [r2, #32]
	add	r3, sp, #63
	mov	r4, #60
	add	r9, sp, #143
	str	r3, [sp, #28]
	add	r3, sp, #64
	str	r2, [sp, #24]
	str	r3, [sp, #44]
.L94:
	ldr	r3, [r2, #32]
	ldr	r2, [sp, #8]
	ldr	r1, [sp, #16]
	cmp	r2, #0
	uxth	r6, r4
	ldr	r5, [sp, #20]
	movge	r5, r1
	cmp	r3, #1
	sxth	r6, r6
	beq	.L96
	add	r8, sp, #63
	mov	r3, r6
	mov	fp, #0
	mov	r6, r8
	mov	r8, r3
.L98:
	ldr	r3, .L112+4
	mov	r1, r7
	umull	r3, r2, r3, fp
	ldr	r3, [sp]
	add	fp, fp, r10
	mov	r2, r2, lsr #6
	ldrsb	r0, [r3, r2]
	bl	__aeabi_idiv(PLT)
	rsb	r2, r4, r0
	sxth	r0, r0
	sxth	r2, r2
	cmp	r2, #4
	movge	r2, #4
	cmp	r8, r0
	movlt	r0, r2
	movge	r0, #0
	ldrb	r2, [r5, r0]	@ zero_extendqisi2
	strb	r2, [r6, #1]!
	cmp	r6, r9
	bne	.L98
.L97:
	ldr	r3, [sp, #8]
	mov	r1, #0
	cmp	r3, #0
	strb	r1, [sp, #144]
	beq	.L109
	ldr	r3, [sp, #12]
	cmn	r3, #17
	beq	.L110
.L101:
	ldr	r3, [sp, #8]
	sub	r4, r4, #4
	sub	r3, r3, #1
	str	r3, [sp, #8]
	ldr	r3, [sp, #12]
	uxth	r4, r4
	sub	r3, r3, #1
	str	r3, [sp, #12]
	ldr	r2, [sp, #24]
	b	.L94
.L108:
	mov	r0, #0
	mov	r1, #1
	bl	_ZN22CIwDefaultMallocRouter8BaseFreeEPvj(PLT)
	mov	r0, #0
	mov	r1, #2
	add	sp, sp, #156
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	_ZN22CIwDefaultMallocRouter8BaseFreeEPvj(PLT)
.L96:
	add	r2, sp, #63
	mov	fp, #0
	mov	r8, r2
.L99:
	ldr	r1, .L112+4
	ldr	r2, [sp, #4]
	umull	r1, r3, r1, fp
	mov	r1, r7
	mov	r3, r3, lsr #6
	add	fp, fp, r10
	mov	r3, r3, asl #1
	ldrsh	r0, [r2, r3]
	bl	__aeabi_idiv(PLT)
	rsb	r3, r4, r0
	sxth	r0, r0
	sxth	r3, r3
	cmp	r3, #4
	movge	r3, #4
	cmp	r6, r0
	movlt	r0, r3
	movge	r0, #0
	ldrb	r3, [r5, r0]	@ zero_extendqisi2
	strb	r3, [r8, #1]!
	cmp	r8, r9
	bne	.L99
	b	.L97
.L110:
	ldr	r3, [sp, #36]
	cmp	r3, #0
	bne	.L102
	ldr	r0, [sp]
	mov	r1, #1
	bl	_ZN22CIwDefaultMallocRouter8BaseFreeEPvj(PLT)
.L102:
	ldr	r3, [sp, #32]
	cmp	r3, #0
	beq	.L111
	add	sp, sp, #156
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L91:
	ldr	r3, [r4, #24]
	mov	r0, r4
	str	r3, [sp]
	bl	_ZNK12CIwSoundData13GetBufferSizeEv(PLT)
	mov	r0, r4
	bl	_ZNK12CIwSoundData13GetBufferSizeEv(PLT)
	mov	r3, #1
	str	r3, [sp, #36]
	ldr	r3, [sp, #32]
	mov	r7, #2
	str	r3, [sp, #4]
	b	.L93
.L111:
	ldr	r0, [sp, #4]
	mov	r1, #2
	add	sp, sp, #156
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	_ZN22CIwDefaultMallocRouter8BaseFreeEPvj(PLT)
.L109:
	mov	r2, #80
	add	r0, sp, #64
	mov	r1, #45
	bl	memset(PLT)
	ldr	r3, [sp, #40]
	mov	r2, #48
	strb	r2, [sp, #64]
	ldr	r3, [r3, #32]
	str	r3, [sp, #24]
	b	.L101
.L113:
	.align	2
.L112:
	.word	.LANCHOR1-(.LPIC21+8)
	.word	-858993459
	.size	_ZN12CIwSoundSpec5TraceEv, .-_ZN12CIwSoundSpec5TraceEv
	.hidden	_ZTS12CIwSoundSpec
	.global	_ZTS12CIwSoundSpec
	.hidden	_ZTI12CIwSoundSpec
	.global	_ZTI12CIwSoundSpec
	.hidden	_ZTV12CIwSoundSpec
	.global	_ZTV12CIwSoundSpec
	.section	.rodata
	.align	2
	.set	.LANCHOR1,. + 0
.LC0:
	.byte	32
	.byte	46
	.byte	58
	.byte	39
	.byte	124
	.space	3
.LC1:
	.byte	124
	.byte	33
	.byte	58
	.byte	39
	.byte	32
	.space	3
	.type	_ZTS12CIwSoundSpec, %object
	.size	_ZTS12CIwSoundSpec, 15
_ZTS12CIwSoundSpec:
	.ascii	"12CIwSoundSpec\000"
	.section	.data.rel.ro,"aw",%progbits
	.align	3
	.set	.LANCHOR0,. + 0
	.type	_ZTV12CIwSoundSpec, %object
	.size	_ZTV12CIwSoundSpec, 72
_ZTV12CIwSoundSpec:
	.word	0
	.word	_ZTI12CIwSoundSpec
	.word	_ZN12CIwSoundSpecD1Ev
	.word	_ZN12CIwSoundSpecD0Ev
	.word	_ZN10CIwManaged9ParseOpenEP16CIwTextParserITX
	.word	_ZN12CIwSoundSpec10ParseCloseEP16CIwTextParserITX
	.word	_ZN12CIwSoundSpec14ParseAttributeEP16CIwTextParserITXPKc
	.word	_ZN12CIwSoundSpec9SerialiseEv
	.word	_ZN12CIwSoundSpec7ResolveEv
	.word	_ZN10CIwManaged15ParseCloseChildEP16CIwTextParserITXPS_
	.word	_ZN10CIwManaged11HandleEventEP8CIwEvent
	.word	_ZN10CIwManaged7SetNameEPKc
	.word	_ZNK12CIwSoundSpec12GetClassNameEv
	.word	_ZN10CIwManaged11DebugRenderEv
	.word	_ZN18CIwManagedRefCount17DebugAddMenuItemsEP7CIwMenu
	.word	_ZN18CIwManagedRefCount8_ReplaceEP10CIwManaged
	.word	_ZN11CIwResource10ApplyScaleEi
	.word	_ZN11CIwResource10ApplyScaleEf
	.type	_ZTI12CIwSoundSpec, %object
	.size	_ZTI12CIwSoundSpec, 12
_ZTI12CIwSoundSpec:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTS12CIwSoundSpec
	.word	_ZTI11CIwResource
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC2:
	.ascii	"CIwSoundSpec\000"
	.space	3
.LC3:
	.ascii	"CIwSoundData\000"
	.space	3
.LC4:
	.ascii	"CIwSoundGroup\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-branch revision 208322]"
