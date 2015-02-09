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
	.file	"IwResHandlerWAV.cpp"
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
	.section	.text._ZNK16CIwResHandlerWAV12GetClassNameEv,"ax",%progbits
	.align	2
	.global	_ZNK16CIwResHandlerWAV12GetClassNameEv
	.hidden	_ZNK16CIwResHandlerWAV12GetClassNameEv
	.type	_ZNK16CIwResHandlerWAV12GetClassNameEv, %function
_ZNK16CIwResHandlerWAV12GetClassNameEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, .L5
.LPIC0:
	add	r0, pc, r0
	bx	lr
.L6:
	.align	2
.L5:
	.word	.LC0-(.LPIC0+8)
	.size	_ZNK16CIwResHandlerWAV12GetClassNameEv, .-_ZNK16CIwResHandlerWAV12GetClassNameEv
	.section	.text._ZN16CIwResHandlerWAV5BuildERK9CIwStringILi160EE,"ax",%progbits
	.align	2
	.global	_ZN16CIwResHandlerWAV5BuildERK9CIwStringILi160EE
	.hidden	_ZN16CIwResHandlerWAV5BuildERK9CIwStringILi160EE
	.type	_ZN16CIwResHandlerWAV5BuildERK9CIwStringILi160EE, %function
_ZN16CIwResHandlerWAV5BuildERK9CIwStringILi160EE:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #0
	bx	lr
	.size	_ZN16CIwResHandlerWAV5BuildERK9CIwStringILi160EE, .-_ZN16CIwResHandlerWAV5BuildERK9CIwStringILi160EE
	.section	.text._ZN16CIwResHandlerWAVD2Ev,"axG",%progbits,_ZN16CIwResHandlerWAVD5Ev,comdat
	.align	2
	.weak	_ZN16CIwResHandlerWAVD2Ev
	.hidden	_ZN16CIwResHandlerWAVD2Ev
	.type	_ZN16CIwResHandlerWAVD2Ev, %function
_ZN16CIwResHandlerWAVD2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L9
	stmfd	sp!, {r4, lr}
.LPIC1:
	add	r3, pc, r3
	add	r3, r3, #8
	mov	r4, r0
	str	r3, [r0]
	bl	_ZN13CIwResHandlerD2Ev(PLT)
	mov	r0, r4
	ldmfd	sp!, {r4, pc}
.L10:
	.align	2
.L9:
	.word	.LANCHOR0-(.LPIC1+8)
	.size	_ZN16CIwResHandlerWAVD2Ev, .-_ZN16CIwResHandlerWAVD2Ev
	.weak	_ZN16CIwResHandlerWAVD1Ev
	.hidden	_ZN16CIwResHandlerWAVD1Ev
	.set	_ZN16CIwResHandlerWAVD1Ev,_ZN16CIwResHandlerWAVD2Ev
	.section	.text._ZN16CIwResHandlerWAVD0Ev,"axG",%progbits,_ZN16CIwResHandlerWAVD0Ev,comdat
	.align	2
	.weak	_ZN16CIwResHandlerWAVD0Ev
	.hidden	_ZN16CIwResHandlerWAVD0Ev
	.type	_ZN16CIwResHandlerWAVD0Ev, %function
_ZN16CIwResHandlerWAVD0Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L12
	stmfd	sp!, {r4, lr}
.LPIC2:
	add	r3, pc, r3
	add	r3, r3, #8
	mov	r4, r0
	str	r3, [r0]
	bl	_ZN13CIwResHandlerD2Ev(PLT)
	mov	r0, r4
	bl	_ZdlPv(PLT)
	mov	r0, r4
	ldmfd	sp!, {r4, pc}
.L13:
	.align	2
.L12:
	.word	.LANCHOR0-(.LPIC2+8)
	.size	_ZN16CIwResHandlerWAVD0Ev, .-_ZN16CIwResHandlerWAVD0Ev
	.section	.text._ZN16CIwResHandlerWAVC2Ev,"ax",%progbits
	.align	2
	.global	_ZN16CIwResHandlerWAVC2Ev
	.hidden	_ZN16CIwResHandlerWAVC2Ev
	.type	_ZN16CIwResHandlerWAVC2Ev, %function
