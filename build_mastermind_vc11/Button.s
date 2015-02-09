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
	.file	"Button.cpp"
	.section	.text._ZN6ButtonC2EPN14Iw2DSceneGraph7CSpriteEPNS0_6CLabelE,"ax",%progbits
	.align	2
	.global	_ZN6ButtonC2EPN14Iw2DSceneGraph7CSpriteEPNS0_6CLabelE
	.hidden	_ZN6ButtonC2EPN14Iw2DSceneGraph7CSpriteEPNS0_6CLabelE
	.type	_ZN6ButtonC2EPN14Iw2DSceneGraph7CSpriteEPNS0_6CLabelE, %function
_ZN6ButtonC2EPN14Iw2DSceneGraph7CSpriteEPNS0_6CLabelE:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmia	r0, {r1, r2}
	bx	lr
	.size	_ZN6ButtonC2EPN14Iw2DSceneGraph7CSpriteEPNS0_6CLabelE, .-_ZN6ButtonC2EPN14Iw2DSceneGraph7CSpriteEPNS0_6CLabelE
	.global	_ZN6ButtonC1EPN14Iw2DSceneGraph7CSpriteEPNS0_6CLabelE
	.hidden	_ZN6ButtonC1EPN14Iw2DSceneGraph7CSpriteEPNS0_6CLabelE
	.set	_ZN6ButtonC1EPN14Iw2DSceneGraph7CSpriteEPNS0_6CLabelE,_ZN6ButtonC2EPN14Iw2DSceneGraph7CSpriteEPNS0_6CLabelE
	.section	.text._ZN6ButtonD2Ev,"ax",%progbits
	.align	2
	.global	_ZN6ButtonD2Ev
	.hidden	_ZN6ButtonD2Ev
	.type	_ZN6ButtonD2Ev, %function
_ZN6ButtonD2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.L3
	ldr	r3, [r0]
	ldr	r3, [r3, #4]
	blx	r3
.L3:
	ldr	r0, [r4, #4]
	cmp	r0, #0
	beq	.L4
	ldr	r3, [r0]
	ldr	r3, [r3, #4]
	blx	r3
.L4:
	mov	r0, r4
	ldmfd	sp!, {r4, pc}
	.size	_ZN6ButtonD2Ev, .-_ZN6ButtonD2Ev
	.global	_ZN6ButtonD1Ev
	.hidden	_ZN6ButtonD1Ev
	.set	_ZN6ButtonD1Ev,_ZN6ButtonD2Ev
	.section	.text._ZN6Button6UpdateEff,"ax",%progbits
	.align	2
	.global	_ZN6Button6UpdateEff
	.hidden	_ZN6Button6UpdateEff
	.type	_ZN6Button6UpdateEff, %function
_ZN6Button6UpdateEff:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r4, r0
	ldr	r0, [r0]
	mov	r6, r1
	cmp	r0, #0
	mov	r5, r2
	beq	.L13
	ldr	ip, [r0]
	ldr	r3, [ip, #8]
	blx	r3
.L13:
	ldr	r0, [r4, #4]
	cmp	r0, #0
	ldmeqfd	sp!, {r4, r5, r6, pc}
	ldr	r3, [r0]
	mov	r1, r6
	mov	r2, r5
	ldr	r3, [r3, #8]
	blx	r3
	ldmfd	sp!, {r4, r5, r6, pc}
	.size	_ZN6Button6UpdateEff, .-_ZN6Button6UpdateEff
	.section	.text._ZN6Button6RenderEv,"ax",%progbits
	.align	2
	.global	_ZN6Button6RenderEv
	.hidden	_ZN6Button6RenderEv
	.type	_ZN6Button6RenderEv, %function
_ZN6Button6RenderEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.L22
	ldr	r2, [r0]
	ldr	r3, [r2, #12]
	blx	r3
.L22:
	ldr	r0, [r4, #4]
	cmp	r0, #0
	ldmeqfd	sp!, {r4, pc}
	ldr	r3, [r0]
	ldr	r3, [r3, #12]
	blx	r3
	ldmfd	sp!, {r4, pc}
	.size	_ZN6Button6RenderEv, .-_ZN6Button6RenderEv
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-branch revision 208322]"
