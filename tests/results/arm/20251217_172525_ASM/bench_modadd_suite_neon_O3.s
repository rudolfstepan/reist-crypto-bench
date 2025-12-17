	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 26, 0	sdk_version 26, 2
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
; %bb.0:
	stp	d11, d10, [sp, #-128]!          ; 16-byte Folded Spill
	stp	d9, d8, [sp, #16]               ; 16-byte Folded Spill
	stp	x28, x27, [sp, #32]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #48]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #64]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #80]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #96]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	sub	sp, sp, #1088
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	.cfi_offset b8, -104
	.cfi_offset b9, -112
	.cfi_offset b10, -120
	.cfi_offset b11, -128
Lloh0:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh1:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh2:
	ldr	x8, [x8]
	stur	x8, [x29, #-128]
	mov	x25, #-9                        ; =0xfffffffffffffff7
	movk	x25, #32767, lsl #48
	cmp	w0, #2
	b.lt	LBB0_4
; %bb.1:
	mov	x19, x1
	mov	x20, x0
	ldr	x22, [x1, #8]
	mov	x0, x22
	bl	_strlen
	cmp	x0, x25
	b.hi	LBB0_298
; %bb.2:
	mov	x21, x0
	cmp	x0, #23
	b.hs	LBB0_5
; %bb.3:
	strb	w21, [sp, #519]
	add	x23, sp, #496
	cbnz	x21, LBB0_6
	b	LBB0_7
LBB0_4:
	mov	w21, #61568                     ; =0xf080
	movk	w21, #762, lsl #16
	b	LBB0_11
LBB0_5:
	orr	x8, x21, #0x7
	cmp	x8, #23
	mov	w9, #25                         ; =0x19
	csinc	x24, x9, x8, eq
	mov	x0, x24
	bl	__Znwm
	mov	x23, x0
	orr	x8, x24, #0x8000000000000000
	stp	x21, x8, [sp, #504]
	str	x0, [sp, #496]
LBB0_6:
	mov	x0, x23
	mov	x1, x22
	mov	x2, x21
	bl	_memmove
LBB0_7:
	strb	wzr, [x23, x21]
Ltmp0:
	add	x0, sp, #496
	mov	x1, #0                          ; =0x0
	mov	w2, #10                         ; =0xa
	bl	__ZNSt3__15stollERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPmi
Ltmp1:
; %bb.8:
	mov	x21, x0
	ldrsb	w8, [sp, #519]
	tbnz	w8, #31, LBB0_85
; %bb.9:
	cmp	x21, #0
	b.le	LBB0_86
LBB0_10:
	cmp	w20, #2
	b.ne	LBB0_88
LBB0_11:
Ltmp13:
	mov	w0, #48                         ; =0x30
	bl	__Znwm
Ltmp14:
; %bb.12:
	mov	x23, x0
Lloh3:
	adrp	x8, l_constinit@PAGE
Lloh4:
	add	x8, x8, l_constinit@PAGEOFF
	ldp	q0, q1, [x8]
	stp	q0, q1, [x0]
	ldr	q0, [x8, #32]
	str	q0, [x0, #32]
	add	x20, x0, #48
LBB0_13:
	sub	x9, x20, x23
	asr	x8, x9, #3
	add	x19, x8, x9, asr #2
	lsr	x9, x19, #59
	str	x23, [sp, #8]                   ; 8-byte Folded Spill
	cbnz	x9, LBB0_297
; %bb.14:
	add	x8, x8, x8, lsl #1
	lsl	x0, x8, #5
Ltmp15:
	bl	__Znwm
Ltmp16:
; %bb.15:
	mov	x22, x0
	str	x20, [sp, #24]                  ; 8-byte Folded Spill
	str	x21, [sp, #56]                  ; 8-byte Folded Spill
	stp	xzr, xzr, [sp, #208]
	str	xzr, [sp, #224]
	stp	xzr, xzr, [sp, #176]
	str	xzr, [sp, #192]
	stp	xzr, xzr, [sp, #144]
	str	xzr, [sp, #160]
	stp	xzr, xzr, [sp, #120]
	str	xzr, [sp, #136]
	stp	xzr, xzr, [sp, #96]
	str	xzr, [sp, #112]
Ltmp17:
Lloh5:
	adrp	x1, l_.str.1@PAGE
Lloh6:
	add	x1, x1, l_.str.1@PAGEOFF
	add	x0, sp, #496
	mov	w2, #8                          ; =0x8
	bl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEC1EPKcj
Ltmp18:
; %bb.16:
	stp	xzr, xzr, [sp, #240]
	mov	w25, #19744                     ; =0x4d20
	movk	w25, #31304, lsl #16
	str	xzr, [sp, #256]
	mov	x21, #28525                     ; =0x6f6d
	movk	x21, #25956, lsl #16
	movk	x21, #8300, lsl #32
	movk	x21, #24942, lsl #48
	mov	w27, #25965                     ; =0x656d
	str	x22, [sp, #40]                  ; 8-byte Folded Spill
	add	x8, x22, x19, lsl #5
	str	x8, [sp, #64]                   ; 8-byte Folded Spill
	b	LBB0_19
LBB0_17:                                ;   in Loop: Header=BB0_19 Depth=1
	strb	wzr, [x20, x22]
	ldrsb	w8, [sp, #199]
	tbnz	w8, #31, LBB0_71
LBB0_18:                                ;   in Loop: Header=BB0_19 Depth=1
	ldur	q0, [sp, #72]
	str	q0, [sp, #176]
	ldr	x8, [sp, #88]
	str	x8, [sp, #192]
LBB0_19:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_26 Depth 2
                                        ;     Child Loop BB0_32 Depth 2
                                        ;     Child Loop BB0_47 Depth 2
                                        ;     Child Loop BB0_53 Depth 2
	ldr	x8, [sp, #496]
	ldur	x9, [x8, #-24]
Ltmp20:
	add	x8, sp, #72
	add	x10, sp, #496
	add	x0, x10, x9
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp21:
; %bb.20:                               ;   in Loop: Header=BB0_19 Depth=1
Ltmp22:
	add	x0, sp, #72
Lloh7:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh8:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp23:
; %bb.21:                               ;   in Loop: Header=BB0_19 Depth=1
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp24:
	mov	w1, #10                         ; =0xa
	blr	x8
Ltmp25:
; %bb.22:                               ;   in Loop: Header=BB0_19 Depth=1
	mov	x20, x0
	add	x0, sp, #72
	bl	__ZNSt3__16localeD1Ev
Ltmp27:
	add	x0, sp, #496
	add	x1, sp, #240
	mov	x2, x20
	bl	__ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
Ltmp28:
; %bb.23:                               ;   in Loop: Header=BB0_19 Depth=1
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x8, x0, x8
	ldrb	w20, [sp, #263]
	sxtb	w24, w20
	ldrb	w8, [x8, #32]
	mov	w9, #5                          ; =0x5
	tst	w8, w9
	b.ne	LBB0_72
; %bb.24:                               ;   in Loop: Header=BB0_19 Depth=1
	cmp	w24, #0
	ldp	x19, x23, [sp, #240]
	add	x8, sp, #240
	csel	x22, x19, x8, lt
	csel	x8, x23, x20, lt
	cmp	x8, #10
	b.lt	LBB0_45
; %bb.25:                               ;   in Loop: Header=BB0_19 Depth=1
	add	x26, x22, x8
	mov	x28, x8
	mov	x0, x22
LBB0_26:                                ;   Parent Loop BB0_19 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	sub	x2, x8, #9
	mov	w1, #109                        ; =0x6d
	bl	_memchr
	cbz	x0, LBB0_45
; %bb.27:                               ;   in Loop: Header=BB0_26 Depth=2
	ldr	x8, [x0]
	ldrh	w9, [x0, #8]
	cmp	x8, x21
	ccmp	w9, w27, #0, eq
	b.eq	LBB0_29
; %bb.28:                               ;   in Loop: Header=BB0_26 Depth=2
	add	x0, x0, #1
	sub	x8, x26, x0
	cmp	x8, #10
	b.ge	LBB0_26
	b	LBB0_45
LBB0_29:                                ;   in Loop: Header=BB0_19 Depth=1
	cmp	x0, x26
	b.eq	LBB0_45
; %bb.30:                               ;   in Loop: Header=BB0_19 Depth=1
	sub	x8, x0, x22
	cmn	x8, #1
	b.eq	LBB0_45
; %bb.31:                               ;   in Loop: Header=BB0_19 Depth=1
	mov	x2, x28
	mov	x0, x22
LBB0_32:                                ;   Parent Loop BB0_19 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	mov	w1, #58                         ; =0x3a
	bl	_memchr
	cbz	x0, LBB0_35
; %bb.33:                               ;   in Loop: Header=BB0_32 Depth=2
	ldrb	w8, [x0]
	cmp	w8, #58
	b.eq	LBB0_36
; %bb.34:                               ;   in Loop: Header=BB0_32 Depth=2
	add	x0, x0, #1
	sub	x2, x26, x0
	cmp	x2, #0
	b.gt	LBB0_32
LBB0_35:                                ;   in Loop: Header=BB0_19 Depth=1
	mov	x0, x26
LBB0_36:                                ;   in Loop: Header=BB0_19 Depth=1
	sub	x8, x0, x22
	add	x8, x8, #2
	cmp	x0, x26
	csinc	x26, x8, xzr, ne
	tbnz	w24, #31, LBB0_39
; %bb.37:                               ;   in Loop: Header=BB0_19 Depth=1
	cmp	x26, x20
	b.hi	LBB0_292
; %bb.38:                               ;   in Loop: Header=BB0_19 Depth=1
	add	x19, sp, #240
	mov	x23, x20
	b	LBB0_40
LBB0_39:                                ;   in Loop: Header=BB0_19 Depth=1
	cmp	x23, x26
	b.lo	LBB0_292
LBB0_40:                                ;   in Loop: Header=BB0_19 Depth=1
	sub	x22, x23, x26
	mov	x8, #-9                         ; =0xfffffffffffffff7
	movk	x8, #32767, lsl #48
	cmp	x22, x8
	b.hi	LBB0_293
; %bb.41:                               ;   in Loop: Header=BB0_19 Depth=1
	cmp	x22, #23
	b.hs	LBB0_60
; %bb.42:                               ;   in Loop: Header=BB0_19 Depth=1
	strb	w22, [sp, #95]
	add	x20, sp, #72
	cmp	x23, x26
	b.ne	LBB0_62
; %bb.43:                               ;   in Loop: Header=BB0_19 Depth=1
	strb	wzr, [x20, x22]
	ldrsb	w8, [sp, #231]
	tbnz	w8, #31, LBB0_63
LBB0_44:                                ;   in Loop: Header=BB0_19 Depth=1
	ldur	q0, [sp, #72]
	str	q0, [sp, #208]
	ldr	x8, [sp, #88]
	str	x8, [sp, #224]
	ldrb	w20, [sp, #263]
	ldp	x19, x23, [sp, #240]
	mov	x24, x20
LBB0_45:                                ;   in Loop: Header=BB0_19 Depth=1
	sxtb	w8, w24
	cmp	w8, #0
	add	x8, sp, #240
	csel	x26, x19, x8, lt
	csel	x22, x23, x20, lt
	cmp	x22, #7
	b.lt	LBB0_19
; %bb.46:                               ;   in Loop: Header=BB0_19 Depth=1
	add	x28, x26, x22
	mov	x8, x22
	mov	x0, x26
LBB0_47:                                ;   Parent Loop BB0_19 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	sub	x2, x8, #6
	mov	w1, #99                         ; =0x63
	bl	_memchr
	cbz	x0, LBB0_19
; %bb.48:                               ;   in Loop: Header=BB0_47 Depth=2
	ldr	w8, [x0]
	ldur	w9, [x0, #3]
	mov	w10, #28771                     ; =0x7063
	movk	w10, #8309, lsl #16
	cmp	w8, w10
	ccmp	w9, w25, #0, eq
	b.eq	LBB0_50
; %bb.49:                               ;   in Loop: Header=BB0_47 Depth=2
	add	x0, x0, #1
	sub	x8, x28, x0
	cmp	x8, #7
	b.ge	LBB0_47
	b	LBB0_19
LBB0_50:                                ;   in Loop: Header=BB0_19 Depth=1
	cmp	x0, x28
	b.eq	LBB0_19
; %bb.51:                               ;   in Loop: Header=BB0_19 Depth=1
	sub	x8, x0, x26
	cmn	x8, #1
	b.eq	LBB0_19
; %bb.52:                               ;   in Loop: Header=BB0_19 Depth=1
	mov	x0, x26
LBB0_53:                                ;   Parent Loop BB0_19 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	mov	w1, #58                         ; =0x3a
	mov	x2, x22
	bl	_memchr
	cbz	x0, LBB0_56
; %bb.54:                               ;   in Loop: Header=BB0_53 Depth=2
	ldrb	w8, [x0]
	cmp	w8, #58
	b.eq	LBB0_57
; %bb.55:                               ;   in Loop: Header=BB0_53 Depth=2
	add	x0, x0, #1
	sub	x22, x28, x0
	cmp	x22, #0
	b.gt	LBB0_53
LBB0_56:                                ;   in Loop: Header=BB0_19 Depth=1
	mov	x0, x28
LBB0_57:                                ;   in Loop: Header=BB0_19 Depth=1
	sub	x8, x0, x26
	add	x8, x8, #2
	cmp	x0, x28
	csinc	x26, x8, xzr, ne
	tbnz	w24, #7, LBB0_64
; %bb.58:                               ;   in Loop: Header=BB0_19 Depth=1
	cmp	x26, x20
	b.hi	LBB0_294
; %bb.59:                               ;   in Loop: Header=BB0_19 Depth=1
	add	x19, sp, #240
	mov	x23, x20
	b	LBB0_65
LBB0_60:                                ;   in Loop: Header=BB0_19 Depth=1
	orr	x8, x22, #0x7
	cmp	x8, #23
	mov	w9, #25                         ; =0x19
	csinc	x23, x9, x8, eq
Ltmp236:
	mov	x0, x23
	bl	__Znwm
Ltmp237:
; %bb.61:                               ;   in Loop: Header=BB0_19 Depth=1
	mov	x20, x0
	orr	x8, x23, #0x8000000000000000
	stp	x22, x8, [sp, #80]
	str	x0, [sp, #72]
LBB0_62:                                ;   in Loop: Header=BB0_19 Depth=1
	add	x1, x19, x26
	mov	x0, x20
	mov	x2, x22
	bl	_memmove
	strb	wzr, [x20, x22]
	ldrsb	w8, [sp, #231]
	tbz	w8, #31, LBB0_44
LBB0_63:                                ;   in Loop: Header=BB0_19 Depth=1
	ldr	x0, [sp, #208]
	bl	__ZdlPv
	b	LBB0_44
LBB0_64:                                ;   in Loop: Header=BB0_19 Depth=1
	cmp	x23, x26
	b.lo	LBB0_294
LBB0_65:                                ;   in Loop: Header=BB0_19 Depth=1
	sub	x22, x23, x26
	mov	x8, #-9                         ; =0xfffffffffffffff7
	movk	x8, #32767, lsl #48
	cmp	x22, x8
	b.hi	LBB0_295
; %bb.66:                               ;   in Loop: Header=BB0_19 Depth=1
	cmp	x22, #23
	b.hs	LBB0_68
; %bb.67:                               ;   in Loop: Header=BB0_19 Depth=1
	strb	w22, [sp, #95]
	add	x20, sp, #72
	cmp	x23, x26
	b.ne	LBB0_70
	b	LBB0_17
LBB0_68:                                ;   in Loop: Header=BB0_19 Depth=1
	orr	x8, x22, #0x7
	cmp	x8, #23
	mov	w9, #25                         ; =0x19
	csinc	x23, x9, x8, eq
Ltmp244:
	mov	x0, x23
	bl	__Znwm
Ltmp245:
; %bb.69:                               ;   in Loop: Header=BB0_19 Depth=1
	mov	x20, x0
	orr	x8, x23, #0x8000000000000000
	stp	x22, x8, [sp, #80]
	str	x0, [sp, #72]
LBB0_70:                                ;   in Loop: Header=BB0_19 Depth=1
	add	x1, x19, x26
	mov	x0, x20
	mov	x2, x22
	bl	_memmove
	strb	wzr, [x20, x22]
	ldrsb	w8, [sp, #199]
	tbz	w8, #31, LBB0_18
LBB0_71:                                ;   in Loop: Header=BB0_19 Depth=1
	ldr	x0, [sp, #176]
	bl	__ZdlPv
	b	LBB0_18
LBB0_72:
	tbz	w24, #31, LBB0_74
; %bb.73:
	ldr	x0, [sp, #240]
	bl	__ZdlPv
LBB0_74:
Lloh9:
	adrp	x21, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh10:
	ldr	x21, [x21, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	ldr	x23, [x21]
	str	x23, [sp, #496]
	ldr	x24, [x21, #24]
	ldur	x8, [x23, #-24]
	add	x19, sp, #496
	str	x24, [x19, x8]
	add	x0, x19, #16
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
	add	x0, sp, #496
	add	x1, x21, #8
	bl	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	add	x0, x19, #424
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
Ltmp30:
Lloh11:
	adrp	x1, l_.str.5@PAGE
Lloh12:
	add	x1, x1, l_.str.5@PAGEOFF
	add	x19, sp, #496
	add	x0, sp, #496
	mov	w2, #8                          ; =0x8
	bl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEC1EPKcj
Ltmp31:
; %bb.75:
	stp	xzr, xzr, [sp, #240]
	str	xzr, [sp, #256]
	ldr	x8, [sp, #496]
	ldur	x9, [x8, #-24]
Ltmp33:
	add	x8, sp, #72
	add	x0, x19, x9
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp34:
; %bb.76:
Ltmp35:
Lloh13:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh14:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #72
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp36:
; %bb.77:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp37:
	mov	w1, #10                         ; =0xa
	blr	x8
Ltmp38:
; %bb.78:
	mov	x19, x0
	add	x0, sp, #72
	bl	__ZNSt3__16localeD1Ev
Ltmp40:
	add	x0, sp, #496
	add	x1, sp, #240
	mov	x2, x19
	bl	__ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
Ltmp41:
; %bb.79:
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x8, x0, x8
	ldrb	w8, [x8, #32]
	mov	w9, #5                          ; =0x5
	tst	w8, w9
	b.ne	LBB0_118
; %bb.80:
	ldrsb	x20, [sp, #263]
	add	x8, sp, #240
	ldp	x25, x22, [sp, #240]
	cmp	x20, #0
	csel	x26, x25, x8, lt
	cmp	w20, #0
	csel	x19, x22, x20, lt
	cmp	x19, #8
	b.lt	LBB0_118
; %bb.81:
	add	x27, x26, x19
	mov	x28, #25933                     ; =0x654d
	movk	x28, #21613, lsl #16
	movk	x28, #29807, lsl #32
	movk	x28, #27745, lsl #48
	mov	x8, x19
	mov	x0, x26
LBB0_82:                                ; =>This Inner Loop Header: Depth=1
	sub	x2, x8, #7
	mov	w1, #77                         ; =0x4d
	bl	_memchr
	cbz	x0, LBB0_118
; %bb.83:                               ;   in Loop: Header=BB0_82 Depth=1
	ldr	x8, [x0]
	cmp	x8, x28
	b.eq	LBB0_98
; %bb.84:                               ;   in Loop: Header=BB0_82 Depth=1
	add	x0, x0, #1
	sub	x8, x27, x0
	cmp	x8, #8
	b.ge	LBB0_82
	b	LBB0_118
LBB0_85:
	ldr	x0, [sp, #496]
	bl	__ZdlPv
	cmp	x21, #0
	b.gt	LBB0_10
LBB0_86:
Ltmp255:
Lloh15:
	adrp	x0, __ZNSt3__14cerrE@GOTPAGE
Lloh16:
	ldr	x0, [x0, __ZNSt3__14cerrE@GOTPAGEOFF]
Lloh17:
	adrp	x1, l_.str@PAGE
Lloh18:
	add	x1, x1, l_.str@PAGEOFF
	mov	w2, #14                         ; =0xe
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp256:
; %bb.87:
	mov	w0, #1                          ; =0x1
	b	LBB0_279
LBB0_88:
	ldr	x20, [x19, #16]
	mov	x0, x20
	bl	_strlen
	cmp	x0, x25
	b.hi	LBB0_300
; %bb.89:
	mov	x19, x0
	cmp	x0, #23
	b.hs	LBB0_91
; %bb.90:
	strb	w19, [sp, #519]
	add	x22, sp, #496
	cbnz	x19, LBB0_93
	b	LBB0_94
LBB0_91:
	orr	x8, x19, #0x7
	cmp	x8, #23
	mov	w9, #25                         ; =0x19
	csinc	x23, x9, x8, eq
Ltmp3:
	mov	x0, x23
	bl	__Znwm
Ltmp4:
; %bb.92:
	mov	x22, x0
	orr	x8, x23, #0x8000000000000000
	stp	x19, x8, [sp, #504]
	str	x0, [sp, #496]
LBB0_93:
	mov	x0, x22
	mov	x1, x20
	mov	x2, x19
	bl	_memmove
LBB0_94:
	strb	wzr, [x22, x19]
Ltmp5:
	add	x0, sp, #496
	mov	x1, #0                          ; =0x0
	mov	w2, #10                         ; =0xa
	bl	__ZNSt3__15stollERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPmi
Ltmp6:
; %bb.95:
Ltmp7:
	mov	x19, x0
	mov	w0, #8                          ; =0x8
	bl	__Znwm
Ltmp8:
; %bb.96:
	mov	x23, x0
	mov	x20, x0
	str	x19, [x20], #8
	ldrsb	w8, [sp, #519]
	tbz	w8, #31, LBB0_13
; %bb.97:
	ldr	x0, [sp, #496]
	bl	__ZdlPv
	b	LBB0_13
LBB0_98:
	cmp	x0, x27
	b.eq	LBB0_118
; %bb.99:
	sub	x8, x0, x26
	cmn	x8, #1
	b.eq	LBB0_118
; %bb.100:
	mov	x0, x26
LBB0_101:                               ; =>This Inner Loop Header: Depth=1
	mov	w1, #58                         ; =0x3a
	mov	x2, x19
	bl	_memchr
	cbz	x0, LBB0_104
; %bb.102:                              ;   in Loop: Header=BB0_101 Depth=1
	ldrb	w8, [x0]
	cmp	w8, #58
	b.eq	LBB0_105
; %bb.103:                              ;   in Loop: Header=BB0_101 Depth=1
	add	x0, x0, #1
	sub	x19, x27, x0
	cmp	x19, #0
	b.gt	LBB0_101
LBB0_104:
	mov	x0, x27
LBB0_105:
	sub	x8, x0, x26
	add	x8, x8, #2
	cmp	x0, x27
	csinc	x26, x8, xzr, ne
	tbnz	w20, #31, LBB0_108
; %bb.106:
	cmp	x26, x20
	b.hi	LBB0_301
; %bb.107:
	add	x25, sp, #240
	mov	x22, x20
	b	LBB0_109
LBB0_108:
	cmp	x22, x26
	b.lo	LBB0_301
LBB0_109:
	sub	x19, x22, x26
	mov	x8, #-9                         ; =0xfffffffffffffff7
	movk	x8, #32767, lsl #48
	cmp	x19, x8
	b.hi	LBB0_302
; %bb.110:
	cmp	x19, #23
	b.hs	LBB0_112
; %bb.111:
	strb	w19, [sp, #95]
	add	x20, sp, #72
	cmp	x22, x26
	b.ne	LBB0_114
	b	LBB0_115
LBB0_112:
	orr	x8, x19, #0x7
	cmp	x8, #23
	mov	w9, #25                         ; =0x19
	csinc	x22, x9, x8, eq
Ltmp43:
	mov	x0, x22
	bl	__Znwm
Ltmp44:
; %bb.113:
	mov	x20, x0
	orr	x8, x22, #0x8000000000000000
	stp	x19, x8, [sp, #80]
	str	x0, [sp, #72]
LBB0_114:
	add	x1, x25, x26
	mov	x0, x20
	mov	x2, x19
	bl	_memmove
LBB0_115:
	strb	wzr, [x20, x19]
	ldrsb	w8, [sp, #167]
	tbz	w8, #31, LBB0_117
; %bb.116:
	ldr	x0, [sp, #144]
	bl	__ZdlPv
LBB0_117:
	ldur	q0, [sp, #72]
	str	q0, [sp, #144]
	ldr	x8, [sp, #88]
	str	x8, [sp, #160]
LBB0_118:
	ldrsb	w8, [sp, #263]
	tbz	w8, #31, LBB0_120
; %bb.119:
	ldr	x0, [sp, #240]
	bl	__ZdlPv
LBB0_120:
	str	x23, [sp, #496]
	ldur	x8, [x23, #-24]
	add	x19, sp, #496
	str	x24, [x19, x8]
	add	x0, x19, #16
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
	add	x0, sp, #496
	add	x1, x21, #8
	bl	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	add	x0, x19, #424
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
Ltmp50:
	add	x0, sp, #240
	mov	w1, #256                        ; =0x100
	ldr	x25, [sp, #40]                  ; 8-byte Folded Reload
	bl	_gethostname
Ltmp51:
	ldp	x21, x22, [sp, #56]             ; 16-byte Folded Reload
; %bb.121:
	cbnz	w0, LBB0_123
; %bb.122:
Ltmp52:
	add	x0, sp, #120
	add	x1, sp, #240
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc
Ltmp53:
LBB0_123:
Ltmp54:
Lloh19:
	adrp	x0, l_.str.7@PAGE
Lloh20:
	add	x0, x0, l_.str.7@PAGEOFF
Lloh21:
	adrp	x1, l_.str.8@PAGE
Lloh22:
	add	x1, x1, l_.str.8@PAGEOFF
	bl	_popen
Ltmp55:
; %bb.124:
	mov	x19, x0
	cbz	x0, LBB0_143
; %bb.125:
	add	x0, sp, #496
	mov	w1, #128                        ; =0x80
	mov	x2, x19
	bl	_fgets
	cbz	x0, LBB0_142
; %bb.126:
	add	x0, sp, #496
	bl	_strlen
	mov	x8, #-9                         ; =0xfffffffffffffff7
	movk	x8, #32767, lsl #48
	cmp	x0, x8
	b.hi	LBB0_299
; %bb.127:
	mov	x22, x0
	cmp	x0, #23
	b.hs	LBB0_134
; %bb.128:
	strb	w22, [sp, #95]
	add	x20, sp, #72
	cbnz	x22, LBB0_136
; %bb.129:
	strb	wzr, [x20, x22]
	ldrsb	w8, [sp, #119]
	tbnz	w8, #31, LBB0_137
LBB0_130:
	ldr	x8, [sp, #88]
	str	x8, [sp, #112]
	ldur	q0, [sp, #72]
	str	q0, [sp, #96]
	ldrsb	x8, [sp, #119]
	ldr	x25, [sp, #40]                  ; 8-byte Folded Reload
	ldr	x22, [sp, #64]                  ; 8-byte Folded Reload
	tbnz	x8, #63, LBB0_138
; %bb.131:
	cbz	w8, LBB0_142
; %bb.132:
	add	x9, sp, #96
	add	x9, x9, x8
	ldurb	w9, [x9, #-1]
	cmp	w9, #10
	b.ne	LBB0_142
; %bb.133:
	sub	x9, x8, #1
	strb	w9, [sp, #119]
	add	x8, sp, #96
	b	LBB0_141
LBB0_134:
	orr	x8, x22, #0x7
	cmp	x8, #23
	mov	w9, #25                         ; =0x19
	csinc	x23, x9, x8, eq
Ltmp57:
	mov	x0, x23
	bl	__Znwm
Ltmp58:
; %bb.135:
	mov	x20, x0
	orr	x8, x23, #0x8000000000000000
	stp	x22, x8, [sp, #80]
	str	x0, [sp, #72]
LBB0_136:
	add	x1, sp, #496
	mov	x0, x20
	mov	x2, x22
	bl	_memcpy
	strb	wzr, [x20, x22]
	ldrsb	w8, [sp, #119]
	tbz	w8, #31, LBB0_130
LBB0_137:
	ldr	x0, [sp, #96]
	bl	__ZdlPv
	b	LBB0_130
LBB0_138:
	ldr	x9, [sp, #104]
	cbz	x9, LBB0_142
; %bb.139:
	ldr	x8, [sp, #96]
	add	x10, x8, x9
	ldurb	w10, [x10, #-1]
	cmp	w10, #10
	b.ne	LBB0_142
; %bb.140:
	sub	x9, x9, #1
	str	x9, [sp, #104]
LBB0_141:
	strb	wzr, [x8, x9]
LBB0_142:
	mov	x0, x19
	bl	_pclose
LBB0_143:
Lloh23:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh24:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	ldr	x8, [x0]
	ldur	x9, [x8, #-24]
	add	x9, x0, x9
	ldr	w10, [x9, #8]
	and	w10, w10, #0xfffffeff
	orr	w10, w10, #0x4
	str	w10, [x9, #8]
	ldur	x8, [x8, #-24]
	add	x8, x0, x8
	mov	w9, #6                          ; =0x6
	str	x9, [x8, #16]
Ltmp62:
Lloh25:
	adrp	x1, l_.str.9@PAGE
Lloh26:
	add	x1, x1, l_.str.9@PAGEOFF
	mov	w2, #41                         ; =0x29
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp63:
; %bb.144:
Ltmp64:
Lloh27:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh28:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh29:
	adrp	x1, l_.str.10@PAGE
Lloh30:
	add	x1, x1, l_.str.10@PAGEOFF
	mov	w2, #41                         ; =0x29
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp65:
; %bb.145:
Ltmp66:
Lloh31:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh32:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh33:
	adrp	x1, l_.str.9@PAGE
Lloh34:
	add	x1, x1, l_.str.9@PAGEOFF
	mov	w2, #41                         ; =0x29
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp67:
; %bb.146:
Ltmp68:
Lloh35:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh36:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh37:
	adrp	x1, l_.str.11@PAGE
Lloh38:
	add	x1, x1, l_.str.11@PAGEOFF
	mov	w2, #20                         ; =0x14
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp69:
; %bb.147:
Ltmp70:
Lloh39:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh40:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh41:
	adrp	x1, l_.str.12@PAGE
Lloh42:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #12                         ; =0xc
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp71:
; %bb.148:
	ldrb	w8, [sp, #143]
	sxtb	w9, w8
	ldp	x10, x11, [sp, #120]
	cmp	w9, #0
	add	x9, sp, #120
	csel	x1, x10, x9, lt
	csel	x2, x11, x8, lt
Ltmp72:
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp73:
; %bb.149:
Ltmp74:
Lloh43:
	adrp	x1, l_.str.13@PAGE
Lloh44:
	add	x1, x1, l_.str.13@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp75:
; %bb.150:
Ltmp76:
Lloh45:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh46:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh47:
	adrp	x1, l_.str.14@PAGE
Lloh48:
	add	x1, x1, l_.str.14@PAGEOFF
	mov	w2, #6                          ; =0x6
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp77:
; %bb.151:
	ldrb	w8, [sp, #119]
	sxtb	w9, w8
	ldp	x10, x11, [sp, #96]
	cmp	w9, #0
	add	x9, sp, #96
	csel	x1, x10, x9, lt
	csel	x2, x11, x8, lt
Ltmp78:
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp79:
; %bb.152:
Ltmp80:
Lloh49:
	adrp	x1, l_.str.13@PAGE
Lloh50:
	add	x1, x1, l_.str.13@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp81:
; %bb.153:
Ltmp82:
Lloh51:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh52:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh53:
	adrp	x1, l_.str.15@PAGE
Lloh54:
	add	x1, x1, l_.str.15@PAGEOFF
	mov	w2, #13                         ; =0xd
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp83:
; %bb.154:
	ldrb	w8, [sp, #231]
	sxtb	w9, w8
	ldp	x10, x11, [sp, #208]
	cmp	w9, #0
	add	x9, sp, #208
	csel	x1, x10, x9, lt
	csel	x2, x11, x8, lt
Ltmp84:
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp85:
; %bb.155:
Ltmp86:
Lloh55:
	adrp	x1, l_.str.13@PAGE
Lloh56:
	add	x1, x1, l_.str.13@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp87:
; %bb.156:
Ltmp88:
Lloh57:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh58:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh59:
	adrp	x1, l_.str.16@PAGE
Lloh60:
	add	x1, x1, l_.str.16@PAGEOFF
	mov	w2, #11                         ; =0xb
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp89:
; %bb.157:
	ldrb	w8, [sp, #199]
	sxtb	w9, w8
	ldp	x10, x11, [sp, #176]
	cmp	w9, #0
	add	x9, sp, #176
	csel	x1, x10, x9, lt
	csel	x2, x11, x8, lt
Ltmp90:
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp91:
; %bb.158:
Ltmp92:
Lloh61:
	adrp	x1, l_.str.13@PAGE
Lloh62:
	add	x1, x1, l_.str.13@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp93:
; %bb.159:
Ltmp94:
Lloh63:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh64:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh65:
	adrp	x1, l_.str.17@PAGE
Lloh66:
	add	x1, x1, l_.str.17@PAGEOFF
	mov	w2, #10                         ; =0xa
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp95:
; %bb.160:
	ldrb	w8, [sp, #167]
	sxtb	w9, w8
	ldp	x10, x11, [sp, #144]
	cmp	w9, #0
	add	x9, sp, #144
	csel	x1, x10, x9, lt
	csel	x2, x11, x8, lt
Ltmp96:
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp97:
; %bb.161:
Ltmp98:
Lloh67:
	adrp	x1, l_.str.13@PAGE
Lloh68:
	add	x1, x1, l_.str.13@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp99:
; %bb.162:
Ltmp100:
Lloh69:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh70:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh71:
	adrp	x1, l_.str.18@PAGE
Lloh72:
	add	x1, x1, l_.str.18@PAGEOFF
	mov	w2, #42                         ; =0x2a
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp101:
; %bb.163:
Ltmp102:
Lloh73:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh74:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh75:
	adrp	x1, l_.str.19@PAGE
Lloh76:
	add	x1, x1, l_.str.19@PAGEOFF
	mov	w2, #33                         ; =0x21
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp103:
; %bb.164:
Ltmp104:
	mov	x1, x21
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
Ltmp105:
; %bb.165:
Ltmp106:
Lloh77:
	adrp	x1, l_.str.13@PAGE
Lloh78:
	add	x1, x1, l_.str.13@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp107:
; %bb.166:
Ltmp108:
Lloh79:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh80:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh81:
	adrp	x1, l_.str.20@PAGE
Lloh82:
	add	x1, x1, l_.str.20@PAGEOFF
	mov	w2, #7                          ; =0x7
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp109:
; %bb.167:
Ltmp110:
	mov	w1, #3                          ; =0x3
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
Ltmp111:
; %bb.168:
Ltmp112:
Lloh83:
	adrp	x1, l_.str.21@PAGE
Lloh84:
	add	x1, x1, l_.str.21@PAGEOFF
	mov	w2, #2                          ; =0x2
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp113:
; %bb.169:
Ltmp114:
Lloh85:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh86:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh87:
	adrp	x1, l_.str.22@PAGE
Lloh88:
	add	x1, x1, l_.str.22@PAGEOFF
	mov	w2, #49                         ; =0x31
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp115:
; %bb.170:
	lsr	x8, x21, #2
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	and	x8, x21, #0x3
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
Lloh89:
	adrp	x19, __ZNSt3__14coutE@GOTPAGE
Lloh90:
	ldr	x19, [x19, __ZNSt3__14coutE@GOTPAGEOFF]
	mov	x24, x25
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
LBB0_171:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_175 Depth 2
                                        ;     Child Loop BB0_188 Depth 2
                                        ;     Child Loop BB0_201 Depth 2
	str	x9, [sp, #48]                   ; 8-byte Folded Spill
	ldr	x23, [x9]
Ltmp117:
	mov	x0, x19
Lloh91:
	adrp	x1, l_.str.23@PAGE
Lloh92:
	add	x1, x1, l_.str.23@PAGEOFF
	mov	w2, #12                         ; =0xc
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp118:
; %bb.172:                              ;   in Loop: Header=BB0_171 Depth=1
Ltmp119:
	mov	x1, x23
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
Ltmp120:
; %bb.173:                              ;   in Loop: Header=BB0_171 Depth=1
Ltmp121:
Lloh93:
	adrp	x1, l_.str.13@PAGE
Lloh94:
	add	x1, x1, l_.str.13@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp122:
; %bb.174:                              ;   in Loop: Header=BB0_171 Depth=1
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x19, x0
	mov	x27, #0                         ; =0x0
	mov	x8, x21
LBB0_175:                               ;   Parent Loop BB0_171 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	add	x9, x27, #3
	sdiv	x10, x9, x23
	msub	x27, x10, x23, x9
	subs	x8, x8, #1
	b.ne	LBB0_175
; %bb.176:                              ;   in Loop: Header=BB0_171 Depth=1
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	sub	x8, x0, x19
	scvtf	d0, x8
	mov	x8, #225833675390976            ; =0xcd6500000000
	movk	x8, #16845, lsl #48
	fmov	d1, x8
	fdiv	d8, d0, d1
	cmp	x24, x22
	b.hs	LBB0_178
; %bb.177:                              ;   in Loop: Header=BB0_171 Depth=1
	mov	x8, x21
	mov	x21, x25
	str	x22, [sp, #64]                  ; 8-byte Folded Spill
	stp	x23, x8, [x24]
Lloh95:
	adrp	x9, l_.str.24@PAGE
Lloh96:
	add	x9, x9, l_.str.24@PAGEOFF
	str	x9, [x24, #16]
	mov	x25, x8
	add	x22, x24, #32
	str	d8, [x24, #24]
	b	LBB0_187
LBB0_178:                               ;   in Loop: Header=BB0_171 Depth=1
	sub	x19, x24, x25
	asr	x20, x19, #5
	add	x8, x20, #1
	lsr	x9, x8, #59
	cbnz	x9, LBB0_287
; %bb.179:                              ;   in Loop: Header=BB0_171 Depth=1
	sub	x9, x22, x25
	asr	x10, x9, #4
	cmp	x10, x8
	csel	x8, x10, x8, hi
	mov	x10, #9223372036854775776       ; =0x7fffffffffffffe0
	cmp	x9, x10
	mov	x9, #576460752303423487         ; =0x7ffffffffffffff
	mov	x24, x25
	csel	x21, x8, x9, lo
	cbz	x21, LBB0_183
; %bb.180:                              ;   in Loop: Header=BB0_171 Depth=1
	lsr	x8, x21, #59
	cbnz	x8, LBB0_291
; %bb.181:                              ;   in Loop: Header=BB0_171 Depth=1
	lsl	x0, x21, #5
Ltmp124:
	bl	__Znwm
Ltmp125:
; %bb.182:                              ;   in Loop: Header=BB0_171 Depth=1
	mov	x25, x0
	b	LBB0_184
LBB0_183:                               ;   in Loop: Header=BB0_171 Depth=1
	mov	x25, #0                         ; =0x0
LBB0_184:                               ;   in Loop: Header=BB0_171 Depth=1
	add	x8, x25, x20, lsl #5
	ldr	x9, [sp, #56]                   ; 8-byte Folded Reload
	stp	x23, x9, [x8]
	add	x9, x25, x21, lsl #5
	str	x9, [sp, #64]                   ; 8-byte Folded Spill
Lloh97:
	adrp	x9, l_.str.24@PAGE
Lloh98:
	add	x9, x9, l_.str.24@PAGEOFF
	str	x9, [x8, #16]
	str	d8, [x8, #24]
	add	x22, x8, #32
	mov	x0, x25
	mov	x20, x24
	mov	x1, x24
	mov	x2, x19
	bl	_memcpy
	cbz	x24, LBB0_186
; %bb.185:                              ;   in Loop: Header=BB0_171 Depth=1
	mov	x0, x20
	bl	__ZdlPv
LBB0_186:                               ;   in Loop: Header=BB0_171 Depth=1
	mov	x21, x25
	ldr	x25, [sp, #56]                  ; 8-byte Folded Reload
LBB0_187:                               ;   in Loop: Header=BB0_171 Depth=1
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x19, x0
	mov	x28, #0                         ; =0x0
	add	x8, x23, x23, lsr #63
	asr	x20, x8, #1
	neg	x24, x20
	neg	x26, x23
	mov	x8, x25
LBB0_188:                               ;   Parent Loop BB0_171 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	add	x9, x28, #3
	cmp	x9, x24
	csel	x10, xzr, x23, gt
	cmp	x9, x20
	csel	x10, x26, x10, gt
	add	x28, x10, x9
	subs	x8, x8, #1
	b.ne	LBB0_188
; %bb.189:                              ;   in Loop: Header=BB0_171 Depth=1
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	sub	x8, x0, x19
	scvtf	d0, x8
	mov	x8, #225833675390976            ; =0xcd6500000000
	movk	x8, #16845, lsl #48
	fmov	d1, x8
	fdiv	d9, d0, d1
	ldr	x8, [sp, #64]                   ; 8-byte Folded Reload
	cmp	x22, x8
	mov	x25, x21
	b.hs	LBB0_191
; %bb.190:                              ;   in Loop: Header=BB0_171 Depth=1
	ldr	x21, [sp, #56]                  ; 8-byte Folded Reload
	stp	x23, x21, [x22]
Lloh99:
	adrp	x8, l_.str.25@PAGE
Lloh100:
	add	x8, x8, l_.str.25@PAGEOFF
	str	x8, [x22, #16]
	add	x19, x22, #32
	str	d9, [x22, #24]
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x22, x0
	movi.2d	v2, #0000000000000000
	cmp	x21, #4
	movi.4s	v6, #3
	b.hs	LBB0_200
	b	LBB0_202
LBB0_191:                               ;   in Loop: Header=BB0_171 Depth=1
	sub	x2, x22, x25
	asr	x21, x2, #5
	add	x8, x21, #1
	lsr	x9, x8, #59
	str	x25, [sp, #40]                  ; 8-byte Folded Spill
	cbnz	x9, LBB0_288
; %bb.192:                              ;   in Loop: Header=BB0_171 Depth=1
	ldr	x9, [sp, #64]                   ; 8-byte Folded Reload
	sub	x9, x9, x25
	asr	x10, x9, #4
	cmp	x10, x8
	csel	x8, x10, x8, hi
	mov	x10, #9223372036854775776       ; =0x7fffffffffffffe0
	cmp	x9, x10
	mov	x9, #576460752303423487         ; =0x7ffffffffffffff
	csel	x22, x8, x9, lo
	cbz	x22, LBB0_196
; %bb.193:                              ;   in Loop: Header=BB0_171 Depth=1
	lsr	x8, x22, #59
	cbnz	x8, LBB0_290
; %bb.194:                              ;   in Loop: Header=BB0_171 Depth=1
	mov	x19, x2
	lsl	x0, x22, #5
Ltmp132:
	bl	__Znwm
Ltmp133:
; %bb.195:                              ;   in Loop: Header=BB0_171 Depth=1
	mov	x25, x0
	mov	x2, x19
	b	LBB0_197
LBB0_196:                               ;   in Loop: Header=BB0_171 Depth=1
	mov	x25, #0                         ; =0x0
LBB0_197:                               ;   in Loop: Header=BB0_171 Depth=1
	add	x8, x25, x21, lsl #5
	ldr	x9, [sp, #56]                   ; 8-byte Folded Reload
	stp	x23, x9, [x8]
	add	x9, x25, x22, lsl #5
	str	x9, [sp, #64]                   ; 8-byte Folded Spill
Lloh101:
	adrp	x9, l_.str.25@PAGE
Lloh102:
	add	x9, x9, l_.str.25@PAGEOFF
	str	x9, [x8, #16]
	str	d9, [x8, #24]
	add	x19, x8, #32
	mov	x0, x25
	ldr	x21, [sp, #40]                  ; 8-byte Folded Reload
	mov	x1, x21
	bl	_memcpy
	cbz	x21, LBB0_199
; %bb.198:                              ;   in Loop: Header=BB0_171 Depth=1
	mov	x0, x21
	bl	__ZdlPv
LBB0_199:                               ;   in Loop: Header=BB0_171 Depth=1
	ldr	x21, [sp, #56]                  ; 8-byte Folded Reload
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x22, x0
	movi.2d	v2, #0000000000000000
	cmp	x21, #4
	movi.4s	v6, #3
	b.lo	LBB0_202
LBB0_200:                               ;   in Loop: Header=BB0_171 Depth=1
	dup.4s	v0, w20
	dup.4s	v1, w24
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	dup.4s	v3, w23
LBB0_201:                               ;   Parent Loop BB0_171 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	add.4s	v2, v2, v6
	cmgt.4s	v4, v2, v0
	cmgt.4s	v5, v2, v1
	and.16b	v4, v3, v4
	neg.4s	v4, v4
	bif.16b	v4, v3, v5
	add.4s	v2, v4, v2
	subs	x8, x8, #1
	b.ne	LBB0_201
LBB0_202:                               ;   in Loop: Header=BB0_171 Depth=1
	smov.s	x8, v2[0]
	ldr	x12, [sp, #32]                  ; 8-byte Folded Reload
	cbz	x12, LBB0_204
; %bb.203:                              ;   in Loop: Header=BB0_171 Depth=1
	add	x8, x8, #3
	cmp	x8, x24
	csel	x9, xzr, x23, gt
	cmp	x8, x20
	csel	x9, x26, x9, gt
	add	x8, x9, x8
	add	x9, x8, #3
	cmp	x9, x24
	csel	x10, xzr, x23, gt
	cmp	x9, x20
	csel	x10, x26, x10, gt
	add	x9, x10, x9
	add	x10, x9, #3
	cmp	x10, x24
	csel	x11, xzr, x23, gt
	cmp	x10, x20
	csel	x11, x26, x11, gt
	add	x10, x11, x10
	cmp	x12, #2
	csel	x9, x9, x10, eq
	cmp	x12, #1
	csel	x26, x8, x9, eq
	b	LBB0_205
LBB0_204:                               ;   in Loop: Header=BB0_171 Depth=1
	mov	x26, x8
LBB0_205:                               ;   in Loop: Header=BB0_171 Depth=1
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	sub	x8, x0, x22
	scvtf	d0, x8
	mov	x8, #225833675390976            ; =0xcd6500000000
	movk	x8, #16845, lsl #48
	fmov	d1, x8
	fdiv	d10, d0, d1
	ldr	x22, [sp, #64]                  ; 8-byte Folded Reload
	cmp	x19, x22
	b.hs	LBB0_207
; %bb.206:                              ;   in Loop: Header=BB0_171 Depth=1
	stp	x23, x21, [x19]
Lloh103:
	adrp	x8, l_.str.26@PAGE
Lloh104:
	add	x8, x8, l_.str.26@PAGEOFF
	str	x8, [x19, #16]
	add	x24, x19, #32
	str	d10, [x19, #24]
	b	LBB0_216
LBB0_207:                               ;   in Loop: Header=BB0_171 Depth=1
	sub	x19, x19, x25
	asr	x21, x19, #5
	add	x8, x21, #1
	lsr	x9, x8, #59
	cbnz	x9, LBB0_286
; %bb.208:                              ;   in Loop: Header=BB0_171 Depth=1
	sub	x9, x22, x25
	asr	x10, x9, #4
	cmp	x10, x8
	csel	x8, x10, x8, hi
	mov	x10, #9223372036854775776       ; =0x7fffffffffffffe0
	cmp	x9, x10
	mov	x9, #576460752303423487         ; =0x7ffffffffffffff
	csel	x22, x8, x9, lo
	cbz	x22, LBB0_212
; %bb.209:                              ;   in Loop: Header=BB0_171 Depth=1
	lsr	x8, x22, #59
	cbnz	x8, LBB0_289
; %bb.210:                              ;   in Loop: Header=BB0_171 Depth=1
	lsl	x0, x22, #5
Ltmp140:
	bl	__Znwm
Ltmp141:
; %bb.211:                              ;   in Loop: Header=BB0_171 Depth=1
	mov	x20, x0
	b	LBB0_213
LBB0_212:                               ;   in Loop: Header=BB0_171 Depth=1
	mov	x20, #0                         ; =0x0
LBB0_213:                               ;   in Loop: Header=BB0_171 Depth=1
	add	x8, x20, x21, lsl #5
	ldr	x9, [sp, #56]                   ; 8-byte Folded Reload
	stp	x23, x9, [x8]
	add	x22, x20, x22, lsl #5
Lloh105:
	adrp	x9, l_.str.26@PAGE
Lloh106:
	add	x9, x9, l_.str.26@PAGEOFF
	str	x9, [x8, #16]
	str	d10, [x8, #24]
	add	x24, x8, #32
	mov	x0, x20
	mov	x1, x25
	mov	x2, x19
	bl	_memcpy
	cbz	x25, LBB0_215
; %bb.214:                              ;   in Loop: Header=BB0_171 Depth=1
	mov	x0, x25
	bl	__ZdlPv
LBB0_215:                               ;   in Loop: Header=BB0_171 Depth=1
	mov	x25, x20
	ldr	x21, [sp, #56]                  ; 8-byte Folded Reload
LBB0_216:                               ;   in Loop: Header=BB0_171 Depth=1
Lloh107:
	adrp	x19, __ZNSt3__14coutE@GOTPAGE
Lloh108:
	ldr	x19, [x19, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh109:
	adrp	x20, l_.str.28@PAGE
Lloh110:
	add	x20, x20, l_.str.28@PAGEOFF
Lloh111:
	adrp	x23, l_.str.36@PAGE
Lloh112:
	add	x23, x23, l_.str.36@PAGEOFF
Ltmp148:
	mov	x0, x19
Lloh113:
	adrp	x1, l_.str.27@PAGE
Lloh114:
	add	x1, x1, l_.str.27@PAGEOFF
	mov	w2, #23                         ; =0x17
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp149:
; %bb.217:                              ;   in Loop: Header=BB0_171 Depth=1
Ltmp150:
	fmov	d0, d8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp151:
; %bb.218:                              ;   in Loop: Header=BB0_171 Depth=1
Ltmp152:
	mov	x1, x20
	mov	w2, #3                          ; =0x3
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp153:
; %bb.219:                              ;   in Loop: Header=BB0_171 Depth=1
Ltmp154:
	mov	x0, x19
Lloh115:
	adrp	x1, l_.str.29@PAGE
Lloh116:
	add	x1, x1, l_.str.29@PAGEOFF
	mov	w2, #23                         ; =0x17
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp155:
; %bb.220:                              ;   in Loop: Header=BB0_171 Depth=1
Ltmp156:
	fmov	d0, d9
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp157:
; %bb.221:                              ;   in Loop: Header=BB0_171 Depth=1
Ltmp158:
	mov	x1, x20
	mov	w2, #3                          ; =0x3
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp159:
; %bb.222:                              ;   in Loop: Header=BB0_171 Depth=1
Ltmp160:
	mov	x0, x19
Lloh117:
	adrp	x1, l_.str.30@PAGE
Lloh118:
	add	x1, x1, l_.str.30@PAGEOFF
	mov	w2, #23                         ; =0x17
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp161:
; %bb.223:                              ;   in Loop: Header=BB0_171 Depth=1
Ltmp162:
	fmov	d0, d10
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp163:
; %bb.224:                              ;   in Loop: Header=BB0_171 Depth=1
Ltmp164:
	mov	x1, x20
	mov	w2, #3                          ; =0x3
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp165:
; %bb.225:                              ;   in Loop: Header=BB0_171 Depth=1
	fcmp	d9, #0.0
	b.le	LBB0_229
; %bb.226:                              ;   in Loop: Header=BB0_171 Depth=1
Ltmp166:
	mov	x0, x19
Lloh119:
	adrp	x1, l_.str.31@PAGE
Lloh120:
	add	x1, x1, l_.str.31@PAGEOFF
	mov	w2, #31                         ; =0x1f
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp167:
; %bb.227:                              ;   in Loop: Header=BB0_171 Depth=1
	fdiv	d0, d8, d9
Ltmp168:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp169:
; %bb.228:                              ;   in Loop: Header=BB0_171 Depth=1
Ltmp170:
Lloh121:
	adrp	x1, l_.str.32@PAGE
Lloh122:
	add	x1, x1, l_.str.32@PAGEOFF
	mov	w2, #2                          ; =0x2
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp171:
LBB0_229:                               ;   in Loop: Header=BB0_171 Depth=1
	fcmp	d10, #0.0
	b.le	LBB0_237
; %bb.230:                              ;   in Loop: Header=BB0_171 Depth=1
Ltmp172:
	mov	x0, x19
Lloh123:
	adrp	x1, l_.str.33@PAGE
Lloh124:
	add	x1, x1, l_.str.33@PAGEOFF
	mov	w2, #31                         ; =0x1f
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp173:
; %bb.231:                              ;   in Loop: Header=BB0_171 Depth=1
	fdiv	d0, d8, d10
Ltmp174:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp175:
; %bb.232:                              ;   in Loop: Header=BB0_171 Depth=1
Ltmp176:
Lloh125:
	adrp	x1, l_.str.32@PAGE
Lloh126:
	add	x1, x1, l_.str.32@PAGEOFF
	mov	w2, #2                          ; =0x2
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp177:
; %bb.233:                              ;   in Loop: Header=BB0_171 Depth=1
	fcmp	d9, #0.0
	b.le	LBB0_237
; %bb.234:                              ;   in Loop: Header=BB0_171 Depth=1
Ltmp178:
	mov	x0, x19
Lloh127:
	adrp	x1, l_.str.34@PAGE
Lloh128:
	add	x1, x1, l_.str.34@PAGEOFF
	mov	w2, #32                         ; =0x20
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp179:
; %bb.235:                              ;   in Loop: Header=BB0_171 Depth=1
	fdiv	d0, d9, d10
Ltmp180:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp181:
; %bb.236:                              ;   in Loop: Header=BB0_171 Depth=1
Ltmp182:
Lloh129:
	adrp	x1, l_.str.32@PAGE
Lloh130:
	add	x1, x1, l_.str.32@PAGEOFF
	mov	w2, #2                          ; =0x2
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp183:
LBB0_237:                               ;   in Loop: Header=BB0_171 Depth=1
Ltmp184:
	mov	x0, x19
Lloh131:
	adrp	x1, l_.str.35@PAGE
Lloh132:
	add	x1, x1, l_.str.35@PAGEOFF
	mov	w2, #9                          ; =0x9
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp185:
; %bb.238:                              ;   in Loop: Header=BB0_171 Depth=1
Ltmp186:
	mov	x1, x27
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEy
Ltmp187:
; %bb.239:                              ;   in Loop: Header=BB0_171 Depth=1
Ltmp188:
	mov	x1, x23
	mov	w2, #3                          ; =0x3
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp189:
; %bb.240:                              ;   in Loop: Header=BB0_171 Depth=1
Ltmp190:
	mov	x1, x28
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
Ltmp191:
; %bb.241:                              ;   in Loop: Header=BB0_171 Depth=1
Ltmp192:
	mov	x1, x23
	mov	w2, #3                          ; =0x3
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp193:
; %bb.242:                              ;   in Loop: Header=BB0_171 Depth=1
Ltmp194:
	mov	x1, x26
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
Ltmp195:
; %bb.243:                              ;   in Loop: Header=BB0_171 Depth=1
Ltmp196:
Lloh133:
	adrp	x1, l_.str.21@PAGE
Lloh134:
	add	x1, x1, l_.str.21@PAGEOFF
	mov	w2, #2                          ; =0x2
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp197:
; %bb.244:                              ;   in Loop: Header=BB0_171 Depth=1
	ldr	x9, [sp, #48]                   ; 8-byte Folded Reload
	add	x9, x9, #8
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	cmp	x9, x8
	b.ne	LBB0_171
; %bb.245:
Ltmp199:
Lloh135:
	adrp	x1, l_.str.37@PAGE
Lloh136:
	add	x1, x1, l_.str.37@PAGEOFF
	add	x19, sp, #496
	add	x0, sp, #496
	mov	w2, #16                         ; =0x10
	bl	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEC1EPKcj
Ltmp200:
; %bb.246:
	ldr	x8, [sp, #496]
	ldur	x8, [x8, #-24]
	add	x8, x19, x8
	ldrb	w8, [x8, #32]
	mov	w9, #5                          ; =0x5
	tst	w8, w9
	b.eq	LBB0_248
; %bb.247:
Lloh137:
	adrp	x1, l_.str.41@PAGE
Lloh138:
	add	x1, x1, l_.str.41@PAGEOFF
Lloh139:
	adrp	x0, __ZNSt3__14cerrE@GOTPAGE
Lloh140:
	ldr	x0, [x0, __ZNSt3__14cerrE@GOTPAGEOFF]
	mov	w2, #34                         ; =0x22
	b	LBB0_268
LBB0_248:
Ltmp202:
Lloh141:
	adrp	x1, l_.str.38@PAGE
Lloh142:
	add	x1, x1, l_.str.38@PAGEOFF
	add	x0, sp, #496
	mov	w2, #39                         ; =0x27
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp203:
; %bb.249:
	cmp	x25, x24
	b.eq	LBB0_264
; %bb.250:
Lloh143:
	adrp	x19, l_.str.39@PAGE
Lloh144:
	add	x19, x19, l_.str.39@PAGEOFF
	mov	x23, x25
Lloh145:
	adrp	x21, l_.str.13@PAGE
Lloh146:
	add	x21, x21, l_.str.13@PAGEOFF
LBB0_251:                               ; =>This Inner Loop Header: Depth=1
	ldr	d0, [x23, #24]
	movi	d8, #0000000000000000
	fcmp	d0, #0.0
	b.le	LBB0_253
; %bb.252:                              ;   in Loop: Header=BB0_251 Depth=1
	ldr	d1, [x23, #8]
	scvtf	d1, d1
	fdiv	d8, d1, d0
LBB0_253:                               ;   in Loop: Header=BB0_251 Depth=1
	ldr	x1, [x23]
Ltmp204:
	add	x0, sp, #496
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
Ltmp205:
; %bb.254:                              ;   in Loop: Header=BB0_251 Depth=1
Ltmp206:
	mov	x1, x19
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp207:
; %bb.255:                              ;   in Loop: Header=BB0_251 Depth=1
	ldr	x1, [x23, #8]
Ltmp208:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
Ltmp209:
; %bb.256:                              ;   in Loop: Header=BB0_251 Depth=1
Ltmp210:
	mov	x1, x19
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp211:
; %bb.257:                              ;   in Loop: Header=BB0_251 Depth=1
	mov	x20, x0
	ldr	x22, [x23, #16]
	mov	x0, x22
	bl	_strlen
	mov	x2, x0
Ltmp212:
	mov	x0, x20
	mov	x1, x22
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp213:
; %bb.258:                              ;   in Loop: Header=BB0_251 Depth=1
Ltmp214:
	mov	x1, x19
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp215:
; %bb.259:                              ;   in Loop: Header=BB0_251 Depth=1
	ldr	d0, [x23, #24]
Ltmp216:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp217:
; %bb.260:                              ;   in Loop: Header=BB0_251 Depth=1
Ltmp218:
	mov	x1, x19
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp219:
; %bb.261:                              ;   in Loop: Header=BB0_251 Depth=1
Ltmp220:
	fmov	d0, d8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp221:
; %bb.262:                              ;   in Loop: Header=BB0_251 Depth=1
Ltmp222:
	mov	x1, x21
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp223:
; %bb.263:                              ;   in Loop: Header=BB0_251 Depth=1
	add	x23, x23, #32
	cmp	x23, x24
	b.ne	LBB0_251
LBB0_264:
	add	x8, sp, #496
Ltmp225:
	add	x0, x8, #8
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5closeEv
Ltmp226:
; %bb.265:
	cbnz	x0, LBB0_267
; %bb.266:
	ldr	x8, [sp, #496]
	ldur	x8, [x8, #-24]
	add	x9, sp, #496
	add	x0, x9, x8
	ldr	w8, [x0, #32]
Ltmp227:
	orr	w1, w8, #0x4
	bl	__ZNSt3__18ios_base5clearEj
Ltmp228:
LBB0_267:
Lloh147:
	adrp	x1, l_.str.40@PAGE
Lloh148:
	add	x1, x1, l_.str.40@PAGEOFF
Lloh149:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh150:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	mov	w2, #15                         ; =0xf
LBB0_268:
Ltmp229:
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp230:
; %bb.269:
Ltmp231:
Lloh151:
	adrp	x1, l_.str.37@PAGE
Lloh152:
	add	x1, x1, l_.str.37@PAGEOFF
	mov	w2, #29                         ; =0x1d
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp232:
; %bb.270:
Ltmp233:
Lloh153:
	adrp	x1, l_.str.13@PAGE
Lloh154:
	add	x1, x1, l_.str.13@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp234:
; %bb.271:
Lloh155:
	adrp	x19, __ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh156:
	ldr	x19, [x19, __ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	ldr	x8, [x19]
	str	x8, [sp, #496]
	ldr	x9, [x19, #24]
	ldur	x8, [x8, #-24]
	add	x20, sp, #496
	str	x9, [x20, x8]
	add	x0, x20, #8
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
	add	x0, sp, #496
	add	x1, x19, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev
	add	x0, x20, #416
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	ldrsb	w8, [sp, #119]
	tbnz	w8, #31, LBB0_281
; %bb.272:
	ldrsb	w8, [sp, #143]
	tbnz	w8, #31, LBB0_282
LBB0_273:
	ldrsb	w8, [sp, #167]
	tbnz	w8, #31, LBB0_283
LBB0_274:
	ldrsb	w8, [sp, #199]
	tbnz	w8, #31, LBB0_284
LBB0_275:
	ldrsb	w8, [sp, #231]
	tbnz	w8, #31, LBB0_285
LBB0_276:
	cbz	x25, LBB0_278
LBB0_277:
	mov	x0, x25
	bl	__ZdlPv
LBB0_278:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZdlPv
	mov	w0, #0                          ; =0x0
LBB0_279:
	ldur	x8, [x29, #-128]
Lloh157:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh158:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh159:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_296
; %bb.280:
	add	sp, sp, #1088
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #96]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #80]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #64]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #48]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #32]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #16]               ; 16-byte Folded Reload
	ldp	d11, d10, [sp], #128            ; 16-byte Folded Reload
	ret
LBB0_281:
	ldr	x0, [sp, #96]
	bl	__ZdlPv
	ldrsb	w8, [sp, #143]
	tbz	w8, #31, LBB0_273
LBB0_282:
	ldr	x0, [sp, #120]
	bl	__ZdlPv
	ldrsb	w8, [sp, #167]
	tbz	w8, #31, LBB0_274
LBB0_283:
	ldr	x0, [sp, #144]
	bl	__ZdlPv
	ldrsb	w8, [sp, #199]
	tbz	w8, #31, LBB0_275
LBB0_284:
	ldr	x0, [sp, #176]
	bl	__ZdlPv
	ldrsb	w8, [sp, #231]
	tbz	w8, #31, LBB0_276
LBB0_285:
	ldr	x0, [sp, #208]
	bl	__ZdlPv
	cbnz	x25, LBB0_277
	b	LBB0_278
LBB0_286:
Ltmp145:
	bl	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev
Ltmp146:
	b	LBB0_303
LBB0_287:
Ltmp129:
	bl	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev
Ltmp130:
	b	LBB0_303
LBB0_288:
Ltmp137:
	bl	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev
Ltmp138:
	b	LBB0_303
LBB0_289:
Ltmp143:
	bl	__ZSt28__throw_bad_array_new_lengthB8ne200100v
Ltmp144:
	b	LBB0_303
LBB0_290:
Ltmp135:
	bl	__ZSt28__throw_bad_array_new_lengthB8ne200100v
Ltmp136:
	b	LBB0_303
LBB0_291:
Ltmp127:
	mov	x25, x24
	bl	__ZSt28__throw_bad_array_new_lengthB8ne200100v
Ltmp128:
	b	LBB0_303
LBB0_292:
Ltmp241:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_out_of_rangeB8ne200100Ev
Ltmp242:
	b	LBB0_303
LBB0_293:
Ltmp239:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev
Ltmp240:
	b	LBB0_303
LBB0_294:
Ltmp249:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_out_of_rangeB8ne200100Ev
Ltmp250:
	b	LBB0_303
LBB0_295:
Ltmp247:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev
Ltmp248:
	b	LBB0_303
LBB0_296:
	bl	___stack_chk_fail
LBB0_297:
Ltmp252:
	bl	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev
Ltmp253:
	b	LBB0_303
LBB0_298:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev
LBB0_299:
Ltmp59:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev
Ltmp60:
	b	LBB0_303
LBB0_300:
Ltmp10:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev
Ltmp11:
	b	LBB0_303
LBB0_301:
Ltmp47:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_out_of_rangeB8ne200100Ev
Ltmp48:
	b	LBB0_303
LBB0_302:
Ltmp45:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev
Ltmp46:
LBB0_303:
	brk	#0x1
LBB0_304:
Ltmp49:
	b	LBB0_337
LBB0_305:
Ltmp12:
	b	LBB0_316
LBB0_306:
Ltmp9:
	b	LBB0_309
LBB0_307:
Ltmp61:
	b	LBB0_331
LBB0_308:
Ltmp2:
LBB0_309:
	mov	x19, x0
	ldrsb	w8, [sp, #519]
	tbz	w8, #31, LBB0_317
; %bb.310:
	ldr	x0, [sp, #496]
	bl	__ZdlPv
	mov	x0, x19
	bl	__Unwind_Resume
LBB0_311:
Ltmp201:
	b	LBB0_345
LBB0_312:
Ltmp56:
	b	LBB0_345
LBB0_313:
Ltmp32:
	b	LBB0_331
LBB0_314:
Ltmp19:
	mov	x19, x0
	mov	x25, x22
	b	LBB0_346
LBB0_315:
Ltmp257:
LBB0_316:
	mov	x19, x0
LBB0_317:
	mov	x0, x19
	bl	__Unwind_Resume
LBB0_318:
Ltmp246:
	b	LBB0_337
LBB0_319:
Ltmp238:
	b	LBB0_337
LBB0_320:
Ltmp42:
	b	LBB0_337
LBB0_321:
Ltmp39:
	b	LBB0_335
LBB0_322:
Ltmp254:
	mov	x19, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZdlPv
	mov	x0, x19
	bl	__Unwind_Resume
LBB0_323:
Ltmp235:
	b	LBB0_342
LBB0_324:
Ltmp251:
	b	LBB0_337
LBB0_325:
Ltmp243:
	b	LBB0_337
LBB0_326:
Ltmp142:
	b	LBB0_345
LBB0_327:
Ltmp126:
	mov	x19, x0
	mov	x25, x24
	b	LBB0_346
LBB0_328:
Ltmp134:
	b	LBB0_331
LBB0_329:
Ltmp131:
	b	LBB0_345
LBB0_330:
Ltmp139:
LBB0_331:
	mov	x19, x0
	ldr	x25, [sp, #40]                  ; 8-byte Folded Reload
	b	LBB0_346
LBB0_332:
Ltmp147:
	b	LBB0_345
LBB0_333:
Ltmp116:
	b	LBB0_345
LBB0_334:
Ltmp26:
LBB0_335:
	mov	x19, x0
	add	x0, sp, #72
	bl	__ZNSt3__16localeD1Ev
	b	LBB0_338
LBB0_336:
Ltmp29:
LBB0_337:
	mov	x19, x0
LBB0_338:
	ldrsb	w8, [sp, #263]
	tbz	w8, #31, LBB0_340
; %bb.339:
	ldr	x0, [sp, #240]
	bl	__ZdlPv
LBB0_340:
	add	x0, sp, #496
	bl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
	ldr	x25, [sp, #40]                  ; 8-byte Folded Reload
	b	LBB0_346
LBB0_341:
Ltmp224:
LBB0_342:
	mov	x19, x0
	add	x0, sp, #496
	bl	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev
	b	LBB0_346
LBB0_343:
Ltmp123:
	b	LBB0_345
LBB0_344:
Ltmp198:
LBB0_345:
	mov	x19, x0
LBB0_346:
	ldrsb	w8, [sp, #119]
	tbz	w8, #31, LBB0_353
; %bb.347:
	ldr	x0, [sp, #96]
	bl	__ZdlPv
	ldrsb	w8, [sp, #143]
	tbnz	w8, #31, LBB0_354
LBB0_348:
	ldrsb	w8, [sp, #167]
	tbz	w8, #31, LBB0_355
LBB0_349:
	ldr	x0, [sp, #144]
	bl	__ZdlPv
	ldrsb	w8, [sp, #199]
	tbnz	w8, #31, LBB0_356
LBB0_350:
	ldrsb	w8, [sp, #231]
	tbz	w8, #31, LBB0_357
LBB0_351:
	ldr	x0, [sp, #208]
	bl	__ZdlPv
	cbz	x25, LBB0_358
LBB0_352:
	mov	x0, x25
	bl	__ZdlPv
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZdlPv
	mov	x0, x19
	bl	__Unwind_Resume
LBB0_353:
	ldrsb	w8, [sp, #143]
	tbz	w8, #31, LBB0_348
LBB0_354:
	ldr	x0, [sp, #120]
	bl	__ZdlPv
	ldrsb	w8, [sp, #167]
	tbnz	w8, #31, LBB0_349
LBB0_355:
	ldrsb	w8, [sp, #199]
	tbz	w8, #31, LBB0_350
LBB0_356:
	ldr	x0, [sp, #176]
	bl	__ZdlPv
	ldrsb	w8, [sp, #231]
	tbnz	w8, #31, LBB0_351
LBB0_357:
	cbnz	x25, LBB0_352
LBB0_358:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZdlPv
	mov	x0, x19
	bl	__Unwind_Resume
	.loh AdrpLdrGotLdr	Lloh0, Lloh1, Lloh2
	.loh AdrpAdd	Lloh3, Lloh4
	.loh AdrpAdd	Lloh5, Lloh6
	.loh AdrpLdrGot	Lloh7, Lloh8
	.loh AdrpAdd	Lloh11, Lloh12
	.loh AdrpLdrGot	Lloh9, Lloh10
	.loh AdrpLdrGot	Lloh13, Lloh14
	.loh AdrpAdd	Lloh17, Lloh18
	.loh AdrpLdrGot	Lloh15, Lloh16
	.loh AdrpAdd	Lloh21, Lloh22
	.loh AdrpAdd	Lloh19, Lloh20
	.loh AdrpAdd	Lloh25, Lloh26
	.loh AdrpLdrGot	Lloh23, Lloh24
	.loh AdrpAdd	Lloh29, Lloh30
	.loh AdrpLdrGot	Lloh27, Lloh28
	.loh AdrpAdd	Lloh33, Lloh34
	.loh AdrpLdrGot	Lloh31, Lloh32
	.loh AdrpAdd	Lloh37, Lloh38
	.loh AdrpLdrGot	Lloh35, Lloh36
	.loh AdrpAdd	Lloh41, Lloh42
	.loh AdrpLdrGot	Lloh39, Lloh40
	.loh AdrpAdd	Lloh43, Lloh44
	.loh AdrpAdd	Lloh47, Lloh48
	.loh AdrpLdrGot	Lloh45, Lloh46
	.loh AdrpAdd	Lloh49, Lloh50
	.loh AdrpAdd	Lloh53, Lloh54
	.loh AdrpLdrGot	Lloh51, Lloh52
	.loh AdrpAdd	Lloh55, Lloh56
	.loh AdrpAdd	Lloh59, Lloh60
	.loh AdrpLdrGot	Lloh57, Lloh58
	.loh AdrpAdd	Lloh61, Lloh62
	.loh AdrpAdd	Lloh65, Lloh66
	.loh AdrpLdrGot	Lloh63, Lloh64
	.loh AdrpAdd	Lloh67, Lloh68
	.loh AdrpAdd	Lloh71, Lloh72
	.loh AdrpLdrGot	Lloh69, Lloh70
	.loh AdrpAdd	Lloh75, Lloh76
	.loh AdrpLdrGot	Lloh73, Lloh74
	.loh AdrpAdd	Lloh77, Lloh78
	.loh AdrpAdd	Lloh81, Lloh82
	.loh AdrpLdrGot	Lloh79, Lloh80
	.loh AdrpAdd	Lloh83, Lloh84
	.loh AdrpAdd	Lloh87, Lloh88
	.loh AdrpLdrGot	Lloh85, Lloh86
	.loh AdrpLdrGot	Lloh89, Lloh90
	.loh AdrpAdd	Lloh91, Lloh92
	.loh AdrpAdd	Lloh93, Lloh94
	.loh AdrpAdd	Lloh95, Lloh96
	.loh AdrpAdd	Lloh97, Lloh98
	.loh AdrpAdd	Lloh99, Lloh100
	.loh AdrpAdd	Lloh101, Lloh102
	.loh AdrpAdd	Lloh103, Lloh104
	.loh AdrpAdd	Lloh105, Lloh106
	.loh AdrpAdd	Lloh113, Lloh114
	.loh AdrpAdd	Lloh111, Lloh112
	.loh AdrpAdd	Lloh109, Lloh110
	.loh AdrpLdrGot	Lloh107, Lloh108
	.loh AdrpAdd	Lloh115, Lloh116
	.loh AdrpAdd	Lloh117, Lloh118
	.loh AdrpAdd	Lloh119, Lloh120
	.loh AdrpAdd	Lloh121, Lloh122
	.loh AdrpAdd	Lloh123, Lloh124
	.loh AdrpAdd	Lloh125, Lloh126
	.loh AdrpAdd	Lloh127, Lloh128
	.loh AdrpAdd	Lloh129, Lloh130
	.loh AdrpAdd	Lloh131, Lloh132
	.loh AdrpAdd	Lloh133, Lloh134
	.loh AdrpAdd	Lloh135, Lloh136
	.loh AdrpLdrGot	Lloh139, Lloh140
	.loh AdrpAdd	Lloh137, Lloh138
	.loh AdrpAdd	Lloh141, Lloh142
	.loh AdrpAdd	Lloh145, Lloh146
	.loh AdrpAdd	Lloh143, Lloh144
	.loh AdrpLdrGot	Lloh149, Lloh150
	.loh AdrpAdd	Lloh147, Lloh148
	.loh AdrpAdd	Lloh151, Lloh152
	.loh AdrpAdd	Lloh153, Lloh154
	.loh AdrpLdrGot	Lloh155, Lloh156
	.loh AdrpLdrGotLdr	Lloh157, Lloh158, Lloh159
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table0:
Lexception0:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end0-Lcst_begin0
Lcst_begin0:
	.uleb128 Lfunc_begin0-Lfunc_begin0      ; >> Call Site 1 <<
	.uleb128 Ltmp0-Lfunc_begin0             ;   Call between Lfunc_begin0 and Ltmp0
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp0-Lfunc_begin0             ; >> Call Site 2 <<
	.uleb128 Ltmp1-Ltmp0                    ;   Call between Ltmp0 and Ltmp1
	.uleb128 Ltmp2-Lfunc_begin0             ;     jumps to Ltmp2
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp13-Lfunc_begin0            ; >> Call Site 3 <<
	.uleb128 Ltmp14-Ltmp13                  ;   Call between Ltmp13 and Ltmp14
	.uleb128 Ltmp257-Lfunc_begin0           ;     jumps to Ltmp257
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp15-Lfunc_begin0            ; >> Call Site 4 <<
	.uleb128 Ltmp16-Ltmp15                  ;   Call between Ltmp15 and Ltmp16
	.uleb128 Ltmp254-Lfunc_begin0           ;     jumps to Ltmp254
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp17-Lfunc_begin0            ; >> Call Site 5 <<
	.uleb128 Ltmp18-Ltmp17                  ;   Call between Ltmp17 and Ltmp18
	.uleb128 Ltmp19-Lfunc_begin0            ;     jumps to Ltmp19
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp20-Lfunc_begin0            ; >> Call Site 6 <<
	.uleb128 Ltmp21-Ltmp20                  ;   Call between Ltmp20 and Ltmp21
	.uleb128 Ltmp29-Lfunc_begin0            ;     jumps to Ltmp29
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp22-Lfunc_begin0            ; >> Call Site 7 <<
	.uleb128 Ltmp25-Ltmp22                  ;   Call between Ltmp22 and Ltmp25
	.uleb128 Ltmp26-Lfunc_begin0            ;     jumps to Ltmp26
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp27-Lfunc_begin0            ; >> Call Site 8 <<
	.uleb128 Ltmp28-Ltmp27                  ;   Call between Ltmp27 and Ltmp28
	.uleb128 Ltmp29-Lfunc_begin0            ;     jumps to Ltmp29
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp236-Lfunc_begin0           ; >> Call Site 9 <<
	.uleb128 Ltmp237-Ltmp236                ;   Call between Ltmp236 and Ltmp237
	.uleb128 Ltmp238-Lfunc_begin0           ;     jumps to Ltmp238
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp237-Lfunc_begin0           ; >> Call Site 10 <<
	.uleb128 Ltmp244-Ltmp237                ;   Call between Ltmp237 and Ltmp244
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp244-Lfunc_begin0           ; >> Call Site 11 <<
	.uleb128 Ltmp245-Ltmp244                ;   Call between Ltmp244 and Ltmp245
	.uleb128 Ltmp246-Lfunc_begin0           ;     jumps to Ltmp246
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp245-Lfunc_begin0           ; >> Call Site 12 <<
	.uleb128 Ltmp30-Ltmp245                 ;   Call between Ltmp245 and Ltmp30
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp30-Lfunc_begin0            ; >> Call Site 13 <<
	.uleb128 Ltmp31-Ltmp30                  ;   Call between Ltmp30 and Ltmp31
	.uleb128 Ltmp32-Lfunc_begin0            ;     jumps to Ltmp32
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp33-Lfunc_begin0            ; >> Call Site 14 <<
	.uleb128 Ltmp34-Ltmp33                  ;   Call between Ltmp33 and Ltmp34
	.uleb128 Ltmp42-Lfunc_begin0            ;     jumps to Ltmp42
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp35-Lfunc_begin0            ; >> Call Site 15 <<
	.uleb128 Ltmp38-Ltmp35                  ;   Call between Ltmp35 and Ltmp38
	.uleb128 Ltmp39-Lfunc_begin0            ;     jumps to Ltmp39
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp40-Lfunc_begin0            ; >> Call Site 16 <<
	.uleb128 Ltmp41-Ltmp40                  ;   Call between Ltmp40 and Ltmp41
	.uleb128 Ltmp42-Lfunc_begin0            ;     jumps to Ltmp42
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp255-Lfunc_begin0           ; >> Call Site 17 <<
	.uleb128 Ltmp256-Ltmp255                ;   Call between Ltmp255 and Ltmp256
	.uleb128 Ltmp257-Lfunc_begin0           ;     jumps to Ltmp257
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp3-Lfunc_begin0             ; >> Call Site 18 <<
	.uleb128 Ltmp4-Ltmp3                    ;   Call between Ltmp3 and Ltmp4
	.uleb128 Ltmp12-Lfunc_begin0            ;     jumps to Ltmp12
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp4-Lfunc_begin0             ; >> Call Site 19 <<
	.uleb128 Ltmp5-Ltmp4                    ;   Call between Ltmp4 and Ltmp5
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp5-Lfunc_begin0             ; >> Call Site 20 <<
	.uleb128 Ltmp8-Ltmp5                    ;   Call between Ltmp5 and Ltmp8
	.uleb128 Ltmp9-Lfunc_begin0             ;     jumps to Ltmp9
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp43-Lfunc_begin0            ; >> Call Site 21 <<
	.uleb128 Ltmp44-Ltmp43                  ;   Call between Ltmp43 and Ltmp44
	.uleb128 Ltmp49-Lfunc_begin0            ;     jumps to Ltmp49
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp44-Lfunc_begin0            ; >> Call Site 22 <<
	.uleb128 Ltmp50-Ltmp44                  ;   Call between Ltmp44 and Ltmp50
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp50-Lfunc_begin0            ; >> Call Site 23 <<
	.uleb128 Ltmp53-Ltmp50                  ;   Call between Ltmp50 and Ltmp53
	.uleb128 Ltmp116-Lfunc_begin0           ;     jumps to Ltmp116
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp54-Lfunc_begin0            ; >> Call Site 24 <<
	.uleb128 Ltmp55-Ltmp54                  ;   Call between Ltmp54 and Ltmp55
	.uleb128 Ltmp56-Lfunc_begin0            ;     jumps to Ltmp56
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp57-Lfunc_begin0            ; >> Call Site 25 <<
	.uleb128 Ltmp58-Ltmp57                  ;   Call between Ltmp57 and Ltmp58
	.uleb128 Ltmp61-Lfunc_begin0            ;     jumps to Ltmp61
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp58-Lfunc_begin0            ; >> Call Site 26 <<
	.uleb128 Ltmp62-Ltmp58                  ;   Call between Ltmp58 and Ltmp62
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp62-Lfunc_begin0            ; >> Call Site 27 <<
	.uleb128 Ltmp115-Ltmp62                 ;   Call between Ltmp62 and Ltmp115
	.uleb128 Ltmp116-Lfunc_begin0           ;     jumps to Ltmp116
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp117-Lfunc_begin0           ; >> Call Site 28 <<
	.uleb128 Ltmp122-Ltmp117                ;   Call between Ltmp117 and Ltmp122
	.uleb128 Ltmp123-Lfunc_begin0           ;     jumps to Ltmp123
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp124-Lfunc_begin0           ; >> Call Site 29 <<
	.uleb128 Ltmp125-Ltmp124                ;   Call between Ltmp124 and Ltmp125
	.uleb128 Ltmp126-Lfunc_begin0           ;     jumps to Ltmp126
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp125-Lfunc_begin0           ; >> Call Site 30 <<
	.uleb128 Ltmp132-Ltmp125                ;   Call between Ltmp125 and Ltmp132
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp132-Lfunc_begin0           ; >> Call Site 31 <<
	.uleb128 Ltmp133-Ltmp132                ;   Call between Ltmp132 and Ltmp133
	.uleb128 Ltmp134-Lfunc_begin0           ;     jumps to Ltmp134
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp133-Lfunc_begin0           ; >> Call Site 32 <<
	.uleb128 Ltmp140-Ltmp133                ;   Call between Ltmp133 and Ltmp140
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp140-Lfunc_begin0           ; >> Call Site 33 <<
	.uleb128 Ltmp141-Ltmp140                ;   Call between Ltmp140 and Ltmp141
	.uleb128 Ltmp142-Lfunc_begin0           ;     jumps to Ltmp142
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp141-Lfunc_begin0           ; >> Call Site 34 <<
	.uleb128 Ltmp148-Ltmp141                ;   Call between Ltmp141 and Ltmp148
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp148-Lfunc_begin0           ; >> Call Site 35 <<
	.uleb128 Ltmp197-Ltmp148                ;   Call between Ltmp148 and Ltmp197
	.uleb128 Ltmp198-Lfunc_begin0           ;     jumps to Ltmp198
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp199-Lfunc_begin0           ; >> Call Site 36 <<
	.uleb128 Ltmp200-Ltmp199                ;   Call between Ltmp199 and Ltmp200
	.uleb128 Ltmp201-Lfunc_begin0           ;     jumps to Ltmp201
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp202-Lfunc_begin0           ; >> Call Site 37 <<
	.uleb128 Ltmp203-Ltmp202                ;   Call between Ltmp202 and Ltmp203
	.uleb128 Ltmp235-Lfunc_begin0           ;     jumps to Ltmp235
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp204-Lfunc_begin0           ; >> Call Site 38 <<
	.uleb128 Ltmp223-Ltmp204                ;   Call between Ltmp204 and Ltmp223
	.uleb128 Ltmp224-Lfunc_begin0           ;     jumps to Ltmp224
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp225-Lfunc_begin0           ; >> Call Site 39 <<
	.uleb128 Ltmp234-Ltmp225                ;   Call between Ltmp225 and Ltmp234
	.uleb128 Ltmp235-Lfunc_begin0           ;     jumps to Ltmp235
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp145-Lfunc_begin0           ; >> Call Site 40 <<
	.uleb128 Ltmp146-Ltmp145                ;   Call between Ltmp145 and Ltmp146
	.uleb128 Ltmp147-Lfunc_begin0           ;     jumps to Ltmp147
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp129-Lfunc_begin0           ; >> Call Site 41 <<
	.uleb128 Ltmp130-Ltmp129                ;   Call between Ltmp129 and Ltmp130
	.uleb128 Ltmp131-Lfunc_begin0           ;     jumps to Ltmp131
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp137-Lfunc_begin0           ; >> Call Site 42 <<
	.uleb128 Ltmp138-Ltmp137                ;   Call between Ltmp137 and Ltmp138
	.uleb128 Ltmp139-Lfunc_begin0           ;     jumps to Ltmp139
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp143-Lfunc_begin0           ; >> Call Site 43 <<
	.uleb128 Ltmp144-Ltmp143                ;   Call between Ltmp143 and Ltmp144
	.uleb128 Ltmp147-Lfunc_begin0           ;     jumps to Ltmp147
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp135-Lfunc_begin0           ; >> Call Site 44 <<
	.uleb128 Ltmp136-Ltmp135                ;   Call between Ltmp135 and Ltmp136
	.uleb128 Ltmp139-Lfunc_begin0           ;     jumps to Ltmp139
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp127-Lfunc_begin0           ; >> Call Site 45 <<
	.uleb128 Ltmp128-Ltmp127                ;   Call between Ltmp127 and Ltmp128
	.uleb128 Ltmp131-Lfunc_begin0           ;     jumps to Ltmp131
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp241-Lfunc_begin0           ; >> Call Site 46 <<
	.uleb128 Ltmp240-Ltmp241                ;   Call between Ltmp241 and Ltmp240
	.uleb128 Ltmp243-Lfunc_begin0           ;     jumps to Ltmp243
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp249-Lfunc_begin0           ; >> Call Site 47 <<
	.uleb128 Ltmp248-Ltmp249                ;   Call between Ltmp249 and Ltmp248
	.uleb128 Ltmp251-Lfunc_begin0           ;     jumps to Ltmp251
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp248-Lfunc_begin0           ; >> Call Site 48 <<
	.uleb128 Ltmp252-Ltmp248                ;   Call between Ltmp248 and Ltmp252
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp252-Lfunc_begin0           ; >> Call Site 49 <<
	.uleb128 Ltmp253-Ltmp252                ;   Call between Ltmp252 and Ltmp253
	.uleb128 Ltmp254-Lfunc_begin0           ;     jumps to Ltmp254
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp253-Lfunc_begin0           ; >> Call Site 50 <<
	.uleb128 Ltmp59-Ltmp253                 ;   Call between Ltmp253 and Ltmp59
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp59-Lfunc_begin0            ; >> Call Site 51 <<
	.uleb128 Ltmp60-Ltmp59                  ;   Call between Ltmp59 and Ltmp60
	.uleb128 Ltmp61-Lfunc_begin0            ;     jumps to Ltmp61
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp10-Lfunc_begin0            ; >> Call Site 52 <<
	.uleb128 Ltmp11-Ltmp10                  ;   Call between Ltmp10 and Ltmp11
	.uleb128 Ltmp12-Lfunc_begin0            ;     jumps to Ltmp12
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp47-Lfunc_begin0            ; >> Call Site 53 <<
	.uleb128 Ltmp46-Ltmp47                  ;   Call between Ltmp47 and Ltmp46
	.uleb128 Ltmp49-Lfunc_begin0            ;     jumps to Ltmp49
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp46-Lfunc_begin0            ; >> Call Site 54 <<
	.uleb128 Lfunc_end0-Ltmp46              ;   Call between Ltmp46 and Lfunc_end0
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end0:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEC1EPKcj ; -- Begin function _ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEC1EPKcj
	.globl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEC1EPKcj
	.weak_def_can_be_hidden	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEC1EPKcj
	.p2align	2
__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEC1EPKcj: ; @_ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEC1EPKcj
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception1
; %bb.0:
	stp	x26, x25, [sp, #-80]!           ; 16-byte Folded Spill
	stp	x24, x23, [sp, #16]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	mov	x21, x2
	mov	x20, x1
	mov	x19, x0
	str	xzr, [x0, #472]
Lloh160:
	adrp	x25, __ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh161:
	ldr	x25, [x25, __ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	add	x24, x25, #64
	str	x24, [x0, #424]
Lloh162:
	adrp	x23, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh163:
	ldr	x23, [x23, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	ldp	x8, x9, [x23, #8]
	str	x8, [x0]
	ldur	x8, [x8, #-24]
	str	x9, [x0, x8]
	str	xzr, [x0, #8]
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x22, x0, x8
Ltmp258:
	add	x1, x0, #16
	mov	x0, x22
	bl	__ZNSt3__18ios_base4initEPv
Ltmp259:
; %bb.1:
	str	xzr, [x22, #136]
	mov	w8, #-1                         ; =0xffffffff
	str	w8, [x22, #144]
	add	x8, x25, #24
	str	x8, [x19]
	str	x24, [x19, #424]
Ltmp261:
	add	x0, x19, #16
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC1Ev
Ltmp262:
; %bb.2:
Ltmp264:
	add	x0, x19, #16
	orr	w2, w21, #0x8
	mov	x1, x20
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4openEPKcj
Ltmp265:
; %bb.3:
	cbnz	x0, LBB1_5
; %bb.4:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
	ldr	w8, [x0, #32]
Ltmp266:
	orr	w1, w8, #0x4
	bl	__ZNSt3__18ios_base5clearEj
Ltmp267:
LBB1_5:
	mov	x0, x19
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp], #80             ; 16-byte Folded Reload
	ret
LBB1_6:
Ltmp263:
	mov	x20, x0
	b	LBB1_9
LBB1_7:
Ltmp260:
	mov	x20, x0
	add	x0, x19, #424
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	mov	x0, x20
	bl	__Unwind_Resume
LBB1_8:
Ltmp268:
	mov	x20, x0
	add	x0, x19, #16
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
LBB1_9:
	add	x1, x23, #8
	mov	x0, x19
	bl	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	add	x0, x19, #424
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	mov	x0, x20
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh162, Lloh163
	.loh AdrpLdrGot	Lloh160, Lloh161
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table1:
Lexception1:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end1-Lcst_begin1
Lcst_begin1:
	.uleb128 Ltmp258-Lfunc_begin1           ; >> Call Site 1 <<
	.uleb128 Ltmp259-Ltmp258                ;   Call between Ltmp258 and Ltmp259
	.uleb128 Ltmp260-Lfunc_begin1           ;     jumps to Ltmp260
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp261-Lfunc_begin1           ; >> Call Site 2 <<
	.uleb128 Ltmp262-Ltmp261                ;   Call between Ltmp261 and Ltmp262
	.uleb128 Ltmp263-Lfunc_begin1           ;     jumps to Ltmp263
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp264-Lfunc_begin1           ; >> Call Site 3 <<
	.uleb128 Ltmp267-Ltmp264                ;   Call between Ltmp264 and Ltmp267
	.uleb128 Ltmp268-Lfunc_begin1           ;     jumps to Ltmp268
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp267-Lfunc_begin1           ; >> Call Site 4 <<
	.uleb128 Lfunc_end1-Ltmp267             ;   Call between Ltmp267 and Lfunc_end1
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end1:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev ; -- Begin function _ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
	.p2align	2
__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev: ; @_ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
	.cfi_startproc
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x19, x0
Lloh164:
	adrp	x20, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh165:
	ldr	x20, [x20, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	ldr	x8, [x20]
	str	x8, [x0]
	ldr	x9, [x20, #24]
	ldur	x8, [x8, #-24]
	str	x9, [x0, x8]
	add	x0, x0, #16
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
	add	x1, x20, #8
	mov	x0, x19
	bl	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	add	x0, x19, #424
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	mov	x0, x19
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGot	Lloh164, Lloh165
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEC1EPKcj ; -- Begin function _ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEC1EPKcj
	.globl	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEC1EPKcj
	.weak_def_can_be_hidden	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEC1EPKcj
	.p2align	2
__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEC1EPKcj: ; @_ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEC1EPKcj
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception2
; %bb.0:
	stp	x26, x25, [sp, #-80]!           ; 16-byte Folded Spill
	stp	x24, x23, [sp, #16]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	mov	x21, x2
	mov	x20, x1
	mov	x19, x0
	str	xzr, [x0, #464]
Lloh166:
	adrp	x25, __ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh167:
	ldr	x25, [x25, __ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	add	x24, x25, #64
	str	x24, [x0, #416]
Lloh168:
	adrp	x23, __ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh169:
	ldr	x23, [x23, __ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	ldp	x8, x9, [x23, #8]
	str	x8, [x0]
	ldur	x8, [x8, #-24]
	str	x9, [x0, x8]
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x22, x0, x8
Ltmp269:
	add	x1, x0, #8
	mov	x0, x22
	bl	__ZNSt3__18ios_base4initEPv
Ltmp270:
; %bb.1:
	str	xzr, [x22, #136]
	mov	w8, #-1                         ; =0xffffffff
	str	w8, [x22, #144]
	add	x8, x25, #24
	str	x8, [x19]
	str	x24, [x19, #416]
Ltmp272:
	add	x0, x19, #8
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC1Ev
Ltmp273:
; %bb.2:
Ltmp275:
	add	x0, x19, #8
	orr	w2, w21, #0x10
	mov	x1, x20
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4openEPKcj
Ltmp276:
; %bb.3:
	cbnz	x0, LBB3_5
; %bb.4:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
	ldr	w8, [x0, #32]
Ltmp277:
	orr	w1, w8, #0x4
	bl	__ZNSt3__18ios_base5clearEj
Ltmp278:
LBB3_5:
	mov	x0, x19
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp], #80             ; 16-byte Folded Reload
	ret
LBB3_6:
Ltmp274:
	mov	x20, x0
	b	LBB3_9
LBB3_7:
Ltmp271:
	mov	x20, x0
	add	x0, x19, #416
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	mov	x0, x20
	bl	__Unwind_Resume
LBB3_8:
Ltmp279:
	mov	x20, x0
	add	x0, x19, #8
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
LBB3_9:
	add	x1, x23, #8
	mov	x0, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev
	add	x0, x19, #416
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	mov	x0, x20
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh168, Lloh169
	.loh AdrpLdrGot	Lloh166, Lloh167
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table3:
Lexception2:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end2-Lcst_begin2
Lcst_begin2:
	.uleb128 Ltmp269-Lfunc_begin2           ; >> Call Site 1 <<
	.uleb128 Ltmp270-Ltmp269                ;   Call between Ltmp269 and Ltmp270
	.uleb128 Ltmp271-Lfunc_begin2           ;     jumps to Ltmp271
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp272-Lfunc_begin2           ; >> Call Site 2 <<
	.uleb128 Ltmp273-Ltmp272                ;   Call between Ltmp272 and Ltmp273
	.uleb128 Ltmp274-Lfunc_begin2           ;     jumps to Ltmp274
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp275-Lfunc_begin2           ; >> Call Site 3 <<
	.uleb128 Ltmp278-Ltmp275                ;   Call between Ltmp275 and Ltmp278
	.uleb128 Ltmp279-Lfunc_begin2           ;     jumps to Ltmp279
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp278-Lfunc_begin2           ; >> Call Site 4 <<
	.uleb128 Lfunc_end2-Ltmp278             ;   Call between Ltmp278 and Lfunc_end2
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end2:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev ; -- Begin function _ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev
	.p2align	2
__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev: ; @_ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev
	.cfi_startproc
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x19, x0
Lloh170:
	adrp	x20, __ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh171:
	ldr	x20, [x20, __ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	ldr	x8, [x20]
	str	x8, [x0]
	ldr	x9, [x20, #24]
	ldur	x8, [x8, #-24]
	str	x9, [x0, x8]
	add	x0, x0, #8
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
	add	x1, x20, #8
	mov	x0, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev
	add	x0, x19, #416
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	mov	x0, x19
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGot	Lloh170, Lloh171
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Lloh172:
	adrp	x0, l_.str.42@PAGE
Lloh173:
	add	x0, x0, l_.str.42@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB8ne200100EPKc
	.loh AdrpAdd	Lloh172, Lloh173
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__120__throw_length_errorB8ne200100EPKc ; -- Begin function _ZNSt3__120__throw_length_errorB8ne200100EPKc
	.globl	__ZNSt3__120__throw_length_errorB8ne200100EPKc
	.weak_def_can_be_hidden	__ZNSt3__120__throw_length_errorB8ne200100EPKc
	.p2align	2
__ZNSt3__120__throw_length_errorB8ne200100EPKc: ; @_ZNSt3__120__throw_length_errorB8ne200100EPKc
Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception3
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x20, x0
	mov	w0, #16                         ; =0x10
	bl	___cxa_allocate_exception
	mov	x19, x0
Ltmp280:
	mov	x1, x20
	bl	__ZNSt12length_errorC1B8ne200100EPKc
Ltmp281:
; %bb.1:
Lloh174:
	adrp	x1, __ZTISt12length_error@GOTPAGE
Lloh175:
	ldr	x1, [x1, __ZTISt12length_error@GOTPAGEOFF]
Lloh176:
	adrp	x2, __ZNSt12length_errorD1Ev@GOTPAGE
Lloh177:
	ldr	x2, [x2, __ZNSt12length_errorD1Ev@GOTPAGEOFF]
	mov	x0, x19
	bl	___cxa_throw
LBB6_2:
Ltmp282:
	mov	x20, x0
	mov	x0, x19
	bl	___cxa_free_exception
	mov	x0, x20
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh176, Lloh177
	.loh AdrpLdrGot	Lloh174, Lloh175
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table6:
Lexception3:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end3-Lcst_begin3
Lcst_begin3:
	.uleb128 Lfunc_begin3-Lfunc_begin3      ; >> Call Site 1 <<
	.uleb128 Ltmp280-Lfunc_begin3           ;   Call between Lfunc_begin3 and Ltmp280
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp280-Lfunc_begin3           ; >> Call Site 2 <<
	.uleb128 Ltmp281-Ltmp280                ;   Call between Ltmp280 and Ltmp281
	.uleb128 Ltmp282-Lfunc_begin3           ;     jumps to Ltmp282
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp281-Lfunc_begin3           ; >> Call Site 3 <<
	.uleb128 Lfunc_end3-Ltmp281             ;   Call between Ltmp281 and Lfunc_end3
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end3:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt12length_errorC1B8ne200100EPKc ; -- Begin function _ZNSt12length_errorC1B8ne200100EPKc
	.globl	__ZNSt12length_errorC1B8ne200100EPKc
	.weak_def_can_be_hidden	__ZNSt12length_errorC1B8ne200100EPKc
	.p2align	2
__ZNSt12length_errorC1B8ne200100EPKc:   ; @_ZNSt12length_errorC1B8ne200100EPKc
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	__ZNSt11logic_errorC2EPKc
Lloh178:
	adrp	x8, __ZTVSt12length_error@GOTPAGE
Lloh179:
	ldr	x8, [x8, __ZTVSt12length_error@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGot	Lloh178, Lloh179
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZSt28__throw_bad_array_new_lengthB8ne200100v ; -- Begin function _ZSt28__throw_bad_array_new_lengthB8ne200100v
	.globl	__ZSt28__throw_bad_array_new_lengthB8ne200100v
	.weak_def_can_be_hidden	__ZSt28__throw_bad_array_new_lengthB8ne200100v
	.p2align	2
__ZSt28__throw_bad_array_new_lengthB8ne200100v: ; @_ZSt28__throw_bad_array_new_lengthB8ne200100v
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w0, #8                          ; =0x8
	bl	___cxa_allocate_exception
	bl	__ZNSt20bad_array_new_lengthC1Ev
Lloh180:
	adrp	x1, __ZTISt20bad_array_new_length@GOTPAGE
Lloh181:
	ldr	x1, [x1, __ZTISt20bad_array_new_length@GOTPAGEOFF]
Lloh182:
	adrp	x2, __ZNSt20bad_array_new_lengthD1Ev@GOTPAGE
Lloh183:
	ldr	x2, [x2, __ZNSt20bad_array_new_lengthD1Ev@GOTPAGEOFF]
	bl	___cxa_throw
	.loh AdrpLdrGot	Lloh182, Lloh183
	.loh AdrpLdrGot	Lloh180, Lloh181
	.cfi_endproc
                                        ; -- End function
	.private_extern	___clang_call_terminate ; -- Begin function __clang_call_terminate
	.globl	___clang_call_terminate
	.weak_def_can_be_hidden	___clang_call_terminate
	.p2align	2
___clang_call_terminate:                ; @__clang_call_terminate
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	___cxa_begin_catch
	bl	__ZSt9terminatev
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m ; -- Begin function _ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.globl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_def_can_be_hidden	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.p2align	2
__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ; @_ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception4
; %bb.0:
	sub	sp, sp, #112
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #64]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	mov	x21, x2
	mov	x20, x1
	mov	x19, x0
Ltmp283:
	add	x0, sp, #8
	mov	x1, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp284:
; %bb.1:
	ldrb	w8, [sp, #8]
	cmp	w8, #1
	b.ne	LBB10_10
; %bb.2:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x4, x19, x8
	ldr	x22, [x4, #40]
	ldr	w24, [x4, #8]
	ldr	w23, [x4, #144]
	cmn	w23, #1
	b.ne	LBB10_7
; %bb.3:
Ltmp286:
	add	x8, sp, #24
	mov	x25, x4
	mov	x0, x4
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp287:
; %bb.4:
Ltmp288:
Lloh184:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh185:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #24
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp289:
; %bb.5:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp290:
	mov	w1, #32                         ; =0x20
	blr	x8
Ltmp291:
; %bb.6:
	mov	x23, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	mov	x4, x25
	str	w23, [x25, #144]
LBB10_7:
	mov	w8, #176                        ; =0xb0
	and	w8, w24, w8
	add	x3, x20, x21
	cmp	w8, #32
	csel	x2, x3, x20, eq
Ltmp293:
	sxtb	w5, w23
	mov	x0, x22
	mov	x1, x20
	bl	__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp294:
; %bb.8:
	cbnz	x0, LBB10_10
; %bb.9:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
	ldr	w8, [x0, #32]
	mov	w9, #5                          ; =0x5
Ltmp296:
	orr	w1, w8, w9
	bl	__ZNSt3__18ios_base5clearEj
Ltmp297:
LBB10_10:
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
LBB10_11:
	mov	x0, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB10_12:
Ltmp298:
	b	LBB10_15
LBB10_13:
Ltmp292:
	mov	x20, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	b	LBB10_16
LBB10_14:
Ltmp295:
LBB10_15:
	mov	x20, x0
LBB10_16:
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB10_18
LBB10_17:
Ltmp285:
	mov	x20, x0
LBB10_18:
	mov	x0, x20
	bl	___cxa_begin_catch
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
Ltmp299:
	add	x0, x19, x8
	bl	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp300:
; %bb.19:
	bl	___cxa_end_catch
	b	LBB10_11
LBB10_20:
Ltmp301:
	mov	x19, x0
Ltmp302:
	bl	___cxa_end_catch
Ltmp303:
; %bb.21:
	mov	x0, x19
	bl	__Unwind_Resume
LBB10_22:
Ltmp304:
	bl	___clang_call_terminate
	.loh AdrpLdrGot	Lloh184, Lloh185
Lfunc_end4:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table10:
Lexception4:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase0-Lttbaseref0
Lttbaseref0:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end4-Lcst_begin4
Lcst_begin4:
	.uleb128 Ltmp283-Lfunc_begin4           ; >> Call Site 1 <<
	.uleb128 Ltmp284-Ltmp283                ;   Call between Ltmp283 and Ltmp284
	.uleb128 Ltmp285-Lfunc_begin4           ;     jumps to Ltmp285
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp286-Lfunc_begin4           ; >> Call Site 2 <<
	.uleb128 Ltmp287-Ltmp286                ;   Call between Ltmp286 and Ltmp287
	.uleb128 Ltmp295-Lfunc_begin4           ;     jumps to Ltmp295
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp288-Lfunc_begin4           ; >> Call Site 3 <<
	.uleb128 Ltmp291-Ltmp288                ;   Call between Ltmp288 and Ltmp291
	.uleb128 Ltmp292-Lfunc_begin4           ;     jumps to Ltmp292
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp293-Lfunc_begin4           ; >> Call Site 4 <<
	.uleb128 Ltmp294-Ltmp293                ;   Call between Ltmp293 and Ltmp294
	.uleb128 Ltmp295-Lfunc_begin4           ;     jumps to Ltmp295
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp296-Lfunc_begin4           ; >> Call Site 5 <<
	.uleb128 Ltmp297-Ltmp296                ;   Call between Ltmp296 and Ltmp297
	.uleb128 Ltmp298-Lfunc_begin4           ;     jumps to Ltmp298
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp297-Lfunc_begin4           ; >> Call Site 6 <<
	.uleb128 Ltmp299-Ltmp297                ;   Call between Ltmp297 and Ltmp299
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp299-Lfunc_begin4           ; >> Call Site 7 <<
	.uleb128 Ltmp300-Ltmp299                ;   Call between Ltmp299 and Ltmp300
	.uleb128 Ltmp301-Lfunc_begin4           ;     jumps to Ltmp301
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp300-Lfunc_begin4           ; >> Call Site 8 <<
	.uleb128 Ltmp302-Ltmp300                ;   Call between Ltmp300 and Ltmp302
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp302-Lfunc_begin4           ; >> Call Site 9 <<
	.uleb128 Ltmp303-Ltmp302                ;   Call between Ltmp302 and Ltmp303
	.uleb128 Ltmp304-Lfunc_begin4           ;     jumps to Ltmp304
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp303-Lfunc_begin4           ; >> Call Site 10 <<
	.uleb128 Lfunc_end4-Ltmp303             ;   Call between Ltmp303 and Lfunc_end4
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end4:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase0:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ ; -- Begin function _ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.globl	__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.weak_def_can_be_hidden	__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.p2align	2
__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_: ; @_ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception5
; %bb.0:
	sub	sp, sp, #112
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #64]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	mov	x19, x0
	cbz	x0, LBB11_16
; %bb.1:
	mov	x24, x5
	mov	x20, x4
	mov	x22, x3
	mov	x21, x2
	ldr	x8, [x4, #24]
	sub	x9, x3, x1
	subs	x8, x8, x9
	csel	x23, x8, xzr, gt
	sub	x25, x2, x1
	cmp	x25, #1
	b.lt	LBB11_3
; %bb.2:
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
	mov	x0, x19
	mov	x2, x25
	blr	x8
	cmp	x0, x25
	b.ne	LBB11_15
LBB11_3:
	cmp	x23, #1
	b.lt	LBB11_12
; %bb.4:
	mov	x8, #9223372036854775800        ; =0x7ffffffffffffff8
	cmp	x23, x8
	b.hs	LBB11_17
; %bb.5:
	cmp	x23, #23
	b.hs	LBB11_7
; %bb.6:
	strb	w23, [sp, #31]
	add	x25, sp, #8
	b	LBB11_8
LBB11_7:
	orr	x8, x23, #0x7
	cmp	x8, #23
	mov	w9, #25                         ; =0x19
	csinc	x26, x9, x8, eq
	mov	x0, x26
	bl	__Znwm
	mov	x25, x0
	orr	x8, x26, #0x8000000000000000
	stp	x23, x8, [sp, #16]
	str	x0, [sp, #8]
LBB11_8:
	mov	x0, x25
	mov	x1, x24
	mov	x2, x23
	bl	_memset
	strb	wzr, [x25, x23]
	ldrsb	w8, [sp, #31]
	ldr	x9, [sp, #8]
	cmp	w8, #0
	add	x8, sp, #8
	csel	x1, x9, x8, lt
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
Ltmp305:
	mov	x0, x19
	mov	x2, x23
	blr	x8
Ltmp306:
; %bb.9:
	ldrsb	w8, [sp, #31]
	tbnz	w8, #31, LBB11_11
; %bb.10:
	cmp	x0, x23
	b.ne	LBB11_15
	b	LBB11_12
LBB11_11:
	ldr	x8, [sp, #8]
	mov	x24, x0
	mov	x0, x8
	bl	__ZdlPv
	cmp	x24, x23
	b.ne	LBB11_15
LBB11_12:
	sub	x22, x22, x21
	cmp	x22, #1
	b.lt	LBB11_14
; %bb.13:
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
	mov	x0, x19
	mov	x1, x21
	mov	x2, x22
	blr	x8
	cmp	x0, x22
	b.ne	LBB11_15
LBB11_14:
	str	xzr, [x20, #24]
	b	LBB11_16
LBB11_15:
	mov	x19, #0                         ; =0x0
LBB11_16:
	mov	x0, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB11_17:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev
LBB11_18:
Ltmp307:
	mov	x19, x0
	ldrsb	w8, [sp, #31]
	tbz	w8, #31, LBB11_20
; %bb.19:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
LBB11_20:
	mov	x0, x19
	bl	__Unwind_Resume
Lfunc_end5:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table11:
Lexception5:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end5-Lcst_begin5
Lcst_begin5:
	.uleb128 Lfunc_begin5-Lfunc_begin5      ; >> Call Site 1 <<
	.uleb128 Ltmp305-Lfunc_begin5           ;   Call between Lfunc_begin5 and Ltmp305
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp305-Lfunc_begin5           ; >> Call Site 2 <<
	.uleb128 Ltmp306-Ltmp305                ;   Call between Ltmp305 and Ltmp306
	.uleb128 Ltmp307-Lfunc_begin5           ;     jumps to Ltmp307
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp306-Lfunc_begin5           ; >> Call Site 3 <<
	.uleb128 Lfunc_end5-Ltmp306             ;   Call between Ltmp306 and Lfunc_end5
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end5:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev ; -- Begin function _ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev
	.globl	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev
	.p2align	2
__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev: ; @_ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Lloh186:
	adrp	x0, l_.str.43@PAGE
Lloh187:
	add	x0, x0, l_.str.43@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB8ne200100EPKc
	.loh AdrpAdd	Lloh186, Lloh187
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_ ; -- Begin function _ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
	.globl	__ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
	.weak_def_can_be_hidden	__ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
	.p2align	2
__ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_: ; @_ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception6
; %bb.0:
	sub	sp, sp, #80
	stp	x24, x23, [sp, #16]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	mov	x20, x2
	mov	x21, x1
	mov	x19, x0
	add	x0, sp, #15
	mov	x1, x19
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE6sentryC1ERS3_b
	ldrb	w8, [sp, #15]
	cmp	w8, #1
	b.ne	LBB13_17
; %bb.1:
	ldrsb	w8, [x21, #23]
	tbnz	w8, #31, LBB13_3
; %bb.2:
	strb	wzr, [x21]
	strb	wzr, [x21, #23]
	b	LBB13_4
LBB13_3:
	ldr	x8, [x21]
	strb	wzr, [x8]
	str	xzr, [x21, #8]
LBB13_4:
	mov	x22, #0                         ; =0x0
	add	x23, x19, #40
	mov	x24, #-9                        ; =0xfffffffffffffff7
	movk	x24, #32767, lsl #48
LBB13_5:                                ; =>This Inner Loop Header: Depth=1
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	ldr	x0, [x23, x8]
	ldp	x8, x9, [x0, #24]
	cmp	x8, x9
	b.eq	LBB13_7
; %bb.6:                                ;   in Loop: Header=BB13_5 Depth=1
	add	x9, x8, #1
	str	x9, [x0, #24]
	ldrb	w0, [x8]
	b	LBB13_9
LBB13_7:                                ;   in Loop: Header=BB13_5 Depth=1
	ldr	x8, [x0]
	ldr	x8, [x8, #80]
Ltmp308:
	blr	x8
Ltmp309:
; %bb.8:                                ;   in Loop: Header=BB13_5 Depth=1
	cmn	w0, #1
	b.eq	LBB13_15
LBB13_9:                                ;   in Loop: Header=BB13_5 Depth=1
	and	w8, w0, #0xff
	cmp	w8, w20, uxtb
	b.eq	LBB13_14
; %bb.10:                               ;   in Loop: Header=BB13_5 Depth=1
Ltmp311:
	sxtb	w1, w0
	mov	x0, x21
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc
Ltmp312:
; %bb.11:                               ;   in Loop: Header=BB13_5 Depth=1
	ldrsb	w8, [x21, #23]
	sub	x22, x22, #1
	tbz	w8, #31, LBB13_5
; %bb.12:                               ;   in Loop: Header=BB13_5 Depth=1
	ldr	x8, [x21, #8]
	cmp	x8, x24
	b.ne	LBB13_5
; %bb.13:
	mov	w8, #4                          ; =0x4
	b	LBB13_16
LBB13_14:
	mov	w8, #0                          ; =0x0
	b	LBB13_16
LBB13_15:
	cmp	x22, #0
	mov	w8, #2                          ; =0x2
	mov	w9, #6                          ; =0x6
	csel	w8, w9, w8, eq
LBB13_16:
	ldr	x9, [x19]
	ldur	x9, [x9, #-24]
	add	x0, x19, x9
	ldr	w9, [x0, #32]
	orr	w1, w9, w8
	bl	__ZNSt3__18ios_base5clearEj
LBB13_17:
	mov	x0, x19
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB13_18:
Ltmp310:
	b	LBB13_20
LBB13_19:
Ltmp313:
LBB13_20:
	bl	___cxa_begin_catch
	ldr	x8, [x19]
	ldur	x9, [x8, #-24]
	add	x9, x19, x9
	ldr	w10, [x9, #32]
	orr	w10, w10, #0x1
	str	w10, [x9, #32]
	ldur	x8, [x8, #-24]
	add	x8, x19, x8
	ldrb	w8, [x8, #36]
	tbnz	w8, #0, LBB13_22
; %bb.21:
	bl	___cxa_end_catch
	mov	w8, #1                          ; =0x1
	b	LBB13_16
LBB13_22:
Ltmp314:
	bl	___cxa_rethrow
Ltmp315:
; %bb.23:
	brk	#0x1
LBB13_24:
Ltmp316:
	mov	x19, x0
Ltmp317:
	bl	___cxa_end_catch
Ltmp318:
; %bb.25:
	mov	x0, x19
	bl	__Unwind_Resume
LBB13_26:
Ltmp319:
	bl	___clang_call_terminate
Lfunc_end6:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table13:
Lexception6:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase1-Lttbaseref1
Lttbaseref1:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end6-Lcst_begin6
Lcst_begin6:
	.uleb128 Lfunc_begin6-Lfunc_begin6      ; >> Call Site 1 <<
	.uleb128 Ltmp308-Lfunc_begin6           ;   Call between Lfunc_begin6 and Ltmp308
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp308-Lfunc_begin6           ; >> Call Site 2 <<
	.uleb128 Ltmp309-Ltmp308                ;   Call between Ltmp308 and Ltmp309
	.uleb128 Ltmp310-Lfunc_begin6           ;     jumps to Ltmp310
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp311-Lfunc_begin6           ; >> Call Site 3 <<
	.uleb128 Ltmp312-Ltmp311                ;   Call between Ltmp311 and Ltmp312
	.uleb128 Ltmp313-Lfunc_begin6           ;     jumps to Ltmp313
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp312-Lfunc_begin6           ; >> Call Site 4 <<
	.uleb128 Ltmp314-Ltmp312                ;   Call between Ltmp312 and Ltmp314
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp314-Lfunc_begin6           ; >> Call Site 5 <<
	.uleb128 Ltmp315-Ltmp314                ;   Call between Ltmp314 and Ltmp315
	.uleb128 Ltmp316-Lfunc_begin6           ;     jumps to Ltmp316
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp317-Lfunc_begin6           ; >> Call Site 6 <<
	.uleb128 Ltmp318-Ltmp317                ;   Call between Ltmp317 and Ltmp318
	.uleb128 Ltmp319-Lfunc_begin6           ;     jumps to Ltmp319
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp318-Lfunc_begin6           ; >> Call Site 7 <<
	.uleb128 Lfunc_end6-Ltmp318             ;   Call between Ltmp318 and Lfunc_end6
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end6:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase1:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_out_of_rangeB8ne200100Ev ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_out_of_rangeB8ne200100Ev
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_out_of_rangeB8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_out_of_rangeB8ne200100Ev
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_out_of_rangeB8ne200100Ev: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_out_of_rangeB8ne200100Ev
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Lloh188:
	adrp	x0, l_.str.42@PAGE
Lloh189:
	add	x0, x0, l_.str.42@PAGEOFF
	bl	__ZNSt3__120__throw_out_of_rangeB8ne200100EPKc
	.loh AdrpAdd	Lloh188, Lloh189
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__120__throw_out_of_rangeB8ne200100EPKc ; -- Begin function _ZNSt3__120__throw_out_of_rangeB8ne200100EPKc
	.globl	__ZNSt3__120__throw_out_of_rangeB8ne200100EPKc
	.weak_def_can_be_hidden	__ZNSt3__120__throw_out_of_rangeB8ne200100EPKc
	.p2align	2
__ZNSt3__120__throw_out_of_rangeB8ne200100EPKc: ; @_ZNSt3__120__throw_out_of_rangeB8ne200100EPKc
Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception7
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x20, x0
	mov	w0, #16                         ; =0x10
	bl	___cxa_allocate_exception
	mov	x19, x0
Ltmp320:
	mov	x1, x20
	bl	__ZNSt12out_of_rangeC1B8ne200100EPKc
Ltmp321:
; %bb.1:
Lloh190:
	adrp	x1, __ZTISt12out_of_range@GOTPAGE
Lloh191:
	ldr	x1, [x1, __ZTISt12out_of_range@GOTPAGEOFF]
Lloh192:
	adrp	x2, __ZNSt12out_of_rangeD1Ev@GOTPAGE
Lloh193:
	ldr	x2, [x2, __ZNSt12out_of_rangeD1Ev@GOTPAGEOFF]
	mov	x0, x19
	bl	___cxa_throw
LBB15_2:
Ltmp322:
	mov	x20, x0
	mov	x0, x19
	bl	___cxa_free_exception
	mov	x0, x20
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh192, Lloh193
	.loh AdrpLdrGot	Lloh190, Lloh191
Lfunc_end7:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table15:
Lexception7:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end7-Lcst_begin7
Lcst_begin7:
	.uleb128 Lfunc_begin7-Lfunc_begin7      ; >> Call Site 1 <<
	.uleb128 Ltmp320-Lfunc_begin7           ;   Call between Lfunc_begin7 and Ltmp320
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp320-Lfunc_begin7           ; >> Call Site 2 <<
	.uleb128 Ltmp321-Ltmp320                ;   Call between Ltmp320 and Ltmp321
	.uleb128 Ltmp322-Lfunc_begin7           ;     jumps to Ltmp322
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp321-Lfunc_begin7           ; >> Call Site 3 <<
	.uleb128 Lfunc_end7-Ltmp321             ;   Call between Ltmp321 and Lfunc_end7
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end7:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt12out_of_rangeC1B8ne200100EPKc ; -- Begin function _ZNSt12out_of_rangeC1B8ne200100EPKc
	.globl	__ZNSt12out_of_rangeC1B8ne200100EPKc
	.weak_def_can_be_hidden	__ZNSt12out_of_rangeC1B8ne200100EPKc
	.p2align	2
__ZNSt12out_of_rangeC1B8ne200100EPKc:   ; @_ZNSt12out_of_rangeC1B8ne200100EPKc
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	__ZNSt11logic_errorC2EPKc
Lloh194:
	adrp	x8, __ZTVSt12out_of_range@GOTPAGE
Lloh195:
	ldr	x8, [x8, __ZTVSt12out_of_range@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGot	Lloh194, Lloh195
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"N must be > 0\n"

	.section	__TEXT,__const
	.p2align	3, 0x0                          ; @constinit
l_constinit:
	.quad	257                             ; 0x101
	.quad	997                             ; 0x3e5
	.quad	10007                           ; 0x2717
	.quad	1000003                         ; 0xf4243
	.quad	10000019                        ; 0x989693
	.quad	1000000007                      ; 0x3b9aca07

	.section	__TEXT,__cstring,cstring_literals
l_.str.1:                               ; @.str.1
	.asciz	"/proc/cpuinfo"

l_.str.2:                               ; @.str.2
	.asciz	"model name"

l_.str.4:                               ; @.str.4
	.asciz	"cpu MHz"

l_.str.5:                               ; @.str.5
	.asciz	"/proc/meminfo"

l_.str.6:                               ; @.str.6
	.asciz	"MemTotal"

l_.str.7:                               ; @.str.7
	.asciz	"uname -o"

l_.str.8:                               ; @.str.8
	.asciz	"r"

l_.str.9:                               ; @.str.9
	.asciz	"========================================\n"

l_.str.10:                              ; @.str.10
	.asciz	"REIST modular-add benchmark suite (NEON)\n"

l_.str.11:                              ; @.str.11
	.asciz	"System Information:\n"

l_.str.12:                              ; @.str.12
	.asciz	"  Hostname: "

l_.str.13:                              ; @.str.13
	.asciz	"\n"

l_.str.14:                              ; @.str.14
	.asciz	"  OS: "

l_.str.15:                              ; @.str.15
	.asciz	"  CPU Model: "

l_.str.16:                              ; @.str.16
	.asciz	"  CPU MHz: "

l_.str.17:                              ; @.str.17
	.asciz	"  Memory: "

l_.str.18:                              ; @.str.18
	.asciz	"========================================\n\n"

l_.str.19:                              ; @.str.19
	.asciz	"Total iterations per modulus N = "

l_.str.20:                              ; @.str.20
	.asciz	"step = "

l_.str.21:                              ; @.str.21
	.asciz	"\n\n"

l_.str.22:                              ; @.str.22
	.asciz	"Running benchmarks (with NEON vectorization)...\n\n"

l_.str.23:                              ; @.str.23
	.asciz	"Modulus B = "

l_.str.24:                              ; @.str.24
	.asciz	"classic_mod"

l_.str.25:                              ; @.str.25
	.asciz	"reist_sym_scalar"

l_.str.26:                              ; @.str.26
	.asciz	"reist_sym_neon"

l_.str.27:                              ; @.str.27
	.asciz	"  classic_mod        : "

l_.str.28:                              ; @.str.28
	.asciz	" s\n"

l_.str.29:                              ; @.str.29
	.asciz	"  reist_sym (scalar) : "

l_.str.30:                              ; @.str.30
	.asciz	"  reist_sym (NEON)   : "

l_.str.31:                              ; @.str.31
	.asciz	"  speedup (classic / scalar) : "

l_.str.32:                              ; @.str.32
	.asciz	"x\n"

l_.str.33:                              ; @.str.33
	.asciz	"  speedup (classic / NEON)   : "

l_.str.34:                              ; @.str.34
	.asciz	"  NEON speedup (scalar / NEON): "

l_.str.35:                              ; @.str.35
	.asciz	"  sinks: "

l_.str.36:                              ; @.str.36
	.asciz	" / "

l_.str.37:                              ; @.str.37
	.asciz	"results_modadd_suite_neon.csv"

l_.str.38:                              ; @.str.38
	.asciz	"modulus,N,scenario,seconds,ops_per_sec\n"

l_.str.39:                              ; @.str.39
	.asciz	","

l_.str.40:                              ; @.str.40
	.asciz	"CSV written to "

l_.str.41:                              ; @.str.41
	.asciz	"WARNING: could not write CSV file "

l_.str.42:                              ; @.str.42
	.asciz	"basic_string"

l_.str.43:                              ; @.str.43
	.asciz	"vector"

.subsections_via_symbols
