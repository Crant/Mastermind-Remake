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
	.file	"IwSoundInst.cpp"
	.section	.text._ZN12CIwSoundInstC2Ev,"ax",%progbits
	.align	2
	.global	_ZN12CIwSoundInstC2Ev
	.hidden	_ZN12CIwSoundInstC2Ev
	.type	_ZN12CIwSoundInstC2Ev, %function
_ZN12CIwSoundInstC2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #0
	mov	r1, #4096
	mov	ip, #4
	strh	ip, [r0, #10]	@ movhi
	str	r2, [r0]
	strh	r2, [r0, #6]	@ movhi
	str	r2, [r0, #20]
	strh	r2, [r0, #16]	@ movhi
	strh	r1, [r0, #4]	@ movhi
	strh	r1, [r0, #8]	@ movhi
	bx	lr
	.size	_ZN12CIwSoundInstC2Ev, .-_ZN12CIwSoundInstC2Ev
	.global	_ZN12CIwSoundInstC1Ev
	.hidden	_ZN12CIwSoundInstC1Ev
	.set	_ZN12CIwSoundInstC1Ev,_ZN12CIwSoundInstC2Ev
	.section	.text._ZN12CIwSoundInst4StopEv,"ax",%progbits
	.align	2
	.global	_ZN12CIwSoundInst4StopEv
	.hidden	_ZN12CIwSoundInst4StopEv
	.type	_ZN12CIwSoundInst4StopEv, %function
_ZN12CIwSoundInst4StopEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L8
	ldr	r2, .L8+4
.LPIC0:
	add	r3, pc, r3
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	ldr	r3, [r3, r2]
	ldr	r3, [r3]
	ldrh	r3, [r3, #30]
	tst	r3, #2
	ldmeqfd	sp!, {r4, pc}
	ldrh	r0, [r0, #12]
	bl	s3eSoundChannelStop(PLT)
	ldrh	r3, [r4, #10]
	orr	r3, r3, #2
	strh	r3, [r4, #10]	@ movhi
	ldmfd	sp!, {r4, pc}
.L9:
	.align	2
.L8:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+8)
	.word	g_IwSoundManager(GOT)
	.size	_ZN12CIwSoundInst4StopEv, .-_ZN12CIwSoundInst4StopEv
	.section	.text._ZN12CIwSoundInst5PauseEv,"ax",%progbits
	.align	2
	.global	_ZN12CIwSoundInst5PauseEv
	.hidden	_ZN12CIwSoundInst5PauseEv
	.type	_ZN12CIwSoundInst5PauseEv, %function
_ZN12CIwSoundInst5PauseEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L12
	ldr	r2, .L12+4
.LPIC1:
	add	r3, pc, r3
	ldr	r3, [r3, r2]
	ldr	r3, [r3]
	ldrh	r3, [r3, #30]
	tst	r3, #2
	bxeq	lr
	ldrh	r0, [r0, #12]
	b	s3eSoundChannelPause(PLT)
.L13:
	.align	2
.L12:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+8)
	.word	g_IwSoundManager(GOT)
	.size	_ZN12CIwSoundInst5PauseEv, .-_ZN12CIwSoundInst5PauseEv
	.section	.text._ZN12CIwSoundInst6ResumeEv,"ax",%progbits
	.align	2
	.global	_ZN12CIwSoundInst6ResumeEv
	.hidden	_ZN12CIwSoundInst6ResumeEv
	.type	_ZN12CIwSoundInst6ResumeEv, %function
_ZN12CIwSoundInst6ResumeEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L16
	ldr	r2, .L16+4
.LPIC2:
	add	r3, pc, r3
	ldr	r3, [r3, r2]
	ldr	r3, [r3]
	ldrh	r3, [r3, #30]
	tst	r3, #2
	bxeq	lr
	ldrh	r0, [r0, #12]
	b	s3eSoundChannelResume(PLT)
.L17:
	.align	2
.L16:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC2+8)
	.word	g_IwSoundManager(GOT)
	.size	_ZN12CIwSoundInst6ResumeEv, .-_ZN12CIwSoundInst6ResumeEv
	.section	.text._ZNK12CIwSoundInst9IsPlayingEv,"ax",%progbits
	.align	2
	.global	_ZNK12CIwSoundInst9IsPlayingEv
	.hidden	_ZNK12CIwSoundInst9IsPlayingEv
	.type	_ZNK12CIwSoundInst9IsPlayingEv, %function
_ZNK12CIwSoundInst9IsPlayingEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L22
	ldr	r2, .L22+4
.LPIC3:
	add	r3, pc, r3
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	ldr	r3, [r3, r2]
	ldr	r3, [r3]
	ldrh	r3, [r3, #30]
	tst	r3, #2
	bne	.L19
.L21:
	mov	r0, #0
	ldmfd	sp!, {r4, pc}
.L19:
	ldrh	r0, [r0, #12]
	mov	r1, #4
	bl	s3eSoundChannelGetInt(PLT)
	cmp	r0, #1
	bne	.L21
	ldrh	r0, [r4, #12]
	mov	r1, #5
	bl	s3eSoundChannelGetInt(PLT)
	subs	r0, r0, #1
	movne	r0, #1
	ldmfd	sp!, {r4, pc}
.L23:
	.align	2
.L22:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC3+8)
	.word	g_IwSoundManager(GOT)
	.size	_ZNK12CIwSoundInst9IsPlayingEv, .-_ZNK12CIwSoundInst9IsPlayingEv
	.section	.text._ZN12CIwSoundInst6SetVolEs,"ax",%progbits
	.align	2
	.global	_ZN12CIwSoundInst6SetVolEs
	.hidden	_ZN12CIwSoundInst6SetVolEs
	.type	_ZN12CIwSoundInst6SetVolEs, %function
_ZN12CIwSoundInst6SetVolEs:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrh	r3, [r0, #10]
	strh	r1, [r0, #4]	@ movhi
	orr	r3, r3, #1
	strh	r3, [r0, #10]	@ movhi
	bx	lr
	.size	_ZN12CIwSoundInst6SetVolEs, .-_ZN12CIwSoundInst6SetVolEs
	.section	.text._ZN12CIwSoundInst6SetPanEs,"ax",%progbits
	.align	2
	.global	_ZN12CIwSoundInst6SetPanEs
	.hidden	_ZN12CIwSoundInst6SetPanEs
	.type	_ZN12CIwSoundInst6SetPanEs, %function
_ZN12CIwSoundInst6SetPanEs:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrh	r3, [r0, #10]
	strh	r1, [r0, #6]	@ movhi
	orr	r3, r3, #1
	strh	r3, [r0, #10]	@ movhi
	bx	lr
	.size	_ZN12CIwSoundInst6SetPanEs, .-_ZN12CIwSoundInst6SetPanEs
	.section	.text._ZN12CIwSoundInst8SetPitchEs,"ax",%progbits
	.align	2
	.global	_ZN12CIwSoundInst8SetPitchEs
	.hidden	_ZN12CIwSoundInst8SetPitchEs
	.type	_ZN12CIwSoundInst8SetPitchEs, %function
_ZN12CIwSoundInst8SetPitchEs:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrh	r3, [r0, #10]
	strh	r1, [r0, #8]	@ movhi
	orr	r3, r3, #1
	strh	r3, [r0, #10]	@ movhi
	bx	lr
	.size	_ZN12CIwSoundInst8SetPitchEs, .-_ZN12CIwSoundInst8SetPitchEs
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-branch revision 208322]"