_ZN16CIwResHandlerWAVC2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L15
	ldr	r2, .L15+4
	stmfd	sp!, {r4, lr}
.LPIC3:
	add	r1, pc, r1
.LPIC4:
	add	r2, pc, r2
	mov	r4, r0
	bl	_ZN13CIwResHandlerC2EPKcS1_(PLT)
	ldr	r2, .L15+8
	ldr	r1, .L15+12
.LPIC5:
	add	r2, pc, r2
	mov	r3, #0
	add	r2, r2, #8
	mov	r0, r4
	str	r2, [r4]
	strb	r3, [r4, #52]
.LPIC6:
	add	r1, pc, r1
	bl	_ZN10CIwManaged7SetNameEPKc(PLT)
	mov	r0, r4
	ldmfd	sp!, {r4, pc}
.L16:
	.align	2
.L15:
	.word	.LC1-(.LPIC3+8)
	.word	.LC2-(.LPIC4+8)
	.word	.LANCHOR0-(.LPIC5+8)
	.word	.LC3-(.LPIC6+8)
	.size	_ZN16CIwResHandlerWAVC2Ev, .-_ZN16CIwResHandlerWAVC2Ev
	.global	_ZN16CIwResHandlerWAVC1Ev
	.hidden	_ZN16CIwResHandlerWAVC1Ev
	.set	_ZN16CIwResHandlerWAVC1Ev,_ZN16CIwResHandlerWAVC2Ev
	.section	.text._ZN16CIwResHandlerWAV15ReadChunkHeaderER17IwRIFFChunkHeaderR7s3eFile,"ax",%progbits
	.align	2
	.global	_ZN16CIwResHandlerWAV15ReadChunkHeaderER17IwRIFFChunkHeaderR7s3eFile
	.hidden	_ZN16CIwResHandlerWAV15ReadChunkHeaderER17IwRIFFChunkHeaderR7s3eFile
	.type	_ZN16CIwResHandlerWAV15ReadChunkHeaderER17IwRIFFChunkHeaderR7s3eFile, %function
_ZN16CIwResHandlerWAV15ReadChunkHeaderER17IwRIFFChunkHeaderR7s3eFile:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}
	mov	r0, r1
	mov	r3, r2
	mov	r1, #8
	mov	r2, #1
	bl	s3eFileRead(PLT)
	subs	r3, r0, #1
	rsbs	r0, r3, #0
	adcs	r0, r0, r3
	ldmfd	sp!, {r3, pc}
	.size	_ZN16CIwResHandlerWAV15ReadChunkHeaderER17IwRIFFChunkHeaderR7s3eFile, .-_ZN16CIwResHandlerWAV15ReadChunkHeaderER17IwRIFFChunkHeaderR7s3eFile
	.section	.text._ZN16CIwResHandlerWAV15ReadChunkFormatERK17IwRIFFChunkHeaderRP12CIwSoundDataR7s3eFile,"ax",%progbits
	.align	2
	.global	_ZN16CIwResHandlerWAV15ReadChunkFormatERK17IwRIFFChunkHeaderRP12CIwSoundDataR7s3eFile
	.hidden	_ZN16CIwResHandlerWAV15ReadChunkFormatERK17IwRIFFChunkHeaderRP12CIwSoundDataR7s3eFile
	.type	_ZN16CIwResHandlerWAV15ReadChunkFormatERK17IwRIFFChunkHeaderRP12CIwSoundDataR7s3eFile, %function
