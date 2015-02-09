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
	.file	"Main.cpp"
	.section	.text.startup.main,"ax",%progbits
	.align	2
	.global	main
	.hidden	main
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	bl	_Z8Iw2DInitv(PLT)
	mov	r0, #16
	bl	_Znwj(PLT)
	mov	r4, r0
	bl	_ZN10MastermindC1Ev(PLT)
	mov	r0, r4
	bl	_ZN10Mastermind4InitEv(PLT)
	mov	r0, r4
	bl	_ZN10Mastermind3RunEv(PLT)
	cmp	r4, #0
	beq	.L2
	mov	r0, r4
	bl	_ZN10MastermindD1Ev(PLT)
	mov	r0, r4
	bl	_ZdlPv(PLT)
.L2:
	bl	_Z13Iw2DTerminatev(PLT)
	mov	r0, #0
	ldmfd	sp!, {r4, pc}
	.size	main, .-main
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-branch revision 208322]"
