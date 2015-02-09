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
	.file	"Resource.cpp"
	.section	.text._Z11GetResourcev,"ax",%progbits
	.align	2
	.global	_Z11GetResourcev
	.hidden	_Z11GetResourcev
	.type	_Z11GetResourcev, %function
_Z11GetResourcev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L2
.LPIC0:
	ldr	r0, [pc, r3]		@ tls_load_dot_plus_eight
	bx	lr
.L3:
	.align	2
.L2:
	.word	.LANCHOR0-(.LPIC0+8)
	.size	_Z11GetResourcev, .-_Z11GetResourcev
	.global	__aeabi_f2iz
	.section	.text._ZN8ResourceC2Ev,"ax",%progbits
	.align	2
	.global	_ZN8ResourceC2Ev
	.hidden	_ZN8ResourceC2Ev
	.type	_ZN8ResourceC2Ev, %function
_ZN8ResourceC2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}
	mov	r4, r0
	ldr	r0, .L5
	sub	sp, sp, #12
.LPIC1:
	add	r0, pc, r0
	bl	_Z15Iw2DCreateImagePKc(PLT)
	str	r0, [r4, #24]
	ldr	r0, .L5+4
.LPIC2:
	add	r0, pc, r0
	bl	_Z15Iw2DCreateImagePKc(PLT)
	str	r0, [r4, #12]
	ldr	r0, .L5+8
.LPIC3:
	add	r0, pc, r0
	bl	_Z15Iw2DCreateImagePKc(PLT)
	str	r0, [r4, #16]
	ldr	r0, .L5+12
.LPIC4:
	add	r0, pc, r0
	bl	_Z15Iw2DCreateImagePKc(PLT)
	str	r0, [r4, #20]
	ldr	r0, .L5+16
.LPIC5:
	add	r0, pc, r0
	bl	_Z15Iw2DCreateImagePKc(PLT)
	str	r0, [r4, #32]
	ldr	r0, .L5+20
.LPIC6:
	add	r0, pc, r0
	bl	_Z15Iw2DCreateImagePKc(PLT)
	str	r0, [r4, #8]
	ldr	r0, .L5+24
.LPIC7:
	add	r0, pc, r0
	bl	_Z15Iw2DCreateImagePKc(PLT)
	str	r0, [r4, #36]
	ldr	r0, .L5+28
.LPIC8:
	add	r0, pc, r0
	bl	_Z15Iw2DCreateImagePKc(PLT)
	str	r0, [r4, #28]
	ldr	r0, .L5+32
.LPIC9:
	add	r0, pc, r0
	bl	_Z14Iw2DCreateFontPKc(PLT)
	ldr	r3, [r4, #12]
	str	r0, [r4, #40]
	ldr	r2, [r3]
	mov	r0, r3
	ldr	r3, [r2]
	blx	r3
	bl	__aeabi_f2iz(PLT)
	ldr	r3, [r4, #12]
	mov	r6, r0
	mov	r0, r3
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	blx	r3
	bl	__aeabi_f2iz(PLT)
	mov	r5, r0
	mov	r0, #24
	bl	_Znwj(PLT)
	ldr	r3, [r4, #12]
	mov	r1, r6
	mov	r2, r5
	str	r3, [sp]
	mov	r3, #1
	mov	r7, r0
	bl	_ZN14Iw2DSceneGraph6CAtlasC1EiiiP10CIw2DImage(PLT)
	str	r7, [r4]
	mov	r0, #24
	bl	_Znwj(PLT)
	ldr	r3, [r4, #16]
	mov	r1, r6
	str	r3, [sp]
	mov	r2, r5
	mov	r3, #1
	mov	r7, r0
	bl	_ZN14Iw2DSceneGraph6CAtlasC1EiiiP10CIw2DImage(PLT)
	mov	r0, r4
	str	r7, [r4, #4]
	add	sp, sp, #12
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L6:
	.align	2
.L5:
	.word	.LC0-(.LPIC1+8)
	.word	.LC1-(.LPIC2+8)
	.word	.LC2-(.LPIC3+8)
	.word	.LC3-(.LPIC4+8)
	.word	.LC4-(.LPIC5+8)
	.word	.LC5-(.LPIC6+8)
	.word	.LC6-(.LPIC7+8)
	.word	.LC7-(.LPIC8+8)
	.word	.LC8-(.LPIC9+8)
	.size	_ZN8ResourceC2Ev, .-_ZN8ResourceC2Ev
	.global	_ZN8ResourceC1Ev
	.hidden	_ZN8ResourceC1Ev
	.set	_ZN8ResourceC1Ev,_ZN8ResourceC2Ev
	.section	.text._ZN8ResourceD2Ev,"ax",%progbits
	.align	2
	.global	_ZN8ResourceD2Ev
	.hidden	_ZN8ResourceD2Ev
	.type	_ZN8ResourceD2Ev, %function
_ZN8ResourceD2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	mov	r4, r0
	ldr	r0, [r0, #36]
	cmp	r0, #0
	beq	.L8
	ldr	r3, [r0]
	ldr	r3, [r3, #16]
	blx	r3
.L8:
	ldr	r0, [r4, #8]
	cmp	r0, #0
	beq	.L9
	ldr	r3, [r0]
	ldr	r3, [r3, #16]
	blx	r3
.L9:
	ldr	r0, [r4, #28]
	cmp	r0, #0
	beq	.L10
	ldr	r3, [r0]
	ldr	r3, [r3, #16]
	blx	r3
.L10:
	ldr	r0, [r4, #24]
	cmp	r0, #0
	beq	.L11
	ldr	r3, [r0]
	ldr	r3, [r3, #16]
	blx	r3
.L11:
	ldr	r0, [r4, #12]
	cmp	r0, #0
	beq	.L12
	ldr	r3, [r0]
	ldr	r3, [r3, #16]
	blx	r3
.L12:
	ldr	r0, [r4, #16]
	cmp	r0, #0
	beq	.L13
	ldr	r3, [r0]
	ldr	r3, [r3, #16]
	blx	r3
.L13:
	ldr	r0, [r4, #20]
	cmp	r0, #0
	beq	.L14
	ldr	r3, [r0]
	ldr	r3, [r3, #16]
	blx	r3
.L14:
	ldr	r0, [r4, #32]
	cmp	r0, #0
	beq	.L15
	ldr	r3, [r0]
	ldr	r3, [r3, #16]
	blx	r3
.L15:
	ldr	r0, [r4, #40]
	cmp	r0, #0
	beq	.L16
	ldr	r3, [r0]
	ldr	r3, [r3, #12]
	blx	r3
.L16:
	ldr	r5, [r4]
	cmp	r5, #0
	beq	.L17
	ldr	r0, [r5, #4]
	cmp	r0, #0
	beq	.L18
	bl	free(PLT)
.L18:
	mov	r0, r5
	bl	_ZdlPv(PLT)
.L17:
	ldr	r5, [r4, #4]
	cmp	r5, #0
	beq	.L19
	ldr	r0, [r5, #4]
	cmp	r0, #0
	beq	.L20
	bl	free(PLT)
.L20:
	mov	r0, r5
	bl	_ZdlPv(PLT)
.L19:
	mov	r0, r4
	ldmfd	sp!, {r3, r4, r5, pc}
	.size	_ZN8ResourceD2Ev, .-_ZN8ResourceD2Ev
	.global	_ZN8ResourceD1Ev
	.hidden	_ZN8ResourceD1Ev
	.set	_ZN8ResourceD1Ev,_ZN8ResourceD2Ev
	.section	.text._Z12ResourceInitv,"ax",%progbits
	.align	2
	.global	_Z12ResourceInitv
	.hidden	_Z12ResourceInitv
	.type	_Z12ResourceInitv, %function
_Z12ResourceInitv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L66
	stmfd	sp!, {r4, lr}
.LPIC10:
	ldr	r4, [pc, r3]		@ tls_load_dot_plus_eight
	cmp	r4, #0
	beq	.L62
	mov	r0, r4
	bl	_ZN8ResourceD1Ev(PLT)
	mov	r0, r4
	bl	_ZdlPv(PLT)
.L62:
	mov	r0, #44
	bl	_Znwj(PLT)
	mov	r4, r0
	bl	_ZN8ResourceC1Ev(PLT)
	ldr	r3, .L66+4
	adds	r0, r4, #0
.LPIC11:
	add	r3, pc, r3
	movne	r0, #1
	str	r4, [r3]
	ldmfd	sp!, {r4, pc}
.L67:
	.align	2
.L66:
	.word	.LANCHOR0-(.LPIC10+8)
	.word	.LANCHOR0-(.LPIC11+8)
	.size	_Z12ResourceInitv, .-_Z12ResourceInitv
	.section	.text._Z12FreeResourcev,"ax",%progbits
	.align	2
	.global	_Z12FreeResourcev
	.hidden	_Z12FreeResourcev
	.type	_Z12FreeResourcev, %function
_Z12FreeResourcev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	ldr	r5, .L71
.LPIC12:
	add	r5, pc, r5
	ldr	r4, [r5]
	subs	r0, r4, #0
	beq	.L70
	bl	_ZN8ResourceD1Ev(PLT)
	mov	r0, r4
	bl	_ZdlPv(PLT)
	mov	r3, #0
	str	r3, [r5]
	mov	r0, #1
	ldmfd	sp!, {r3, r4, r5, pc}
.L70:
	ldmfd	sp!, {r3, r4, r5, pc}
.L72:
	.align	2
.L71:
	.word	.LANCHOR0-(.LPIC12+8)
	.size	_Z12FreeResourcev, .-_Z12FreeResourcev
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"textures/bkg1.png\000"
	.space	2
.LC1:
	.ascii	"textures/marble_t.png\000"
	.space	2
.LC2:
	.ascii	"textures/marble_selected.png\000"
	.space	3
.LC3:
	.ascii	"textures/marble_bg.png\000"
	.space	1
.LC4:
	.ascii	"textures/checkbutton.png\000"
	.space	3
.LC5:
	.ascii	"textures/pin.png\000"
	.space	3
.LC6:
	.ascii	"textures/button.png\000"
.LC7:
	.ascii	"textures/bkg.png\000"
	.space	3
.LC8:
	.ascii	"fonts/verdana.gxfont\000"
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	_ZN12_GLOBAL__N_1L8resourceE, %object
	.size	_ZN12_GLOBAL__N_1L8resourceE, 4
_ZN12_GLOBAL__N_1L8resourceE:
	.space	4
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-branch revision 208322]"