_ZN16CIwResHandlerWAV15ReadChunkFormatERK17IwRIFFChunkHeaderRP12CIwSoundDataR7s3eFile:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r4, r2
	ldr	r1, [r1, #4]
	sub	sp, sp, #32
	cmp	r1, #16
	bcs	.L33
.L19:
	mov	r0, #0
.L30:
	add	sp, sp, #32
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, pc}
.L33:
	add	r0, sp, #8
	mov	r1, #20
	mov	r2, #1
	bl	s3eFileRead(PLT)
	cmp	r0, #1
	mov	r5, r0
	bne	.L19
	ldrh	r6, [sp, #8]
	cmp	r6, #1
	beq	.L21
	cmp	r6, #17
	bne	.L19
	mov	r0, #44
	bl	_Znwj(PLT)
	ldrh	r1, [sp, #20]
	ldrh	r3, [sp, #26]
	ldr	r2, [sp, #12]
	str	r1, [sp]
	mov	r1, #2
	mov	r6, r0
	bl	_ZN17CIwSoundDataADPCMC1E17IwSoundDataFormatjjj(PLT)
	mov	r0, r5
	str	r6, [r4]
	add	sp, sp, #32
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, pc}
.L21:
	ldrh	r3, [sp, #22]
	cmp	r3, #8
	beq	.L23
	cmp	r3, #16
	bne	.L19
	mov	r0, #36
	bl	_Znwj(PLT)
	mov	r1, r6
	ldr	r2, [sp, #12]
	mov	r5, r0
	bl	_ZN12CIwSoundDataC1E17IwSoundDataFormatj(PLT)
	str	r5, [r4]
	mov	r0, r6
	b	.L30
.L23:
	mov	r0, #36
	bl	_Znwj(PLT)
	mov	r1, #0
	ldr	r2, [sp, #12]
	mov	r5, r0
	bl	_ZN12CIwSoundDataC1E17IwSoundDataFormatj(PLT)
	str	r5, [r4]
	mov	r0, r6
	b	.L30
	.size	_ZN16CIwResHandlerWAV15ReadChunkFormatERK17IwRIFFChunkHeaderRP12CIwSoundDataR7s3eFile, .-_ZN16CIwResHandlerWAV15ReadChunkFormatERK17IwRIFFChunkHeaderRP12CIwSoundDataR7s3eFile
	.section	.text._ZN16CIwResHandlerWAV13ReadChunkDataERK17IwRIFFChunkHeaderRP12CIwSoundDataR7s3eFile,"ax",%progbits
	.align	2
	.global	_ZN16CIwResHandlerWAV13ReadChunkDataERK17IwRIFFChunkHeaderRP12CIwSoundDataR7s3eFile
	.hidden	_ZN16CIwResHandlerWAV13ReadChunkDataERK17IwRIFFChunkHeaderRP12CIwSoundDataR7s3eFile
	.type	_ZN16CIwResHandlerWAV13ReadChunkDataERK17IwRIFFChunkHeaderRP12CIwSoundDataR7s3eFile, %function
_ZN16CIwResHandlerWAV13ReadChunkDataERK17IwRIFFChunkHeaderRP12CIwSoundDataR7s3eFile:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r5, r2
	ldr	r0, [r2]
	mov	r4, r1
	cmp	r0, #0
	mov	r6, r3
	beq	.L37
	ldr	r1, [r1, #4]
	bl	_ZN12CIwSoundData13SetBufferSizeEj(PLT)
	ldr	r2, [r5]
	mov	r3, r6
	mov	r1, #1
	ldr	r0, [r2, #24]
	ldr	r2, [r4, #4]
	bl	s3eFileRead(PLT)
	ldr	r3, [r4, #4]
	cmp	r0, r3
	beq	.L39
.L37:
	mov	r0, #0
	ldmfd	sp!, {r4, r5, r6, pc}
.L39:
	ldr	r0, [r5]
	ldr	r3, [r0, #32]
	cmp	r3, #0
	beq	.L40
	mov	r0, #1
	ldmfd	sp!, {r4, r5, r6, pc}
.L40:
	bl	_ZN12CIwSoundData14SwitchDataSignEv(PLT)
	mov	r0, #1
	ldmfd	sp!, {r4, r5, r6, pc}
	.size	_ZN16CIwResHandlerWAV13ReadChunkDataERK17IwRIFFChunkHeaderRP12CIwSoundDataR7s3eFile, .-_ZN16CIwResHandlerWAV13ReadChunkDataERK17IwRIFFChunkHeaderRP12CIwSoundDataR7s3eFile
	.section	.text._ZN16CIwResHandlerWAV13ReadChunkFactERK17IwRIFFChunkHeaderRP12CIwSoundDataR7s3eFile,"ax",%progbits
	.align	2
	.global	_ZN16CIwResHandlerWAV13ReadChunkFactERK17IwRIFFChunkHeaderRP12CIwSoundDataR7s3eFile
	.hidden	_ZN16CIwResHandlerWAV13ReadChunkFactERK17IwRIFFChunkHeaderRP12CIwSoundDataR7s3eFile
	.type	_ZN16CIwResHandlerWAV13ReadChunkFactERK17IwRIFFChunkHeaderRP12CIwSoundDataR7s3eFile, %function
_ZN16CIwResHandlerWAV13ReadChunkFactERK17IwRIFFChunkHeaderRP12CIwSoundDataR7s3eFile:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	sub	sp, sp, #8
	mov	r4, r2
	add	r0, sp, #4
	mov	r2, #1
	mov	r1, #4
	bl	s3eFileRead(PLT)
	cmp	r0, #1
	movne	r0, #0
	ldreq	r3, [r4]
	ldreq	r2, [sp, #4]
	streq	r2, [r3, #20]
	add	sp, sp, #8
	@ sp needed
	ldmfd	sp!, {r4, pc}
	.size	_ZN16CIwResHandlerWAV13ReadChunkFactERK17IwRIFFChunkHeaderRP12CIwSoundDataR7s3eFile, .-_ZN16CIwResHandlerWAV13ReadChunkFactERK17IwRIFFChunkHeaderRP12CIwSoundDataR7s3eFile
	.hidden	_ZTS16CIwResHandlerWAV
	.global	_ZTS16CIwResHandlerWAV
	.hidden	_ZTI16CIwResHandlerWAV
	.global	_ZTI16CIwResHandlerWAV
	.hidden	_ZTV16CIwResHandlerWAV
	.global	_ZTV16CIwResHandlerWAV
	.section	.rodata
	.align	2
	.type	_ZTS16CIwResHandlerWAV, %object
	.size	_ZTS16CIwResHandlerWAV, 19
_ZTS16CIwResHandlerWAV:
	.ascii	"16CIwResHandlerWAV\000"
	.section	.data.rel.ro,"aw",%progbits
	.align	3
	.set	.LANCHOR0,. + 0
	.type	_ZTV16CIwResHandlerWAV, %object
	.size	_ZTV16CIwResHandlerWAV, 68
_ZTV16CIwResHandlerWAV:
	.word	0
	.word	_ZTI16CIwResHandlerWAV
	.word	_ZN16CIwResHandlerWAVD1Ev
	.word	_ZN16CIwResHandlerWAVD0Ev
	.word	_ZN10CIwManaged9ParseOpenEP16CIwTextParserITX
	.word	_ZN10CIwManaged10ParseCloseEP16CIwTextParserITX
	.word	_ZN10CIwManaged14ParseAttributeEP16CIwTextParserITXPKc
	.word	_ZN10CIwManaged9SerialiseEv
	.word	_ZN10CIwManaged7ResolveEv
	.word	_ZN10CIwManaged15ParseCloseChildEP16CIwTextParserITXPS_
	.word	_ZN10CIwManaged11HandleEventEP8CIwEvent
	.word	_ZN10CIwManaged7SetNameEPKc
	.word	_ZNK16CIwResHandlerWAV12GetClassNameEv
	.word	_ZN10CIwManaged11DebugRenderEv
	.word	_ZN10CIwManaged17DebugAddMenuItemsEP7CIwMenu
	.word	_ZN10CIwManaged8_ReplaceEPS_
	.word	_ZN16CIwResHandlerWAV5BuildERK9CIwStringILi160EE
	.type	_ZTI16CIwResHandlerWAV, %object
	.size	_ZTI16CIwResHandlerWAV, 12
_ZTI16CIwResHandlerWAV:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTS16CIwResHandlerWAV
	.word	_ZTI13CIwResHandler
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"CIwResHandlerWAV\000"
	.space	3
.LC1:
	.ascii	"wav\000"
.LC2:
	.ascii	"CIwSoundData\000"
	.space	3
.LC3:
	.ascii	"WAV\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-branch revision 208322]"
