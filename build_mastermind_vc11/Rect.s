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
	.file	"Rect.cpp"
	.section	.text._ZN5ImageC2Ev,"ax",%progbits
	.align	2
	.global	_ZN5ImageC2Ev
	.hidden	_ZN5ImageC2Ev
	.type	_ZN5ImageC2Ev, %function
_ZN5ImageC2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #0
	str	r2, [r0]
	bx	lr
	.size	_ZN5ImageC2Ev, .-_ZN5ImageC2Ev
	.global	_ZN5ImageC1Ev
	.hidden	_ZN5ImageC1Ev
	.set	_ZN5ImageC1Ev,_ZN5ImageC2Ev
	.section	.text._ZN5ImageC2EPN14Iw2DSceneGraph7CSpriteE,"ax",%progbits
	.align	2
	.global	_ZN5ImageC2EPN14Iw2DSceneGraph7CSpriteE
	.hidden	_ZN5ImageC2EPN14Iw2DSceneGraph7CSpriteE
	.type	_ZN5ImageC2EPN14Iw2DSceneGraph7CSpriteE, %function
_ZN5ImageC2EPN14Iw2DSceneGraph7CSpriteE:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r1, [r0]
	bx	lr
	.size	_ZN5ImageC2EPN14Iw2DSceneGraph7CSpriteE, .-_ZN5ImageC2EPN14Iw2DSceneGraph7CSpriteE
	.global	_ZN5ImageC1EPN14Iw2DSceneGraph7CSpriteE
	.hidden	_ZN5ImageC1EPN14Iw2DSceneGraph7CSpriteE
	.set	_ZN5ImageC1EPN14Iw2DSceneGraph7CSpriteE,_ZN5ImageC2EPN14Iw2DSceneGraph7CSpriteE
	.section	.text._ZN5ImageD2Ev,"ax",%progbits
	.align	2
	.global	_ZN5ImageD2Ev
	.hidden	_ZN5ImageD2Ev
	.type	_ZN5ImageD2Ev, %function
_ZN5ImageD2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.L4
	ldr	r2, [r0]
	ldr	r3, [r2, #4]
	blx	r3
.L4:
	mov	r0, r4
	ldmfd	sp!, {r4, pc}
	.size	_ZN5ImageD2Ev, .-_ZN5ImageD2Ev
	.global	_ZN5ImageD1Ev
	.hidden	_ZN5ImageD1Ev
	.set	_ZN5ImageD1Ev,_ZN5ImageD2Ev
	.section	.text._ZN5Image8SetImageEPN14Iw2DSceneGraph7CSpriteE,"ax",%progbits
	.align	2
	.global	_ZN5Image8SetImageEPN14Iw2DSceneGraph7CSpriteE
	.hidden	_ZN5Image8SetImageEPN14Iw2DSceneGraph7CSpriteE
	.type	_ZN5Image8SetImageEPN14Iw2DSceneGraph7CSpriteE, %function
_ZN5Image8SetImageEPN14Iw2DSceneGraph7CSpriteE:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	mov	r4, r0
	ldr	r0, [r0]
	mov	r5, r1
	cmp	r0, #0
	beq	.L10
	ldr	r2, [r0]
	ldr	r3, [r2, #4]
	blx	r3
	str	r5, [r4]
	mov	r0, #0
	ldmfd	sp!, {r3, r4, r5, pc}
.L10:
	mov	r0, #1
	str	r1, [r4]
	ldmfd	sp!, {r3, r4, r5, pc}
	.size	_ZN5Image8SetImageEPN14Iw2DSceneGraph7CSpriteE, .-_ZN5Image8SetImageEPN14Iw2DSceneGraph7CSpriteE
	.section	.text._ZN5Image6UpdateEff,"ax",%progbits
	.align	2
	.global	_ZN5Image6UpdateEff
	.hidden	_ZN5Image6UpdateEff
	.type	_ZN5Image6UpdateEff, %function
_ZN5Image6UpdateEff:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}
	ldr	r0, [r0]
	cmp	r0, #0
	ldmeqfd	sp!, {r3, pc}
	ldr	r3, [r0]
	ldr	r3, [r3, #8]
	blx	r3
	ldmfd	sp!, {r3, pc}
	.size	_ZN5Image6UpdateEff, .-_ZN5Image6UpdateEff
	.section	.text._ZN5Image6RenderEv,"ax",%progbits
	.align	2
	.global	_ZN5Image6RenderEv
	.hidden	_ZN5Image6RenderEv
	.type	_ZN5Image6RenderEv, %function
_ZN5Image6RenderEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}
	ldr	r0, [r0]
	cmp	r0, #0
	ldmeqfd	sp!, {r3, pc}
	ldr	r3, [r0]
	ldr	r3, [r3, #12]
	blx	r3
	ldmfd	sp!, {r3, pc}
	.size	_ZN5Image6RenderEv, .-_ZN5Image6RenderEv
	.section	.text._ZNK5Image12HasSameColorERKN14Iw2DSceneGraph6CColorE,"ax",%progbits
	.align	2
	.global	_ZNK5Image12HasSameColorERKN14Iw2DSceneGraph6CColorE
	.hidden	_ZNK5Image12HasSameColorERKN14Iw2DSceneGraph6CColorE
	.type	_ZNK5Image12HasSameColorERKN14Iw2DSceneGraph6CColorE, %function
_ZNK5Image12HasSameColorERKN14Iw2DSceneGraph6CColorE:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r4, [sp, #-4]!
	ldr	r3, [r0]
	ldrb	ip, [r1]	@ zero_extendqisi2
	ldrb	r2, [r3, #116]	@ zero_extendqisi2
	ldrb	r4, [r3, #117]	@ zero_extendqisi2
	ldrb	r3, [r3, #118]	@ zero_extendqisi2
	cmp	ip, r2
	beq	.L26
.L25:
	mov	r0, #0
.L23:
	ldr	r4, [sp], #4
	bx	lr
.L26:
	ldrb	r2, [r1, #1]	@ zero_extendqisi2
	cmp	r2, r4
	bne	.L25
	ldrb	r0, [r1, #2]	@ zero_extendqisi2
	subs	r3, r0, r3
	rsbs	r0, r3, #0
	adcs	r0, r0, r3
	b	.L23
	.size	_ZNK5Image12HasSameColorERKN14Iw2DSceneGraph6CColorE, .-_ZNK5Image12HasSameColorERKN14Iw2DSceneGraph6CColorE
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-branch revision 208322]"
