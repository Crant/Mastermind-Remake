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
	.file	"IwSoundWAV.cpp"
	.section	.text._ZN11CIwSoundWAVC2Ev,"ax",%progbits
	.align	2
	.global	_ZN11CIwSoundWAVC2Ev
	.hidden	_ZN11CIwSoundWAVC2Ev
	.type	_ZN11CIwSoundWAVC2Ev, %function
_ZN11CIwSoundWAVC2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	_ZN11CIwSoundWAVC2Ev, .-_ZN11CIwSoundWAVC2Ev
	.global	_ZN11CIwSoundWAVC1Ev
	.hidden	_ZN11CIwSoundWAVC1Ev
	.set	_ZN11CIwSoundWAVC1Ev,_ZN11CIwSoundWAVC2Ev
	.section	.text._ZN11CIwSoundWAV15ReadChunkHeaderER17IwRIFFChunkHeaderR7s3eFile,"ax",%progbits
	.align	2
	.global	_ZN11CIwSoundWAV15ReadChunkHeaderER17IwRIFFChunkHeaderR7s3eFile
	.hidden	_ZN11CIwSoundWAV15ReadChunkHeaderER17IwRIFFChunkHeaderR7s3eFile
	.type	_ZN11CIwSoundWAV15ReadChunkHeaderER17IwRIFFChunkHeaderR7s3eFile, %function
_ZN11CIwSoundWAV15ReadChunkHeaderER17IwRIFFChunkHeaderR7s3eFile:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}
	mov	r2, #1
	mov	r3, r1
	mov	r1, #8
	bl	s3eFileRead(PLT)
	subs	r3, r0, #1
	rsbs	r0, r3, #0
	adcs	r0, r0, r3
	ldmfd	sp!, {r3, pc}
	.size	_ZN11CIwSoundWAV15ReadChunkHeaderER17IwRIFFChunkHeaderR7s3eFile, .-_ZN11CIwSoundWAV15ReadChunkHeaderER17IwRIFFChunkHeaderR7s3eFile
	.section	.text._ZN11CIwSoundWAV15ReadChunkFormatERK9CIwStringILi160EERK17IwRIFFChunkHeaderRP12CIwSoundDataR7s3eFile,"ax",%progbits
	.align	2
	.global	_ZN11CIwSoundWAV15ReadChunkFormatERK9CIwStringILi160EERK17IwRIFFChunkHeaderRP12CIwSoundDataR7s3eFile
	.hidden	_ZN11CIwSoundWAV15ReadChunkFormatERK9CIwStringILi160EERK17IwRIFFChunkHeaderRP12CIwSoundDataR7s3eFile
	.type	_ZN11CIwSoundWAV15ReadChunkFormatERK9CIwStringILi160EERK17IwRIFFChunkHeaderRP12CIwSoundDataR7s3eFile, %function
