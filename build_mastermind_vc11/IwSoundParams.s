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
	.file	"IwSoundParams.cpp"
	.section	.text._ZN14CIwSoundParamsC2Ev,"ax",%progbits
	.align	2
	.global	_ZN14CIwSoundParamsC2Ev
	.hidden	_ZN14CIwSoundParamsC2Ev
	.type	_ZN14CIwSoundParamsC2Ev, %function
_ZN14CIwSoundParamsC2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #4096
	mov	r1, #0
	strh	r1, [r0, #2]	@ movhi
	strh	r2, [r0]	@ movhi
	strh	r2, [r0, #4]	@ movhi
	bx	lr
	.size	_ZN14CIwSoundParamsC2Ev, .-_ZN14CIwSoundParamsC2Ev
	.global	_ZN14CIwSoundParamsC1Ev
	.hidden	_ZN14CIwSoundParamsC1Ev
	.set	_ZN14CIwSoundParamsC1Ev,_ZN14CIwSoundParamsC2Ev
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-branch revision 208322]"
