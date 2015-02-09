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
	.file	"MainMenu.cpp"
	.section	.text._ZN8MainMenuD2Ev,"ax",%progbits
	.align	2
	.global	_ZN8MainMenuD2Ev
	.hidden	_ZN8MainMenuD2Ev
	.type	_ZN8MainMenuD2Ev, %function
_ZN8MainMenuD2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	mov	r4, r0
	ldr	r3, .L7
	ldr	r5, [r0, #144]
.LPIC0:
	add	r3, pc, r3
	add	r3, r3, #8
	cmp	r5, #0
	str	r3, [r0]
	beq	.L2
	mov	r0, r5
	bl	_ZN6ButtonD1Ev(PLT)
	mov	r0, r5
	bl	_ZdlPv(PLT)
.L2:
	mov	r0, r4
	bl	_ZN5SceneD2Ev(PLT)
	mov	r0, r4
	ldmfd	sp!, {r3, r4, r5, pc}
.L8:
	.align	2
.L7:
	.word	.LANCHOR0-(.LPIC0+8)
	.size	_ZN8MainMenuD2Ev, .-_ZN8MainMenuD2Ev
	.global	_ZN8MainMenuD1Ev
	.hidden	_ZN8MainMenuD1Ev
	.set	_ZN8MainMenuD1Ev,_ZN8MainMenuD2Ev
	.section	.text._ZN8MainMenu9StartGameEPN7IwTween6CTweenE,"ax",%progbits
	.align	2
	.global	_ZN8MainMenu9StartGameEPN7IwTween6CTweenE
	.hidden	_ZN8MainMenu9StartGameEPN7IwTween6CTweenE
	.type	_ZN8MainMenu9StartGameEPN7IwTween6CTweenE, %function
_ZN8MainMenu9StartGameEPN7IwTween6CTweenE:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	bl	_Z15GetSceneManagerv(PLT)
	ldr	r1, .L10
.LPIC1:
	add	r1, pc, r1
	bl	_ZN12SceneManager4FindEPKc(PLT)
	mov	r4, r0
	bl	_Z15GetSceneManagerv(PLT)
	mov	r1, r4
	bl	_ZN12SceneManager8SwitchToEP5Scene(PLT)
	mov	r0, r4
	ldmfd	sp!, {r4, lr}
	b	_ZN4Game8New_GameEv(PLT)
.L11:
	.align	2
.L10:
	.word	.LC0-(.LPIC1+8)
	.size	_ZN8MainMenu9StartGameEPN7IwTween6CTweenE, .-_ZN8MainMenu9StartGameEPN7IwTween6CTweenE
	.section	.text._ZN8MainMenuD0Ev,"ax",%progbits
	.align	2
	.global	_ZN8MainMenuD0Ev
	.hidden	_ZN8MainMenuD0Ev
	.type	_ZN8MainMenuD0Ev, %function
_ZN8MainMenuD0Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	mov	r4, r0
	ldr	r3, .L17
	ldr	r5, [r0, #144]
.LPIC2:
	add	r3, pc, r3
	add	r3, r3, #8
	cmp	r5, #0
	str	r3, [r0]
	beq	.L13
	mov	r0, r5
	bl	_ZN6ButtonD1Ev(PLT)
	mov	r0, r5
	bl	_ZdlPv(PLT)
.L13:
	mov	r0, r4
	bl	_ZN5SceneD2Ev(PLT)
	mov	r0, r4
	bl	_ZdlPv(PLT)
	mov	r0, r4
	ldmfd	sp!, {r3, r4, r5, pc}
.L18:
	.align	2
.L17:
	.word	.LANCHOR0-(.LPIC2+8)
	.size	_ZN8MainMenuD0Ev, .-_ZN8MainMenuD0Ev
	.section	.text._ZN8MainMenuC2Ev,"ax",%progbits
	.align	2
	.global	_ZN8MainMenuC2Ev
	.hidden	_ZN8MainMenuC2Ev
	.type	_ZN8MainMenuC2Ev, %function
_ZN8MainMenuC2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	bl	_ZN5SceneC2Ev(PLT)
	ldr	r2, .L20
	mov	r3, #0
.LPIC3:
	add	r2, pc, r2
	add	r2, r2, #8
	str	r2, [r4]
	str	r3, [r4, #144]
	mov	r0, r4
	ldmfd	sp!, {r4, pc}
.L21:
	.align	2
.L20:
	.word	.LANCHOR0-(.LPIC3+8)
	.size	_ZN8MainMenuC2Ev, .-_ZN8MainMenuC2Ev
	.global	_ZN8MainMenuC1Ev
	.hidden	_ZN8MainMenuC1Ev
	.set	_ZN8MainMenuC1Ev,_ZN8MainMenuC2Ev
	.global	__aeabi_ui2f
	.global	__aeabi_fmul
	.global	__aeabi_fdiv
	.section	.text._ZN8MainMenu4InitEv,"ax",%progbits
	.align	2
	.global	_ZN8MainMenu4InitEv
	.hidden	_ZN8MainMenu4InitEv
	.type	_ZN8MainMenu4InitEv, %function
_ZN8MainMenu4InitEv:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #20
	mov	r9, r0
	bl	_ZN5Scene4InitEv(PLT)
	mov	r0, #148
	bl	_Znwj(PLT)
	ldr	r5, .L51
	mov	r6, #1056964608
.LPIC4:
	add	r5, pc, r5
	mov	r4, r0
	bl	_ZN14Iw2DSceneGraph7CSpriteC1Ev(PLT)
	ldr	r2, .L51+4
	mov	r3, r5
	ldr	r7, [r5, r2]
	ldr	r5, [r7]
	ldr	r0, [r5, #536]
	bl	__aeabi_ui2f(PLT)
	mov	r1, r6
	bl	__aeabi_fmul(PLT)
	str	r0, [r4, #4]	@ float
	ldr	r0, [r5, #540]
	bl	__aeabi_ui2f(PLT)
	mov	r1, r6
	bl	__aeabi_fmul(PLT)
	str	r0, [r4, #8]	@ float
	bl	_Z11GetResourcev(PLT)
	ldr	r1, [r0, #28]
	mov	r0, r4
	bl	_ZN14Iw2DSceneGraph7CSprite8SetImageEP10CIw2DImage(PLT)
	mov	r0, r4
	bl	_ZN14Iw2DSceneGraph7CSprite8GetImageEv(PLT)
	ldr	r3, [r0]
	ldr	r3, [r3]
	blx	r3
	str	r0, [r4, #12]	@ float
	mov	r0, r4
	bl	_ZN14Iw2DSceneGraph7CSprite8GetImageEv(PLT)
	ldr	r3, [r0]
	ldr	r3, [r3, #4]
	blx	r3
	ldr	r3, [r7]
	str	r6, [r4, #20]	@ float
	str	r6, [r4, #24]	@ float
	str	r0, [r4, #16]	@ float
	ldr	r0, [r3, #540]
	bl	__aeabi_ui2f(PLT)
	mov	r5, r0
	mov	r0, r4
	bl	_ZN14Iw2DSceneGraph7CSprite8GetImageEv(PLT)
	ldr	r3, [r0]
	ldr	r3, [r3]
	blx	r3
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fdiv(PLT)
	ldr	r3, [r7]
	str	r0, [r4, #28]	@ float
	ldr	r0, [r3, #540]
	bl	__aeabi_ui2f(PLT)
	mov	r5, r0
	mov	r0, r4
	bl	_ZN14Iw2DSceneGraph7CSprite8GetImageEv(PLT)
	ldr	r3, [r0]
	ldr	r3, [r3, #4]
	blx	r3
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fdiv(PLT)
	mov	r1, r4
	str	r0, [r4, #32]	@ float
	mov	r0, r9
	bl	_ZN18Iw2DSceneGraphCore5CNode8AddChildEPS0_(PLT)
	bl	_Z15GetSceneManagerv(PLT)
	ldr	r1, .L51+8
.LPIC5:
	add	r1, pc, r1
	bl	_ZN12SceneManager4FindEPKc(PLT)
	mov	r8, r0
	mov	r0, #148
	bl	_Znwj(PLT)
	mov	r5, r0
	bl	_ZN14Iw2DSceneGraph7CSpriteC1Ev(PLT)
	ldr	r4, [r7]
	ldr	r0, [r4, #536]
	mov	r0, r0, lsr #1
	bl	__aeabi_ui2f(PLT)
	str	r0, [r5, #4]	@ float
	ldr	r0, [r4, #540]
	mov	r0, r0, lsr #1
	bl	__aeabi_ui2f(PLT)
	str	r0, [r5, #8]	@ float
	bl	_Z11GetResourcev(PLT)
	ldr	r1, [r0, #36]
	mov	r0, r5
	bl	_ZN14Iw2DSceneGraph7CSprite8SetImageEP10CIw2DImage(PLT)
	str	r6, [r5, #20]	@ float
	str	r6, [r5, #24]	@ float
	ldr	r3, [r8, #188]	@ float
	mov	r0, #152
	str	r3, [r5, #28]	@ float
	ldr	r3, [r8, #188]	@ float
	str	r3, [r5, #32]	@ float
	bl	_Znwj(PLT)
	mov	r4, r0
	bl	_ZN14Iw2DSceneGraph6CLabelC1Ev(PLT)
	ldr	r2, [r5, #4]	@ float
	mov	r3, #1
	str	r2, [r4, #4]	@ float
	ldr	r2, [r5, #8]	@ float
	str	r2, [r4, #8]	@ float
	ldr	r2, [r5, #12]	@ float
	str	r2, [r4, #12]	@ float
	ldr	r2, [r5, #16]	@ float
	str	r3, [r4, #132]
	str	r2, [r4, #16]	@ float
	str	r3, [r4, #136]
	str	r6, [r4, #20]	@ float
	str	r6, [r4, #24]	@ float
	ldr	r0, [r8, #184]	@ float
	ldr	r1, [r8, #188]	@ float
	bl	__aeabi_fdiv(PLT)
	str	r0, [r4, #28]	@ float
	str	r0, [r4, #32]	@ float
	bl	_Z11GetResourcev(PLT)
	ldr	r3, [r4, #140]
	ldr	r6, [r4, #144]
	rsb	r6, r3, r6
	cmp	r6, #9
	ldr	r2, [r0, #40]
	str	r2, [r4, #128]
	bls	.L23
	ldr	r2, .L51+12
.LPIC6:
	add	r2, pc, r2
	ldmia	r2!, {r0, r1}
	ldrh	r2, [r2]	@ unaligned
	str	r0, [r3]	@ unaligned
	str	r1, [r3, #4]	@ unaligned
	strh	r2, [r3, #8]	@ unaligned
	ldr	r1, [r4, #140]
	ldr	r3, [r4, #144]
	add	r0, r1, #10
	cmp	r0, r3
	beq	.L25
	ldrb	r2, [r3]	@ zero_extendqisi2
	rsb	r3, r0, r3
	strb	r2, [r1, #10]
	ldr	r2, [r4, #144]
	rsb	r3, r3, r2
	str	r3, [r4, #144]
.L25:
	mov	r1, #0
	mov	r3, #255
	mov	r2, r1
	str	r3, [sp]
	add	r0, sp, #12
	mov	r3, r1
	bl	_ZN14Iw2DSceneGraph6CColorC1Ehhhh(PLT)
	ldr	r3, [sp, #12]
	mov	r0, #8
	str	r3, [r4, #116]
	bl	_Znwj(PLT)
	mov	r1, r5
	mov	r2, r4
	mov	r6, r0
	bl	_ZN6ButtonC1EPN14Iw2DSceneGraph7CSpriteEPNS0_6CLabelE(PLT)
	str	r6, [r9, #144]
	add	sp, sp, #20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L23:
	cmp	r6, #0
	moveq	fp, r3
	bne	.L48
.L26:
	ldr	r10, .L51+16
.LPIC8:
	add	r10, pc, r10
	add	r8, r6, r10
	add	r10, r10, #10
	cmp	r8, r10
	beq	.L25
	rsb	r7, r8, r10
	cmn	r7, #1
	beq	.L28
	mvn	r2, #1
	rsb	r2, r7, r2
	cmp	r6, r2
	bhi	.L28
.L36:
	ldr	r1, [r4, #148]
	add	r2, r7, r6
	rsb	r3, r3, r1
	sub	r3, r3, #1
	cmp	r2, r3
	bls	.L29
	add	r3, r6, #1
	cmp	r7, r6
	addcs	r6, r3, r7
	addcc	r6, r3, r6
	cmp	r6, #0
	moveq	r1, fp
	moveq	r10, r6
	bne	.L49
.L30:
	ldr	r2, [r4, #144]
	cmp	r2, r1
	moveq	r0, r10
	beq	.L32
	rsb	fp, r1, r2
	mov	r2, fp
	mov	r0, r10
	bl	memmove(PLT)
	add	r0, r0, fp
.L32:
	mov	r2, r7
	mov	r1, r8
	bl	memcpy(PLT)
	mov	r3, #0
	strb	r3, [r0, r7]
	ldr	r3, [r4, #140]
	add	r7, r0, r7
	cmp	r3, #0
	beq	.L33
	mov	r0, r3
	bl	free(PLT)
.L33:
	add	r6, r10, r6
	str	r6, [r4, #148]
	str	r10, [r4, #140]
	str	r7, [r4, #144]
	b	.L25
.L28:
	ldr	r0, .L51+20
.LPIC12:
	add	r0, pc, r0
	bl	_ZN4_STL24__stl_throw_length_errorEPKc(PLT)
	ldr	fp, [r4, #140]
	mov	r3, fp
	b	.L36
.L29:
	ldr	r3, .L51+24
	add	r1, r8, #1
.LPIC11:
	add	r3, pc, r3
	add	r3, r3, #10
	cmp	r1, r3
	ldr	r0, [r4, #144]
	beq	.L35
	rsb	r2, r1, r10
	add	r0, r0, #1
	bl	memcpy(PLT)
	ldr	r0, [r4, #144]
.L35:
	mov	r3, #0
	strb	r3, [r0, r7]
	ldrb	r2, [r8]	@ zero_extendqisi2
	ldr	r3, [r4, #144]
	strb	r2, [r3]
	ldr	r3, [r4, #144]
	add	r7, r3, r7
	str	r7, [r4, #144]
	b	.L25
.L48:
	ldr	r1, .L51+28
	mov	r0, r3
	mov	r2, r6
.LPIC7:
	add	r1, pc, r1
	bl	memcpy(PLT)
	ldr	r3, [r4, #140]
	ldr	r6, [r4, #144]
	mov	fp, r3
	rsb	r6, r3, r6
	b	.L26
.L49:
	mov	r0, r6
	bl	malloc(PLT)
	cmp	r0, #0
	movne	r1, fp
	beq	.L50
.L31:
	mov	r10, r0
	b	.L30
.L50:
	mov	r0, r6
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	ldr	r1, [r4, #140]
	b	.L31
.L52:
	.align	2
.L51:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC4+8)
	.word	g_IwGxState(GOT)
	.word	.LC0-(.LPIC5+8)
	.word	.LC1-(.LPIC6+8)
	.word	.LC1-(.LPIC8+8)
	.word	.LC2-(.LPIC12+8)
	.word	.LC1-(.LPIC11+8)
	.word	.LC1-(.LPIC7+8)
	.size	_ZN8MainMenu4InitEv, .-_ZN8MainMenu4InitEv
	.section	.text._ZN8MainMenu6UpdateEff,"ax",%progbits
	.align	2
	.global	_ZN8MainMenu6UpdateEff
	.hidden	_ZN8MainMenu6UpdateEff
	.type	_ZN8MainMenu6UpdateEff, %function
_ZN8MainMenu6UpdateEff:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r4, r0
	ldrb	r3, [r0, #120]	@ zero_extendqisi2
	sub	sp, sp, #24
	mov	r6, r1
	cmp	r3, #0
	mov	r5, r2
	bne	.L67
.L53:
	add	sp, sp, #24
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, pc}
.L67:
	bl	_ZN5Scene6UpdateEff(PLT)
	ldr	r0, [r4, #144]
	cmp	r0, #0
	beq	.L56
	mov	r1, r6
	mov	r2, r5
	bl	_ZN6Button6UpdateEff(PLT)
.L56:
	ldrb	r3, [r4, #121]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L53
	ldr	r3, [r4, #124]
	ldr	r3, [r3]
	cmp	r4, r3
	bne	.L53
	bl	_Z8GetInputv(PLT)
	ldrb	r3, [r0, #1]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L53
	bl	_Z8GetInputv(PLT)
	ldrb	r3, [r0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L53
	bl	_Z8GetInputv(PLT)
	bl	_ZN5Input5ResetEv(PLT)
	ldr	r3, [r4, #144]
	ldr	r5, [r3]
	bl	_Z8GetInputv(PLT)
	ldr	r6, [r0, #4]
	bl	_Z8GetInputv(PLT)
	mov	r1, r6
	ldr	r2, [r0, #8]
	mov	r0, r5
	bl	_ZN18Iw2DSceneGraphCore5CNode7HitTestEii(PLT)
	cmp	r0, #0
	beq	.L53
	ldr	r3, .L68
	ldr	ip, .L68+4
	mov	r2, #0
	ldr	lr, .L68+8
	ldr	r1, .L68+12
.LPIC13:
	add	ip, pc, ip
	strd	r2, [sp]
	str	r1, [sp, #16]
	add	r0, r4, #128
	str	lr, [sp, #8]
	str	ip, [sp, #12]
	ldr	r1, .L68+16
	mov	r2, #268
	bl	_ZN7IwTween13CTweenManager5TweenEfz(PLT)
	b	.L53
.L69:
	.align	2
.L68:
	.word	1070596096
	.word	_ZN8MainMenu9StartGameEPN7IwTween6CTweenE-(.LPIC13+8)
	.word	273
	.word	274
	.word	1045220557
	.size	_ZN8MainMenu6UpdateEff, .-_ZN8MainMenu6UpdateEff
	.section	.text._ZN8MainMenu6RenderEv,"ax",%progbits
	.align	2
	.global	_ZN8MainMenu6RenderEv
	.hidden	_ZN8MainMenu6RenderEv
	.type	_ZN8MainMenu6RenderEv, %function
_ZN8MainMenu6RenderEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	ldrb	r3, [r0, #120]	@ zero_extendqisi2
	cmp	r3, #0
	ldmeqfd	sp!, {r4, pc}
	bl	_ZN5Scene6RenderEv(PLT)
	ldr	r0, [r4, #144]
	cmp	r0, #0
	ldmeqfd	sp!, {r4, pc}
	ldmfd	sp!, {r4, lr}
	b	_ZN6Button6RenderEv(PLT)
	.size	_ZN8MainMenu6RenderEv, .-_ZN8MainMenu6RenderEv
	.hidden	_ZTS8MainMenu
	.global	_ZTS8MainMenu
	.hidden	_ZTI8MainMenu
	.global	_ZTI8MainMenu
	.hidden	_ZTV8MainMenu
	.global	_ZTV8MainMenu
	.section	.rodata
	.align	2
	.type	_ZTS8MainMenu, %object
	.size	_ZTS8MainMenu, 10
_ZTS8MainMenu:
	.ascii	"8MainMenu\000"
	.section	.data.rel.ro,"aw",%progbits
	.align	3
	.set	.LANCHOR0,. + 0
	.type	_ZTV8MainMenu, %object
	.size	_ZTV8MainMenu, 28
_ZTV8MainMenu:
	.word	0
	.word	_ZTI8MainMenu
	.word	_ZN8MainMenuD1Ev
	.word	_ZN8MainMenuD0Ev
	.word	_ZN8MainMenu6UpdateEff
	.word	_ZN8MainMenu6RenderEv
	.word	_ZN8MainMenu4InitEv
	.type	_ZTI8MainMenu, %object
	.size	_ZTI8MainMenu, 12
_ZTI8MainMenu:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTS8MainMenu
	.word	_ZTI5Scene
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"game\000"
	.space	3
.LC1:
	.ascii	"Start Game\000"
	.space	1
.LC2:
	.ascii	"basic_string\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-branch revision 208322]"