_ZN11CIwSoundWAV15ReadChunkFormatERK9CIwStringILi160EERK17IwRIFFChunkHeaderRP12CIwSoundDataR7s3eFile:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r4, r2
	ldr	r1, [r1, #4]
	sub	sp, sp, #32
	cmp	r1, #16
	bcs	.L19
.L5:
	mov	r0, #0
.L16:
	add	sp, sp, #32
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, pc}
.L19:
	add	r0, sp, #8
	mov	r1, #20
	mov	r2, #1
	bl	s3eFileRead(PLT)
	cmp	r0, #1
	mov	r5, r0
	bne	.L5
	ldrh	r6, [sp, #8]
	cmp	r6, #1
	beq	.L7
	cmp	r6, #17
	bne	.L5
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
.L7:
	ldrh	r3, [sp, #22]
	cmp	r3, #8
	beq	.L9
	cmp	r3, #16
	bne	.L5
	mov	r0, #36
	bl	_Znwj(PLT)
	mov	r1, r6
	ldr	r2, [sp, #12]
	mov	r5, r0
	bl	_ZN12CIwSoundDataC1E17IwSoundDataFormatj(PLT)
	str	r5, [r4]
	mov	r0, r6
	b	.L16
.L9:
	mov	r0, #36
	bl	_Znwj(PLT)
	mov	r1, #0
	ldr	r2, [sp, #12]
	mov	r5, r0
	bl	_ZN12CIwSoundDataC1E17IwSoundDataFormatj(PLT)
	str	r5, [r4]
	mov	r0, r6
	b	.L16
	.size	_ZN11CIwSoundWAV15ReadChunkFormatERK9CIwStringILi160EERK17IwRIFFChunkHeaderRP12CIwSoundDataR7s3eFile, .-_ZN11CIwSoundWAV15ReadChunkFormatERK9CIwStringILi160EERK17IwRIFFChunkHeaderRP12CIwSoundDataR7s3eFile
	.section	.text._ZN11CIwSoundWAV6CreateERK9CIwStringILi160EEPvj,"ax",%progbits
	.align	2
	.global	_ZN11CIwSoundWAV6CreateERK9CIwStringILi160EEPvj
	.hidden	_ZN11CIwSoundWAV6CreateERK9CIwStringILi160EEPvj
	.type	_ZN11CIwSoundWAV6CreateERK9CIwStringILi160EEPvj, %function
_ZN11CIwSoundWAV6CreateERK9CIwStringILi160EEPvj:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r3, #0
	sub	sp, sp, #44
	cmp	r1, #0
	stmib	sp, {r0, r3}
	beq	.L21
	mov	r0, r1
	mov	r1, r2
	bl	s3eFileOpenFromMemory(PLT)
	mov	r4, r0
.L22:
	cmp	r4, #0
	beq	.L38
	add	r5, sp, #28
	mov	r0, r5
	mov	r1, #12
	mov	r2, #1
	mov	r3, r4
	bl	s3eFileRead(PLT)
	cmp	r0, #1
	beq	.L45
.L30:
	mov	r0, r4
	bl	s3eFileClose(PLT)
	mov	r0, #0
.L43:
	add	sp, sp, #44
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L45:
	ldr	r1, .L47
	mov	r0, r5
.LPIC1:
	add	r1, pc, r1
	mov	r2, #4
	bl	strncmp(PLT)
	cmp	r0, #0
	bne	.L30
	ldr	r1, .L47+4
	add	r0, sp, #36
.LPIC2:
	add	r1, pc, r1
	mov	r2, #4
	bl	strncmp(PLT)
	cmp	r0, #0
	bne	.L30
	mov	r0, r4
	bl	s3eFileGetSize(PLT)
	ldr	r3, .L47+8
	ldr	r8, .L47+12
	ldr	r10, .L47+16
.LPIC5:
	add	r3, pc, r3
	add	r5, sp, #20
.LPIC3:
	add	r8, pc, r8
.LPIC4:
	add	r10, pc, r10
	str	r3, [sp]
	mov	r9, r0
	b	.L37
.L26:
	mov	r0, r5
	mov	r1, r10
	mov	r2, #4
	bl	strncmp(PLT)
	cmp	r0, #0
	beq	.L46
	mov	r0, r5
	ldr	r1, [sp]
	mov	r2, #4
	bl	strncmp(PLT)
	subs	fp, r0, #0
	bne	.L32
	mov	r2, r6
	add	r0, sp, #12
	mov	r1, #4
	mov	r3, r4
	bl	s3eFileRead(PLT)
	cmp	r0, #1
	bne	.L33
	ldr	r3, [sp, #8]
	ldr	r0, [sp, #24]
	ldr	r2, [sp, #12]
	str	r2, [r3, #20]
.L28:
	add	r1, r0, r7
	cmp	r9, r1
	bls	.L36
.L34:
	mov	r0, r4
	mov	r2, #0
	bl	s3eFileSeek(PLT)
.L37:
	mov	r0, r5
	mov	r1, #8
	mov	r2, #1
	mov	r3, r4
	bl	s3eFileRead(PLT)
	cmp	r0, #1
	mov	r6, r0
	bne	.L36
	mov	r0, r4
	bl	s3eFileTell(PLT)
	mov	r1, r8
	mov	r2, #4
	mov	r7, r0
	mov	r0, r5
	bl	strncmp(PLT)
	cmp	r0, #0
	bne	.L26
	ldr	r0, [sp, #4]
	mov	r1, r5
	add	r2, sp, #8
	mov	r3, r4
	bl	_ZN11CIwSoundWAV15ReadChunkFormatERK9CIwStringILi160EERK17IwRIFFChunkHeaderRP12CIwSoundDataR7s3eFile(PLT)
	subs	fp, r0, #0
	beq	.L33
.L44:
	ldr	r0, [sp, #24]
	add	r1, r0, r7
	cmp	r9, r1
	bhi	.L34
.L36:
	mov	r0, r4
	bl	s3eFileClose(PLT)
	ldr	r0, [sp, #8]
	add	sp, sp, #44
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L32:
	add	r0, sp, #12
	mov	r1, r5
	mov	r2, #4
	bl	strncpy(PLT)
	b	.L44
.L46:
	ldr	r0, [sp, #8]
	cmp	r0, #0
	beq	.L30
	ldr	r1, [sp, #24]
	bl	_ZN12CIwSoundData13SetBufferSizeEj(PLT)
	ldr	r3, [sp, #8]
	mov	r1, r6
	ldr	r2, [sp, #24]
	ldr	r0, [r3, #24]
	mov	r3, r4
	bl	s3eFileRead(PLT)
	ldr	r3, [sp, #24]
	cmp	r0, r3
	bne	.L30
	ldr	r3, [sp, #8]
	ldr	r2, [r3, #32]
	cmp	r2, #0
	bne	.L28
	mov	r0, r3
	bl	_ZN12CIwSoundData14SwitchDataSignEv(PLT)
	ldr	r0, [sp, #24]
	b	.L28
.L33:
	mov	r0, r4
	bl	s3eFileClose(PLT)
	mov	r0, fp
	add	sp, sp, #44
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L21:
	ldr	r1, .L47+20
.LPIC0:
	add	r1, pc, r1
	bl	_Z18IwFileOpenPrefixedPKcS0_(PLT)
	mov	r4, r0
	b	.L22
.L38:
	mov	r0, r4
	b	.L43
.L48:
	.align	2
.L47:
	.word	.LC1-(.LPIC1+8)
	.word	.LC2-(.LPIC2+8)
	.word	.LC5-(.LPIC5+8)
	.word	.LC3-(.LPIC3+8)
	.word	.LC4-(.LPIC4+8)
	.word	.LC0-(.LPIC0+8)
	.size	_ZN11CIwSoundWAV6CreateERK9CIwStringILi160EEPvj, .-_ZN11CIwSoundWAV6CreateERK9CIwStringILi160EEPvj
	.section	.text._ZN11CIwSoundWAV13ReadChunkDataERK9CIwStringILi160EERK17IwRIFFChunkHeaderRP12CIwSoundDataR7s3eFile,"ax",%progbits
	.align	2
	.global	_ZN11CIwSoundWAV13ReadChunkDataERK9CIwStringILi160EERK17IwRIFFChunkHeaderRP12CIwSoundDataR7s3eFile
	.hidden	_ZN11CIwSoundWAV13ReadChunkDataERK9CIwStringILi160EERK17IwRIFFChunkHeaderRP12CIwSoundDataR7s3eFile
	.type	_ZN11CIwSoundWAV13ReadChunkDataERK9CIwStringILi160EERK17IwRIFFChunkHeaderRP12CIwSoundDataR7s3eFile, %function
_ZN11CIwSoundWAV13ReadChunkDataERK9CIwStringILi160EERK17IwRIFFChunkHeaderRP12CIwSoundDataR7s3eFile:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r5, r2
	ldr	r0, [r2]
	mov	r4, r1
	cmp	r0, #0
	mov	r6, r3
	beq	.L52
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
	beq	.L54
.L52:
	mov	r0, #0
	ldmfd	sp!, {r4, r5, r6, pc}
.L54:
	ldr	r0, [r5]
	ldr	r3, [r0, #32]
	cmp	r3, #0
	beq	.L55
	mov	r0, #1
	ldmfd	sp!, {r4, r5, r6, pc}
.L55:
	bl	_ZN12CIwSoundData14SwitchDataSignEv(PLT)
	mov	r0, #1
	ldmfd	sp!, {r4, r5, r6, pc}
	.size	_ZN11CIwSoundWAV13ReadChunkDataERK9CIwStringILi160EERK17IwRIFFChunkHeaderRP12CIwSoundDataR7s3eFile, .-_ZN11CIwSoundWAV13ReadChunkDataERK9CIwStringILi160EERK17IwRIFFChunkHeaderRP12CIwSoundDataR7s3eFile
	.section	.text._ZN11CIwSoundWAV13ReadChunkFactERK9CIwStringILi160EERK17IwRIFFChunkHeaderRP12CIwSoundDataR7s3eFile,"ax",%progbits
	.align	2
	.global	_ZN11CIwSoundWAV13ReadChunkFactERK9CIwStringILi160EERK17IwRIFFChunkHeaderRP12CIwSoundDataR7s3eFile
	.hidden	_ZN11CIwSoundWAV13ReadChunkFactERK9CIwStringILi160EERK17IwRIFFChunkHeaderRP12CIwSoundDataR7s3eFile
	.type	_ZN11CIwSoundWAV13ReadChunkFactERK9CIwStringILi160EERK17IwRIFFChunkHeaderRP12CIwSoundDataR7s3eFile, %function
_ZN11CIwSoundWAV13ReadChunkFactERK9CIwStringILi160EERK17IwRIFFChunkHeaderRP12CIwSoundDataR7s3eFile:
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
	.size	_ZN11CIwSoundWAV13ReadChunkFactERK9CIwStringILi160EERK17IwRIFFChunkHeaderRP12CIwSoundDataR7s3eFile, .-_ZN11CIwSoundWAV13ReadChunkFactERK9CIwStringILi160EERK17IwRIFFChunkHeaderRP12CIwSoundDataR7s3eFile
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"rb\000"
	.space	1
.LC1:
	.ascii	"RIFF\000"
	.space	3
.LC2:
	.ascii	"WAVE\000"
	.space	3
.LC3:
	.ascii	"fmt \000"
	.space	3
.LC4:
	.ascii	"data\000"
	.space	3
.LC5:
	.ascii	"fact\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-branch revision 208322]"
