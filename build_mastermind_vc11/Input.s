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
	.file	"Input.cpp"
	.section	.text._ZN5Input13TouchButtonCBEP15s3ePointerEvent,"ax",%progbits
	.align	2
	.global	_ZN5Input13TouchButtonCBEP15s3ePointerEvent
	.hidden	_ZN5Input13TouchButtonCBEP15s3ePointerEvent
	.type	_ZN5Input13TouchButtonCBEP15s3ePointerEvent, %function
_ZN5Input13TouchButtonCBEP15s3ePointerEvent:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L7
.LPIC0:
	add	r3, pc, r3
	ldr	r3, [r3]
	ldrb	r2, [r3, #1]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r2, [r0, #4]
	adds	r2, r2, #0
	movne	r2, #1
	strb	r2, [r3, #1]
	ldr	r2, [r0, #8]
	str	r2, [r3, #4]
	ldr	r2, [r0, #12]
	str	r2, [r3, #8]
	bx	lr
.L8:
	.align	2
.L7:
	.word	.LANCHOR0-(.LPIC0+8)
	.size	_ZN5Input13TouchButtonCBEP15s3ePointerEvent, .-_ZN5Input13TouchButtonCBEP15s3ePointerEvent
	.section	.text._ZN5Input13TouchMotionCBEP21s3ePointerMotionEvent,"ax",%progbits
	.align	2
	.global	_ZN5Input13TouchMotionCBEP21s3ePointerMotionEvent
	.hidden	_ZN5Input13TouchMotionCBEP21s3ePointerMotionEvent
	.type	_ZN5Input13TouchMotionCBEP21s3ePointerMotionEvent, %function
_ZN5Input13TouchMotionCBEP21s3ePointerMotionEvent:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L15
	ldr	r2, [r0]
.LPIC1:
	add	r3, pc, r3
	ldr	r3, [r3]
	str	r2, [r3, #4]
	ldr	r2, [r0, #4]
	str	r2, [r3, #8]
	bx	lr
.L16:
	.align	2
.L15:
	.word	.LANCHOR0-(.LPIC1+8)
	.size	_ZN5Input13TouchMotionCBEP21s3ePointerMotionEvent, .-_ZN5Input13TouchMotionCBEP21s3ePointerMotionEvent
	.section	.text._ZN5Input18MultiTouchButtonCBEP20s3ePointerTouchEvent,"ax",%progbits
	.align	2
	.global	_ZN5Input18MultiTouchButtonCBEP20s3ePointerTouchEvent
	.hidden	_ZN5Input18MultiTouchButtonCBEP20s3ePointerTouchEvent
	.type	_ZN5Input18MultiTouchButtonCBEP20s3ePointerTouchEvent, %function
_ZN5Input18MultiTouchButtonCBEP20s3ePointerTouchEvent:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L23
.LPIC2:
	add	r3, pc, r3
	ldr	r3, [r3]
	ldrb	r2, [r3, #1]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r2, [r0, #4]
	adds	r2, r2, #0
	movne	r2, #1
	strb	r2, [r3, #1]
	ldr	r2, [r0, #8]
	str	r2, [r3, #4]
	ldr	r2, [r0, #12]
	str	r2, [r3, #8]
	bx	lr
.L24:
	.align	2
.L23:
	.word	.LANCHOR0-(.LPIC2+8)
	.size	_ZN5Input18MultiTouchButtonCBEP20s3ePointerTouchEvent, .-_ZN5Input18MultiTouchButtonCBEP20s3ePointerTouchEvent
	.section	.text._ZN5Input18MultiTouchMotionCBEP26s3ePointerTouchMotionEvent,"ax",%progbits
	.align	2
	.global	_ZN5Input18MultiTouchMotionCBEP26s3ePointerTouchMotionEvent
	.hidden	_ZN5Input18MultiTouchMotionCBEP26s3ePointerTouchMotionEvent
	.type	_ZN5Input18MultiTouchMotionCBEP26s3ePointerTouchMotionEvent, %function
_ZN5Input18MultiTouchMotionCBEP26s3ePointerTouchMotionEvent:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L31
	ldr	r2, [r0, #4]
.LPIC3:
	add	r3, pc, r3
	ldr	r3, [r3]
	str	r2, [r3, #4]
	ldr	r2, [r0, #8]
	str	r2, [r3, #4]
	bx	lr
.L32:
	.align	2
.L31:
	.word	.LANCHOR0-(.LPIC3+8)
	.size	_ZN5Input18MultiTouchMotionCBEP26s3ePointerTouchMotionEvent, .-_ZN5Input18MultiTouchMotionCBEP26s3ePointerTouchMotionEvent
	.section	.text._ZN5Input16KeyEventCallbackEP16s3eKeyboardEvent,"ax",%progbits
	.align	2
	.global	_ZN5Input16KeyEventCallbackEP16s3eKeyboardEvent
	.hidden	_ZN5Input16KeyEventCallbackEP16s3eKeyboardEvent
	.type	_ZN5Input16KeyEventCallbackEP16s3eKeyboardEvent, %function
_ZN5Input16KeyEventCallbackEP16s3eKeyboardEvent:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r0, #119
	bl	s3eKeyboardGetState(PLT)
	mov	r4, r0
	mov	r0, #1
	bl	s3eKeyboardGetState(PLT)
	orr	r0, r4, r0
	ands	r3, r0, #2
	bne	.L44
	tst	r0, #4
	bne	.L45
	tst	r0, #1
	ldmeqfd	sp!, {r4, pc}
.L46:
	ldr	r3, .L47
	mov	r2, #1
.LPIC6:
	add	r3, pc, r3
	ldr	r3, [r3]
	strb	r2, [r3, #13]
	ldmfd	sp!, {r4, pc}
.L44:
	ldr	r3, .L47+4
	mov	r2, #1
.LPIC4:
	add	r3, pc, r3
	tst	r0, #1
	ldr	r3, [r3]
	strb	r2, [r3, #13]
	bne	.L46
	ldmfd	sp!, {r4, pc}
.L45:
	ldr	r2, .L47+8
	tst	r0, #1
.LPIC5:
	add	r2, pc, r2
	ldr	r2, [r2]
	strb	r3, [r2, #13]
	bne	.L46
	ldmfd	sp!, {r4, pc}
.L48:
	.align	2
.L47:
	.word	.LANCHOR0-(.LPIC6+8)
	.word	.LANCHOR0-(.LPIC4+8)
	.word	.LANCHOR0-(.LPIC5+8)
	.size	_ZN5Input16KeyEventCallbackEP16s3eKeyboardEvent, .-_ZN5Input16KeyEventCallbackEP16s3eKeyboardEvent
	.section	.text._ZN5InputC2Ev,"ax",%progbits
	.align	2
	.global	_ZN5InputC2Ev
	.hidden	_ZN5InputC2Ev
	.type	_ZN5InputC2Ev, %function
_ZN5InputC2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r5, #0
	strb	r5, [r0, #1]
	strb	r5, [r0]
	strb	r5, [r0, #12]
	strb	r5, [r0, #13]
	mov	r4, r0
	mov	r0, #4
	bl	s3ePointerGetInt(PLT)
	subs	r6, r0, #0
	bne	.L52
	ldr	r1, .L53
	mov	r2, r6
.LPIC9:
	add	r1, pc, r1
	bl	s3ePointerRegister(PLT)
	ldr	r1, .L53+4
	mov	r2, r6
	mov	r0, #1
.LPIC10:
	add	r1, pc, r1
	bl	s3ePointerRegister(PLT)
.L51:
	ldr	r1, .L53+8
	mov	r0, #0
	mov	r2, r0
.LPIC11:
	add	r1, pc, r1
	bl	s3eKeyboardRegister(PLT)
	mov	r0, r4
	ldmfd	sp!, {r4, r5, r6, pc}
.L52:
	ldr	r1, .L53+12
	mov	r2, r5
.LPIC7:
	add	r1, pc, r1
	mov	r0, #2
	bl	s3ePointerRegister(PLT)
	ldr	r1, .L53+16
	mov	r2, r5
.LPIC8:
	add	r1, pc, r1
	mov	r0, #3
	bl	s3ePointerRegister(PLT)
	b	.L51
.L54:
	.align	2
.L53:
	.word	_ZN5Input13TouchButtonCBEP15s3ePointerEvent-(.LPIC9+8)
	.word	_ZN5Input13TouchMotionCBEP21s3ePointerMotionEvent-(.LPIC10+8)
	.word	_ZN5Input16KeyEventCallbackEP16s3eKeyboardEvent-(.LPIC11+8)
	.word	_ZN5Input18MultiTouchButtonCBEP20s3ePointerTouchEvent-(.LPIC7+8)
	.word	_ZN5Input18MultiTouchMotionCBEP26s3ePointerTouchMotionEvent-(.LPIC8+8)
	.size	_ZN5InputC2Ev, .-_ZN5InputC2Ev
	.global	_ZN5InputC1Ev
	.hidden	_ZN5InputC1Ev
	.set	_ZN5InputC1Ev,_ZN5InputC2Ev
	.section	.text._ZN5Input6UpdateEv,"ax",%progbits
	.align	2
	.global	_ZN5Input6UpdateEv
	.hidden	_ZN5Input6UpdateEv
	.type	_ZN5Input6UpdateEv, %function
_ZN5Input6UpdateEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}
	bl	s3ePointerUpdate(PLT)
	bl	s3eKeyboardUpdate(PLT)
	mov	r0, #126
	bl	s3eKeyboardGetState(PLT)
	tst	r0, #2
	ldmeqfd	sp!, {r3, pc}
	ldr	r3, .L60
	mov	r2, #1
.LPIC12:
	add	r3, pc, r3
	ldr	r3, [r3]
	strb	r2, [r3, #12]
	ldmfd	sp!, {r3, pc}
.L61:
	.align	2
.L60:
	.word	.LANCHOR0-(.LPIC12+8)
	.size	_ZN5Input6UpdateEv, .-_ZN5Input6UpdateEv
	.section	.text._ZN5Input5ResetEv,"ax",%progbits
	.align	2
	.global	_ZN5Input5ResetEv
	.hidden	_ZN5Input5ResetEv
	.type	_ZN5Input5ResetEv, %function
_ZN5Input5ResetEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L63
	mov	r3, #0
.LPIC13:
	add	r2, pc, r2
	strb	r3, [r0]
	ldr	r2, [r2]
	strb	r3, [r0, #1]
	strb	r3, [r2, #12]
	bx	lr
.L64:
	.align	2
.L63:
	.word	.LANCHOR0-(.LPIC13+8)
	.size	_ZN5Input5ResetEv, .-_ZN5Input5ResetEv
	.section	.text._Z9InputInitv,"ax",%progbits
	.align	2
	.global	_Z9InputInitv
	.hidden	_Z9InputInitv
	.type	_Z9InputInitv, %function
_Z9InputInitv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L73
	stmfd	sp!, {r4, r5, r6, lr}
.LPIC14:
	ldr	r0, [pc, r3]		@ tls_load_dot_plus_eight
	cmp	r0, #0
	beq	.L66
	bl	_ZdlPv(PLT)
.L66:
	mov	r0, #16
	bl	_Znwj(PLT)
	mov	r5, #0
	strb	r5, [r0, #1]
	strb	r5, [r0]
	strb	r5, [r0, #12]
	strb	r5, [r0, #13]
	mov	r4, r0
	mov	r0, #4
	bl	s3ePointerGetInt(PLT)
	subs	r6, r0, #0
	bne	.L72
	ldr	r1, .L73+4
	mov	r2, r6
.LPIC17:
	add	r1, pc, r1
	bl	s3ePointerRegister(PLT)
	ldr	r1, .L73+8
	mov	r2, r6
	mov	r0, #1
.LPIC18:
	add	r1, pc, r1
	bl	s3ePointerRegister(PLT)
.L68:
	ldr	r1, .L73+12
	mov	r0, #0
	mov	r2, r0
.LPIC19:
	add	r1, pc, r1
	bl	s3eKeyboardRegister(PLT)
	ldr	r3, .L73+16
	mov	r0, #1
.LPIC20:
	add	r3, pc, r3
	str	r4, [r3]
	ldmfd	sp!, {r4, r5, r6, pc}
.L72:
	ldr	r1, .L73+20
	mov	r2, r5
.LPIC15:
	add	r1, pc, r1
	mov	r0, #2
	bl	s3ePointerRegister(PLT)
	ldr	r1, .L73+24
	mov	r2, r5
.LPIC16:
	add	r1, pc, r1
	mov	r0, #3
	bl	s3ePointerRegister(PLT)
	b	.L68
.L74:
	.align	2
.L73:
	.word	.LANCHOR0-(.LPIC14+8)
	.word	_ZN5Input13TouchButtonCBEP15s3ePointerEvent-(.LPIC17+8)
	.word	_ZN5Input13TouchMotionCBEP21s3ePointerMotionEvent-(.LPIC18+8)
	.word	_ZN5Input16KeyEventCallbackEP16s3eKeyboardEvent-(.LPIC19+8)
	.word	.LANCHOR0-(.LPIC20+8)
	.word	_ZN5Input18MultiTouchButtonCBEP20s3ePointerTouchEvent-(.LPIC15+8)
	.word	_ZN5Input18MultiTouchMotionCBEP26s3ePointerTouchMotionEvent-(.LPIC16+8)
	.size	_Z9InputInitv, .-_Z9InputInitv
	.section	.text._Z8GetInputv,"ax",%progbits
	.align	2
	.global	_Z8GetInputv
	.hidden	_Z8GetInputv
	.type	_Z8GetInputv, %function
_Z8GetInputv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L76
.LPIC21:
	ldr	r0, [pc, r3]		@ tls_load_dot_plus_eight
	bx	lr
.L77:
	.align	2
.L76:
	.word	.LANCHOR0-(.LPIC21+8)
	.size	_Z8GetInputv, .-_Z8GetInputv
	.section	.text._Z9FreeInputv,"ax",%progbits
	.align	2
	.global	_Z9FreeInputv
	.hidden	_Z9FreeInputv
	.type	_Z9FreeInputv, %function
_Z9FreeInputv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r4, .L81
.LPIC22:
	add	r4, pc, r4
	ldr	r0, [r4]
	cmp	r0, #0
	ldmeqfd	sp!, {r4, pc}
	bl	_ZdlPv(PLT)
	mov	r3, #0
	str	r3, [r4]
	mov	r0, #1
	ldmfd	sp!, {r4, pc}
.L82:
	.align	2
.L81:
	.word	.LANCHOR0-(.LPIC22+8)
	.size	_Z9FreeInputv, .-_Z9FreeInputv
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	_ZN12_GLOBAL__N_1L5inputE, %object
	.size	_ZN12_GLOBAL__N_1L5inputE, 4
_ZN12_GLOBAL__N_1L5inputE:
	.space	4
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-branch revision 208322]"
