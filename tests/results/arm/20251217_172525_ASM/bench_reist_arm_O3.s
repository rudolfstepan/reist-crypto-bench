	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 26, 0	sdk_version 26, 2
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4, 0x0                          ; -- Begin function main
lCPI0_0:
	.long	1000003                         ; 0xf4243
	.long	10000019                        ; 0x989693
	.long	100000007                       ; 0x5f5e107
	.long	1000000007                      ; 0x3b9aca07
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.p2align	2
_main:                                  ; @main
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
; %bb.0:
	stp	d13, d12, [sp, #-144]!          ; 16-byte Folded Spill
	stp	d11, d10, [sp, #16]             ; 16-byte Folded Spill
	stp	d9, d8, [sp, #32]               ; 16-byte Folded Spill
	stp	x28, x27, [sp, #48]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #64]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #80]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #96]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #112]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #128]            ; 16-byte Folded Spill
	add	x29, sp, #128
	sub	sp, sp, #3472
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
	.cfi_offset b12, -136
	.cfi_offset b13, -144
Lloh0:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh1:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh2:
	ldr	x8, [x8]
	stur	x8, [x29, #-144]
	mov	x21, #-9                        ; =0xfffffffffffffff7
	movk	x21, #32767, lsl #48
	cmp	w0, #2
	b.lt	LBB0_4
; %bb.1:
	ldr	x20, [x1, #8]
	mov	x0, x20
	bl	_strlen
	cmp	x0, x21
	b.hi	LBB0_222
; %bb.2:
	mov	x19, x0
	cmp	x0, #23
	b.hs	LBB0_5
; %bb.3:
	strb	w19, [sp, #263]
	add	x21, sp, #240
	cbnz	x19, LBB0_6
	b	LBB0_7
LBB0_4:
	mov	w19, #1024                      ; =0x400
	b	LBB0_10
LBB0_5:
	orr	x8, x19, #0x7
	cmp	x8, #23
	mov	w9, #25                         ; =0x19
	csinc	x22, x9, x8, eq
	mov	x0, x22
	bl	__Znwm
	mov	x21, x0
	orr	x8, x22, #0x8000000000000000
	stp	x19, x8, [sp, #248]
	str	x0, [sp, #240]
LBB0_6:
	mov	x0, x21
	mov	x1, x20
	mov	x2, x19
	bl	_memmove
LBB0_7:
	strb	wzr, [x21, x19]
Ltmp0:
	add	x0, sp, #240
	mov	x1, #0                          ; =0x0
	mov	w2, #10                         ; =0xa
	bl	__ZNSt3__14stoiERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPmi
Ltmp1:
; %bb.8:
	mov	x19, x0
	ldrsb	w8, [sp, #263]
	tbz	w8, #31, LBB0_10
; %bb.9:
	ldr	x0, [sp, #240]
	bl	__ZdlPv
LBB0_10:
Ltmp3:
	mov	w0, #16                         ; =0x10
	bl	__Znwm
Ltmp4:
; %bb.11:
Lloh3:
	adrp	x8, lCPI0_0@PAGE
Lloh4:
	ldr	q0, [x8, lCPI0_0@PAGEOFF]
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	str	q0, [x0]
	mov	w8, #12345                      ; =0x3039
	str	w8, [sp, #240]
	mov	w9, #1                          ; =0x1
	mov	w10, #35173                     ; =0x8965
	movk	w10, #27655, lsl #16
	add	x11, sp, #240
LBB0_12:                                ; =>This Inner Loop Header: Depth=1
	eor	w8, w8, w8, lsr #30
	madd	w8, w8, w10, w9
	str	w8, [x11, x9, lsl #2]
	add	x9, x9, #1
	cmp	x9, #624
	b.ne	LBB0_12
; %bb.13:
	str	x19, [sp, #8]                   ; 8-byte Folded Spill
	str	xzr, [sp, #2736]
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
Ltmp6:
Lloh5:
	adrp	x1, l_.str@PAGE
Lloh6:
	add	x1, x1, l_.str@PAGEOFF
	add	x0, sp, #2880
	mov	w2, #8                          ; =0x8
	bl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEC1EPKcj
Ltmp7:
; %bb.14:
	str	xzr, [sp, #2760]
	str	xzr, [sp, #2752]
	mov	w28, #19744                     ; =0x4d20
	movk	w28, #31304, lsl #16
	str	xzr, [sp, #2768]
	mov	x23, #28525                     ; =0x6f6d
	movk	x23, #25956, lsl #16
	movk	x23, #8300, lsl #32
	movk	x23, #24942, lsl #48
	mov	w24, #25965                     ; =0x656d
	b	LBB0_17
LBB0_15:                                ;   in Loop: Header=BB0_17 Depth=1
	strb	wzr, [x21, x20]
	ldrsb	w8, [sp, #199]
	tbnz	w8, #31, LBB0_69
LBB0_16:                                ;   in Loop: Header=BB0_17 Depth=1
	ldur	q0, [sp, #72]
	str	q0, [sp, #176]
	ldr	x8, [sp, #88]
	str	x8, [sp, #192]
LBB0_17:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_24 Depth 2
                                        ;     Child Loop BB0_30 Depth 2
                                        ;     Child Loop BB0_45 Depth 2
                                        ;     Child Loop BB0_51 Depth 2
	ldr	x8, [sp, #2880]
	ldur	x9, [x8, #-24]
Ltmp9:
	add	x8, sp, #72
	add	x10, sp, #2880
	add	x0, x10, x9
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp10:
; %bb.18:                               ;   in Loop: Header=BB0_17 Depth=1
Ltmp11:
	add	x0, sp, #72
Lloh7:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh8:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp12:
; %bb.19:                               ;   in Loop: Header=BB0_17 Depth=1
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp13:
	mov	w1, #10                         ; =0xa
	blr	x8
Ltmp14:
; %bb.20:                               ;   in Loop: Header=BB0_17 Depth=1
	mov	x20, x0
	add	x0, sp, #72
	bl	__ZNSt3__16localeD1Ev
Ltmp16:
	add	x0, sp, #2880
	add	x1, sp, #2752
	mov	x2, x20
	bl	__ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
Ltmp17:
; %bb.21:                               ;   in Loop: Header=BB0_17 Depth=1
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x8, x0, x8
	ldrb	w21, [sp, #2775]
	sxtb	w19, w21
	ldrb	w8, [x8, #32]
	mov	w9, #5                          ; =0x5
	tst	w8, w9
	b.ne	LBB0_70
; %bb.22:                               ;   in Loop: Header=BB0_17 Depth=1
	cmp	w19, #0
	ldr	x26, [sp, #2752]
	ldr	x22, [sp, #2760]
	add	x8, sp, #2752
	csel	x20, x26, x8, lt
	csel	x8, x22, x21, lt
	cmp	x8, #10
	b.lt	LBB0_43
; %bb.23:                               ;   in Loop: Header=BB0_17 Depth=1
	add	x25, x20, x8
	mov	x27, x8
	mov	x0, x20
LBB0_24:                                ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	sub	x2, x8, #9
	mov	w1, #109                        ; =0x6d
	bl	_memchr
	cbz	x0, LBB0_43
; %bb.25:                               ;   in Loop: Header=BB0_24 Depth=2
	ldr	x8, [x0]
	ldrh	w9, [x0, #8]
	cmp	x8, x23
	ccmp	w9, w24, #0, eq
	b.eq	LBB0_27
; %bb.26:                               ;   in Loop: Header=BB0_24 Depth=2
	add	x0, x0, #1
	sub	x8, x25, x0
	cmp	x8, #10
	b.ge	LBB0_24
	b	LBB0_43
LBB0_27:                                ;   in Loop: Header=BB0_17 Depth=1
	cmp	x0, x25
	b.eq	LBB0_43
; %bb.28:                               ;   in Loop: Header=BB0_17 Depth=1
	sub	x8, x0, x20
	cmn	x8, #1
	b.eq	LBB0_43
; %bb.29:                               ;   in Loop: Header=BB0_17 Depth=1
	mov	x2, x27
	mov	x0, x20
LBB0_30:                                ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	mov	w1, #58                         ; =0x3a
	bl	_memchr
	cbz	x0, LBB0_33
; %bb.31:                               ;   in Loop: Header=BB0_30 Depth=2
	ldrb	w8, [x0]
	cmp	w8, #58
	b.eq	LBB0_34
; %bb.32:                               ;   in Loop: Header=BB0_30 Depth=2
	add	x0, x0, #1
	sub	x2, x25, x0
	cmp	x2, #0
	b.gt	LBB0_30
LBB0_33:                                ;   in Loop: Header=BB0_17 Depth=1
	mov	x0, x25
LBB0_34:                                ;   in Loop: Header=BB0_17 Depth=1
	sub	x8, x0, x20
	add	x8, x8, #2
	cmp	x0, x25
	csinc	x25, x8, xzr, ne
	tbnz	w19, #31, LBB0_37
; %bb.35:                               ;   in Loop: Header=BB0_17 Depth=1
	cmp	x25, x21
	b.hi	LBB0_216
; %bb.36:                               ;   in Loop: Header=BB0_17 Depth=1
	add	x26, sp, #2752
	mov	x22, x21
	b	LBB0_38
LBB0_37:                                ;   in Loop: Header=BB0_17 Depth=1
	cmp	x22, x25
	b.lo	LBB0_216
LBB0_38:                                ;   in Loop: Header=BB0_17 Depth=1
	sub	x20, x22, x25
	mov	x8, #-9                         ; =0xfffffffffffffff7
	movk	x8, #32767, lsl #48
	cmp	x20, x8
	b.hi	LBB0_217
; %bb.39:                               ;   in Loop: Header=BB0_17 Depth=1
	cmp	x20, #23
	b.hs	LBB0_58
; %bb.40:                               ;   in Loop: Header=BB0_17 Depth=1
	strb	w20, [sp, #95]
	add	x21, sp, #72
	cmp	x22, x25
	b.ne	LBB0_60
; %bb.41:                               ;   in Loop: Header=BB0_17 Depth=1
	strb	wzr, [x21, x20]
	ldrsb	w8, [sp, #231]
	tbnz	w8, #31, LBB0_61
LBB0_42:                                ;   in Loop: Header=BB0_17 Depth=1
	ldur	q0, [sp, #72]
	str	q0, [sp, #208]
	ldr	x8, [sp, #88]
	str	x8, [sp, #224]
	ldrb	w21, [sp, #2775]
	ldr	x26, [sp, #2752]
	ldr	x22, [sp, #2760]
	mov	x19, x21
LBB0_43:                                ;   in Loop: Header=BB0_17 Depth=1
	sxtb	w8, w19
	cmp	w8, #0
	add	x8, sp, #2752
	csel	x25, x26, x8, lt
	csel	x20, x22, x21, lt
	cmp	x20, #7
	b.lt	LBB0_17
; %bb.44:                               ;   in Loop: Header=BB0_17 Depth=1
	add	x27, x25, x20
	mov	x8, x20
	mov	x0, x25
LBB0_45:                                ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	sub	x2, x8, #6
	mov	w1, #99                         ; =0x63
	bl	_memchr
	cbz	x0, LBB0_17
; %bb.46:                               ;   in Loop: Header=BB0_45 Depth=2
	ldr	w8, [x0]
	ldur	w9, [x0, #3]
	mov	w10, #28771                     ; =0x7063
	movk	w10, #8309, lsl #16
	cmp	w8, w10
	ccmp	w9, w28, #0, eq
	b.eq	LBB0_48
; %bb.47:                               ;   in Loop: Header=BB0_45 Depth=2
	add	x0, x0, #1
	sub	x8, x27, x0
	cmp	x8, #7
	b.ge	LBB0_45
	b	LBB0_17
LBB0_48:                                ;   in Loop: Header=BB0_17 Depth=1
	cmp	x0, x27
	b.eq	LBB0_17
; %bb.49:                               ;   in Loop: Header=BB0_17 Depth=1
	sub	x8, x0, x25
	cmn	x8, #1
	b.eq	LBB0_17
; %bb.50:                               ;   in Loop: Header=BB0_17 Depth=1
	mov	x0, x25
LBB0_51:                                ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	mov	w1, #58                         ; =0x3a
	mov	x2, x20
	bl	_memchr
	cbz	x0, LBB0_54
; %bb.52:                               ;   in Loop: Header=BB0_51 Depth=2
	ldrb	w8, [x0]
	cmp	w8, #58
	b.eq	LBB0_55
; %bb.53:                               ;   in Loop: Header=BB0_51 Depth=2
	add	x0, x0, #1
	sub	x20, x27, x0
	cmp	x20, #0
	b.gt	LBB0_51
LBB0_54:                                ;   in Loop: Header=BB0_17 Depth=1
	mov	x0, x27
LBB0_55:                                ;   in Loop: Header=BB0_17 Depth=1
	sub	x8, x0, x25
	add	x8, x8, #2
	cmp	x0, x27
	csinc	x25, x8, xzr, ne
	tbnz	w19, #7, LBB0_62
; %bb.56:                               ;   in Loop: Header=BB0_17 Depth=1
	cmp	x25, x21
	b.hi	LBB0_218
; %bb.57:                               ;   in Loop: Header=BB0_17 Depth=1
	add	x26, sp, #2752
	mov	x22, x21
	b	LBB0_63
LBB0_58:                                ;   in Loop: Header=BB0_17 Depth=1
	orr	x8, x20, #0x7
	cmp	x8, #23
	mov	w9, #25                         ; =0x19
	csinc	x22, x9, x8, eq
Ltmp164:
	mov	x0, x22
	bl	__Znwm
Ltmp165:
; %bb.59:                               ;   in Loop: Header=BB0_17 Depth=1
	mov	x21, x0
	orr	x8, x22, #0x8000000000000000
	stp	x20, x8, [sp, #80]
	str	x0, [sp, #72]
LBB0_60:                                ;   in Loop: Header=BB0_17 Depth=1
	add	x1, x26, x25
	mov	x0, x21
	mov	x2, x20
	bl	_memmove
	strb	wzr, [x21, x20]
	ldrsb	w8, [sp, #231]
	tbz	w8, #31, LBB0_42
LBB0_61:                                ;   in Loop: Header=BB0_17 Depth=1
	ldr	x0, [sp, #208]
	bl	__ZdlPv
	b	LBB0_42
LBB0_62:                                ;   in Loop: Header=BB0_17 Depth=1
	cmp	x22, x25
	b.lo	LBB0_218
LBB0_63:                                ;   in Loop: Header=BB0_17 Depth=1
	sub	x20, x22, x25
	mov	x8, #-9                         ; =0xfffffffffffffff7
	movk	x8, #32767, lsl #48
	cmp	x20, x8
	b.hi	LBB0_219
; %bb.64:                               ;   in Loop: Header=BB0_17 Depth=1
	cmp	x20, #23
	b.hs	LBB0_66
; %bb.65:                               ;   in Loop: Header=BB0_17 Depth=1
	strb	w20, [sp, #95]
	add	x21, sp, #72
	cmp	x22, x25
	b.ne	LBB0_68
	b	LBB0_15
LBB0_66:                                ;   in Loop: Header=BB0_17 Depth=1
	orr	x8, x20, #0x7
	cmp	x8, #23
	mov	w9, #25                         ; =0x19
	csinc	x22, x9, x8, eq
Ltmp172:
	mov	x0, x22
	bl	__Znwm
Ltmp173:
; %bb.67:                               ;   in Loop: Header=BB0_17 Depth=1
	mov	x21, x0
	orr	x8, x22, #0x8000000000000000
	stp	x20, x8, [sp, #80]
	str	x0, [sp, #72]
LBB0_68:                                ;   in Loop: Header=BB0_17 Depth=1
	add	x1, x26, x25
	mov	x0, x21
	mov	x2, x20
	bl	_memmove
	strb	wzr, [x21, x20]
	ldrsb	w8, [sp, #199]
	tbz	w8, #31, LBB0_16
LBB0_69:                                ;   in Loop: Header=BB0_17 Depth=1
	ldr	x0, [sp, #176]
	bl	__ZdlPv
	b	LBB0_16
LBB0_70:
	tbz	w19, #31, LBB0_72
; %bb.71:
	ldr	x0, [sp, #2752]
	bl	__ZdlPv
LBB0_72:
Lloh9:
	adrp	x22, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh10:
	ldr	x22, [x22, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	ldr	x23, [x22]
	str	x23, [sp, #2880]
	ldr	x24, [x22, #24]
	ldur	x8, [x23, #-24]
	add	x19, sp, #2880
	str	x24, [x19, x8]
	add	x0, x19, #16
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
	add	x0, sp, #2880
	add	x1, x22, #8
	bl	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	add	x0, x19, #424
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
Ltmp19:
Lloh11:
	adrp	x1, l_.str.4@PAGE
Lloh12:
	add	x1, x1, l_.str.4@PAGEOFF
	add	x19, sp, #2880
	add	x0, sp, #2880
	mov	w2, #8                          ; =0x8
	bl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEC1EPKcj
Ltmp20:
; %bb.73:
	str	xzr, [sp, #2760]
	str	xzr, [sp, #2752]
	str	xzr, [sp, #2768]
	ldr	x8, [sp, #2880]
	ldur	x9, [x8, #-24]
Ltmp22:
	add	x8, sp, #72
	add	x0, x19, x9
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp23:
; %bb.74:
Ltmp24:
Lloh13:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh14:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #72
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp25:
; %bb.75:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp26:
	mov	w1, #10                         ; =0xa
	blr	x8
Ltmp27:
; %bb.76:
	mov	x19, x0
	add	x0, sp, #72
	bl	__ZNSt3__16localeD1Ev
Ltmp29:
	add	x0, sp, #2880
	add	x1, sp, #2752
	mov	x2, x19
	bl	__ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
Ltmp30:
; %bb.77:
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x8, x0, x8
	ldrb	w8, [x8, #32]
	mov	w9, #5                          ; =0x5
	tst	w8, w9
	b.ne	LBB0_103
; %bb.78:
	ldrsb	x20, [sp, #2775]
	add	x8, sp, #2752
	ldr	x25, [sp, #2752]
	ldr	x21, [sp, #2760]
	cmp	x20, #0
	csel	x26, x25, x8, lt
	cmp	w20, #0
	csel	x19, x21, x20, lt
	cmp	x19, #8
	b.lt	LBB0_103
; %bb.79:
	add	x27, x26, x19
	mov	x28, #25933                     ; =0x654d
	movk	x28, #21613, lsl #16
	movk	x28, #29807, lsl #32
	movk	x28, #27745, lsl #48
	mov	x8, x19
	mov	x0, x26
LBB0_80:                                ; =>This Inner Loop Header: Depth=1
	sub	x2, x8, #7
	mov	w1, #77                         ; =0x4d
	bl	_memchr
	cbz	x0, LBB0_103
; %bb.81:                               ;   in Loop: Header=BB0_80 Depth=1
	ldr	x8, [x0]
	cmp	x8, x28
	b.eq	LBB0_83
; %bb.82:                               ;   in Loop: Header=BB0_80 Depth=1
	add	x0, x0, #1
	sub	x8, x27, x0
	cmp	x8, #8
	b.ge	LBB0_80
	b	LBB0_103
LBB0_83:
	cmp	x0, x27
	b.eq	LBB0_103
; %bb.84:
	sub	x8, x0, x26
	cmn	x8, #1
	b.eq	LBB0_103
; %bb.85:
	mov	x0, x26
LBB0_86:                                ; =>This Inner Loop Header: Depth=1
	mov	w1, #58                         ; =0x3a
	mov	x2, x19
	bl	_memchr
	cbz	x0, LBB0_89
; %bb.87:                               ;   in Loop: Header=BB0_86 Depth=1
	ldrb	w8, [x0]
	cmp	w8, #58
	b.eq	LBB0_90
; %bb.88:                               ;   in Loop: Header=BB0_86 Depth=1
	add	x0, x0, #1
	sub	x19, x27, x0
	cmp	x19, #0
	b.gt	LBB0_86
LBB0_89:
	mov	x0, x27
LBB0_90:
	sub	x8, x0, x26
	add	x8, x8, #2
	cmp	x0, x27
	csinc	x26, x8, xzr, ne
	tbnz	w20, #31, LBB0_93
; %bb.91:
	cmp	x26, x20
	b.hi	LBB0_224
; %bb.92:
	add	x25, sp, #2752
	mov	x21, x20
	b	LBB0_94
LBB0_93:
	cmp	x21, x26
	b.lo	LBB0_224
LBB0_94:
	sub	x19, x21, x26
	mov	x8, #-9                         ; =0xfffffffffffffff7
	movk	x8, #32767, lsl #48
	cmp	x19, x8
	b.hi	LBB0_225
; %bb.95:
	cmp	x19, #23
	b.hs	LBB0_97
; %bb.96:
	strb	w19, [sp, #95]
	add	x20, sp, #72
	cmp	x21, x26
	b.ne	LBB0_99
	b	LBB0_100
LBB0_97:
	orr	x8, x19, #0x7
	cmp	x8, #23
	mov	w9, #25                         ; =0x19
	csinc	x21, x9, x8, eq
Ltmp32:
	mov	x0, x21
	bl	__Znwm
Ltmp33:
; %bb.98:
	mov	x20, x0
	orr	x8, x21, #0x8000000000000000
	stp	x19, x8, [sp, #80]
	str	x0, [sp, #72]
LBB0_99:
	add	x1, x25, x26
	mov	x0, x20
	mov	x2, x19
	bl	_memmove
LBB0_100:
	strb	wzr, [x20, x19]
	ldrsb	w8, [sp, #167]
	tbz	w8, #31, LBB0_102
; %bb.101:
	ldr	x0, [sp, #144]
	bl	__ZdlPv
LBB0_102:
	ldur	q0, [sp, #72]
	str	q0, [sp, #144]
	ldr	x8, [sp, #88]
	str	x8, [sp, #160]
LBB0_103:
	ldrsb	w8, [sp, #2775]
	tbz	w8, #31, LBB0_105
; %bb.104:
	ldr	x0, [sp, #2752]
	bl	__ZdlPv
LBB0_105:
	str	x23, [sp, #2880]
	ldur	x8, [x23, #-24]
	add	x19, sp, #2880
	str	x24, [x19, x8]
	add	x0, x19, #16
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
	add	x0, sp, #2880
	add	x1, x22, #8
	bl	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	add	x0, x19, #424
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
Ltmp39:
	add	x0, sp, #2880
	mov	w1, #256                        ; =0x100
	bl	_gethostname
Ltmp40:
	ldr	x25, [sp, #8]                   ; 8-byte Folded Reload
; %bb.106:
	cbnz	w0, LBB0_108
; %bb.107:
Ltmp41:
	add	x0, sp, #120
	add	x1, sp, #2880
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc
Ltmp42:
LBB0_108:
Ltmp43:
Lloh15:
	adrp	x0, l_.str.6@PAGE
Lloh16:
	add	x0, x0, l_.str.6@PAGEOFF
Lloh17:
	adrp	x1, l_.str.7@PAGE
Lloh18:
	add	x1, x1, l_.str.7@PAGEOFF
	bl	_popen
Ltmp44:
; %bb.109:
	mov	x19, x0
	cbz	x0, LBB0_128
; %bb.110:
	add	x0, sp, #2752
	mov	w1, #128                        ; =0x80
	mov	x2, x19
	bl	_fgets
	cbz	x0, LBB0_127
; %bb.111:
	add	x0, sp, #2752
	bl	_strlen
	mov	x8, #-9                         ; =0xfffffffffffffff7
	movk	x8, #32767, lsl #48
	cmp	x0, x8
	b.hi	LBB0_223
; %bb.112:
	mov	x20, x0
	cmp	x0, #23
	b.hs	LBB0_119
; %bb.113:
	strb	w20, [sp, #95]
	add	x21, sp, #72
	cbnz	x20, LBB0_121
; %bb.114:
	strb	wzr, [x21, x20]
	ldrsb	w8, [sp, #119]
	tbnz	w8, #31, LBB0_122
LBB0_115:
	ldr	x8, [sp, #88]
	str	x8, [sp, #112]
	ldur	q0, [sp, #72]
	str	q0, [sp, #96]
	ldrsb	x8, [sp, #119]
	tbnz	x8, #63, LBB0_123
LBB0_116:
	cbz	w8, LBB0_127
; %bb.117:
	add	x9, sp, #96
	add	x9, x9, x8
	ldurb	w9, [x9, #-1]
	cmp	w9, #10
	b.ne	LBB0_127
; %bb.118:
	sub	x9, x8, #1
	strb	w9, [sp, #119]
	add	x8, sp, #96
	b	LBB0_126
LBB0_119:
	orr	x8, x20, #0x7
	cmp	x8, #23
	mov	w9, #25                         ; =0x19
	csinc	x22, x9, x8, eq
Ltmp46:
	mov	x0, x22
	bl	__Znwm
Ltmp47:
; %bb.120:
	mov	x21, x0
	orr	x8, x22, #0x8000000000000000
	stp	x20, x8, [sp, #80]
	str	x0, [sp, #72]
LBB0_121:
	add	x1, sp, #2752
	mov	x0, x21
	mov	x2, x20
	bl	_memcpy
	strb	wzr, [x21, x20]
	ldrsb	w8, [sp, #119]
	tbz	w8, #31, LBB0_115
LBB0_122:
	ldr	x0, [sp, #96]
	bl	__ZdlPv
	ldr	x8, [sp, #88]
	str	x8, [sp, #112]
	ldur	q0, [sp, #72]
	str	q0, [sp, #96]
	ldrsb	x8, [sp, #119]
	tbz	x8, #63, LBB0_116
LBB0_123:
	ldr	x9, [sp, #104]
	cbz	x9, LBB0_127
; %bb.124:
	ldr	x8, [sp, #96]
	add	x10, x8, x9
	ldurb	w10, [x10, #-1]
	cmp	w10, #10
	b.ne	LBB0_127
; %bb.125:
	sub	x9, x9, #1
	str	x9, [sp, #104]
LBB0_126:
	strb	wzr, [x8, x9]
LBB0_127:
	mov	x0, x19
	bl	_pclose
LBB0_128:
Lloh19:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh20:
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
Ltmp51:
Lloh21:
	adrp	x1, l_.str.8@PAGE
Lloh22:
	add	x1, x1, l_.str.8@PAGEOFF
	mov	w2, #41                         ; =0x29
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp52:
; %bb.129:
Ltmp53:
Lloh23:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh24:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh25:
	adrp	x1, l_.str.9@PAGE
Lloh26:
	add	x1, x1, l_.str.9@PAGEOFF
	mov	w2, #36                         ; =0x24
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp54:
; %bb.130:
Ltmp55:
Lloh27:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh28:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh29:
	adrp	x1, l_.str.8@PAGE
Lloh30:
	add	x1, x1, l_.str.8@PAGEOFF
	mov	w2, #41                         ; =0x29
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp56:
; %bb.131:
Ltmp57:
Lloh31:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh32:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh33:
	adrp	x1, l_.str.10@PAGE
Lloh34:
	add	x1, x1, l_.str.10@PAGEOFF
	mov	w2, #20                         ; =0x14
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp58:
; %bb.132:
Ltmp59:
Lloh35:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh36:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh37:
	adrp	x1, l_.str.11@PAGE
Lloh38:
	add	x1, x1, l_.str.11@PAGEOFF
	mov	w2, #12                         ; =0xc
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp60:
; %bb.133:
	ldrb	w8, [sp, #143]
	sxtb	w9, w8
	ldp	x10, x11, [sp, #120]
	cmp	w9, #0
	add	x9, sp, #120
	csel	x1, x10, x9, lt
	csel	x2, x11, x8, lt
Ltmp61:
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp62:
; %bb.134:
Ltmp63:
Lloh39:
	adrp	x1, l_.str.12@PAGE
Lloh40:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp64:
; %bb.135:
Ltmp65:
Lloh41:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh42:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh43:
	adrp	x1, l_.str.13@PAGE
Lloh44:
	add	x1, x1, l_.str.13@PAGEOFF
	mov	w2, #6                          ; =0x6
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp66:
; %bb.136:
	ldrb	w8, [sp, #119]
	sxtb	w9, w8
	ldp	x10, x11, [sp, #96]
	cmp	w9, #0
	add	x9, sp, #96
	csel	x1, x10, x9, lt
	csel	x2, x11, x8, lt
Ltmp67:
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp68:
; %bb.137:
Ltmp69:
Lloh45:
	adrp	x1, l_.str.12@PAGE
Lloh46:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp70:
; %bb.138:
Ltmp71:
Lloh47:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh48:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh49:
	adrp	x1, l_.str.14@PAGE
Lloh50:
	add	x1, x1, l_.str.14@PAGEOFF
	mov	w2, #13                         ; =0xd
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp72:
; %bb.139:
	ldrb	w8, [sp, #231]
	sxtb	w9, w8
	ldp	x10, x11, [sp, #208]
	cmp	w9, #0
	add	x9, sp, #208
	csel	x1, x10, x9, lt
	csel	x2, x11, x8, lt
Ltmp73:
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp74:
; %bb.140:
Ltmp75:
Lloh51:
	adrp	x1, l_.str.12@PAGE
Lloh52:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp76:
; %bb.141:
Ltmp77:
Lloh53:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh54:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh55:
	adrp	x1, l_.str.15@PAGE
Lloh56:
	add	x1, x1, l_.str.15@PAGEOFF
	mov	w2, #11                         ; =0xb
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp78:
; %bb.142:
	ldrb	w8, [sp, #199]
	sxtb	w9, w8
	ldp	x10, x11, [sp, #176]
	cmp	w9, #0
	add	x9, sp, #176
	csel	x1, x10, x9, lt
	csel	x2, x11, x8, lt
Ltmp79:
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp80:
; %bb.143:
Ltmp81:
Lloh57:
	adrp	x1, l_.str.12@PAGE
Lloh58:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp82:
; %bb.144:
Ltmp83:
Lloh59:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh60:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh61:
	adrp	x1, l_.str.16@PAGE
Lloh62:
	add	x1, x1, l_.str.16@PAGEOFF
	mov	w2, #10                         ; =0xa
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp84:
; %bb.145:
	ldrb	w8, [sp, #167]
	sxtb	w9, w8
	ldp	x10, x11, [sp, #144]
	cmp	w9, #0
	add	x9, sp, #144
	csel	x1, x10, x9, lt
	csel	x2, x11, x8, lt
Ltmp85:
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp86:
; %bb.146:
Ltmp87:
Lloh63:
	adrp	x1, l_.str.12@PAGE
Lloh64:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp88:
; %bb.147:
Ltmp89:
Lloh65:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh66:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh67:
	adrp	x1, l_.str.17@PAGE
Lloh68:
	add	x1, x1, l_.str.17@PAGEOFF
	mov	w2, #42                         ; =0x2a
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp90:
; %bb.148:
Ltmp91:
Lloh69:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh70:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh71:
	adrp	x1, l_.str.18@PAGE
Lloh72:
	add	x1, x1, l_.str.18@PAGEOFF
	mov	w2, #4                          ; =0x4
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp92:
; %bb.149:
Ltmp93:
	mov	x1, x25
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
Ltmp94:
; %bb.150:
Ltmp95:
Lloh73:
	adrp	x1, l_.str.19@PAGE
Lloh74:
	add	x1, x1, l_.str.19@PAGEOFF
	mov	w2, #15                         ; =0xf
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp96:
; %bb.151:
	str	xzr, [sp, #2760]
	str	xzr, [sp, #2752]
	str	xzr, [sp, #2768]
	cbz	w25, LBB0_157
; %bb.152:
	tbnz	w25, #31, LBB0_221
; %bb.153:
	sxtw	x21, w25
	lsl	x19, x21, #2
Ltmp98:
	mov	x0, x19
	bl	__Znwm
Ltmp99:
; %bb.154:
	mov	x20, x0
	add	x8, x0, x21, lsl #2
	str	x0, [sp, #2752]
	str	x8, [sp, #2768]
	mov	x1, x19
	bl	_bzero
	str	x20, [sp, #24]                  ; 8-byte Folded Spill
	add	x8, x20, x19
	str	x8, [sp, #40]                   ; 8-byte Folded Spill
	str	x8, [sp, #2760]
Ltmp100:
	mov	x0, x19
	bl	__Znwm
Ltmp101:
; %bb.155:
	mov	x23, x0
	add	x8, x0, x21, lsl #2
	str	x0, [sp, #72]
	str	x8, [sp, #88]
	mov	x1, x19
	bl	_bzero
	add	x8, x23, x19
	str	x8, [sp, #80]
Ltmp103:
	mov	x0, x19
	bl	__Znwm
Ltmp104:
; %bb.156:
	mov	x20, x0
	add	x8, x0, x21, lsl #2
	str	x0, [sp, #48]
	str	x8, [sp, #64]
	mov	x1, x19
	bl	_bzero
	add	x8, x20, x19
	str	x8, [sp, #56]
	ldr	x19, [sp, #24]                  ; 8-byte Folded Reload
	b	LBB0_158
LBB0_157:
	stp	xzr, xzr, [sp, #40]             ; 8-byte Folded Spill
	mov	x23, #0                         ; =0x0
	mov	x19, #0                         ; =0x0
	stp	xzr, xzr, [sp, #72]
	str	xzr, [sp, #88]
	stp	xzr, xzr, [sp, #56]
LBB0_158:
	mov	x22, #0                         ; =0x0
	ldr	x24, [sp, #2736]
	mov	w8, w25
	str	x8, [sp]                        ; 8-byte Folded Spill
	mov	x8, #225833675390976            ; =0xcd6500000000
	movk	x8, #16845, lsl #48
	fmov	d11, x8
	mov	x8, #5243                       ; =0x147b
	movk	x8, #18350, lsl #16
	movk	x8, #31457, lsl #32
	movk	x8, #16276, lsl #48
	fmov	d12, x8
	add	x21, sp, #240
	str	x19, [sp, #24]                  ; 8-byte Folded Spill
LBB0_159:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_160 Depth 2
                                        ;     Child Loop BB0_162 Depth 2
                                        ;     Child Loop BB0_165 Depth 2
                                        ;     Child Loop BB0_168 Depth 2
	ldp	x10, x8, [sp, #8]               ; 16-byte Folded Reload
	ldr	w25, [x8, x22]
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	mov	x9, x19
	mov	w15, #-272236544                ; =0xefc60000
	mov	w16, #22144                     ; =0x5680
	movk	w16, #40236, lsl #16
	mov	w17, #45279                     ; =0xb0df
	movk	w17, #39176, lsl #16
	mov	x0, #3361                       ; =0xd21
	movk	x0, #8402, lsl #16
	movk	x0, #53773, lsl #32
	movk	x0, #3360, lsl #48
	mov	w1, #624                        ; =0x270
	mov	w2, #397                        ; =0x18d
	mov	x3, #-227                       ; =0xffffffffffffff1d
	cbz	w10, LBB0_161
LBB0_160:                               ;   Parent Loop BB0_159 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	add	x10, x24, #1
	lsr	x11, x10, #4
	umulh	x11, x11, x0
	lsr	x11, x11, #1
	msub	x10, x11, x1, x10
	ldr	w11, [x21, x24, lsl #2]
	and	w11, w11, #0x80000000
	ldr	w12, [x21, x10, lsl #2]
	and	w13, w12, #0x7ffffffe
	orr	w11, w13, w11
	add	x13, x24, #397
	lsr	x14, x13, #4
	umulh	x14, x14, x0
	lsr	x14, x14, #1
	msub	x13, x14, x1, x13
	ldr	w13, [x21, x13, lsl #2]
	tst	w12, #0x1
	csel	w12, w17, wzr, ne
	eor	w12, w12, w13
	eor	w11, w12, w11, lsr #1
	str	w11, [x21, x24, lsl #2]
	eor	w11, w11, w11, lsr #11
	and	w12, w16, w11, lsl #7
	eor	w11, w12, w11
	and	w12, w15, w11, lsl #15
	eor	w11, w12, w11
	eor	w11, w11, w11, lsr #18
	subs	x12, x10, #623
	csinc	x24, x12, x10, hs
	ldr	w12, [x21, x10, lsl #2]
	and	w12, w12, #0x80000000
	ldr	w13, [x21, x24, lsl #2]
	and	w14, w13, #0x7ffffffe
	orr	w12, w14, w12
	cmp	x10, #227
	csel	x14, x2, x3, lo
	add	x14, x14, x10
	ldr	w14, [x21, x14, lsl #2]
	tst	w13, #0x1
	csel	w13, w17, wzr, ne
	eor	w13, w13, w14
	eor	w12, w13, w12, lsr #1
	str	w12, [x21, x10, lsl #2]
	eor	w10, w12, w12, lsr #11
	and	w12, w16, w10, lsl #7
	eor	w10, w12, w10
	and	w12, w15, w10, lsl #15
	eor	w10, w12, w10
	udiv	w12, w11, w25
	msub	w11, w12, w25, w11
	str	w11, [x9], #4
	eor	w10, w10, w10, lsr #18
	udiv	w11, w10, w25
	msub	w10, w11, w25, w10
	str	w10, [x23], #4
	subs	x8, x8, #1
	b.ne	LBB0_160
LBB0_161:                               ;   in Loop: Header=BB0_159 Depth=1
	str	wzr, [sp, #2748]
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	add	x0, sp, #2752
	add	x1, sp, #72
	add	x2, sp, #48
	mov	x3, x25
	mov	w4, #10                         ; =0xa
	bl	__ZL19classic_poly_scalarRKNSt3__16vectorIjNS_9allocatorIjEEEES5_RS3_jy
	ldr	w8, [sp, #2748]
	eor	w8, w8, w0
	str	w8, [sp, #2748]
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	w26, #10                        ; =0xa
	mov	x23, #4294967296                ; =0x100000000
LBB0_162:                               ;   Parent Loop BB0_159 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x20, x0
	add	x0, sp, #2752
	add	x1, sp, #72
	add	x2, sp, #48
	mov	x3, x25
	mov	x4, x26
	bl	__ZL19classic_poly_scalarRKNSt3__16vectorIjNS_9allocatorIjEEEES5_RS3_jy
	ldr	w8, [sp, #2748]
	eor	w8, w8, w0
	str	w8, [sp, #2748]
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	sub	x8, x0, x20
	scvtf	d0, x8
	fdiv	d8, d0, d11
	fcmp	d8, d12
	b.ge	LBB0_164
; %bb.163:                              ;   in Loop: Header=BB0_162 Depth=2
	lsl	x26, x26, #1
	cmp	x26, x23
	b.ls	LBB0_162
LBB0_164:                               ;   in Loop: Header=BB0_159 Depth=1
	str	x22, [sp, #32]                  ; 8-byte Folded Spill
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x20, x0
	add	x0, sp, #2752
	add	x1, sp, #72
	add	x2, sp, #48
	mov	x3, x25
	mov	x4, x26
	bl	__ZL19classic_poly_scalarRKNSt3__16vectorIjNS_9allocatorIjEEEES5_RS3_jy
	ldr	w8, [sp, #2748]
	eor	w8, w8, w0
	str	w8, [sp, #2748]
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	sub	x8, x0, x20
	scvtf	d0, x8
	fdiv	d0, d0, d11
	fcmp	d0, d8
	fcsel	d8, d0, d8, mi
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x20, x0
	add	x0, sp, #2752
	add	x1, sp, #72
	add	x2, sp, #48
	mov	x3, x25
	mov	x4, x26
	bl	__ZL19classic_poly_scalarRKNSt3__16vectorIjNS_9allocatorIjEEEES5_RS3_jy
	ldr	w8, [sp, #2748]
	eor	w8, w8, w0
	str	w8, [sp, #2748]
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	sub	x8, x0, x20
	scvtf	d0, x8
	fdiv	d0, d0, d11
	fcmp	d0, d8
	fcsel	d8, d0, d8, mi
	ldr	w8, [sp, #2748]
	; InlineAsm Start
	; InlineAsm End
	str	wzr, [sp, #2748]
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	ldr	x23, [sp, #72]
	ldp	x1, x20, [sp, #40]              ; 8-byte Folded Reload
	mov	x0, x19
	mov	x2, x23
	mov	x3, x20
	mov	x4, x25
	mov	w5, #10                         ; =0xa
	bl	__ZL17reist_poly_scalarRKNSt3__16vectorIjNS_9allocatorIjEEEES5_RS3_jy
	ldr	w8, [sp, #2748]
	eor	w8, w8, w0
	str	w8, [sp, #2748]
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	w27, #10                        ; =0xa
LBB0_165:                               ;   Parent Loop BB0_159 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x28, x0
	mov	x0, x19
	ldr	x1, [sp, #40]                   ; 8-byte Folded Reload
	mov	x2, x23
	mov	x3, x20
	mov	x4, x25
	mov	x5, x27
	bl	__ZL17reist_poly_scalarRKNSt3__16vectorIjNS_9allocatorIjEEEES5_RS3_jy
	ldr	w8, [sp, #2748]
	eor	w8, w8, w0
	str	w8, [sp, #2748]
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	sub	x8, x0, x28
	scvtf	d0, x8
	fdiv	d9, d0, d11
	fcmp	d9, d12
	b.ge	LBB0_167
; %bb.166:                              ;   in Loop: Header=BB0_165 Depth=2
	lsl	x27, x27, #1
	mov	x8, #4294967297                 ; =0x100000001
	cmp	x27, x8
	b.lo	LBB0_165
LBB0_167:                               ;   in Loop: Header=BB0_159 Depth=1
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x28, x0
	mov	x0, x19
	ldr	x22, [sp, #40]                  ; 8-byte Folded Reload
	mov	x1, x22
	mov	x2, x23
	mov	x3, x20
	mov	x4, x25
	mov	x5, x27
	bl	__ZL17reist_poly_scalarRKNSt3__16vectorIjNS_9allocatorIjEEEES5_RS3_jy
	ldr	w8, [sp, #2748]
	eor	w8, w8, w0
	str	w8, [sp, #2748]
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	sub	x8, x0, x28
	scvtf	d0, x8
	fdiv	d0, d0, d11
	fcmp	d0, d9
	fcsel	d9, d0, d9, mi
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x28, x0
	mov	x0, x19
	mov	x1, x22
	mov	x2, x23
	mov	x3, x20
	mov	x4, x25
	mov	x5, x27
	bl	__ZL17reist_poly_scalarRKNSt3__16vectorIjNS_9allocatorIjEEEES5_RS3_jy
	ldr	w8, [sp, #2748]
	eor	w8, w8, w0
	str	w8, [sp, #2748]
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	sub	x8, x0, x28
	scvtf	d0, x8
	fdiv	d0, d0, d11
	fcmp	d0, d9
	fcsel	d9, d0, d9, mi
	ldr	w8, [sp, #2748]
	; InlineAsm Start
	; InlineAsm End
	str	wzr, [sp, #2748]
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	add	x0, sp, #2752
	add	x1, sp, #72
	add	x2, sp, #48
	mov	x3, x25
	mov	w4, #10                         ; =0xa
	bl	__ZL15reist_poly_neonRKNSt3__16vectorIjNS_9allocatorIjEEEES5_RS3_jy
	ldr	w8, [sp, #2748]
	eor	w8, w8, w0
	str	w8, [sp, #2748]
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	w28, #10                        ; =0xa
	ldr	x22, [sp, #32]                  ; 8-byte Folded Reload
LBB0_168:                               ;   Parent Loop BB0_159 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x19, x0
	add	x0, sp, #2752
	add	x1, sp, #72
	add	x2, sp, #48
	mov	x3, x25
	mov	x4, x28
	bl	__ZL15reist_poly_neonRKNSt3__16vectorIjNS_9allocatorIjEEEES5_RS3_jy
	ldr	w8, [sp, #2748]
	eor	w8, w8, w0
	str	w8, [sp, #2748]
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	sub	x8, x0, x19
	scvtf	d0, x8
	fdiv	d10, d0, d11
	fcmp	d10, d12
	b.ge	LBB0_170
; %bb.169:                              ;   in Loop: Header=BB0_168 Depth=2
	lsl	x28, x28, #1
	mov	x8, #4294967297                 ; =0x100000001
	cmp	x28, x8
	b.lo	LBB0_168
LBB0_170:                               ;   in Loop: Header=BB0_159 Depth=1
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x19, x0
	add	x0, sp, #2752
	add	x1, sp, #72
	add	x2, sp, #48
	mov	x3, x25
	mov	x4, x28
	bl	__ZL15reist_poly_neonRKNSt3__16vectorIjNS_9allocatorIjEEEES5_RS3_jy
	ldr	w8, [sp, #2748]
	eor	w8, w8, w0
	str	w8, [sp, #2748]
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	sub	x8, x0, x19
	scvtf	d0, x8
	fdiv	d0, d0, d11
	fcmp	d0, d10
	fcsel	d10, d0, d10, mi
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x19, x0
	add	x0, sp, #2752
	add	x1, sp, #72
	add	x2, sp, #48
	mov	x3, x25
	mov	x4, x28
	bl	__ZL15reist_poly_neonRKNSt3__16vectorIjNS_9allocatorIjEEEES5_RS3_jy
	ldr	w8, [sp, #2748]
	eor	w8, w8, w0
	str	w8, [sp, #2748]
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	sub	x8, x0, x19
	scvtf	d0, x8
	fdiv	d0, d0, d11
	fcmp	d0, d10
	fcsel	d10, d0, d10, mi
	ldr	w8, [sp, #2748]
	; InlineAsm Start
	; InlineAsm End
Ltmp109:
Lloh75:
	adrp	x19, __ZNSt3__14coutE@GOTPAGE
Lloh76:
	ldr	x19, [x19, __ZNSt3__14coutE@GOTPAGEOFF]
	mov	x0, x19
Lloh77:
	adrp	x1, l_.str.20@PAGE
Lloh78:
	add	x1, x1, l_.str.20@PAGEOFF
	mov	w2, #4                          ; =0x4
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp110:
; %bb.171:                              ;   in Loop: Header=BB0_159 Depth=1
Ltmp111:
	mov	x1, x25
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj
Ltmp112:
; %bb.172:                              ;   in Loop: Header=BB0_159 Depth=1
Ltmp113:
Lloh79:
	adrp	x1, l_.str.12@PAGE
Lloh80:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp114:
; %bb.173:                              ;   in Loop: Header=BB0_159 Depth=1
Ltmp115:
	mov	x0, x19
Lloh81:
	adrp	x1, l_.str.21@PAGE
Lloh82:
	add	x1, x1, l_.str.21@PAGEOFF
	mov	w2, #19                         ; =0x13
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp116:
; %bb.174:                              ;   in Loop: Header=BB0_159 Depth=1
Ltmp117:
	fmov	d0, d8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp118:
; %bb.175:                              ;   in Loop: Header=BB0_159 Depth=1
Ltmp119:
Lloh83:
	adrp	x1, l_.str.22@PAGE
Lloh84:
	add	x1, x1, l_.str.22@PAGEOFF
	mov	w2, #10                         ; =0xa
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp120:
; %bb.176:                              ;   in Loop: Header=BB0_159 Depth=1
Ltmp121:
	mov	x1, x26
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEy
Ltmp122:
; %bb.177:                              ;   in Loop: Header=BB0_159 Depth=1
Ltmp123:
Lloh85:
	adrp	x1, l_.str.23@PAGE
Lloh86:
	add	x1, x1, l_.str.23@PAGEOFF
	mov	w2, #2                          ; =0x2
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp124:
; %bb.178:                              ;   in Loop: Header=BB0_159 Depth=1
Ltmp125:
	mov	x0, x19
Lloh87:
	adrp	x1, l_.str.24@PAGE
Lloh88:
	add	x1, x1, l_.str.24@PAGEOFF
	mov	w2, #19                         ; =0x13
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp126:
; %bb.179:                              ;   in Loop: Header=BB0_159 Depth=1
Ltmp127:
	fmov	d0, d9
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp128:
; %bb.180:                              ;   in Loop: Header=BB0_159 Depth=1
Ltmp129:
Lloh89:
	adrp	x1, l_.str.22@PAGE
Lloh90:
	add	x1, x1, l_.str.22@PAGEOFF
	mov	w2, #10                         ; =0xa
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp130:
; %bb.181:                              ;   in Loop: Header=BB0_159 Depth=1
Ltmp131:
	mov	x1, x27
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEy
Ltmp132:
; %bb.182:                              ;   in Loop: Header=BB0_159 Depth=1
Ltmp133:
Lloh91:
	adrp	x1, l_.str.23@PAGE
Lloh92:
	add	x1, x1, l_.str.23@PAGEOFF
	mov	w2, #2                          ; =0x2
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp134:
; %bb.183:                              ;   in Loop: Header=BB0_159 Depth=1
Ltmp135:
	mov	x0, x19
Lloh93:
	adrp	x1, l_.str.25@PAGE
Lloh94:
	add	x1, x1, l_.str.25@PAGEOFF
	mov	w2, #19                         ; =0x13
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp136:
; %bb.184:                              ;   in Loop: Header=BB0_159 Depth=1
Ltmp137:
	fmov	d0, d10
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp138:
; %bb.185:                              ;   in Loop: Header=BB0_159 Depth=1
Ltmp139:
Lloh95:
	adrp	x1, l_.str.22@PAGE
Lloh96:
	add	x1, x1, l_.str.22@PAGEOFF
	mov	w2, #10                         ; =0xa
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp140:
; %bb.186:                              ;   in Loop: Header=BB0_159 Depth=1
Ltmp141:
	mov	x1, x28
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEy
Ltmp142:
; %bb.187:                              ;   in Loop: Header=BB0_159 Depth=1
Ltmp143:
Lloh97:
	adrp	x1, l_.str.23@PAGE
Lloh98:
	add	x1, x1, l_.str.23@PAGEOFF
	mov	w2, #2                          ; =0x2
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp144:
; %bb.188:                              ;   in Loop: Header=BB0_159 Depth=1
Ltmp145:
	mov	x0, x19
Lloh99:
	adrp	x1, l_.str.26@PAGE
Lloh100:
	add	x1, x1, l_.str.26@PAGEOFF
	mov	w2, #36                         ; =0x24
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp146:
; %bb.189:                              ;   in Loop: Header=BB0_159 Depth=1
Ltmp147:
	fdiv	d0, d8, d9
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp148:
; %bb.190:                              ;   in Loop: Header=BB0_159 Depth=1
Ltmp149:
Lloh101:
	adrp	x1, l_.str.27@PAGE
Lloh102:
	add	x1, x1, l_.str.27@PAGEOFF
	mov	w2, #2                          ; =0x2
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp150:
; %bb.191:                              ;   in Loop: Header=BB0_159 Depth=1
Ltmp151:
	mov	x0, x19
Lloh103:
	adrp	x1, l_.str.28@PAGE
Lloh104:
	add	x1, x1, l_.str.28@PAGEOFF
	mov	w2, #36                         ; =0x24
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp152:
; %bb.192:                              ;   in Loop: Header=BB0_159 Depth=1
Ltmp153:
	fdiv	d0, d8, d10
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp154:
; %bb.193:                              ;   in Loop: Header=BB0_159 Depth=1
Ltmp155:
Lloh105:
	adrp	x1, l_.str.27@PAGE
Lloh106:
	add	x1, x1, l_.str.27@PAGEOFF
	mov	w2, #2                          ; =0x2
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp156:
; %bb.194:                              ;   in Loop: Header=BB0_159 Depth=1
Ltmp157:
	mov	x0, x19
Lloh107:
	adrp	x1, l_.str.29@PAGE
Lloh108:
	add	x1, x1, l_.str.29@PAGEOFF
	mov	w2, #36                         ; =0x24
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp158:
; %bb.195:                              ;   in Loop: Header=BB0_159 Depth=1
Ltmp159:
	fdiv	d0, d9, d10
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp160:
; %bb.196:                              ;   in Loop: Header=BB0_159 Depth=1
Ltmp161:
Lloh109:
	adrp	x1, l_.str.30@PAGE
Lloh110:
	add	x1, x1, l_.str.30@PAGEOFF
	mov	w2, #3                          ; =0x3
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp162:
; %bb.197:                              ;   in Loop: Header=BB0_159 Depth=1
	add	x22, x22, #4
	cmp	x22, #16
	ldr	x19, [sp, #24]                  ; 8-byte Folded Reload
	b.ne	LBB0_159
; %bb.198:
	cbz	x20, LBB0_200
; %bb.199:
	str	x20, [sp, #56]
	mov	x0, x20
	bl	__ZdlPv
LBB0_200:
	cbz	x23, LBB0_202
; %bb.201:
	str	x23, [sp, #80]
	mov	x0, x23
	bl	__ZdlPv
LBB0_202:
	cbz	x19, LBB0_204
; %bb.203:
	mov	x0, x19
	bl	__ZdlPv
LBB0_204:
	ldrsb	w8, [sp, #119]
	tbnz	w8, #31, LBB0_211
; %bb.205:
	ldrsb	w8, [sp, #143]
	tbnz	w8, #31, LBB0_212
LBB0_206:
	ldrsb	w8, [sp, #167]
	tbnz	w8, #31, LBB0_213
LBB0_207:
	ldrsb	w8, [sp, #199]
	tbnz	w8, #31, LBB0_214
LBB0_208:
	ldrsb	w8, [sp, #231]
	tbnz	w8, #31, LBB0_215
LBB0_209:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZdlPv
	ldur	x8, [x29, #-144]
Lloh111:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh112:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh113:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_220
; %bb.210:
	mov	w0, #0                          ; =0x0
	add	sp, sp, #3472
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #112]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #96]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #80]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #64]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #48]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #32]               ; 16-byte Folded Reload
	ldp	d11, d10, [sp, #16]             ; 16-byte Folded Reload
	ldp	d13, d12, [sp], #144            ; 16-byte Folded Reload
	ret
LBB0_211:
	ldr	x0, [sp, #96]
	bl	__ZdlPv
	ldrsb	w8, [sp, #143]
	tbz	w8, #31, LBB0_206
LBB0_212:
	ldr	x0, [sp, #120]
	bl	__ZdlPv
	ldrsb	w8, [sp, #167]
	tbz	w8, #31, LBB0_207
LBB0_213:
	ldr	x0, [sp, #144]
	bl	__ZdlPv
	ldrsb	w8, [sp, #199]
	tbz	w8, #31, LBB0_208
LBB0_214:
	ldr	x0, [sp, #176]
	bl	__ZdlPv
	ldrsb	w8, [sp, #231]
	tbz	w8, #31, LBB0_209
LBB0_215:
	ldr	x0, [sp, #208]
	bl	__ZdlPv
	b	LBB0_209
LBB0_216:
Ltmp169:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_out_of_rangeB8ne200100Ev
Ltmp170:
	b	LBB0_226
LBB0_217:
Ltmp167:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev
Ltmp168:
	b	LBB0_226
LBB0_218:
Ltmp177:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_out_of_rangeB8ne200100Ev
Ltmp178:
	b	LBB0_226
LBB0_219:
Ltmp175:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev
Ltmp176:
	b	LBB0_226
LBB0_220:
	bl	___stack_chk_fail
LBB0_221:
Ltmp106:
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB8ne200100Ev
Ltmp107:
	b	LBB0_226
LBB0_222:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev
LBB0_223:
Ltmp48:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev
Ltmp49:
	b	LBB0_226
LBB0_224:
Ltmp36:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_out_of_rangeB8ne200100Ev
Ltmp37:
	b	LBB0_226
LBB0_225:
Ltmp34:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev
Ltmp35:
LBB0_226:
	brk	#0x1
LBB0_227:
Ltmp38:
	b	LBB0_249
LBB0_228:
Ltmp2:
	mov	x19, x0
	ldrsb	w8, [sp, #263]
	tbz	w8, #31, LBB0_237
; %bb.229:
	ldr	x0, [sp, #240]
	bl	__ZdlPv
	mov	x0, x19
	bl	__Unwind_Resume
LBB0_230:
Ltmp50:
	mov	x19, x0
	ldrsb	w8, [sp, #119]
	tbz	w8, #31, LBB0_265
	b	LBB0_257
LBB0_231:
Ltmp105:
	mov	x19, x0
	b	LBB0_263
LBB0_232:
Ltmp102:
	mov	x19, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	b	LBB0_264
LBB0_233:
Ltmp45:
	mov	x19, x0
	ldrsb	w8, [sp, #119]
	tbz	w8, #31, LBB0_265
	b	LBB0_257
LBB0_234:
Ltmp21:
	mov	x19, x0
	ldrsb	w8, [sp, #119]
	tbz	w8, #31, LBB0_265
	b	LBB0_257
LBB0_235:
Ltmp8:
	mov	x19, x0
	ldrsb	w8, [sp, #119]
	tbz	w8, #31, LBB0_265
	b	LBB0_257
LBB0_236:
Ltmp5:
	mov	x19, x0
LBB0_237:
	mov	x0, x19
	bl	__Unwind_Resume
LBB0_238:
Ltmp108:
	mov	x19, x0
	ldrsb	w8, [sp, #119]
	tbz	w8, #31, LBB0_265
	b	LBB0_257
LBB0_239:
Ltmp174:
	b	LBB0_249
LBB0_240:
Ltmp166:
	b	LBB0_249
LBB0_241:
Ltmp31:
	b	LBB0_249
LBB0_242:
Ltmp28:
	b	LBB0_247
LBB0_243:
Ltmp179:
	b	LBB0_249
LBB0_244:
Ltmp171:
	b	LBB0_249
LBB0_245:
Ltmp97:
	mov	x19, x0
	ldrsb	w8, [sp, #119]
	tbz	w8, #31, LBB0_265
	b	LBB0_257
LBB0_246:
Ltmp15:
LBB0_247:
	mov	x19, x0
	add	x0, sp, #72
	bl	__ZNSt3__16localeD1Ev
	b	LBB0_250
LBB0_248:
Ltmp18:
LBB0_249:
	mov	x19, x0
LBB0_250:
	ldrsb	w8, [sp, #2775]
	tbz	w8, #31, LBB0_252
; %bb.251:
	ldr	x0, [sp, #2752]
	bl	__ZdlPv
LBB0_252:
	add	x0, sp, #2880
	bl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
	ldrsb	w8, [sp, #119]
	tbz	w8, #31, LBB0_265
	b	LBB0_257
LBB0_253:
Ltmp163:
	mov	x19, x0
	str	x24, [sp, #2736]
	cbnz	x20, LBB0_262
; %bb.254:
	cbnz	x23, LBB0_263
LBB0_255:
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	cbnz	x0, LBB0_264
LBB0_256:
	ldrsb	w8, [sp, #119]
	tbz	w8, #31, LBB0_265
LBB0_257:
	ldr	x0, [sp, #96]
	bl	__ZdlPv
	ldrsb	w8, [sp, #143]
	tbnz	w8, #31, LBB0_266
LBB0_258:
	ldrsb	w8, [sp, #167]
	tbz	w8, #31, LBB0_267
LBB0_259:
	ldr	x0, [sp, #144]
	bl	__ZdlPv
	ldrsb	w8, [sp, #199]
	tbnz	w8, #31, LBB0_268
LBB0_260:
	ldrsb	w8, [sp, #231]
	tbz	w8, #31, LBB0_269
LBB0_261:
	ldr	x0, [sp, #208]
	bl	__ZdlPv
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZdlPv
	mov	x0, x19
	bl	__Unwind_Resume
LBB0_262:
	str	x20, [sp, #56]
	mov	x0, x20
	bl	__ZdlPv
	cbz	x23, LBB0_255
LBB0_263:
	str	x23, [sp, #80]
	mov	x0, x23
	bl	__ZdlPv
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	cbz	x0, LBB0_256
LBB0_264:
	str	x0, [sp, #2760]
	bl	__ZdlPv
	ldrsb	w8, [sp, #119]
	tbnz	w8, #31, LBB0_257
LBB0_265:
	ldrsb	w8, [sp, #143]
	tbz	w8, #31, LBB0_258
LBB0_266:
	ldr	x0, [sp, #120]
	bl	__ZdlPv
	ldrsb	w8, [sp, #167]
	tbnz	w8, #31, LBB0_259
LBB0_267:
	ldrsb	w8, [sp, #199]
	tbz	w8, #31, LBB0_260
LBB0_268:
	ldr	x0, [sp, #176]
	bl	__ZdlPv
	ldrsb	w8, [sp, #231]
	tbnz	w8, #31, LBB0_261
LBB0_269:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZdlPv
	mov	x0, x19
	bl	__Unwind_Resume
	.loh AdrpLdrGotLdr	Lloh0, Lloh1, Lloh2
	.loh AdrpLdr	Lloh3, Lloh4
	.loh AdrpAdd	Lloh5, Lloh6
	.loh AdrpLdrGot	Lloh7, Lloh8
	.loh AdrpAdd	Lloh11, Lloh12
	.loh AdrpLdrGot	Lloh9, Lloh10
	.loh AdrpLdrGot	Lloh13, Lloh14
	.loh AdrpAdd	Lloh17, Lloh18
	.loh AdrpAdd	Lloh15, Lloh16
	.loh AdrpAdd	Lloh21, Lloh22
	.loh AdrpLdrGot	Lloh19, Lloh20
	.loh AdrpAdd	Lloh25, Lloh26
	.loh AdrpLdrGot	Lloh23, Lloh24
	.loh AdrpAdd	Lloh29, Lloh30
	.loh AdrpLdrGot	Lloh27, Lloh28
	.loh AdrpAdd	Lloh33, Lloh34
	.loh AdrpLdrGot	Lloh31, Lloh32
	.loh AdrpAdd	Lloh37, Lloh38
	.loh AdrpLdrGot	Lloh35, Lloh36
	.loh AdrpAdd	Lloh39, Lloh40
	.loh AdrpAdd	Lloh43, Lloh44
	.loh AdrpLdrGot	Lloh41, Lloh42
	.loh AdrpAdd	Lloh45, Lloh46
	.loh AdrpAdd	Lloh49, Lloh50
	.loh AdrpLdrGot	Lloh47, Lloh48
	.loh AdrpAdd	Lloh51, Lloh52
	.loh AdrpAdd	Lloh55, Lloh56
	.loh AdrpLdrGot	Lloh53, Lloh54
	.loh AdrpAdd	Lloh57, Lloh58
	.loh AdrpAdd	Lloh61, Lloh62
	.loh AdrpLdrGot	Lloh59, Lloh60
	.loh AdrpAdd	Lloh63, Lloh64
	.loh AdrpAdd	Lloh67, Lloh68
	.loh AdrpLdrGot	Lloh65, Lloh66
	.loh AdrpAdd	Lloh71, Lloh72
	.loh AdrpLdrGot	Lloh69, Lloh70
	.loh AdrpAdd	Lloh73, Lloh74
	.loh AdrpAdd	Lloh77, Lloh78
	.loh AdrpLdrGot	Lloh75, Lloh76
	.loh AdrpAdd	Lloh79, Lloh80
	.loh AdrpAdd	Lloh81, Lloh82
	.loh AdrpAdd	Lloh83, Lloh84
	.loh AdrpAdd	Lloh85, Lloh86
	.loh AdrpAdd	Lloh87, Lloh88
	.loh AdrpAdd	Lloh89, Lloh90
	.loh AdrpAdd	Lloh91, Lloh92
	.loh AdrpAdd	Lloh93, Lloh94
	.loh AdrpAdd	Lloh95, Lloh96
	.loh AdrpAdd	Lloh97, Lloh98
	.loh AdrpAdd	Lloh99, Lloh100
	.loh AdrpAdd	Lloh101, Lloh102
	.loh AdrpAdd	Lloh103, Lloh104
	.loh AdrpAdd	Lloh105, Lloh106
	.loh AdrpAdd	Lloh107, Lloh108
	.loh AdrpAdd	Lloh109, Lloh110
	.loh AdrpLdrGotLdr	Lloh111, Lloh112, Lloh113
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
	.uleb128 Ltmp3-Lfunc_begin0             ; >> Call Site 3 <<
	.uleb128 Ltmp4-Ltmp3                    ;   Call between Ltmp3 and Ltmp4
	.uleb128 Ltmp5-Lfunc_begin0             ;     jumps to Ltmp5
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp6-Lfunc_begin0             ; >> Call Site 4 <<
	.uleb128 Ltmp7-Ltmp6                    ;   Call between Ltmp6 and Ltmp7
	.uleb128 Ltmp8-Lfunc_begin0             ;     jumps to Ltmp8
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp9-Lfunc_begin0             ; >> Call Site 5 <<
	.uleb128 Ltmp10-Ltmp9                   ;   Call between Ltmp9 and Ltmp10
	.uleb128 Ltmp18-Lfunc_begin0            ;     jumps to Ltmp18
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp11-Lfunc_begin0            ; >> Call Site 6 <<
	.uleb128 Ltmp14-Ltmp11                  ;   Call between Ltmp11 and Ltmp14
	.uleb128 Ltmp15-Lfunc_begin0            ;     jumps to Ltmp15
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp16-Lfunc_begin0            ; >> Call Site 7 <<
	.uleb128 Ltmp17-Ltmp16                  ;   Call between Ltmp16 and Ltmp17
	.uleb128 Ltmp18-Lfunc_begin0            ;     jumps to Ltmp18
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp164-Lfunc_begin0           ; >> Call Site 8 <<
	.uleb128 Ltmp165-Ltmp164                ;   Call between Ltmp164 and Ltmp165
	.uleb128 Ltmp166-Lfunc_begin0           ;     jumps to Ltmp166
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp165-Lfunc_begin0           ; >> Call Site 9 <<
	.uleb128 Ltmp172-Ltmp165                ;   Call between Ltmp165 and Ltmp172
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp172-Lfunc_begin0           ; >> Call Site 10 <<
	.uleb128 Ltmp173-Ltmp172                ;   Call between Ltmp172 and Ltmp173
	.uleb128 Ltmp174-Lfunc_begin0           ;     jumps to Ltmp174
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp173-Lfunc_begin0           ; >> Call Site 11 <<
	.uleb128 Ltmp19-Ltmp173                 ;   Call between Ltmp173 and Ltmp19
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp19-Lfunc_begin0            ; >> Call Site 12 <<
	.uleb128 Ltmp20-Ltmp19                  ;   Call between Ltmp19 and Ltmp20
	.uleb128 Ltmp21-Lfunc_begin0            ;     jumps to Ltmp21
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp22-Lfunc_begin0            ; >> Call Site 13 <<
	.uleb128 Ltmp23-Ltmp22                  ;   Call between Ltmp22 and Ltmp23
	.uleb128 Ltmp31-Lfunc_begin0            ;     jumps to Ltmp31
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp24-Lfunc_begin0            ; >> Call Site 14 <<
	.uleb128 Ltmp27-Ltmp24                  ;   Call between Ltmp24 and Ltmp27
	.uleb128 Ltmp28-Lfunc_begin0            ;     jumps to Ltmp28
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp29-Lfunc_begin0            ; >> Call Site 15 <<
	.uleb128 Ltmp30-Ltmp29                  ;   Call between Ltmp29 and Ltmp30
	.uleb128 Ltmp31-Lfunc_begin0            ;     jumps to Ltmp31
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp32-Lfunc_begin0            ; >> Call Site 16 <<
	.uleb128 Ltmp33-Ltmp32                  ;   Call between Ltmp32 and Ltmp33
	.uleb128 Ltmp38-Lfunc_begin0            ;     jumps to Ltmp38
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp33-Lfunc_begin0            ; >> Call Site 17 <<
	.uleb128 Ltmp39-Ltmp33                  ;   Call between Ltmp33 and Ltmp39
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp39-Lfunc_begin0            ; >> Call Site 18 <<
	.uleb128 Ltmp42-Ltmp39                  ;   Call between Ltmp39 and Ltmp42
	.uleb128 Ltmp97-Lfunc_begin0            ;     jumps to Ltmp97
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp43-Lfunc_begin0            ; >> Call Site 19 <<
	.uleb128 Ltmp44-Ltmp43                  ;   Call between Ltmp43 and Ltmp44
	.uleb128 Ltmp45-Lfunc_begin0            ;     jumps to Ltmp45
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp46-Lfunc_begin0            ; >> Call Site 20 <<
	.uleb128 Ltmp47-Ltmp46                  ;   Call between Ltmp46 and Ltmp47
	.uleb128 Ltmp50-Lfunc_begin0            ;     jumps to Ltmp50
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp47-Lfunc_begin0            ; >> Call Site 21 <<
	.uleb128 Ltmp51-Ltmp47                  ;   Call between Ltmp47 and Ltmp51
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp51-Lfunc_begin0            ; >> Call Site 22 <<
	.uleb128 Ltmp96-Ltmp51                  ;   Call between Ltmp51 and Ltmp96
	.uleb128 Ltmp97-Lfunc_begin0            ;     jumps to Ltmp97
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp98-Lfunc_begin0            ; >> Call Site 23 <<
	.uleb128 Ltmp99-Ltmp98                  ;   Call between Ltmp98 and Ltmp99
	.uleb128 Ltmp108-Lfunc_begin0           ;     jumps to Ltmp108
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp99-Lfunc_begin0            ; >> Call Site 24 <<
	.uleb128 Ltmp100-Ltmp99                 ;   Call between Ltmp99 and Ltmp100
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp100-Lfunc_begin0           ; >> Call Site 25 <<
	.uleb128 Ltmp101-Ltmp100                ;   Call between Ltmp100 and Ltmp101
	.uleb128 Ltmp102-Lfunc_begin0           ;     jumps to Ltmp102
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp101-Lfunc_begin0           ; >> Call Site 26 <<
	.uleb128 Ltmp103-Ltmp101                ;   Call between Ltmp101 and Ltmp103
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp103-Lfunc_begin0           ; >> Call Site 27 <<
	.uleb128 Ltmp104-Ltmp103                ;   Call between Ltmp103 and Ltmp104
	.uleb128 Ltmp105-Lfunc_begin0           ;     jumps to Ltmp105
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp104-Lfunc_begin0           ; >> Call Site 28 <<
	.uleb128 Ltmp109-Ltmp104                ;   Call between Ltmp104 and Ltmp109
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp109-Lfunc_begin0           ; >> Call Site 29 <<
	.uleb128 Ltmp162-Ltmp109                ;   Call between Ltmp109 and Ltmp162
	.uleb128 Ltmp163-Lfunc_begin0           ;     jumps to Ltmp163
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp169-Lfunc_begin0           ; >> Call Site 30 <<
	.uleb128 Ltmp168-Ltmp169                ;   Call between Ltmp169 and Ltmp168
	.uleb128 Ltmp171-Lfunc_begin0           ;     jumps to Ltmp171
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp177-Lfunc_begin0           ; >> Call Site 31 <<
	.uleb128 Ltmp176-Ltmp177                ;   Call between Ltmp177 and Ltmp176
	.uleb128 Ltmp179-Lfunc_begin0           ;     jumps to Ltmp179
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp176-Lfunc_begin0           ; >> Call Site 32 <<
	.uleb128 Ltmp106-Ltmp176                ;   Call between Ltmp176 and Ltmp106
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp106-Lfunc_begin0           ; >> Call Site 33 <<
	.uleb128 Ltmp107-Ltmp106                ;   Call between Ltmp106 and Ltmp107
	.uleb128 Ltmp108-Lfunc_begin0           ;     jumps to Ltmp108
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp107-Lfunc_begin0           ; >> Call Site 34 <<
	.uleb128 Ltmp48-Ltmp107                 ;   Call between Ltmp107 and Ltmp48
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp48-Lfunc_begin0            ; >> Call Site 35 <<
	.uleb128 Ltmp49-Ltmp48                  ;   Call between Ltmp48 and Ltmp49
	.uleb128 Ltmp50-Lfunc_begin0            ;     jumps to Ltmp50
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp36-Lfunc_begin0            ; >> Call Site 36 <<
	.uleb128 Ltmp35-Ltmp36                  ;   Call between Ltmp36 and Ltmp35
	.uleb128 Ltmp38-Lfunc_begin0            ;     jumps to Ltmp38
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp35-Lfunc_begin0            ; >> Call Site 37 <<
	.uleb128 Lfunc_end0-Ltmp35              ;   Call between Ltmp35 and Lfunc_end0
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
Lloh114:
	adrp	x25, __ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh115:
	ldr	x25, [x25, __ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	add	x24, x25, #64
	str	x24, [x0, #424]
Lloh116:
	adrp	x23, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh117:
	ldr	x23, [x23, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	ldp	x8, x9, [x23, #8]
	str	x8, [x0]
	ldur	x8, [x8, #-24]
	str	x9, [x0, x8]
	str	xzr, [x0, #8]
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x22, x0, x8
Ltmp180:
	add	x1, x0, #16
	mov	x0, x22
	bl	__ZNSt3__18ios_base4initEPv
Ltmp181:
; %bb.1:
	str	xzr, [x22, #136]
	mov	w8, #-1                         ; =0xffffffff
	str	w8, [x22, #144]
	add	x8, x25, #24
	str	x8, [x19]
	str	x24, [x19, #424]
Ltmp183:
	add	x0, x19, #16
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC1Ev
Ltmp184:
; %bb.2:
Ltmp186:
	add	x0, x19, #16
	orr	w2, w21, #0x8
	mov	x1, x20
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4openEPKcj
Ltmp187:
; %bb.3:
	cbnz	x0, LBB1_5
; %bb.4:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
	ldr	w8, [x0, #32]
Ltmp188:
	orr	w1, w8, #0x4
	bl	__ZNSt3__18ios_base5clearEj
Ltmp189:
LBB1_5:
	mov	x0, x19
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp], #80             ; 16-byte Folded Reload
	ret
LBB1_6:
Ltmp185:
	mov	x20, x0
	b	LBB1_9
LBB1_7:
Ltmp182:
	mov	x20, x0
	add	x0, x19, #424
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	mov	x0, x20
	bl	__Unwind_Resume
LBB1_8:
Ltmp190:
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
	.loh AdrpLdrGot	Lloh116, Lloh117
	.loh AdrpLdrGot	Lloh114, Lloh115
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
	.uleb128 Ltmp180-Lfunc_begin1           ; >> Call Site 1 <<
	.uleb128 Ltmp181-Ltmp180                ;   Call between Ltmp180 and Ltmp181
	.uleb128 Ltmp182-Lfunc_begin1           ;     jumps to Ltmp182
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp183-Lfunc_begin1           ; >> Call Site 2 <<
	.uleb128 Ltmp184-Ltmp183                ;   Call between Ltmp183 and Ltmp184
	.uleb128 Ltmp185-Lfunc_begin1           ;     jumps to Ltmp185
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp186-Lfunc_begin1           ; >> Call Site 3 <<
	.uleb128 Ltmp189-Ltmp186                ;   Call between Ltmp186 and Ltmp189
	.uleb128 Ltmp190-Lfunc_begin1           ;     jumps to Ltmp190
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp189-Lfunc_begin1           ; >> Call Site 4 <<
	.uleb128 Lfunc_end1-Ltmp189             ;   Call between Ltmp189 and Lfunc_end1
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
Lloh118:
	adrp	x20, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh119:
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
	.loh AdrpLdrGot	Lloh118, Lloh119
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
Lloh120:
	adrp	x0, l_.str.31@PAGE
Lloh121:
	add	x0, x0, l_.str.31@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB8ne200100EPKc
	.loh AdrpAdd	Lloh120, Lloh121
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__120__throw_length_errorB8ne200100EPKc ; -- Begin function _ZNSt3__120__throw_length_errorB8ne200100EPKc
	.globl	__ZNSt3__120__throw_length_errorB8ne200100EPKc
	.weak_def_can_be_hidden	__ZNSt3__120__throw_length_errorB8ne200100EPKc
	.p2align	2
__ZNSt3__120__throw_length_errorB8ne200100EPKc: ; @_ZNSt3__120__throw_length_errorB8ne200100EPKc
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception2
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
Ltmp191:
	mov	x1, x20
	bl	__ZNSt12length_errorC1B8ne200100EPKc
Ltmp192:
; %bb.1:
Lloh122:
	adrp	x1, __ZTISt12length_error@GOTPAGE
Lloh123:
	ldr	x1, [x1, __ZTISt12length_error@GOTPAGEOFF]
Lloh124:
	adrp	x2, __ZNSt12length_errorD1Ev@GOTPAGE
Lloh125:
	ldr	x2, [x2, __ZNSt12length_errorD1Ev@GOTPAGEOFF]
	mov	x0, x19
	bl	___cxa_throw
LBB4_2:
Ltmp193:
	mov	x20, x0
	mov	x0, x19
	bl	___cxa_free_exception
	mov	x0, x20
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh124, Lloh125
	.loh AdrpLdrGot	Lloh122, Lloh123
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table4:
Lexception2:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end2-Lcst_begin2
Lcst_begin2:
	.uleb128 Lfunc_begin2-Lfunc_begin2      ; >> Call Site 1 <<
	.uleb128 Ltmp191-Lfunc_begin2           ;   Call between Lfunc_begin2 and Ltmp191
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp191-Lfunc_begin2           ; >> Call Site 2 <<
	.uleb128 Ltmp192-Ltmp191                ;   Call between Ltmp191 and Ltmp192
	.uleb128 Ltmp193-Lfunc_begin2           ;     jumps to Ltmp193
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp192-Lfunc_begin2           ; >> Call Site 3 <<
	.uleb128 Lfunc_end2-Ltmp192             ;   Call between Ltmp192 and Lfunc_end2
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end2:
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
Lloh126:
	adrp	x8, __ZTVSt12length_error@GOTPAGE
Lloh127:
	ldr	x8, [x8, __ZTVSt12length_error@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGot	Lloh126, Lloh127
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
	.private_extern	__ZNSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB8ne200100Ev ; -- Begin function _ZNSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB8ne200100Ev
	.globl	__ZNSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB8ne200100Ev
	.p2align	2
__ZNSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB8ne200100Ev: ; @_ZNSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB8ne200100Ev
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Lloh128:
	adrp	x0, l_.str.32@PAGE
Lloh129:
	add	x0, x0, l_.str.32@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB8ne200100EPKc
	.loh AdrpAdd	Lloh128, Lloh129
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_ ; -- Begin function _ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
	.globl	__ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
	.weak_def_can_be_hidden	__ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
	.p2align	2
__ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_: ; @_ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception3
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
	b.ne	LBB8_17
; %bb.1:
	ldrsb	w8, [x21, #23]
	tbnz	w8, #31, LBB8_3
; %bb.2:
	strb	wzr, [x21]
	strb	wzr, [x21, #23]
	b	LBB8_4
LBB8_3:
	ldr	x8, [x21]
	strb	wzr, [x8]
	str	xzr, [x21, #8]
LBB8_4:
	mov	x22, #0                         ; =0x0
	add	x23, x19, #40
	mov	x24, #-9                        ; =0xfffffffffffffff7
	movk	x24, #32767, lsl #48
LBB8_5:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	ldr	x0, [x23, x8]
	ldp	x8, x9, [x0, #24]
	cmp	x8, x9
	b.eq	LBB8_7
; %bb.6:                                ;   in Loop: Header=BB8_5 Depth=1
	add	x9, x8, #1
	str	x9, [x0, #24]
	ldrb	w0, [x8]
	b	LBB8_9
LBB8_7:                                 ;   in Loop: Header=BB8_5 Depth=1
	ldr	x8, [x0]
	ldr	x8, [x8, #80]
Ltmp194:
	blr	x8
Ltmp195:
; %bb.8:                                ;   in Loop: Header=BB8_5 Depth=1
	cmn	w0, #1
	b.eq	LBB8_15
LBB8_9:                                 ;   in Loop: Header=BB8_5 Depth=1
	and	w8, w0, #0xff
	cmp	w8, w20, uxtb
	b.eq	LBB8_14
; %bb.10:                               ;   in Loop: Header=BB8_5 Depth=1
Ltmp197:
	sxtb	w1, w0
	mov	x0, x21
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc
Ltmp198:
; %bb.11:                               ;   in Loop: Header=BB8_5 Depth=1
	ldrsb	w8, [x21, #23]
	sub	x22, x22, #1
	tbz	w8, #31, LBB8_5
; %bb.12:                               ;   in Loop: Header=BB8_5 Depth=1
	ldr	x8, [x21, #8]
	cmp	x8, x24
	b.ne	LBB8_5
; %bb.13:
	mov	w8, #4                          ; =0x4
	b	LBB8_16
LBB8_14:
	mov	w8, #0                          ; =0x0
	b	LBB8_16
LBB8_15:
	cmp	x22, #0
	mov	w8, #2                          ; =0x2
	mov	w9, #6                          ; =0x6
	csel	w8, w9, w8, eq
LBB8_16:
	ldr	x9, [x19]
	ldur	x9, [x9, #-24]
	add	x0, x19, x9
	ldr	w9, [x0, #32]
	orr	w1, w9, w8
	bl	__ZNSt3__18ios_base5clearEj
LBB8_17:
	mov	x0, x19
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB8_18:
Ltmp196:
	b	LBB8_20
LBB8_19:
Ltmp199:
LBB8_20:
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
	tbnz	w8, #0, LBB8_22
; %bb.21:
	bl	___cxa_end_catch
	mov	w8, #1                          ; =0x1
	b	LBB8_16
LBB8_22:
Ltmp200:
	bl	___cxa_rethrow
Ltmp201:
; %bb.23:
	brk	#0x1
LBB8_24:
Ltmp202:
	mov	x19, x0
Ltmp203:
	bl	___cxa_end_catch
Ltmp204:
; %bb.25:
	mov	x0, x19
	bl	__Unwind_Resume
LBB8_26:
Ltmp205:
	bl	___clang_call_terminate
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table8:
Lexception3:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase0-Lttbaseref0
Lttbaseref0:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end3-Lcst_begin3
Lcst_begin3:
	.uleb128 Lfunc_begin3-Lfunc_begin3      ; >> Call Site 1 <<
	.uleb128 Ltmp194-Lfunc_begin3           ;   Call between Lfunc_begin3 and Ltmp194
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp194-Lfunc_begin3           ; >> Call Site 2 <<
	.uleb128 Ltmp195-Ltmp194                ;   Call between Ltmp194 and Ltmp195
	.uleb128 Ltmp196-Lfunc_begin3           ;     jumps to Ltmp196
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp197-Lfunc_begin3           ; >> Call Site 3 <<
	.uleb128 Ltmp198-Ltmp197                ;   Call between Ltmp197 and Ltmp198
	.uleb128 Ltmp199-Lfunc_begin3           ;     jumps to Ltmp199
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp198-Lfunc_begin3           ; >> Call Site 4 <<
	.uleb128 Ltmp200-Ltmp198                ;   Call between Ltmp198 and Ltmp200
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp200-Lfunc_begin3           ; >> Call Site 5 <<
	.uleb128 Ltmp201-Ltmp200                ;   Call between Ltmp200 and Ltmp201
	.uleb128 Ltmp202-Lfunc_begin3           ;     jumps to Ltmp202
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp203-Lfunc_begin3           ; >> Call Site 6 <<
	.uleb128 Ltmp204-Ltmp203                ;   Call between Ltmp203 and Ltmp204
	.uleb128 Ltmp205-Lfunc_begin3           ;     jumps to Ltmp205
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp204-Lfunc_begin3           ; >> Call Site 7 <<
	.uleb128 Lfunc_end3-Ltmp204             ;   Call between Ltmp204 and Lfunc_end3
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end3:
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
Lloh130:
	adrp	x0, l_.str.31@PAGE
Lloh131:
	add	x0, x0, l_.str.31@PAGEOFF
	bl	__ZNSt3__120__throw_out_of_rangeB8ne200100EPKc
	.loh AdrpAdd	Lloh130, Lloh131
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__120__throw_out_of_rangeB8ne200100EPKc ; -- Begin function _ZNSt3__120__throw_out_of_rangeB8ne200100EPKc
	.globl	__ZNSt3__120__throw_out_of_rangeB8ne200100EPKc
	.weak_def_can_be_hidden	__ZNSt3__120__throw_out_of_rangeB8ne200100EPKc
	.p2align	2
__ZNSt3__120__throw_out_of_rangeB8ne200100EPKc: ; @_ZNSt3__120__throw_out_of_rangeB8ne200100EPKc
Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception4
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
Ltmp206:
	mov	x1, x20
	bl	__ZNSt12out_of_rangeC1B8ne200100EPKc
Ltmp207:
; %bb.1:
Lloh132:
	adrp	x1, __ZTISt12out_of_range@GOTPAGE
Lloh133:
	ldr	x1, [x1, __ZTISt12out_of_range@GOTPAGEOFF]
Lloh134:
	adrp	x2, __ZNSt12out_of_rangeD1Ev@GOTPAGE
Lloh135:
	ldr	x2, [x2, __ZNSt12out_of_rangeD1Ev@GOTPAGEOFF]
	mov	x0, x19
	bl	___cxa_throw
LBB10_2:
Ltmp208:
	mov	x20, x0
	mov	x0, x19
	bl	___cxa_free_exception
	mov	x0, x20
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh134, Lloh135
	.loh AdrpLdrGot	Lloh132, Lloh133
Lfunc_end4:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table10:
Lexception4:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end4-Lcst_begin4
Lcst_begin4:
	.uleb128 Lfunc_begin4-Lfunc_begin4      ; >> Call Site 1 <<
	.uleb128 Ltmp206-Lfunc_begin4           ;   Call between Lfunc_begin4 and Ltmp206
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp206-Lfunc_begin4           ; >> Call Site 2 <<
	.uleb128 Ltmp207-Ltmp206                ;   Call between Ltmp206 and Ltmp207
	.uleb128 Ltmp208-Lfunc_begin4           ;     jumps to Ltmp208
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp207-Lfunc_begin4           ; >> Call Site 3 <<
	.uleb128 Lfunc_end4-Ltmp207             ;   Call between Ltmp207 and Lfunc_end4
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end4:
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
Lloh136:
	adrp	x8, __ZTVSt12out_of_range@GOTPAGE
Lloh137:
	ldr	x8, [x8, __ZTVSt12out_of_range@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGot	Lloh136, Lloh137
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m ; -- Begin function _ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.globl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_def_can_be_hidden	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.p2align	2
__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ; @_ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
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
	mov	x21, x2
	mov	x20, x1
	mov	x19, x0
Ltmp209:
	add	x0, sp, #8
	mov	x1, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp210:
; %bb.1:
	ldrb	w8, [sp, #8]
	cmp	w8, #1
	b.ne	LBB12_10
; %bb.2:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x4, x19, x8
	ldr	x22, [x4, #40]
	ldr	w24, [x4, #8]
	ldr	w23, [x4, #144]
	cmn	w23, #1
	b.ne	LBB12_7
; %bb.3:
Ltmp212:
	add	x8, sp, #24
	mov	x25, x4
	mov	x0, x4
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp213:
; %bb.4:
Ltmp214:
Lloh138:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh139:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #24
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp215:
; %bb.5:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp216:
	mov	w1, #32                         ; =0x20
	blr	x8
Ltmp217:
; %bb.6:
	mov	x23, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	mov	x4, x25
	str	w23, [x25, #144]
LBB12_7:
	mov	w8, #176                        ; =0xb0
	and	w8, w24, w8
	add	x3, x20, x21
	cmp	w8, #32
	csel	x2, x3, x20, eq
Ltmp219:
	sxtb	w5, w23
	mov	x0, x22
	mov	x1, x20
	bl	__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp220:
; %bb.8:
	cbnz	x0, LBB12_10
; %bb.9:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
	ldr	w8, [x0, #32]
	mov	w9, #5                          ; =0x5
Ltmp222:
	orr	w1, w8, w9
	bl	__ZNSt3__18ios_base5clearEj
Ltmp223:
LBB12_10:
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
LBB12_11:
	mov	x0, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB12_12:
Ltmp224:
	b	LBB12_15
LBB12_13:
Ltmp218:
	mov	x20, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	b	LBB12_16
LBB12_14:
Ltmp221:
LBB12_15:
	mov	x20, x0
LBB12_16:
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB12_18
LBB12_17:
Ltmp211:
	mov	x20, x0
LBB12_18:
	mov	x0, x20
	bl	___cxa_begin_catch
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
Ltmp225:
	add	x0, x19, x8
	bl	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp226:
; %bb.19:
	bl	___cxa_end_catch
	b	LBB12_11
LBB12_20:
Ltmp227:
	mov	x19, x0
Ltmp228:
	bl	___cxa_end_catch
Ltmp229:
; %bb.21:
	mov	x0, x19
	bl	__Unwind_Resume
LBB12_22:
Ltmp230:
	bl	___clang_call_terminate
	.loh AdrpLdrGot	Lloh138, Lloh139
Lfunc_end5:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table12:
Lexception5:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase1-Lttbaseref1
Lttbaseref1:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end5-Lcst_begin5
Lcst_begin5:
	.uleb128 Ltmp209-Lfunc_begin5           ; >> Call Site 1 <<
	.uleb128 Ltmp210-Ltmp209                ;   Call between Ltmp209 and Ltmp210
	.uleb128 Ltmp211-Lfunc_begin5           ;     jumps to Ltmp211
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp212-Lfunc_begin5           ; >> Call Site 2 <<
	.uleb128 Ltmp213-Ltmp212                ;   Call between Ltmp212 and Ltmp213
	.uleb128 Ltmp221-Lfunc_begin5           ;     jumps to Ltmp221
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp214-Lfunc_begin5           ; >> Call Site 3 <<
	.uleb128 Ltmp217-Ltmp214                ;   Call between Ltmp214 and Ltmp217
	.uleb128 Ltmp218-Lfunc_begin5           ;     jumps to Ltmp218
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp219-Lfunc_begin5           ; >> Call Site 4 <<
	.uleb128 Ltmp220-Ltmp219                ;   Call between Ltmp219 and Ltmp220
	.uleb128 Ltmp221-Lfunc_begin5           ;     jumps to Ltmp221
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp222-Lfunc_begin5           ; >> Call Site 5 <<
	.uleb128 Ltmp223-Ltmp222                ;   Call between Ltmp222 and Ltmp223
	.uleb128 Ltmp224-Lfunc_begin5           ;     jumps to Ltmp224
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp223-Lfunc_begin5           ; >> Call Site 6 <<
	.uleb128 Ltmp225-Ltmp223                ;   Call between Ltmp223 and Ltmp225
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp225-Lfunc_begin5           ; >> Call Site 7 <<
	.uleb128 Ltmp226-Ltmp225                ;   Call between Ltmp225 and Ltmp226
	.uleb128 Ltmp227-Lfunc_begin5           ;     jumps to Ltmp227
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp226-Lfunc_begin5           ; >> Call Site 8 <<
	.uleb128 Ltmp228-Ltmp226                ;   Call between Ltmp226 and Ltmp228
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp228-Lfunc_begin5           ; >> Call Site 9 <<
	.uleb128 Ltmp229-Ltmp228                ;   Call between Ltmp228 and Ltmp229
	.uleb128 Ltmp230-Lfunc_begin5           ;     jumps to Ltmp230
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp229-Lfunc_begin5           ; >> Call Site 10 <<
	.uleb128 Lfunc_end5-Ltmp229             ;   Call between Ltmp229 and Lfunc_end5
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end5:
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
	.private_extern	__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ ; -- Begin function _ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.globl	__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.weak_def_can_be_hidden	__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.p2align	2
__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_: ; @_ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception6
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
	cbz	x0, LBB13_16
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
	b.lt	LBB13_3
; %bb.2:
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
	mov	x0, x19
	mov	x2, x25
	blr	x8
	cmp	x0, x25
	b.ne	LBB13_15
LBB13_3:
	cmp	x23, #1
	b.lt	LBB13_12
; %bb.4:
	mov	x8, #9223372036854775800        ; =0x7ffffffffffffff8
	cmp	x23, x8
	b.hs	LBB13_17
; %bb.5:
	cmp	x23, #23
	b.hs	LBB13_7
; %bb.6:
	strb	w23, [sp, #31]
	add	x25, sp, #8
	b	LBB13_8
LBB13_7:
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
LBB13_8:
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
Ltmp231:
	mov	x0, x19
	mov	x2, x23
	blr	x8
Ltmp232:
; %bb.9:
	ldrsb	w8, [sp, #31]
	tbnz	w8, #31, LBB13_11
; %bb.10:
	cmp	x0, x23
	b.ne	LBB13_15
	b	LBB13_12
LBB13_11:
	ldr	x8, [sp, #8]
	mov	x24, x0
	mov	x0, x8
	bl	__ZdlPv
	cmp	x24, x23
	b.ne	LBB13_15
LBB13_12:
	sub	x22, x22, x21
	cmp	x22, #1
	b.lt	LBB13_14
; %bb.13:
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
	mov	x0, x19
	mov	x1, x21
	mov	x2, x22
	blr	x8
	cmp	x0, x22
	b.ne	LBB13_15
LBB13_14:
	str	xzr, [x20, #24]
	b	LBB13_16
LBB13_15:
	mov	x19, #0                         ; =0x0
LBB13_16:
	mov	x0, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB13_17:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev
LBB13_18:
Ltmp233:
	mov	x19, x0
	ldrsb	w8, [sp, #31]
	tbz	w8, #31, LBB13_20
; %bb.19:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
LBB13_20:
	mov	x0, x19
	bl	__Unwind_Resume
Lfunc_end6:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table13:
Lexception6:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end6-Lcst_begin6
Lcst_begin6:
	.uleb128 Lfunc_begin6-Lfunc_begin6      ; >> Call Site 1 <<
	.uleb128 Ltmp231-Lfunc_begin6           ;   Call between Lfunc_begin6 and Ltmp231
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp231-Lfunc_begin6           ; >> Call Site 2 <<
	.uleb128 Ltmp232-Ltmp231                ;   Call between Ltmp231 and Ltmp232
	.uleb128 Ltmp233-Lfunc_begin6           ;     jumps to Ltmp233
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp232-Lfunc_begin6           ; >> Call Site 3 <<
	.uleb128 Lfunc_end6-Ltmp232             ;   Call between Ltmp232 and Lfunc_end6
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end6:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2                               ; -- Begin function _ZL19classic_poly_scalarRKNSt3__16vectorIjNS_9allocatorIjEEEES5_RS3_jy
__ZL19classic_poly_scalarRKNSt3__16vectorIjNS_9allocatorIjEEEES5_RS3_jy: ; @_ZL19classic_poly_scalarRKNSt3__16vectorIjNS_9allocatorIjEEEES5_RS3_jy
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	ldp	x8, x10, [x0]
	mov	w9, w3
	str	x9, [sp, #8]
	cbz	x4, LBB14_7
; %bb.1:
	cmp	x10, x8
	b.eq	LBB14_7
; %bb.2:
	mov	w0, #0                          ; =0x0
	mov	x9, #0                          ; =0x0
	sub	x10, x10, x8
	asr	x12, x10, #2
	ldr	x10, [x1]
	ldr	x11, [x2]
	cmp	x12, #1
	csinc	x12, x12, xzr, hi
LBB14_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB14_4 Depth 2
	mov	x13, x8
	mov	x14, x10
	mov	x15, x11
	mov	x16, x12
LBB14_4:                                ;   Parent Loop BB14_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w17, [x13], #4
	ldr	w1, [x14], #4
	add	x17, x1, x17
	ldr	x1, [sp, #8]
	udiv	x2, x17, x1
	msub	w17, w2, w1, w17
	str	w17, [x15], #4
	eor	w0, w0, w17
	subs	x16, x16, #1
	b.ne	LBB14_4
; %bb.5:                                ;   in Loop: Header=BB14_3 Depth=1
	add	x9, x9, #1
	cmp	x9, x4
	b.ne	LBB14_3
; %bb.6:
	add	sp, sp, #16
	ret
LBB14_7:
	mov	w0, #0                          ; =0x0
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZL17reist_poly_scalarRKNSt3__16vectorIjNS_9allocatorIjEEEES5_RS3_jy
__ZL17reist_poly_scalarRKNSt3__16vectorIjNS_9allocatorIjEEEES5_RS3_jy: ; @_ZL17reist_poly_scalarRKNSt3__16vectorIjNS_9allocatorIjEEEES5_RS3_jy
	.cfi_startproc
; %bb.0:
	mov	w8, #0                          ; =0x0
	cbz	x5, LBB15_8
; %bb.1:
	subs	x10, x1, x0
	b.eq	LBB15_8
; %bb.2:
	asr	x9, x10, #2
	cmp	x9, #1
	csinc	x11, x9, xzr, hi
	cmp	x9, #3
	b.hi	LBB15_9
; %bb.3:
	mov	w8, #0                          ; =0x0
	b	LBB15_5
LBB15_4:                                ;   in Loop: Header=BB15_5 Depth=1
	subs	x5, x5, #1
	b.eq	LBB15_8
LBB15_5:                                ; =>This Inner Loop Header: Depth=1
	ldr	w11, [x0]
	ldr	w12, [x2]
	add	w11, w12, w11
	cmp	w11, w4
	csel	w12, wzr, w4, lo
	sub	w11, w11, w12
	eor	w8, w11, w8
	str	w11, [x3]
	cmp	x9, #2
	b.lo	LBB15_4
; %bb.6:                                ;   in Loop: Header=BB15_5 Depth=1
	ldr	w11, [x0, #4]
	ldr	w12, [x2, #4]
	add	w11, w12, w11
	cmp	w11, w4
	csel	w12, wzr, w4, lo
	sub	w11, w11, w12
	eor	w8, w11, w8
	str	w11, [x3, #4]
	cmp	x10, #8
	b.eq	LBB15_4
; %bb.7:                                ;   in Loop: Header=BB15_5 Depth=1
	ldr	w11, [x0, #8]
	ldr	w12, [x2, #8]
	add	w11, w12, w11
	cmp	w11, w4
	csel	w12, wzr, w4, lo
	sub	w11, w11, w12
	eor	w8, w11, w8
	str	w11, [x3, #8]
	b	LBB15_4
LBB15_8:
	mov	x0, x8
	ret
LBB15_9:
	stp	x26, x25, [sp, #-64]!           ; 16-byte Folded Spill
	stp	x24, x23, [sp, #16]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	.cfi_def_cfa_offset 64
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w23, -40
	.cfi_offset w24, -48
	.cfi_offset w25, -56
	.cfi_offset w26, -64
	sub	x8, x3, x0
	cmp	x8, #64
	b.lo	LBB15_19
; %bb.10:
	sub	x8, x3, x2
	cmp	x8, #63
	b.ls	LBB15_19
; %bb.11:
	dup.4s	v0, w4
	and	x10, x11, #0xfffffffffffffffc
	cmp	x9, #16
	b.hs	LBB15_24
; %bb.12:
	mov	w8, #0                          ; =0x0
	mov	x12, #0                         ; =0x0
	sub	x13, x9, x10
	lsl	x11, x11, #2
	and	x15, x11, #0xfffffffffffffff0
	add	x11, x3, x15
	add	x14, x2, x15
	add	x15, x0, x15
	b	LBB15_14
LBB15_13:                               ;   in Loop: Header=BB15_14 Depth=1
	add	x12, x12, #1
	cmp	x12, x5
	b.eq	LBB15_23
LBB15_14:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB15_18 Depth 2
	movi.2d	v1, #0000000000000000
	mov.s	v1[0], w8
	ldr	q2, [x0]
	ldr	q3, [x2]
	add.4s	v2, v3, v2
	cmhi.4s	v3, v0, v2
	bic.16b	v3, v0, v3
	sub.4s	v2, v2, v3
	str	q2, [x3]
	eor.16b	v1, v2, v1
	cmp	x10, #4
	b.eq	LBB15_17
; %bb.15:                               ;   in Loop: Header=BB15_14 Depth=1
	ldr	q2, [x0, #16]
	ldr	q3, [x2, #16]
	add.4s	v2, v3, v2
	cmhi.4s	v3, v0, v2
	bic.16b	v3, v0, v3
	sub.4s	v2, v2, v3
	str	q2, [x3, #16]
	eor.16b	v1, v2, v1
	cmp	x10, #8
	b.eq	LBB15_17
; %bb.16:                               ;   in Loop: Header=BB15_14 Depth=1
	ldr	q2, [x0, #32]
	ldr	q3, [x2, #32]
	add.4s	v2, v3, v2
	cmhi.4s	v3, v0, v2
	bic.16b	v3, v0, v3
	sub.4s	v2, v2, v3
	str	q2, [x3, #32]
	eor.16b	v1, v2, v1
LBB15_17:                               ;   in Loop: Header=BB15_14 Depth=1
	ext.16b	v2, v1, v1, #8
	eor.8b	v1, v1, v2
	fmov	x8, d1
	lsr	x16, x8, #32
	eor	w8, w8, w16
	mov	x16, x15
	mov	x17, x14
	mov	x1, x11
	mov	x6, x13
	cmp	x9, x10
	b.eq	LBB15_13
LBB15_18:                               ;   Parent Loop BB15_14 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w7, [x16], #4
	ldr	w19, [x17], #4
	add	w7, w19, w7
	cmp	w7, w4
	csel	w19, wzr, w4, lo
	sub	w7, w7, w19
	eor	w8, w7, w8
	str	w7, [x1], #4
	subs	x6, x6, #1
	b.ne	LBB15_18
	b	LBB15_13
LBB15_19:
	mov	w8, #0                          ; =0x0
	mov	x9, #0                          ; =0x0
LBB15_20:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB15_21 Depth 2
	mov	x10, x0
	mov	x12, x2
	mov	x13, x3
	mov	x14, x11
LBB15_21:                               ;   Parent Loop BB15_20 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w15, [x10], #4
	ldr	w16, [x12], #4
	add	w15, w16, w15
	cmp	w15, w4
	csel	w16, wzr, w4, lo
	sub	w15, w15, w16
	eor	w8, w15, w8
	str	w15, [x13], #4
	subs	x14, x14, #1
	b.ne	LBB15_21
; %bb.22:                               ;   in Loop: Header=BB15_20 Depth=1
	add	x9, x9, #1
	cmp	x9, x5
	b.ne	LBB15_20
LBB15_23:
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp], #64             ; 16-byte Folded Reload
	mov	x0, x8
	ret
LBB15_24:
	mov	w8, #0                          ; =0x0
	mov	x12, #0                         ; =0x0
	and	x13, x11, #0xfffffffffffffff0
	and	x14, x11, #0xc
	add	x15, x3, #32
	add	x16, x2, #32
	add	x17, x0, #32
	lsl	x1, x11, #2
	and	x7, x1, #0xffffffffffffffc0
	add	x1, x0, x7
	add	x6, x2, x7
	add	x7, x3, x7
	sub	x19, x10, x13
	b	LBB15_26
LBB15_25:                               ;   in Loop: Header=BB15_26 Depth=1
	add	x12, x12, #1
	cmp	x12, x5
	b.eq	LBB15_23
LBB15_26:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB15_27 Depth 2
                                        ;     Child Loop BB15_31 Depth 2
                                        ;     Child Loop BB15_34 Depth 2
	movi.2d	v1, #0000000000000000
	mov.s	v1[0], w8
	mov	x8, x17
	mov	x20, x16
	mov	x21, x15
	mov	x22, x13
	movi.2d	v2, #0000000000000000
	movi.2d	v3, #0000000000000000
	movi.2d	v4, #0000000000000000
LBB15_27:                               ;   Parent Loop BB15_26 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldp	q5, q6, [x8, #-32]
	ldp	q7, q16, [x8], #64
	ldp	q17, q18, [x20, #-32]
	ldp	q19, q20, [x20], #64
	add.4s	v5, v17, v5
	add.4s	v6, v18, v6
	add.4s	v7, v19, v7
	add.4s	v16, v20, v16
	cmhi.4s	v17, v0, v5
	cmhi.4s	v18, v0, v6
	cmhi.4s	v19, v0, v7
	cmhi.4s	v20, v0, v16
	bic.16b	v17, v0, v17
	bic.16b	v18, v0, v18
	bic.16b	v19, v0, v19
	bic.16b	v20, v0, v20
	sub.4s	v5, v5, v17
	sub.4s	v6, v6, v18
	sub.4s	v7, v7, v19
	sub.4s	v16, v16, v20
	stp	q5, q6, [x21, #-32]
	stp	q7, q16, [x21], #64
	eor.16b	v1, v5, v1
	eor.16b	v2, v6, v2
	eor.16b	v3, v7, v3
	eor.16b	v4, v16, v4
	subs	x22, x22, #16
	b.ne	LBB15_27
; %bb.28:                               ;   in Loop: Header=BB15_26 Depth=1
	eor.16b	v1, v2, v1
	eor3.16b	v1, v3, v1, v4
	ext.16b	v2, v1, v1, #8
	eor.8b	v1, v1, v2
	fmov	x8, d1
	lsr	x20, x8, #32
	eor	w8, w8, w20
	cmp	x9, x13
	b.eq	LBB15_25
; %bb.29:                               ;   in Loop: Header=BB15_26 Depth=1
	mov	x21, x13
	cbz	x14, LBB15_33
; %bb.30:                               ;   in Loop: Header=BB15_26 Depth=1
	movi.2d	v1, #0000000000000000
	mov.s	v1[0], w8
	mov	x8, x19
	mov	x20, x7
	mov	x21, x6
	mov	x22, x1
LBB15_31:                               ;   Parent Loop BB15_26 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	q2, [x22], #16
	ldr	q3, [x21], #16
	add.4s	v2, v3, v2
	cmhi.4s	v3, v0, v2
	bic.16b	v3, v0, v3
	sub.4s	v2, v2, v3
	str	q2, [x20], #16
	eor.16b	v1, v2, v1
	subs	x8, x8, #4
	b.ne	LBB15_31
; %bb.32:                               ;   in Loop: Header=BB15_26 Depth=1
	ext.16b	v2, v1, v1, #8
	eor.8b	v1, v1, v2
	fmov	x8, d1
	lsr	x20, x8, #32
	eor	w8, w8, w20
	mov	x21, x10
	cmp	x9, x10
	b.eq	LBB15_25
LBB15_33:                               ;   in Loop: Header=BB15_26 Depth=1
	sub	x20, x11, x21
	lsl	x23, x21, #2
	add	x21, x3, x23
	add	x22, x2, x23
	add	x23, x0, x23
LBB15_34:                               ;   Parent Loop BB15_26 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w24, [x23], #4
	ldr	w25, [x22], #4
	add	w24, w25, w24
	cmp	w24, w4
	csel	w25, wzr, w4, lo
	sub	w24, w24, w25
	eor	w8, w24, w8
	str	w24, [x21], #4
	subs	x20, x20, #1
	b.ne	LBB15_34
	b	LBB15_25
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZL15reist_poly_neonRKNSt3__16vectorIjNS_9allocatorIjEEEES5_RS3_jy
__ZL15reist_poly_neonRKNSt3__16vectorIjNS_9allocatorIjEEEES5_RS3_jy: ; @_ZL15reist_poly_neonRKNSt3__16vectorIjNS_9allocatorIjEEEES5_RS3_jy
	.cfi_startproc
; %bb.0:
	stp	x22, x21, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	.cfi_def_cfa_offset 32
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	cbz	x4, LBB16_10
; %bb.1:
	ldp	x11, x8, [x0]
	sub	x13, x8, x11
	asr	x9, x13, #2
	dup.4s	v0, w3
	and	x10, x9, #0xfffffffffffffffc
	cbz	x10, LBB16_12
; %bb.2:
	sub	x8, x10, #1
	and	x8, x8, #0xfffffffffffffffc
	add	x11, x8, #5
	cmp	x9, x11
	csel	x15, x9, x11, hi
	sub	x8, x15, x8
	sub	x11, x8, #4
	cmp	x11, #4
	b.hs	LBB16_19
; %bb.3:
	mov	w8, #0                          ; =0x0
	mov	x11, #0                         ; =0x0
	b	LBB16_5
LBB16_4:                                ;   in Loop: Header=BB16_5 Depth=1
	add	x11, x11, #1
	cmp	x11, x4
	b.eq	LBB16_11
LBB16_5:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB16_6 Depth 2
                                        ;     Child Loop BB16_9 Depth 2
	mov	x13, #0                         ; =0x0
	mov	x12, #0                         ; =0x0
LBB16_6:                                ;   Parent Loop BB16_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	x14, [x0]
	ldr	q1, [x14, x13]
	ldr	x14, [x1]
	ldr	q2, [x14, x13]
	add.4s	v1, v2, v1
	cmhi.4s	v2, v0, v1
	bic.16b	v2, v0, v2
	sub.4s	v1, v1, v2
	ldr	x14, [x2]
	str	q1, [x14, x13]
	fmov	w14, s1
	eor	w8, w14, w8
	add	x12, x12, #4
	add	x13, x13, #16
	cmp	x12, x10
	b.lo	LBB16_6
; %bb.7:                                ;   in Loop: Header=BB16_5 Depth=1
	cmp	x12, x9
	b.hs	LBB16_4
; %bb.8:                                ;   in Loop: Header=BB16_5 Depth=1
	ldr	x13, [x0]
	ldr	x14, [x1]
	ldr	x15, [x2]
LBB16_9:                                ;   Parent Loop BB16_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w16, [x13, x12, lsl #2]
	ldr	w17, [x14, x12, lsl #2]
	add	w16, w17, w16
	cmp	w16, w3
	csel	w17, wzr, w3, lo
	sub	w16, w16, w17
	eor	w8, w16, w8
	str	w16, [x15, x12, lsl #2]
	add	x12, x12, #1
	cmp	x12, x9
	b.lo	LBB16_9
	b	LBB16_4
LBB16_10:
	mov	w8, #0                          ; =0x0
LBB16_11:
	mov	x0, x8
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #32             ; 16-byte Folded Reload
	ret
LBB16_12:
	cmp	x8, x11
	b.eq	LBB16_38
; %bb.13:
	ldr	x10, [x1]
	ldr	x12, [x2]
	cmp	x9, #1
	csinc	x14, x9, xzr, hi
	cmp	x9, #3
	b.hi	LBB16_39
; %bb.14:
	mov	w8, #0                          ; =0x0
	b	LBB16_16
LBB16_15:                               ;   in Loop: Header=BB16_16 Depth=1
	subs	x4, x4, #1
	b.eq	LBB16_11
LBB16_16:                               ; =>This Inner Loop Header: Depth=1
	ldr	w14, [x11]
	ldr	w15, [x10]
	add	w14, w15, w14
	cmp	w14, w3
	csel	w15, wzr, w3, lo
	sub	w14, w14, w15
	eor	w8, w14, w8
	str	w14, [x12]
	cmp	x9, #2
	b.lo	LBB16_15
; %bb.17:                               ;   in Loop: Header=BB16_16 Depth=1
	ldr	w14, [x11, #4]
	ldr	w15, [x10, #4]
	add	w14, w15, w14
	cmp	w14, w3
	csel	w15, wzr, w3, lo
	sub	w14, w14, w15
	eor	w8, w14, w8
	str	w14, [x12, #4]
	cmp	x13, #8
	b.eq	LBB16_15
; %bb.18:                               ;   in Loop: Header=BB16_16 Depth=1
	ldr	w14, [x11, #8]
	ldr	w15, [x10, #8]
	add	w14, w15, w14
	cmp	w14, w3
	csel	w15, wzr, w3, lo
	sub	w14, w14, w15
	eor	w8, w14, w8
	str	w14, [x12, #8]
	b	LBB16_15
LBB16_19:
	mov	w8, #0                          ; =0x0
	mov	x12, #0                         ; =0x0
	and	x13, x11, #0xfffffffffffffff0
	and	x14, x11, #0xc
	and	x15, x15, #0x3
	sub	x16, x11, x15
	b	LBB16_21
LBB16_20:                               ;   in Loop: Header=BB16_21 Depth=1
	add	x12, x12, #1
	cmp	x12, x4
	b.eq	LBB16_11
LBB16_21:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB16_22 Depth 2
                                        ;     Child Loop BB16_29 Depth 2
                                        ;     Child Loop BB16_34 Depth 2
                                        ;     Child Loop BB16_36 Depth 2
	mov	x17, #0                         ; =0x0
	mov	w5, #4                          ; =0x4
	mov	w6, #48                         ; =0x30
LBB16_22:                               ;   Parent Loop BB16_21 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	mov	x21, x6
	mov	x19, x5
	ldr	x5, [x0]
	lsl	x6, x17, #2
	ldr	q1, [x5, x6]
	ldr	x5, [x1]
	ldr	q2, [x5, x6]
	add.4s	v1, v2, v1
	cmhi.4s	v2, v0, v1
	bic.16b	v2, v0, v2
	sub.4s	v1, v1, v2
	ldr	x5, [x2]
	str	q1, [x5, x6]
	fmov	w5, s1
	eor	w8, w5, w8
	add	x17, x17, #4
	add	x6, x21, #16
	add	x5, x19, #4
	cmp	x17, x10
	b.lo	LBB16_22
; %bb.23:                               ;   in Loop: Header=BB16_21 Depth=1
	cmp	x17, x9
	b.hs	LBB16_20
; %bb.24:                               ;   in Loop: Header=BB16_21 Depth=1
	ldr	x5, [x0]
	ldr	x6, [x1]
	ldr	x7, [x2]
	sub	x20, x7, x5
	cmp	x20, #64
	b.lo	LBB16_36
; %bb.25:                               ;   in Loop: Header=BB16_21 Depth=1
	sub	x20, x7, x6
	cmp	x20, #64
	b.lo	LBB16_36
; %bb.26:                               ;   in Loop: Header=BB16_21 Depth=1
	cmp	x11, #16
	b.hs	LBB16_28
; %bb.27:                               ;   in Loop: Header=BB16_21 Depth=1
	mov	x20, #0                         ; =0x0
	b	LBB16_33
LBB16_28:                               ;   in Loop: Header=BB16_21 Depth=1
	movi.2d	v1, #0000000000000000
	movi.2d	v2, #0000000000000000
	mov.s	v2[0], w8
	add	x8, x7, x21
	add	x20, x6, x21
	add	x21, x5, x21
	mov	x22, x13
	movi.2d	v3, #0000000000000000
	movi.2d	v4, #0000000000000000
LBB16_29:                               ;   Parent Loop BB16_21 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldp	q5, q6, [x21, #-32]
	ldp	q7, q16, [x21], #64
	ldp	q17, q18, [x20, #-32]
	ldp	q19, q20, [x20], #64
	add.4s	v5, v17, v5
	add.4s	v6, v18, v6
	add.4s	v7, v19, v7
	add.4s	v16, v20, v16
	cmhi.4s	v17, v0, v5
	cmhi.4s	v18, v0, v6
	cmhi.4s	v19, v0, v7
	cmhi.4s	v20, v0, v16
	bic.16b	v17, v0, v17
	bic.16b	v18, v0, v18
	bic.16b	v19, v0, v19
	bic.16b	v20, v0, v20
	sub.4s	v5, v5, v17
	sub.4s	v6, v6, v18
	sub.4s	v7, v7, v19
	sub.4s	v16, v16, v20
	stp	q5, q6, [x8, #-32]
	stp	q7, q16, [x8], #64
	eor.16b	v2, v5, v2
	eor.16b	v1, v6, v1
	eor.16b	v3, v7, v3
	eor.16b	v4, v16, v4
	subs	x22, x22, #16
	b.ne	LBB16_29
; %bb.30:                               ;   in Loop: Header=BB16_21 Depth=1
	eor.16b	v1, v1, v2
	eor3.16b	v1, v3, v1, v4
	ext.16b	v2, v1, v1, #8
	eor.8b	v1, v1, v2
	fmov	x8, d1
	lsr	x20, x8, #32
	eor	w8, w8, w20
	cmp	x11, x13
	b.eq	LBB16_20
; %bb.31:                               ;   in Loop: Header=BB16_21 Depth=1
	cbz	x14, LBB16_37
; %bb.32:                               ;   in Loop: Header=BB16_21 Depth=1
	mov	x20, x13
LBB16_33:                               ;   in Loop: Header=BB16_21 Depth=1
	add	x17, x17, x16
	movi.2d	v1, #0000000000000000
	mov.s	v1[0], w8
	sub	x8, x16, x20
	add	x19, x20, x19
	lsl	x21, x19, #2
	add	x19, x5, x21
	add	x20, x6, x21
	add	x21, x7, x21
LBB16_34:                               ;   Parent Loop BB16_21 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	q2, [x19], #16
	ldr	q3, [x20], #16
	add.4s	v2, v3, v2
	cmhi.4s	v3, v0, v2
	bic.16b	v3, v0, v3
	sub.4s	v2, v2, v3
	str	q2, [x21], #16
	eor.16b	v1, v2, v1
	subs	x8, x8, #4
	b.ne	LBB16_34
; %bb.35:                               ;   in Loop: Header=BB16_21 Depth=1
	ext.16b	v2, v1, v1, #8
	eor.8b	v1, v1, v2
	fmov	x8, d1
	lsr	x19, x8, #32
	eor	w8, w8, w19
	cbz	x15, LBB16_20
LBB16_36:                               ;   Parent Loop BB16_21 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w19, [x5, x17, lsl #2]
	ldr	w20, [x6, x17, lsl #2]
	add	w19, w20, w19
	cmp	w19, w3
	csel	w20, wzr, w3, lo
	sub	w19, w19, w20
	eor	w8, w19, w8
	str	w19, [x7, x17, lsl #2]
	add	x17, x17, #1
	cmp	x17, x9
	b.lo	LBB16_36
	b	LBB16_20
LBB16_37:                               ;   in Loop: Header=BB16_21 Depth=1
	add	x17, x17, x13
	b	LBB16_36
LBB16_38:
	mov	w8, #0                          ; =0x0
	mov	x0, x8
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #32             ; 16-byte Folded Reload
	ret
LBB16_39:
	sub	x8, x12, x11
	cmp	x8, #64
	b.lo	LBB16_43
; %bb.40:
	sub	x8, x12, x10
	cmp	x8, #63
	b.ls	LBB16_43
; %bb.41:
	cmp	x9, #16
	b.hs	LBB16_47
LBB16_42:                               ; =>This Inner Loop Header: Depth=1
	ldr	q1, [x11], #16
	ldr	q2, [x10], #16
	add.4s	v1, v2, v1
	cmhi.4s	v2, v0, v1
	bic.16b	v2, v0, v2
	sub.4s	v1, v1, v2
	str	q1, [x12], #16
	b	LBB16_42
LBB16_43:
	mov	w8, #0                          ; =0x0
	mov	x9, #0                          ; =0x0
LBB16_44:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB16_45 Depth 2
	mov	x13, x11
	mov	x15, x10
	mov	x16, x12
	mov	x17, x14
LBB16_45:                               ;   Parent Loop BB16_44 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w0, [x13], #4
	ldr	w1, [x15], #4
	add	w0, w1, w0
	cmp	w0, w3
	csel	w1, wzr, w3, lo
	sub	w0, w0, w1
	eor	w8, w0, w8
	str	w0, [x16], #4
	subs	x17, x17, #1
	b.ne	LBB16_45
; %bb.46:                               ;   in Loop: Header=BB16_44 Depth=1
	add	x9, x9, #1
	cmp	x9, x4
	b.ne	LBB16_44
	b	LBB16_11
LBB16_47:
	add	x8, x12, #32
	add	x9, x10, #32
	add	x10, x11, #32
LBB16_48:                               ; =>This Inner Loop Header: Depth=1
	ldp	q1, q2, [x10, #-32]
	ldp	q3, q4, [x10], #64
	ldp	q5, q6, [x9, #-32]
	ldp	q7, q16, [x9], #64
	add.4s	v1, v5, v1
	add.4s	v2, v6, v2
	add.4s	v3, v7, v3
	add.4s	v4, v16, v4
	cmhi.4s	v5, v0, v1
	cmhi.4s	v6, v0, v2
	cmhi.4s	v7, v0, v3
	cmhi.4s	v16, v0, v4
	bic.16b	v5, v0, v5
	bic.16b	v6, v0, v6
	bic.16b	v7, v0, v7
	bic.16b	v16, v0, v16
	sub.4s	v1, v1, v5
	sub.4s	v2, v2, v6
	sub.4s	v3, v3, v7
	stp	q1, q2, [x8, #-32]
	sub.4s	v1, v4, v16
	stp	q3, q1, [x8], #64
	b	LBB16_48
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"/proc/cpuinfo"

l_.str.1:                               ; @.str.1
	.asciz	"model name"

l_.str.3:                               ; @.str.3
	.asciz	"cpu MHz"

l_.str.4:                               ; @.str.4
	.asciz	"/proc/meminfo"

l_.str.5:                               ; @.str.5
	.asciz	"MemTotal"

l_.str.6:                               ; @.str.6
	.asciz	"uname -o"

l_.str.7:                               ; @.str.7
	.asciz	"r"

l_.str.8:                               ; @.str.8
	.asciz	"========================================\n"

l_.str.9:                               ; @.str.9
	.asciz	"ARM REIST Benchmark: scalar vs NEON\n"

l_.str.10:                              ; @.str.10
	.asciz	"System Information:\n"

l_.str.11:                              ; @.str.11
	.asciz	"  Hostname: "

l_.str.12:                              ; @.str.12
	.asciz	"\n"

l_.str.13:                              ; @.str.13
	.asciz	"  OS: "

l_.str.14:                              ; @.str.14
	.asciz	"  CPU Model: "

l_.str.15:                              ; @.str.15
	.asciz	"  CPU MHz: "

l_.str.16:                              ; @.str.16
	.asciz	"  Memory: "

l_.str.17:                              ; @.str.17
	.asciz	"========================================\n\n"

l_.str.18:                              ; @.str.18
	.asciz	"N = "

l_.str.19:                              ; @.str.19
	.asciz	" coefficients\n\n"

l_.str.20:                              ; @.str.20
	.asciz	"q = "

l_.str.21:                              ; @.str.21
	.asciz	"  classic scalar : "

l_.str.22:                              ; @.str.22
	.asciz	" s  (reps="

l_.str.23:                              ; @.str.23
	.asciz	")\n"

l_.str.24:                              ; @.str.24
	.asciz	"  REIST  scalar  : "

l_.str.25:                              ; @.str.25
	.asciz	"  REIST  NEON    : "

l_.str.26:                              ; @.str.26
	.asciz	"  speedup REIST scalar vs classic : "

l_.str.27:                              ; @.str.27
	.asciz	"x\n"

l_.str.28:                              ; @.str.28
	.asciz	"  speedup REIST NEON   vs classic : "

l_.str.29:                              ; @.str.29
	.asciz	"  speedup NEON vs REIST scalar    : "

l_.str.30:                              ; @.str.30
	.asciz	"x\n\n"

l_.str.31:                              ; @.str.31
	.asciz	"basic_string"

l_.str.32:                              ; @.str.32
	.asciz	"vector"

.subsections_via_symbols
