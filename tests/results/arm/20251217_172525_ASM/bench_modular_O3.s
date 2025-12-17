	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 26, 0	sdk_version 26, 2
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4, 0x0                          ; -- Begin function main
lCPI0_0:
	.quad	0                               ; 0x0
	.quad	4611686018427387904             ; 0x4000000000000000
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.p2align	2
_main:                                  ; @main
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
; %bb.0:
	stp	d9, d8, [sp, #-112]!            ; 16-byte Folded Spill
	stp	x28, x27, [sp, #16]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #64]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	sub	sp, sp, #3440
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
	mov	x21, x1
Lloh0:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh1:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh2:
	ldr	x8, [x8]
	stur	x8, [x29, #-120]
	mov	w19, #19264                     ; =0x4b40
	movk	w19, #76, lsl #16
	cmp	w0, #2
	b.lt	LBB0_4
; %bb.1:
	mov	x22, x0
	mov	x26, #-9                        ; =0xfffffffffffffff7
	movk	x26, #32767, lsl #48
	ldr	x23, [x21, #8]
	mov	x0, x23
	bl	_strlen
	cmp	x0, x26
	b.hi	LBB0_203
; %bb.2:
	mov	x20, x0
	cmp	x0, #23
	b.hs	LBB0_5
; %bb.3:
	strb	w20, [sp, #231]
	add	x24, sp, #208
	cbnz	x20, LBB0_6
	b	LBB0_7
LBB0_4:
	mov	w20, #257                       ; =0x101
	b	LBB0_20
LBB0_5:
	orr	x8, x20, #0x7
	cmp	x8, #23
	mov	w9, #25                         ; =0x19
	csinc	x25, x9, x8, eq
	mov	x0, x25
	bl	__Znwm
	mov	x24, x0
	orr	x8, x25, #0x8000000000000000
	stp	x20, x8, [sp, #216]
	str	x0, [sp, #208]
LBB0_6:
	mov	x0, x24
	mov	x1, x23
	mov	x2, x20
	bl	_memmove
LBB0_7:
	strb	wzr, [x24, x20]
Ltmp0:
	add	x0, sp, #208
	mov	x1, #0                          ; =0x0
	mov	w2, #10                         ; =0xa
	bl	__ZNSt3__15stollERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPmi
Ltmp1:
; %bb.8:
	mov	x20, x0
	ldrsb	w8, [sp, #231]
	tbnz	w8, #31, LBB0_10
; %bb.9:
	cmp	w22, #2
	b.ne	LBB0_11
	b	LBB0_20
LBB0_10:
	ldr	x0, [sp, #208]
	bl	__ZdlPv
	cmp	w22, #2
	b.eq	LBB0_20
LBB0_11:
	ldr	x22, [x21, #16]
	mov	x0, x22
	bl	_strlen
	cmp	x0, x26
	b.hi	LBB0_204
; %bb.12:
	mov	x19, x0
	cmp	x0, #23
	b.hs	LBB0_14
; %bb.13:
	strb	w19, [sp, #231]
	add	x23, sp, #208
	cbnz	x19, LBB0_16
	b	LBB0_17
LBB0_14:
	orr	x8, x19, #0x7
	cmp	x8, #23
	mov	w9, #25                         ; =0x19
	csinc	x24, x9, x8, eq
Ltmp3:
	mov	x0, x24
	bl	__Znwm
Ltmp4:
; %bb.15:
	mov	x23, x0
	orr	x8, x24, #0x8000000000000000
	stp	x19, x8, [sp, #216]
	str	x0, [sp, #208]
LBB0_16:
	mov	x0, x23
	mov	x1, x22
	mov	x2, x19
	bl	_memmove
LBB0_17:
	strb	wzr, [x23, x19]
Ltmp5:
	add	x0, sp, #208
	mov	x1, #0                          ; =0x0
	mov	w2, #10                         ; =0xa
	bl	__ZNSt3__15stollERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPmi
Ltmp6:
; %bb.18:
	mov	x19, x0
	ldrsb	w8, [sp, #231]
	tbz	w8, #31, LBB0_20
; %bb.19:
	ldr	x0, [sp, #208]
	bl	__ZdlPv
LBB0_20:
	cmp	x20, #2
	b.lt	LBB0_81
; %bb.21:
	cmp	x19, #0
	b.le	LBB0_81
; %bb.22:
	mov	w8, #48879                      ; =0xbeef
	str	x8, [sp, #208]
	mov	w9, #1                          ; =0x1
	mov	x10, #32557                     ; =0x7f2d
	movk	x10, #19605, lsl #16
	movk	x10, #62509, lsl #32
	movk	x10, #22609, lsl #48
	add	x11, sp, #208
LBB0_23:                                ; =>This Inner Loop Header: Depth=1
	eor	x8, x8, x8, lsr #62
	madd	x8, x8, x10, x9
	str	x8, [x11, x9, lsl #3]
	add	x9, x9, #1
	cmp	x9, #312
	b.ne	LBB0_23
; %bb.24:
	stp	x20, x19, [sp, #8]              ; 16-byte Folded Spill
	str	xzr, [sp, #2704]
Lloh3:
	adrp	x8, lCPI0_0@PAGE
Lloh4:
	ldr	q0, [x8, lCPI0_0@PAGEOFF]
	add	x8, sp, #160
	str	q0, [x8, #32]
	stp	xzr, xzr, [sp, #160]
	str	xzr, [sp, #176]
	stp	xzr, xzr, [sp, #128]
	str	xzr, [sp, #144]
	stp	xzr, xzr, [sp, #96]
	str	xzr, [sp, #112]
	stp	xzr, xzr, [sp, #72]
	str	xzr, [sp, #88]
	stp	xzr, xzr, [sp, #48]
	str	xzr, [sp, #64]
Ltmp10:
Lloh5:
	adrp	x1, l_.str.2@PAGE
Lloh6:
	add	x1, x1, l_.str.2@PAGEOFF
	add	x0, sp, #2840
	mov	w2, #8                          ; =0x8
	bl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEC1EPKcj
Ltmp11:
; %bb.25:
	str	xzr, [sp, #2720]
	str	xzr, [sp, #2712]
	mov	w27, #19744                     ; =0x4d20
	movk	w27, #31304, lsl #16
	str	xzr, [sp, #2728]
	mov	x25, #28525                     ; =0x6f6d
	movk	x25, #25956, lsl #16
	movk	x25, #8300, lsl #32
	movk	x25, #24942, lsl #48
	mov	w21, #25965                     ; =0x656d
	b	LBB0_28
LBB0_26:                                ;   in Loop: Header=BB0_28 Depth=1
	strb	wzr, [x23, x22]
	ldrsb	w8, [sp, #151]
	tbnz	w8, #31, LBB0_80
LBB0_27:                                ;   in Loop: Header=BB0_28 Depth=1
	ldur	q0, [sp, #24]
	str	q0, [sp, #128]
	ldr	x8, [sp, #40]
	str	x8, [sp, #144]
LBB0_28:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_35 Depth 2
                                        ;     Child Loop BB0_41 Depth 2
                                        ;     Child Loop BB0_56 Depth 2
                                        ;     Child Loop BB0_62 Depth 2
	ldr	x8, [sp, #2840]
	ldur	x9, [x8, #-24]
Ltmp13:
	add	x8, sp, #24
	add	x10, sp, #2840
	add	x0, x10, x9
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp14:
; %bb.29:                               ;   in Loop: Header=BB0_28 Depth=1
Ltmp15:
	add	x0, sp, #24
Lloh7:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh8:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp16:
; %bb.30:                               ;   in Loop: Header=BB0_28 Depth=1
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp17:
	mov	w1, #10                         ; =0xa
	blr	x8
Ltmp18:
; %bb.31:                               ;   in Loop: Header=BB0_28 Depth=1
	mov	x22, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
Ltmp20:
	add	x0, sp, #2840
	add	x1, sp, #2712
	mov	x2, x22
	bl	__ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
Ltmp21:
; %bb.32:                               ;   in Loop: Header=BB0_28 Depth=1
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x8, x0, x8
	ldrb	w23, [sp, #2735]
	sxtb	w20, w23
	ldrb	w8, [x8, #32]
	mov	w9, #5                          ; =0x5
	tst	w8, w9
	b.ne	LBB0_85
; %bb.33:                               ;   in Loop: Header=BB0_28 Depth=1
	cmp	w20, #0
	ldr	x28, [sp, #2712]
	ldr	x24, [sp, #2720]
	add	x8, sp, #2712
	csel	x19, x28, x8, lt
	csel	x8, x24, x23, lt
	cmp	x8, #10
	b.lt	LBB0_54
; %bb.34:                               ;   in Loop: Header=BB0_28 Depth=1
	add	x22, x19, x8
	mov	x26, x8
	mov	x0, x19
LBB0_35:                                ;   Parent Loop BB0_28 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	sub	x2, x8, #9
	mov	w1, #109                        ; =0x6d
	bl	_memchr
	cbz	x0, LBB0_54
; %bb.36:                               ;   in Loop: Header=BB0_35 Depth=2
	ldr	x8, [x0]
	ldrh	w9, [x0, #8]
	cmp	x8, x25
	ccmp	w9, w21, #0, eq
	b.eq	LBB0_38
; %bb.37:                               ;   in Loop: Header=BB0_35 Depth=2
	add	x0, x0, #1
	sub	x8, x22, x0
	cmp	x8, #10
	b.ge	LBB0_35
	b	LBB0_54
LBB0_38:                                ;   in Loop: Header=BB0_28 Depth=1
	cmp	x0, x22
	b.eq	LBB0_54
; %bb.39:                               ;   in Loop: Header=BB0_28 Depth=1
	sub	x8, x0, x19
	cmn	x8, #1
	b.eq	LBB0_54
; %bb.40:                               ;   in Loop: Header=BB0_28 Depth=1
	mov	x2, x26
	mov	x0, x19
LBB0_41:                                ;   Parent Loop BB0_28 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	mov	w1, #58                         ; =0x3a
	bl	_memchr
	cbz	x0, LBB0_44
; %bb.42:                               ;   in Loop: Header=BB0_41 Depth=2
	ldrb	w8, [x0]
	cmp	w8, #58
	b.eq	LBB0_45
; %bb.43:                               ;   in Loop: Header=BB0_41 Depth=2
	add	x0, x0, #1
	sub	x2, x22, x0
	cmp	x2, #0
	b.gt	LBB0_41
LBB0_44:                                ;   in Loop: Header=BB0_28 Depth=1
	mov	x0, x22
LBB0_45:                                ;   in Loop: Header=BB0_28 Depth=1
	sub	x8, x0, x19
	add	x8, x8, #2
	cmp	x0, x22
	csinc	x19, x8, xzr, ne
	tbnz	w20, #31, LBB0_48
; %bb.46:                               ;   in Loop: Header=BB0_28 Depth=1
	cmp	x19, x23
	b.hi	LBB0_198
; %bb.47:                               ;   in Loop: Header=BB0_28 Depth=1
	add	x28, sp, #2712
	mov	x24, x23
	b	LBB0_49
LBB0_48:                                ;   in Loop: Header=BB0_28 Depth=1
	cmp	x24, x19
	b.lo	LBB0_198
LBB0_49:                                ;   in Loop: Header=BB0_28 Depth=1
	sub	x22, x24, x19
	mov	x8, #-9                         ; =0xfffffffffffffff7
	movk	x8, #32767, lsl #48
	cmp	x22, x8
	b.hi	LBB0_199
; %bb.50:                               ;   in Loop: Header=BB0_28 Depth=1
	cmp	x22, #23
	b.hs	LBB0_69
; %bb.51:                               ;   in Loop: Header=BB0_28 Depth=1
	strb	w22, [sp, #47]
	add	x23, sp, #24
	cmp	x24, x19
	b.ne	LBB0_71
; %bb.52:                               ;   in Loop: Header=BB0_28 Depth=1
	strb	wzr, [x23, x22]
	ldrsb	w8, [sp, #183]
	tbnz	w8, #31, LBB0_72
LBB0_53:                                ;   in Loop: Header=BB0_28 Depth=1
	ldur	q0, [sp, #24]
	add	x8, sp, #160
	str	q0, [x8]
	ldr	x8, [sp, #40]
	str	x8, [sp, #176]
	ldrb	w23, [sp, #2735]
	ldr	x28, [sp, #2712]
	ldr	x24, [sp, #2720]
	mov	x20, x23
LBB0_54:                                ;   in Loop: Header=BB0_28 Depth=1
	sxtb	w8, w20
	cmp	w8, #0
	add	x8, sp, #2712
	csel	x19, x28, x8, lt
	csel	x22, x24, x23, lt
	cmp	x22, #7
	b.lt	LBB0_28
; %bb.55:                               ;   in Loop: Header=BB0_28 Depth=1
	add	x26, x19, x22
	mov	x8, x22
	mov	x0, x19
LBB0_56:                                ;   Parent Loop BB0_28 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	sub	x2, x8, #6
	mov	w1, #99                         ; =0x63
	bl	_memchr
	cbz	x0, LBB0_28
; %bb.57:                               ;   in Loop: Header=BB0_56 Depth=2
	ldr	w8, [x0]
	ldur	w9, [x0, #3]
	mov	w10, #28771                     ; =0x7063
	movk	w10, #8309, lsl #16
	cmp	w8, w10
	ccmp	w9, w27, #0, eq
	b.eq	LBB0_59
; %bb.58:                               ;   in Loop: Header=BB0_56 Depth=2
	add	x0, x0, #1
	sub	x8, x26, x0
	cmp	x8, #7
	b.ge	LBB0_56
	b	LBB0_28
LBB0_59:                                ;   in Loop: Header=BB0_28 Depth=1
	cmp	x0, x26
	b.eq	LBB0_28
; %bb.60:                               ;   in Loop: Header=BB0_28 Depth=1
	sub	x8, x0, x19
	cmn	x8, #1
	b.eq	LBB0_28
; %bb.61:                               ;   in Loop: Header=BB0_28 Depth=1
	mov	x0, x19
LBB0_62:                                ;   Parent Loop BB0_28 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	mov	w1, #58                         ; =0x3a
	mov	x2, x22
	bl	_memchr
	cbz	x0, LBB0_65
; %bb.63:                               ;   in Loop: Header=BB0_62 Depth=2
	ldrb	w8, [x0]
	cmp	w8, #58
	b.eq	LBB0_66
; %bb.64:                               ;   in Loop: Header=BB0_62 Depth=2
	add	x0, x0, #1
	sub	x22, x26, x0
	cmp	x22, #0
	b.gt	LBB0_62
LBB0_65:                                ;   in Loop: Header=BB0_28 Depth=1
	mov	x0, x26
LBB0_66:                                ;   in Loop: Header=BB0_28 Depth=1
	sub	x8, x0, x19
	add	x8, x8, #2
	cmp	x0, x26
	csinc	x19, x8, xzr, ne
	tbnz	w20, #7, LBB0_73
; %bb.67:                               ;   in Loop: Header=BB0_28 Depth=1
	cmp	x19, x23
	b.hi	LBB0_200
; %bb.68:                               ;   in Loop: Header=BB0_28 Depth=1
	add	x28, sp, #2712
	mov	x24, x23
	b	LBB0_74
LBB0_69:                                ;   in Loop: Header=BB0_28 Depth=1
	orr	x8, x22, #0x7
	cmp	x8, #23
	mov	w9, #25                         ; =0x19
	csinc	x24, x9, x8, eq
Ltmp133:
	mov	x0, x24
	bl	__Znwm
Ltmp134:
; %bb.70:                               ;   in Loop: Header=BB0_28 Depth=1
	mov	x23, x0
	orr	x8, x24, #0x8000000000000000
	stp	x22, x8, [sp, #32]
	str	x0, [sp, #24]
LBB0_71:                                ;   in Loop: Header=BB0_28 Depth=1
	add	x1, x28, x19
	mov	x0, x23
	mov	x2, x22
	bl	_memmove
	strb	wzr, [x23, x22]
	ldrsb	w8, [sp, #183]
	tbz	w8, #31, LBB0_53
LBB0_72:                                ;   in Loop: Header=BB0_28 Depth=1
	ldr	x0, [sp, #160]
	bl	__ZdlPv
	b	LBB0_53
LBB0_73:                                ;   in Loop: Header=BB0_28 Depth=1
	cmp	x24, x19
	b.lo	LBB0_200
LBB0_74:                                ;   in Loop: Header=BB0_28 Depth=1
	sub	x22, x24, x19
	mov	x8, #-9                         ; =0xfffffffffffffff7
	movk	x8, #32767, lsl #48
	cmp	x22, x8
	b.hi	LBB0_201
; %bb.75:                               ;   in Loop: Header=BB0_28 Depth=1
	cmp	x22, #23
	b.hs	LBB0_77
; %bb.76:                               ;   in Loop: Header=BB0_28 Depth=1
	strb	w22, [sp, #47]
	add	x23, sp, #24
	cmp	x24, x19
	b.ne	LBB0_79
	b	LBB0_26
LBB0_77:                                ;   in Loop: Header=BB0_28 Depth=1
	orr	x8, x22, #0x7
	cmp	x8, #23
	mov	w9, #25                         ; =0x19
	csinc	x24, x9, x8, eq
Ltmp141:
	mov	x0, x24
	bl	__Znwm
Ltmp142:
; %bb.78:                               ;   in Loop: Header=BB0_28 Depth=1
	mov	x23, x0
	orr	x8, x24, #0x8000000000000000
	stp	x22, x8, [sp, #32]
	str	x0, [sp, #24]
LBB0_79:                                ;   in Loop: Header=BB0_28 Depth=1
	add	x1, x28, x19
	mov	x0, x23
	mov	x2, x22
	bl	_memmove
	strb	wzr, [x23, x22]
	ldrsb	w8, [sp, #151]
	tbz	w8, #31, LBB0_27
LBB0_80:                                ;   in Loop: Header=BB0_28 Depth=1
	ldr	x0, [sp, #128]
	bl	__ZdlPv
	b	LBB0_27
LBB0_81:
Ltmp149:
Lloh9:
	adrp	x0, __ZNSt3__14cerrE@GOTPAGE
Lloh10:
	ldr	x0, [x0, __ZNSt3__14cerrE@GOTPAGEOFF]
Lloh11:
	adrp	x1, l_.str@PAGE
Lloh12:
	add	x1, x1, l_.str@PAGEOFF
	mov	w2, #7                          ; =0x7
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp150:
; %bb.82:
	mov	x19, x0
	ldr	x20, [x21]
	mov	x0, x20
	bl	_strlen
	mov	x2, x0
Ltmp151:
	mov	x0, x19
	mov	x1, x20
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp152:
; %bb.83:
Ltmp153:
Lloh13:
	adrp	x1, l_.str.1@PAGE
Lloh14:
	add	x1, x1, l_.str.1@PAGEOFF
	mov	w2, #13                         ; =0xd
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp154:
; %bb.84:
	mov	w0, #1                          ; =0x1
	b	LBB0_191
LBB0_85:
	tbz	w20, #31, LBB0_87
; %bb.86:
	ldr	x0, [sp, #2712]
	bl	__ZdlPv
LBB0_87:
Lloh15:
	adrp	x24, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh16:
	ldr	x24, [x24, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	ldr	x25, [x24]
	str	x25, [sp, #2840]
	ldr	x26, [x24, #24]
	ldur	x8, [x25, #-24]
	add	x19, sp, #2840
	str	x26, [x19, x8]
	add	x0, x19, #16
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
	add	x0, sp, #2840
	add	x1, x24, #8
	bl	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	add	x0, x19, #424
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
Ltmp23:
Lloh17:
	adrp	x1, l_.str.6@PAGE
Lloh18:
	add	x1, x1, l_.str.6@PAGEOFF
	add	x19, sp, #2840
	add	x0, sp, #2840
	mov	w2, #8                          ; =0x8
	bl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEC1EPKcj
Ltmp24:
; %bb.88:
	str	xzr, [sp, #2720]
	str	xzr, [sp, #2712]
	str	xzr, [sp, #2728]
	ldr	x8, [sp, #2840]
	ldur	x9, [x8, #-24]
Ltmp26:
	add	x8, sp, #24
	add	x0, x19, x9
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp27:
; %bb.89:
Ltmp28:
Lloh19:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh20:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #24
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp29:
; %bb.90:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp30:
	mov	w1, #10                         ; =0xa
	blr	x8
Ltmp31:
; %bb.91:
	mov	x21, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
Ltmp33:
	add	x0, sp, #2840
	add	x1, sp, #2712
	mov	x2, x21
	bl	__ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
Ltmp34:
; %bb.92:
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x8, x0, x8
	ldrb	w8, [x8, #32]
	mov	w9, #5                          ; =0x5
	tst	w8, w9
	b.ne	LBB0_118
; %bb.93:
	ldrsb	x22, [sp, #2735]
	add	x8, sp, #2712
	ldr	x20, [sp, #2712]
	ldr	x23, [sp, #2720]
	cmp	x22, #0
	csel	x27, x20, x8, lt
	cmp	w22, #0
	csel	x21, x23, x22, lt
	cmp	x21, #8
	b.lt	LBB0_118
; %bb.94:
	add	x19, x27, x21
	mov	x28, #25933                     ; =0x654d
	movk	x28, #21613, lsl #16
	movk	x28, #29807, lsl #32
	movk	x28, #27745, lsl #48
	mov	x8, x21
	mov	x0, x27
LBB0_95:                                ; =>This Inner Loop Header: Depth=1
	sub	x2, x8, #7
	mov	w1, #77                         ; =0x4d
	bl	_memchr
	cbz	x0, LBB0_118
; %bb.96:                               ;   in Loop: Header=BB0_95 Depth=1
	ldr	x8, [x0]
	cmp	x8, x28
	b.eq	LBB0_98
; %bb.97:                               ;   in Loop: Header=BB0_95 Depth=1
	add	x0, x0, #1
	sub	x8, x19, x0
	cmp	x8, #8
	b.ge	LBB0_95
	b	LBB0_118
LBB0_98:
	cmp	x0, x19
	b.eq	LBB0_118
; %bb.99:
	sub	x8, x0, x27
	cmn	x8, #1
	b.eq	LBB0_118
; %bb.100:
	mov	x0, x27
LBB0_101:                               ; =>This Inner Loop Header: Depth=1
	mov	w1, #58                         ; =0x3a
	mov	x2, x21
	bl	_memchr
	cbz	x0, LBB0_104
; %bb.102:                              ;   in Loop: Header=BB0_101 Depth=1
	ldrb	w8, [x0]
	cmp	w8, #58
	b.eq	LBB0_105
; %bb.103:                              ;   in Loop: Header=BB0_101 Depth=1
	add	x0, x0, #1
	sub	x21, x19, x0
	cmp	x21, #0
	b.gt	LBB0_101
LBB0_104:
	mov	x0, x19
LBB0_105:
	sub	x8, x0, x27
	add	x8, x8, #2
	cmp	x0, x19
	csinc	x19, x8, xzr, ne
	tbnz	w22, #31, LBB0_108
; %bb.106:
	cmp	x19, x22
	b.hi	LBB0_206
; %bb.107:
	add	x20, sp, #2712
	mov	x23, x22
	b	LBB0_109
LBB0_108:
	cmp	x23, x19
	b.lo	LBB0_206
LBB0_109:
	sub	x21, x23, x19
	mov	x8, #-9                         ; =0xfffffffffffffff7
	movk	x8, #32767, lsl #48
	cmp	x21, x8
	b.hi	LBB0_207
; %bb.110:
	cmp	x21, #23
	b.hs	LBB0_112
; %bb.111:
	strb	w21, [sp, #47]
	add	x22, sp, #24
	cmp	x23, x19
	b.ne	LBB0_114
	b	LBB0_115
LBB0_112:
	orr	x8, x21, #0x7
	cmp	x8, #23
	mov	w9, #25                         ; =0x19
	csinc	x23, x9, x8, eq
Ltmp36:
	mov	x0, x23
	bl	__Znwm
Ltmp37:
; %bb.113:
	mov	x22, x0
	orr	x8, x23, #0x8000000000000000
	stp	x21, x8, [sp, #32]
	str	x0, [sp, #24]
LBB0_114:
	add	x1, x20, x19
	mov	x0, x22
	mov	x2, x21
	bl	_memmove
LBB0_115:
	strb	wzr, [x22, x21]
	ldrsb	w8, [sp, #119]
	tbz	w8, #31, LBB0_117
; %bb.116:
	ldr	x0, [sp, #96]
	bl	__ZdlPv
LBB0_117:
	ldur	q0, [sp, #24]
	str	q0, [sp, #96]
	ldr	x8, [sp, #40]
	str	x8, [sp, #112]
LBB0_118:
	ldrsb	w8, [sp, #2735]
	tbz	w8, #31, LBB0_120
; %bb.119:
	ldr	x0, [sp, #2712]
	bl	__ZdlPv
LBB0_120:
	str	x25, [sp, #2840]
	ldur	x8, [x25, #-24]
	add	x19, sp, #2840
	str	x26, [x19, x8]
	add	x0, x19, #16
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
	add	x0, sp, #2840
	add	x1, x24, #8
	bl	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	add	x0, x19, #424
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
Ltmp43:
	add	x0, sp, #2840
	mov	w1, #256                        ; =0x100
	bl	_gethostname
Ltmp44:
	ldp	x25, x20, [sp, #8]              ; 16-byte Folded Reload
; %bb.121:
	cbnz	w0, LBB0_123
; %bb.122:
Ltmp45:
	add	x0, sp, #72
	add	x1, sp, #2840
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc
Ltmp46:
LBB0_123:
Ltmp47:
Lloh21:
	adrp	x0, l_.str.8@PAGE
Lloh22:
	add	x0, x0, l_.str.8@PAGEOFF
Lloh23:
	adrp	x1, l_.str.9@PAGE
Lloh24:
	add	x1, x1, l_.str.9@PAGEOFF
	bl	_popen
Ltmp48:
; %bb.124:
	mov	x21, x0
	cbz	x0, LBB0_143
; %bb.125:
	add	x0, sp, #2712
	mov	w1, #128                        ; =0x80
	mov	x2, x21
	bl	_fgets
	cbz	x0, LBB0_142
; %bb.126:
	add	x0, sp, #2712
	bl	_strlen
	mov	x8, #-9                         ; =0xfffffffffffffff7
	movk	x8, #32767, lsl #48
	cmp	x0, x8
	b.hi	LBB0_205
; %bb.127:
	mov	x22, x0
	cmp	x0, #23
	b.hs	LBB0_134
; %bb.128:
	strb	w22, [sp, #47]
	add	x23, sp, #24
	cbnz	x22, LBB0_136
; %bb.129:
	strb	wzr, [x23, x22]
	ldrsb	w8, [sp, #71]
	tbnz	w8, #31, LBB0_137
LBB0_130:
	ldr	x8, [sp, #40]
	str	x8, [sp, #64]
	ldur	q0, [sp, #24]
	str	q0, [sp, #48]
	ldrsb	x8, [sp, #71]
	tbnz	x8, #63, LBB0_138
LBB0_131:
	cbz	w8, LBB0_142
; %bb.132:
	add	x9, sp, #48
	add	x9, x9, x8
	ldurb	w9, [x9, #-1]
	cmp	w9, #10
	b.ne	LBB0_142
; %bb.133:
	sub	x9, x8, #1
	strb	w9, [sp, #71]
	add	x8, sp, #48
	b	LBB0_141
LBB0_134:
	orr	x8, x22, #0x7
	cmp	x8, #23
	mov	w9, #25                         ; =0x19
	csinc	x24, x9, x8, eq
Ltmp50:
	mov	x0, x24
	bl	__Znwm
Ltmp51:
; %bb.135:
	mov	x23, x0
	orr	x8, x24, #0x8000000000000000
	stp	x22, x8, [sp, #32]
	str	x0, [sp, #24]
LBB0_136:
	add	x1, sp, #2712
	mov	x0, x23
	mov	x2, x22
	bl	_memcpy
	strb	wzr, [x23, x22]
	ldrsb	w8, [sp, #71]
	tbz	w8, #31, LBB0_130
LBB0_137:
	ldr	x0, [sp, #48]
	bl	__ZdlPv
	ldr	x8, [sp, #40]
	str	x8, [sp, #64]
	ldur	q0, [sp, #24]
	str	q0, [sp, #48]
	ldrsb	x8, [sp, #71]
	tbz	x8, #63, LBB0_131
LBB0_138:
	ldr	x9, [sp, #56]
	cbz	x9, LBB0_142
; %bb.139:
	ldr	x8, [sp, #48]
	add	x10, x8, x9
	ldurb	w10, [x10, #-1]
	cmp	w10, #10
	b.ne	LBB0_142
; %bb.140:
	sub	x9, x9, #1
	str	x9, [sp, #56]
LBB0_141:
	strb	wzr, [x8, x9]
LBB0_142:
	mov	x0, x21
	bl	_pclose
LBB0_143:
Lloh25:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh26:
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
Ltmp55:
Lloh27:
	adrp	x1, l_.str.10@PAGE
Lloh28:
	add	x1, x1, l_.str.10@PAGEOFF
	mov	w2, #41                         ; =0x29
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp56:
; %bb.144:
Ltmp57:
Lloh29:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh30:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh31:
	adrp	x1, l_.str.11@PAGE
Lloh32:
	add	x1, x1, l_.str.11@PAGEOFF
	mov	w2, #18                         ; =0x12
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp58:
; %bb.145:
Ltmp59:
Lloh33:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh34:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh35:
	adrp	x1, l_.str.10@PAGE
Lloh36:
	add	x1, x1, l_.str.10@PAGEOFF
	mov	w2, #41                         ; =0x29
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp60:
; %bb.146:
Ltmp61:
Lloh37:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh38:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh39:
	adrp	x1, l_.str.12@PAGE
Lloh40:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #20                         ; =0x14
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp62:
; %bb.147:
Ltmp63:
Lloh41:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh42:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh43:
	adrp	x1, l_.str.13@PAGE
Lloh44:
	add	x1, x1, l_.str.13@PAGEOFF
	mov	w2, #12                         ; =0xc
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp64:
; %bb.148:
	ldrb	w8, [sp, #95]
	sxtb	w9, w8
	ldp	x10, x11, [sp, #72]
	cmp	w9, #0
	add	x9, sp, #72
	csel	x1, x10, x9, lt
	csel	x2, x11, x8, lt
Ltmp65:
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp66:
; %bb.149:
Ltmp67:
Lloh45:
	adrp	x1, l_.str.14@PAGE
Lloh46:
	add	x1, x1, l_.str.14@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp68:
; %bb.150:
Ltmp69:
Lloh47:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh48:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh49:
	adrp	x1, l_.str.15@PAGE
Lloh50:
	add	x1, x1, l_.str.15@PAGEOFF
	mov	w2, #6                          ; =0x6
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp70:
; %bb.151:
	ldrb	w8, [sp, #71]
	sxtb	w9, w8
	ldp	x10, x11, [sp, #48]
	cmp	w9, #0
	add	x9, sp, #48
	csel	x1, x10, x9, lt
	csel	x2, x11, x8, lt
Ltmp71:
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp72:
; %bb.152:
Ltmp73:
Lloh51:
	adrp	x1, l_.str.14@PAGE
Lloh52:
	add	x1, x1, l_.str.14@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp74:
; %bb.153:
Ltmp75:
Lloh53:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh54:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh55:
	adrp	x1, l_.str.16@PAGE
Lloh56:
	add	x1, x1, l_.str.16@PAGEOFF
	mov	w2, #13                         ; =0xd
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp76:
; %bb.154:
	ldrb	w8, [sp, #183]
	sxtb	w9, w8
	ldp	x10, x11, [sp, #160]
	cmp	w9, #0
	add	x9, sp, #160
	csel	x1, x10, x9, lt
	csel	x2, x11, x8, lt
Ltmp77:
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp78:
; %bb.155:
Ltmp79:
Lloh57:
	adrp	x1, l_.str.14@PAGE
Lloh58:
	add	x1, x1, l_.str.14@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp80:
; %bb.156:
Ltmp81:
Lloh59:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh60:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh61:
	adrp	x1, l_.str.17@PAGE
Lloh62:
	add	x1, x1, l_.str.17@PAGEOFF
	mov	w2, #11                         ; =0xb
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp82:
; %bb.157:
	ldrb	w8, [sp, #151]
	sxtb	w9, w8
	ldp	x10, x11, [sp, #128]
	cmp	w9, #0
	add	x9, sp, #128
	csel	x1, x10, x9, lt
	csel	x2, x11, x8, lt
Ltmp83:
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp84:
; %bb.158:
Ltmp85:
Lloh63:
	adrp	x1, l_.str.14@PAGE
Lloh64:
	add	x1, x1, l_.str.14@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp86:
; %bb.159:
Ltmp87:
Lloh65:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh66:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh67:
	adrp	x1, l_.str.18@PAGE
Lloh68:
	add	x1, x1, l_.str.18@PAGEOFF
	mov	w2, #10                         ; =0xa
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp88:
; %bb.160:
	ldrb	w8, [sp, #119]
	sxtb	w9, w8
	ldp	x10, x11, [sp, #96]
	cmp	w9, #0
	add	x9, sp, #96
	csel	x1, x10, x9, lt
	csel	x2, x11, x8, lt
Ltmp89:
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp90:
; %bb.161:
Ltmp91:
Lloh69:
	adrp	x1, l_.str.14@PAGE
Lloh70:
	add	x1, x1, l_.str.14@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp92:
; %bb.162:
Ltmp93:
Lloh71:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh72:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh73:
	adrp	x1, l_.str.19@PAGE
Lloh74:
	add	x1, x1, l_.str.19@PAGEOFF
	mov	w2, #42                         ; =0x2a
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp94:
; %bb.163:
Ltmp95:
Lloh75:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh76:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh77:
	adrp	x1, l_.str.20@PAGE
Lloh78:
	add	x1, x1, l_.str.20@PAGEOFF
	mov	w2, #19                         ; =0x13
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp96:
; %bb.164:
Ltmp97:
	mov	x1, x25
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
Ltmp98:
; %bb.165:
Ltmp99:
Lloh79:
	adrp	x1, l_.str.21@PAGE
Lloh80:
	add	x1, x1, l_.str.21@PAGEOFF
	mov	w2, #6                          ; =0x6
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp100:
; %bb.166:
Ltmp101:
	mov	x1, x20
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
Ltmp102:
; %bb.167:
Ltmp103:
Lloh81:
	adrp	x1, l_.str.14@PAGE
Lloh82:
	add	x1, x1, l_.str.14@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp104:
; %bb.168:
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x21, x0
	mov	x19, x20
LBB0_169:                               ; =>This Inner Loop Header: Depth=1
Ltmp106:
	add	x0, sp, #192
	add	x1, sp, #208
	add	x2, sp, #192
	bl	__ZNSt3__124uniform_int_distributionIxEclINS_23mersenne_twister_engineIyLm64ELm312ELm156ELm31ELy13043109905998158313ELm29ELy6148914691236517205ELm17ELy8202884508482404352ELm37ELy18444473444759240704ELm43ELy6364136223846793005EEEEExRT_RKNS1_10param_typeE
Ltmp107:
; %bb.170:                              ;   in Loop: Header=BB0_169 Depth=1
	sdiv	x8, x0, x25
	msub	x8, x8, x25, x0
	str	x8, [sp, #2712]
	ldr	x8, [sp, #2712]
	subs	x19, x19, #1
	b.ne	LBB0_169
; %bb.171:
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	sub	x8, x0, x21
	scvtf	d0, x8
	mov	x8, #225833675390976            ; =0xcd6500000000
	movk	x8, #16845, lsl #48
	fmov	d1, x8
	fdiv	d8, d0, d1
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x21, x0
	lsr	x19, x25, #1
LBB0_172:                               ; =>This Inner Loop Header: Depth=1
Ltmp109:
	add	x0, sp, #192
	add	x1, sp, #208
	add	x2, sp, #192
	bl	__ZNSt3__124uniform_int_distributionIxEclINS_23mersenne_twister_engineIyLm64ELm312ELm156ELm31ELy13043109905998158313ELm29ELy6148914691236517205ELm17ELy8202884508482404352ELm37ELy18444473444759240704ELm43ELy6364136223846793005EEEEExRT_RKNS1_10param_typeE
Ltmp110:
; %bb.173:                              ;   in Loop: Header=BB0_172 Depth=1
	sdiv	x8, x0, x25
	msub	x8, x8, x25, x0
	cmp	x8, x19
	csel	x9, x25, xzr, gt
	sub	x8, x8, x9
	str	x8, [sp, #2712]
	ldr	x8, [sp, #2712]
	subs	x20, x20, #1
	b.ne	LBB0_172
; %bb.174:
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x19, x0
Ltmp112:
Lloh83:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh84:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh85:
	adrp	x1, l_.str.22@PAGE
Lloh86:
	add	x1, x1, l_.str.22@PAGEOFF
	mov	w2, #27                         ; =0x1b
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp113:
; %bb.175:
Ltmp114:
Lloh87:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh88:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh89:
	adrp	x1, l_.str.23@PAGE
Lloh90:
	add	x1, x1, l_.str.23@PAGEOFF
	mov	w2, #11                         ; =0xb
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp115:
; %bb.176:
Ltmp116:
	fmov	d0, d8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp117:
; %bb.177:
Ltmp118:
Lloh91:
	adrp	x1, l_.str.24@PAGE
Lloh92:
	add	x1, x1, l_.str.24@PAGEOFF
	mov	w2, #3                          ; =0x3
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp119:
; %bb.178:
Ltmp120:
Lloh93:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh94:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh95:
	adrp	x1, l_.str.25@PAGE
Lloh96:
	add	x1, x1, l_.str.25@PAGEOFF
	mov	w2, #11                         ; =0xb
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp121:
; %bb.179:
Ltmp122:
	sub	x8, x19, x21
	scvtf	d0, x8
	mov	x8, #225833675390976            ; =0xcd6500000000
	movk	x8, #16845, lsl #48
	fmov	d1, x8
	fdiv	d9, d0, d1
	fmov	d0, d9
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp123:
; %bb.180:
Ltmp124:
Lloh97:
	adrp	x1, l_.str.24@PAGE
Lloh98:
	add	x1, x1, l_.str.24@PAGEOFF
	mov	w2, #3                          ; =0x3
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp125:
; %bb.181:
	fcmp	d9, #0.0
	b.le	LBB0_185
; %bb.182:
Ltmp126:
Lloh99:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh100:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh101:
	adrp	x1, l_.str.26@PAGE
Lloh102:
	add	x1, x1, l_.str.26@PAGEOFF
	mov	w2, #11                         ; =0xb
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp127:
; %bb.183:
	fdiv	d0, d8, d9
Ltmp128:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp129:
; %bb.184:
Ltmp130:
Lloh103:
	adrp	x1, l_.str.27@PAGE
Lloh104:
	add	x1, x1, l_.str.27@PAGEOFF
	mov	w2, #20                         ; =0x14
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp131:
LBB0_185:
	ldrsb	w8, [sp, #71]
	tbnz	w8, #31, LBB0_193
; %bb.186:
	ldrsb	w8, [sp, #95]
	tbnz	w8, #31, LBB0_194
LBB0_187:
	ldrsb	w8, [sp, #119]
	tbnz	w8, #31, LBB0_195
LBB0_188:
	ldrsb	w8, [sp, #151]
	tbnz	w8, #31, LBB0_196
LBB0_189:
	ldrsb	w8, [sp, #183]
	tbnz	w8, #31, LBB0_197
LBB0_190:
	mov	w0, #0                          ; =0x0
LBB0_191:
	ldur	x8, [x29, #-120]
Lloh105:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh106:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh107:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_202
; %bb.192:
	add	sp, sp, #3440
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #16]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp], #112              ; 16-byte Folded Reload
	ret
LBB0_193:
	ldr	x0, [sp, #48]
	bl	__ZdlPv
	ldrsb	w8, [sp, #95]
	tbz	w8, #31, LBB0_187
LBB0_194:
	ldr	x0, [sp, #72]
	bl	__ZdlPv
	ldrsb	w8, [sp, #119]
	tbz	w8, #31, LBB0_188
LBB0_195:
	ldr	x0, [sp, #96]
	bl	__ZdlPv
	ldrsb	w8, [sp, #151]
	tbz	w8, #31, LBB0_189
LBB0_196:
	ldr	x0, [sp, #128]
	bl	__ZdlPv
	ldrsb	w8, [sp, #183]
	tbz	w8, #31, LBB0_190
LBB0_197:
	ldr	x0, [sp, #160]
	bl	__ZdlPv
	b	LBB0_190
LBB0_198:
Ltmp138:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_out_of_rangeB8ne200100Ev
Ltmp139:
	b	LBB0_208
LBB0_199:
Ltmp136:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev
Ltmp137:
	b	LBB0_208
LBB0_200:
Ltmp146:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_out_of_rangeB8ne200100Ev
Ltmp147:
	b	LBB0_208
LBB0_201:
Ltmp144:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev
Ltmp145:
	b	LBB0_208
LBB0_202:
	bl	___stack_chk_fail
LBB0_203:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev
LBB0_204:
Ltmp8:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev
Ltmp9:
	b	LBB0_208
LBB0_205:
Ltmp52:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev
Ltmp53:
	b	LBB0_208
LBB0_206:
Ltmp40:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_out_of_rangeB8ne200100Ev
Ltmp41:
	b	LBB0_208
LBB0_207:
Ltmp38:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev
Ltmp39:
LBB0_208:
	brk	#0x1
LBB0_209:
Ltmp42:
	b	LBB0_233
LBB0_210:
Ltmp7:
	b	LBB0_216
LBB0_211:
Ltmp54:
	b	LBB0_229
LBB0_212:
Ltmp49:
	b	LBB0_229
LBB0_213:
Ltmp25:
	b	LBB0_229
LBB0_214:
Ltmp12:
	b	LBB0_229
LBB0_215:
Ltmp2:
LBB0_216:
	mov	x19, x0
	ldrsb	w8, [sp, #231]
	tbz	w8, #31, LBB0_247
; %bb.217:
	ldr	x0, [sp, #208]
	bl	__ZdlPv
	mov	x0, x19
	bl	__Unwind_Resume
LBB0_218:
Ltmp143:
	b	LBB0_233
LBB0_219:
Ltmp135:
	b	LBB0_233
LBB0_220:
Ltmp35:
	b	LBB0_233
LBB0_221:
Ltmp32:
	b	LBB0_231
LBB0_222:
Ltmp155:
	bl	__Unwind_Resume
LBB0_223:
Ltmp148:
	b	LBB0_233
LBB0_224:
Ltmp140:
	b	LBB0_233
LBB0_225:
Ltmp132:
	b	LBB0_229
LBB0_226:
Ltmp105:
	b	LBB0_229
LBB0_227:
Ltmp111:
	b	LBB0_229
LBB0_228:
Ltmp108:
LBB0_229:
	mov	x19, x0
	b	LBB0_237
LBB0_230:
Ltmp19:
LBB0_231:
	mov	x19, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	b	LBB0_234
LBB0_232:
Ltmp22:
LBB0_233:
	mov	x19, x0
LBB0_234:
	ldrsb	w8, [sp, #2735]
	tbz	w8, #31, LBB0_236
; %bb.235:
	ldr	x0, [sp, #2712]
	bl	__ZdlPv
LBB0_236:
	add	x0, sp, #2840
	bl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
LBB0_237:
	ldrsb	w8, [sp, #71]
	tbz	w8, #31, LBB0_243
; %bb.238:
	ldr	x0, [sp, #48]
	bl	__ZdlPv
	ldrsb	w8, [sp, #95]
	tbnz	w8, #31, LBB0_244
LBB0_239:
	ldrsb	w8, [sp, #119]
	tbz	w8, #31, LBB0_245
LBB0_240:
	ldr	x0, [sp, #96]
	bl	__ZdlPv
	ldrsb	w8, [sp, #151]
	tbnz	w8, #31, LBB0_246
LBB0_241:
	ldrsb	w8, [sp, #183]
	tbz	w8, #31, LBB0_247
LBB0_242:
	ldr	x0, [sp, #160]
	bl	__ZdlPv
	mov	x0, x19
	bl	__Unwind_Resume
LBB0_243:
	ldrsb	w8, [sp, #95]
	tbz	w8, #31, LBB0_239
LBB0_244:
	ldr	x0, [sp, #72]
	bl	__ZdlPv
	ldrsb	w8, [sp, #119]
	tbnz	w8, #31, LBB0_240
LBB0_245:
	ldrsb	w8, [sp, #151]
	tbz	w8, #31, LBB0_241
LBB0_246:
	ldr	x0, [sp, #128]
	bl	__ZdlPv
	ldrsb	w8, [sp, #183]
	tbnz	w8, #31, LBB0_242
LBB0_247:
	mov	x0, x19
	bl	__Unwind_Resume
	.loh AdrpLdrGotLdr	Lloh0, Lloh1, Lloh2
	.loh AdrpAdd	Lloh5, Lloh6
	.loh AdrpLdr	Lloh3, Lloh4
	.loh AdrpLdrGot	Lloh7, Lloh8
	.loh AdrpAdd	Lloh11, Lloh12
	.loh AdrpLdrGot	Lloh9, Lloh10
	.loh AdrpAdd	Lloh13, Lloh14
	.loh AdrpAdd	Lloh17, Lloh18
	.loh AdrpLdrGot	Lloh15, Lloh16
	.loh AdrpLdrGot	Lloh19, Lloh20
	.loh AdrpAdd	Lloh23, Lloh24
	.loh AdrpAdd	Lloh21, Lloh22
	.loh AdrpAdd	Lloh27, Lloh28
	.loh AdrpLdrGot	Lloh25, Lloh26
	.loh AdrpAdd	Lloh31, Lloh32
	.loh AdrpLdrGot	Lloh29, Lloh30
	.loh AdrpAdd	Lloh35, Lloh36
	.loh AdrpLdrGot	Lloh33, Lloh34
	.loh AdrpAdd	Lloh39, Lloh40
	.loh AdrpLdrGot	Lloh37, Lloh38
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
	.loh AdrpAdd	Lloh69, Lloh70
	.loh AdrpAdd	Lloh73, Lloh74
	.loh AdrpLdrGot	Lloh71, Lloh72
	.loh AdrpAdd	Lloh77, Lloh78
	.loh AdrpLdrGot	Lloh75, Lloh76
	.loh AdrpAdd	Lloh79, Lloh80
	.loh AdrpAdd	Lloh81, Lloh82
	.loh AdrpAdd	Lloh85, Lloh86
	.loh AdrpLdrGot	Lloh83, Lloh84
	.loh AdrpAdd	Lloh89, Lloh90
	.loh AdrpLdrGot	Lloh87, Lloh88
	.loh AdrpAdd	Lloh91, Lloh92
	.loh AdrpAdd	Lloh95, Lloh96
	.loh AdrpLdrGot	Lloh93, Lloh94
	.loh AdrpAdd	Lloh97, Lloh98
	.loh AdrpAdd	Lloh101, Lloh102
	.loh AdrpLdrGot	Lloh99, Lloh100
	.loh AdrpAdd	Lloh103, Lloh104
	.loh AdrpLdrGotLdr	Lloh105, Lloh106, Lloh107
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
	.uleb128 Ltmp155-Lfunc_begin0           ;     jumps to Ltmp155
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp4-Lfunc_begin0             ; >> Call Site 4 <<
	.uleb128 Ltmp5-Ltmp4                    ;   Call between Ltmp4 and Ltmp5
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp5-Lfunc_begin0             ; >> Call Site 5 <<
	.uleb128 Ltmp6-Ltmp5                    ;   Call between Ltmp5 and Ltmp6
	.uleb128 Ltmp7-Lfunc_begin0             ;     jumps to Ltmp7
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp10-Lfunc_begin0            ; >> Call Site 6 <<
	.uleb128 Ltmp11-Ltmp10                  ;   Call between Ltmp10 and Ltmp11
	.uleb128 Ltmp12-Lfunc_begin0            ;     jumps to Ltmp12
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp13-Lfunc_begin0            ; >> Call Site 7 <<
	.uleb128 Ltmp14-Ltmp13                  ;   Call between Ltmp13 and Ltmp14
	.uleb128 Ltmp22-Lfunc_begin0            ;     jumps to Ltmp22
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp15-Lfunc_begin0            ; >> Call Site 8 <<
	.uleb128 Ltmp18-Ltmp15                  ;   Call between Ltmp15 and Ltmp18
	.uleb128 Ltmp19-Lfunc_begin0            ;     jumps to Ltmp19
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp20-Lfunc_begin0            ; >> Call Site 9 <<
	.uleb128 Ltmp21-Ltmp20                  ;   Call between Ltmp20 and Ltmp21
	.uleb128 Ltmp22-Lfunc_begin0            ;     jumps to Ltmp22
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp133-Lfunc_begin0           ; >> Call Site 10 <<
	.uleb128 Ltmp134-Ltmp133                ;   Call between Ltmp133 and Ltmp134
	.uleb128 Ltmp135-Lfunc_begin0           ;     jumps to Ltmp135
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp134-Lfunc_begin0           ; >> Call Site 11 <<
	.uleb128 Ltmp141-Ltmp134                ;   Call between Ltmp134 and Ltmp141
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp141-Lfunc_begin0           ; >> Call Site 12 <<
	.uleb128 Ltmp142-Ltmp141                ;   Call between Ltmp141 and Ltmp142
	.uleb128 Ltmp143-Lfunc_begin0           ;     jumps to Ltmp143
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp142-Lfunc_begin0           ; >> Call Site 13 <<
	.uleb128 Ltmp149-Ltmp142                ;   Call between Ltmp142 and Ltmp149
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp149-Lfunc_begin0           ; >> Call Site 14 <<
	.uleb128 Ltmp154-Ltmp149                ;   Call between Ltmp149 and Ltmp154
	.uleb128 Ltmp155-Lfunc_begin0           ;     jumps to Ltmp155
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp23-Lfunc_begin0            ; >> Call Site 15 <<
	.uleb128 Ltmp24-Ltmp23                  ;   Call between Ltmp23 and Ltmp24
	.uleb128 Ltmp25-Lfunc_begin0            ;     jumps to Ltmp25
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp26-Lfunc_begin0            ; >> Call Site 16 <<
	.uleb128 Ltmp27-Ltmp26                  ;   Call between Ltmp26 and Ltmp27
	.uleb128 Ltmp35-Lfunc_begin0            ;     jumps to Ltmp35
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp28-Lfunc_begin0            ; >> Call Site 17 <<
	.uleb128 Ltmp31-Ltmp28                  ;   Call between Ltmp28 and Ltmp31
	.uleb128 Ltmp32-Lfunc_begin0            ;     jumps to Ltmp32
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp33-Lfunc_begin0            ; >> Call Site 18 <<
	.uleb128 Ltmp34-Ltmp33                  ;   Call between Ltmp33 and Ltmp34
	.uleb128 Ltmp35-Lfunc_begin0            ;     jumps to Ltmp35
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp36-Lfunc_begin0            ; >> Call Site 19 <<
	.uleb128 Ltmp37-Ltmp36                  ;   Call between Ltmp36 and Ltmp37
	.uleb128 Ltmp42-Lfunc_begin0            ;     jumps to Ltmp42
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp37-Lfunc_begin0            ; >> Call Site 20 <<
	.uleb128 Ltmp43-Ltmp37                  ;   Call between Ltmp37 and Ltmp43
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp43-Lfunc_begin0            ; >> Call Site 21 <<
	.uleb128 Ltmp46-Ltmp43                  ;   Call between Ltmp43 and Ltmp46
	.uleb128 Ltmp105-Lfunc_begin0           ;     jumps to Ltmp105
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp47-Lfunc_begin0            ; >> Call Site 22 <<
	.uleb128 Ltmp48-Ltmp47                  ;   Call between Ltmp47 and Ltmp48
	.uleb128 Ltmp49-Lfunc_begin0            ;     jumps to Ltmp49
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp50-Lfunc_begin0            ; >> Call Site 23 <<
	.uleb128 Ltmp51-Ltmp50                  ;   Call between Ltmp50 and Ltmp51
	.uleb128 Ltmp54-Lfunc_begin0            ;     jumps to Ltmp54
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp51-Lfunc_begin0            ; >> Call Site 24 <<
	.uleb128 Ltmp55-Ltmp51                  ;   Call between Ltmp51 and Ltmp55
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp55-Lfunc_begin0            ; >> Call Site 25 <<
	.uleb128 Ltmp104-Ltmp55                 ;   Call between Ltmp55 and Ltmp104
	.uleb128 Ltmp105-Lfunc_begin0           ;     jumps to Ltmp105
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp106-Lfunc_begin0           ; >> Call Site 26 <<
	.uleb128 Ltmp107-Ltmp106                ;   Call between Ltmp106 and Ltmp107
	.uleb128 Ltmp108-Lfunc_begin0           ;     jumps to Ltmp108
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp109-Lfunc_begin0           ; >> Call Site 27 <<
	.uleb128 Ltmp110-Ltmp109                ;   Call between Ltmp109 and Ltmp110
	.uleb128 Ltmp111-Lfunc_begin0           ;     jumps to Ltmp111
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp112-Lfunc_begin0           ; >> Call Site 28 <<
	.uleb128 Ltmp131-Ltmp112                ;   Call between Ltmp112 and Ltmp131
	.uleb128 Ltmp132-Lfunc_begin0           ;     jumps to Ltmp132
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp138-Lfunc_begin0           ; >> Call Site 29 <<
	.uleb128 Ltmp137-Ltmp138                ;   Call between Ltmp138 and Ltmp137
	.uleb128 Ltmp140-Lfunc_begin0           ;     jumps to Ltmp140
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp146-Lfunc_begin0           ; >> Call Site 30 <<
	.uleb128 Ltmp145-Ltmp146                ;   Call between Ltmp146 and Ltmp145
	.uleb128 Ltmp148-Lfunc_begin0           ;     jumps to Ltmp148
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp145-Lfunc_begin0           ; >> Call Site 31 <<
	.uleb128 Ltmp8-Ltmp145                  ;   Call between Ltmp145 and Ltmp8
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp8-Lfunc_begin0             ; >> Call Site 32 <<
	.uleb128 Ltmp9-Ltmp8                    ;   Call between Ltmp8 and Ltmp9
	.uleb128 Ltmp155-Lfunc_begin0           ;     jumps to Ltmp155
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp52-Lfunc_begin0            ; >> Call Site 33 <<
	.uleb128 Ltmp53-Ltmp52                  ;   Call between Ltmp52 and Ltmp53
	.uleb128 Ltmp54-Lfunc_begin0            ;     jumps to Ltmp54
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp40-Lfunc_begin0            ; >> Call Site 34 <<
	.uleb128 Ltmp39-Ltmp40                  ;   Call between Ltmp40 and Ltmp39
	.uleb128 Ltmp42-Lfunc_begin0            ;     jumps to Ltmp42
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp39-Lfunc_begin0            ; >> Call Site 35 <<
	.uleb128 Lfunc_end0-Ltmp39              ;   Call between Ltmp39 and Lfunc_end0
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
Lloh108:
	adrp	x25, __ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh109:
	ldr	x25, [x25, __ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	add	x24, x25, #64
	str	x24, [x0, #424]
Lloh110:
	adrp	x23, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh111:
	ldr	x23, [x23, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	ldp	x8, x9, [x23, #8]
	str	x8, [x0]
	ldur	x8, [x8, #-24]
	str	x9, [x0, x8]
	str	xzr, [x0, #8]
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x22, x0, x8
Ltmp156:
	add	x1, x0, #16
	mov	x0, x22
	bl	__ZNSt3__18ios_base4initEPv
Ltmp157:
; %bb.1:
	str	xzr, [x22, #136]
	mov	w8, #-1                         ; =0xffffffff
	str	w8, [x22, #144]
	add	x8, x25, #24
	str	x8, [x19]
	str	x24, [x19, #424]
Ltmp159:
	add	x0, x19, #16
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC1Ev
Ltmp160:
; %bb.2:
Ltmp162:
	add	x0, x19, #16
	orr	w2, w21, #0x8
	mov	x1, x20
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4openEPKcj
Ltmp163:
; %bb.3:
	cbnz	x0, LBB1_5
; %bb.4:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
	ldr	w8, [x0, #32]
Ltmp164:
	orr	w1, w8, #0x4
	bl	__ZNSt3__18ios_base5clearEj
Ltmp165:
LBB1_5:
	mov	x0, x19
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp], #80             ; 16-byte Folded Reload
	ret
LBB1_6:
Ltmp161:
	mov	x20, x0
	b	LBB1_9
LBB1_7:
Ltmp158:
	mov	x20, x0
	add	x0, x19, #424
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	mov	x0, x20
	bl	__Unwind_Resume
LBB1_8:
Ltmp166:
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
	.loh AdrpLdrGot	Lloh110, Lloh111
	.loh AdrpLdrGot	Lloh108, Lloh109
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
	.uleb128 Ltmp156-Lfunc_begin1           ; >> Call Site 1 <<
	.uleb128 Ltmp157-Ltmp156                ;   Call between Ltmp156 and Ltmp157
	.uleb128 Ltmp158-Lfunc_begin1           ;     jumps to Ltmp158
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp159-Lfunc_begin1           ; >> Call Site 2 <<
	.uleb128 Ltmp160-Ltmp159                ;   Call between Ltmp159 and Ltmp160
	.uleb128 Ltmp161-Lfunc_begin1           ;     jumps to Ltmp161
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp162-Lfunc_begin1           ; >> Call Site 3 <<
	.uleb128 Ltmp165-Ltmp162                ;   Call between Ltmp162 and Ltmp165
	.uleb128 Ltmp166-Lfunc_begin1           ;     jumps to Ltmp166
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp165-Lfunc_begin1           ; >> Call Site 4 <<
	.uleb128 Lfunc_end1-Ltmp165             ;   Call between Ltmp165 and Lfunc_end1
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
Lloh112:
	adrp	x20, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh113:
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
	.loh AdrpLdrGot	Lloh112, Lloh113
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
Lloh114:
	adrp	x0, l_.str.28@PAGE
Lloh115:
	add	x0, x0, l_.str.28@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB8ne200100EPKc
	.loh AdrpAdd	Lloh114, Lloh115
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
Ltmp167:
	mov	x1, x20
	bl	__ZNSt12length_errorC1B8ne200100EPKc
Ltmp168:
; %bb.1:
Lloh116:
	adrp	x1, __ZTISt12length_error@GOTPAGE
Lloh117:
	ldr	x1, [x1, __ZTISt12length_error@GOTPAGEOFF]
Lloh118:
	adrp	x2, __ZNSt12length_errorD1Ev@GOTPAGE
Lloh119:
	ldr	x2, [x2, __ZNSt12length_errorD1Ev@GOTPAGEOFF]
	mov	x0, x19
	bl	___cxa_throw
LBB4_2:
Ltmp169:
	mov	x20, x0
	mov	x0, x19
	bl	___cxa_free_exception
	mov	x0, x20
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh118, Lloh119
	.loh AdrpLdrGot	Lloh116, Lloh117
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
	.uleb128 Ltmp167-Lfunc_begin2           ;   Call between Lfunc_begin2 and Ltmp167
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp167-Lfunc_begin2           ; >> Call Site 2 <<
	.uleb128 Ltmp168-Ltmp167                ;   Call between Ltmp167 and Ltmp168
	.uleb128 Ltmp169-Lfunc_begin2           ;     jumps to Ltmp169
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp168-Lfunc_begin2           ; >> Call Site 3 <<
	.uleb128 Lfunc_end2-Ltmp168             ;   Call between Ltmp168 and Lfunc_end2
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
Lloh120:
	adrp	x8, __ZTVSt12length_error@GOTPAGE
Lloh121:
	ldr	x8, [x8, __ZTVSt12length_error@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGot	Lloh120, Lloh121
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
Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception3
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
Ltmp170:
	add	x0, sp, #8
	mov	x1, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp171:
; %bb.1:
	ldrb	w8, [sp, #8]
	cmp	w8, #1
	b.ne	LBB7_10
; %bb.2:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x4, x19, x8
	ldr	x22, [x4, #40]
	ldr	w24, [x4, #8]
	ldr	w23, [x4, #144]
	cmn	w23, #1
	b.ne	LBB7_7
; %bb.3:
Ltmp173:
	add	x8, sp, #24
	mov	x25, x4
	mov	x0, x4
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp174:
; %bb.4:
Ltmp175:
Lloh122:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh123:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #24
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp176:
; %bb.5:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp177:
	mov	w1, #32                         ; =0x20
	blr	x8
Ltmp178:
; %bb.6:
	mov	x23, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	mov	x4, x25
	str	w23, [x25, #144]
LBB7_7:
	mov	w8, #176                        ; =0xb0
	and	w8, w24, w8
	add	x3, x20, x21
	cmp	w8, #32
	csel	x2, x3, x20, eq
Ltmp180:
	sxtb	w5, w23
	mov	x0, x22
	mov	x1, x20
	bl	__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp181:
; %bb.8:
	cbnz	x0, LBB7_10
; %bb.9:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
	ldr	w8, [x0, #32]
	mov	w9, #5                          ; =0x5
Ltmp183:
	orr	w1, w8, w9
	bl	__ZNSt3__18ios_base5clearEj
Ltmp184:
LBB7_10:
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
LBB7_11:
	mov	x0, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB7_12:
Ltmp185:
	b	LBB7_15
LBB7_13:
Ltmp179:
	mov	x20, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	b	LBB7_16
LBB7_14:
Ltmp182:
LBB7_15:
	mov	x20, x0
LBB7_16:
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB7_18
LBB7_17:
Ltmp172:
	mov	x20, x0
LBB7_18:
	mov	x0, x20
	bl	___cxa_begin_catch
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
Ltmp186:
	add	x0, x19, x8
	bl	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp187:
; %bb.19:
	bl	___cxa_end_catch
	b	LBB7_11
LBB7_20:
Ltmp188:
	mov	x19, x0
Ltmp189:
	bl	___cxa_end_catch
Ltmp190:
; %bb.21:
	mov	x0, x19
	bl	__Unwind_Resume
LBB7_22:
Ltmp191:
	bl	___clang_call_terminate
	.loh AdrpLdrGot	Lloh122, Lloh123
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table7:
Lexception3:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase0-Lttbaseref0
Lttbaseref0:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end3-Lcst_begin3
Lcst_begin3:
	.uleb128 Ltmp170-Lfunc_begin3           ; >> Call Site 1 <<
	.uleb128 Ltmp171-Ltmp170                ;   Call between Ltmp170 and Ltmp171
	.uleb128 Ltmp172-Lfunc_begin3           ;     jumps to Ltmp172
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp173-Lfunc_begin3           ; >> Call Site 2 <<
	.uleb128 Ltmp174-Ltmp173                ;   Call between Ltmp173 and Ltmp174
	.uleb128 Ltmp182-Lfunc_begin3           ;     jumps to Ltmp182
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp175-Lfunc_begin3           ; >> Call Site 3 <<
	.uleb128 Ltmp178-Ltmp175                ;   Call between Ltmp175 and Ltmp178
	.uleb128 Ltmp179-Lfunc_begin3           ;     jumps to Ltmp179
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp180-Lfunc_begin3           ; >> Call Site 4 <<
	.uleb128 Ltmp181-Ltmp180                ;   Call between Ltmp180 and Ltmp181
	.uleb128 Ltmp182-Lfunc_begin3           ;     jumps to Ltmp182
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp183-Lfunc_begin3           ; >> Call Site 5 <<
	.uleb128 Ltmp184-Ltmp183                ;   Call between Ltmp183 and Ltmp184
	.uleb128 Ltmp185-Lfunc_begin3           ;     jumps to Ltmp185
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp184-Lfunc_begin3           ; >> Call Site 6 <<
	.uleb128 Ltmp186-Ltmp184                ;   Call between Ltmp184 and Ltmp186
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp186-Lfunc_begin3           ; >> Call Site 7 <<
	.uleb128 Ltmp187-Ltmp186                ;   Call between Ltmp186 and Ltmp187
	.uleb128 Ltmp188-Lfunc_begin3           ;     jumps to Ltmp188
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp187-Lfunc_begin3           ; >> Call Site 8 <<
	.uleb128 Ltmp189-Ltmp187                ;   Call between Ltmp187 and Ltmp189
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp189-Lfunc_begin3           ; >> Call Site 9 <<
	.uleb128 Ltmp190-Ltmp189                ;   Call between Ltmp189 and Ltmp190
	.uleb128 Ltmp191-Lfunc_begin3           ;     jumps to Ltmp191
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp190-Lfunc_begin3           ; >> Call Site 10 <<
	.uleb128 Lfunc_end3-Ltmp190             ;   Call between Ltmp190 and Lfunc_end3
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
	.private_extern	__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ ; -- Begin function _ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.globl	__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.weak_def_can_be_hidden	__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.p2align	2
__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_: ; @_ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
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
	mov	x19, x0
	cbz	x0, LBB8_16
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
	b.lt	LBB8_3
; %bb.2:
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
	mov	x0, x19
	mov	x2, x25
	blr	x8
	cmp	x0, x25
	b.ne	LBB8_15
LBB8_3:
	cmp	x23, #1
	b.lt	LBB8_12
; %bb.4:
	mov	x8, #9223372036854775800        ; =0x7ffffffffffffff8
	cmp	x23, x8
	b.hs	LBB8_17
; %bb.5:
	cmp	x23, #23
	b.hs	LBB8_7
; %bb.6:
	strb	w23, [sp, #31]
	add	x25, sp, #8
	b	LBB8_8
LBB8_7:
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
LBB8_8:
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
Ltmp192:
	mov	x0, x19
	mov	x2, x23
	blr	x8
Ltmp193:
; %bb.9:
	ldrsb	w8, [sp, #31]
	tbnz	w8, #31, LBB8_11
; %bb.10:
	cmp	x0, x23
	b.ne	LBB8_15
	b	LBB8_12
LBB8_11:
	ldr	x8, [sp, #8]
	mov	x24, x0
	mov	x0, x8
	bl	__ZdlPv
	cmp	x24, x23
	b.ne	LBB8_15
LBB8_12:
	sub	x22, x22, x21
	cmp	x22, #1
	b.lt	LBB8_14
; %bb.13:
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
	mov	x0, x19
	mov	x1, x21
	mov	x2, x22
	blr	x8
	cmp	x0, x22
	b.ne	LBB8_15
LBB8_14:
	str	xzr, [x20, #24]
	b	LBB8_16
LBB8_15:
	mov	x19, #0                         ; =0x0
LBB8_16:
	mov	x0, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB8_17:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev
LBB8_18:
Ltmp194:
	mov	x19, x0
	ldrsb	w8, [sp, #31]
	tbz	w8, #31, LBB8_20
; %bb.19:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
LBB8_20:
	mov	x0, x19
	bl	__Unwind_Resume
Lfunc_end4:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table8:
Lexception4:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end4-Lcst_begin4
Lcst_begin4:
	.uleb128 Lfunc_begin4-Lfunc_begin4      ; >> Call Site 1 <<
	.uleb128 Ltmp192-Lfunc_begin4           ;   Call between Lfunc_begin4 and Ltmp192
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp192-Lfunc_begin4           ; >> Call Site 2 <<
	.uleb128 Ltmp193-Ltmp192                ;   Call between Ltmp192 and Ltmp193
	.uleb128 Ltmp194-Lfunc_begin4           ;     jumps to Ltmp194
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp193-Lfunc_begin4           ; >> Call Site 3 <<
	.uleb128 Lfunc_end4-Ltmp193             ;   Call between Ltmp193 and Lfunc_end4
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end4:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_ ; -- Begin function _ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
	.globl	__ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
	.weak_def_can_be_hidden	__ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
	.p2align	2
__ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_: ; @_ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception5
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
	b.ne	LBB9_17
; %bb.1:
	ldrsb	w8, [x21, #23]
	tbnz	w8, #31, LBB9_3
; %bb.2:
	strb	wzr, [x21]
	strb	wzr, [x21, #23]
	b	LBB9_4
LBB9_3:
	ldr	x8, [x21]
	strb	wzr, [x8]
	str	xzr, [x21, #8]
LBB9_4:
	mov	x22, #0                         ; =0x0
	add	x23, x19, #40
	mov	x24, #-9                        ; =0xfffffffffffffff7
	movk	x24, #32767, lsl #48
LBB9_5:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	ldr	x0, [x23, x8]
	ldp	x8, x9, [x0, #24]
	cmp	x8, x9
	b.eq	LBB9_7
; %bb.6:                                ;   in Loop: Header=BB9_5 Depth=1
	add	x9, x8, #1
	str	x9, [x0, #24]
	ldrb	w0, [x8]
	b	LBB9_9
LBB9_7:                                 ;   in Loop: Header=BB9_5 Depth=1
	ldr	x8, [x0]
	ldr	x8, [x8, #80]
Ltmp195:
	blr	x8
Ltmp196:
; %bb.8:                                ;   in Loop: Header=BB9_5 Depth=1
	cmn	w0, #1
	b.eq	LBB9_15
LBB9_9:                                 ;   in Loop: Header=BB9_5 Depth=1
	and	w8, w0, #0xff
	cmp	w8, w20, uxtb
	b.eq	LBB9_14
; %bb.10:                               ;   in Loop: Header=BB9_5 Depth=1
Ltmp198:
	sxtb	w1, w0
	mov	x0, x21
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc
Ltmp199:
; %bb.11:                               ;   in Loop: Header=BB9_5 Depth=1
	ldrsb	w8, [x21, #23]
	sub	x22, x22, #1
	tbz	w8, #31, LBB9_5
; %bb.12:                               ;   in Loop: Header=BB9_5 Depth=1
	ldr	x8, [x21, #8]
	cmp	x8, x24
	b.ne	LBB9_5
; %bb.13:
	mov	w8, #4                          ; =0x4
	b	LBB9_16
LBB9_14:
	mov	w8, #0                          ; =0x0
	b	LBB9_16
LBB9_15:
	cmp	x22, #0
	mov	w8, #2                          ; =0x2
	mov	w9, #6                          ; =0x6
	csel	w8, w9, w8, eq
LBB9_16:
	ldr	x9, [x19]
	ldur	x9, [x9, #-24]
	add	x0, x19, x9
	ldr	w9, [x0, #32]
	orr	w1, w9, w8
	bl	__ZNSt3__18ios_base5clearEj
LBB9_17:
	mov	x0, x19
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB9_18:
Ltmp197:
	b	LBB9_20
LBB9_19:
Ltmp200:
LBB9_20:
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
	tbnz	w8, #0, LBB9_22
; %bb.21:
	bl	___cxa_end_catch
	mov	w8, #1                          ; =0x1
	b	LBB9_16
LBB9_22:
Ltmp201:
	bl	___cxa_rethrow
Ltmp202:
; %bb.23:
	brk	#0x1
LBB9_24:
Ltmp203:
	mov	x19, x0
Ltmp204:
	bl	___cxa_end_catch
Ltmp205:
; %bb.25:
	mov	x0, x19
	bl	__Unwind_Resume
LBB9_26:
Ltmp206:
	bl	___clang_call_terminate
Lfunc_end5:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table9:
Lexception5:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase1-Lttbaseref1
Lttbaseref1:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end5-Lcst_begin5
Lcst_begin5:
	.uleb128 Lfunc_begin5-Lfunc_begin5      ; >> Call Site 1 <<
	.uleb128 Ltmp195-Lfunc_begin5           ;   Call between Lfunc_begin5 and Ltmp195
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp195-Lfunc_begin5           ; >> Call Site 2 <<
	.uleb128 Ltmp196-Ltmp195                ;   Call between Ltmp195 and Ltmp196
	.uleb128 Ltmp197-Lfunc_begin5           ;     jumps to Ltmp197
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp198-Lfunc_begin5           ; >> Call Site 3 <<
	.uleb128 Ltmp199-Ltmp198                ;   Call between Ltmp198 and Ltmp199
	.uleb128 Ltmp200-Lfunc_begin5           ;     jumps to Ltmp200
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp199-Lfunc_begin5           ; >> Call Site 4 <<
	.uleb128 Ltmp201-Ltmp199                ;   Call between Ltmp199 and Ltmp201
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp201-Lfunc_begin5           ; >> Call Site 5 <<
	.uleb128 Ltmp202-Ltmp201                ;   Call between Ltmp201 and Ltmp202
	.uleb128 Ltmp203-Lfunc_begin5           ;     jumps to Ltmp203
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp204-Lfunc_begin5           ; >> Call Site 6 <<
	.uleb128 Ltmp205-Ltmp204                ;   Call between Ltmp204 and Ltmp205
	.uleb128 Ltmp206-Lfunc_begin5           ;     jumps to Ltmp206
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp205-Lfunc_begin5           ; >> Call Site 7 <<
	.uleb128 Lfunc_end5-Ltmp205             ;   Call between Ltmp205 and Lfunc_end5
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
Lloh124:
	adrp	x0, l_.str.28@PAGE
Lloh125:
	add	x0, x0, l_.str.28@PAGEOFF
	bl	__ZNSt3__120__throw_out_of_rangeB8ne200100EPKc
	.loh AdrpAdd	Lloh124, Lloh125
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__120__throw_out_of_rangeB8ne200100EPKc ; -- Begin function _ZNSt3__120__throw_out_of_rangeB8ne200100EPKc
	.globl	__ZNSt3__120__throw_out_of_rangeB8ne200100EPKc
	.weak_def_can_be_hidden	__ZNSt3__120__throw_out_of_rangeB8ne200100EPKc
	.p2align	2
__ZNSt3__120__throw_out_of_rangeB8ne200100EPKc: ; @_ZNSt3__120__throw_out_of_rangeB8ne200100EPKc
Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception6
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
Ltmp207:
	mov	x1, x20
	bl	__ZNSt12out_of_rangeC1B8ne200100EPKc
Ltmp208:
; %bb.1:
Lloh126:
	adrp	x1, __ZTISt12out_of_range@GOTPAGE
Lloh127:
	ldr	x1, [x1, __ZTISt12out_of_range@GOTPAGEOFF]
Lloh128:
	adrp	x2, __ZNSt12out_of_rangeD1Ev@GOTPAGE
Lloh129:
	ldr	x2, [x2, __ZNSt12out_of_rangeD1Ev@GOTPAGEOFF]
	mov	x0, x19
	bl	___cxa_throw
LBB11_2:
Ltmp209:
	mov	x20, x0
	mov	x0, x19
	bl	___cxa_free_exception
	mov	x0, x20
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh128, Lloh129
	.loh AdrpLdrGot	Lloh126, Lloh127
Lfunc_end6:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table11:
Lexception6:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end6-Lcst_begin6
Lcst_begin6:
	.uleb128 Lfunc_begin6-Lfunc_begin6      ; >> Call Site 1 <<
	.uleb128 Ltmp207-Lfunc_begin6           ;   Call between Lfunc_begin6 and Ltmp207
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp207-Lfunc_begin6           ; >> Call Site 2 <<
	.uleb128 Ltmp208-Ltmp207                ;   Call between Ltmp207 and Ltmp208
	.uleb128 Ltmp209-Lfunc_begin6           ;     jumps to Ltmp209
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp208-Lfunc_begin6           ; >> Call Site 3 <<
	.uleb128 Lfunc_end6-Ltmp208             ;   Call between Ltmp208 and Lfunc_end6
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end6:
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
Lloh130:
	adrp	x8, __ZTVSt12out_of_range@GOTPAGE
Lloh131:
	ldr	x8, [x8, __ZTVSt12out_of_range@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGot	Lloh130, Lloh131
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__124uniform_int_distributionIxEclINS_23mersenne_twister_engineIyLm64ELm312ELm156ELm31ELy13043109905998158313ELm29ELy6148914691236517205ELm17ELy8202884508482404352ELm37ELy18444473444759240704ELm43ELy6364136223846793005EEEEExRT_RKNS1_10param_typeE ; -- Begin function _ZNSt3__124uniform_int_distributionIxEclINS_23mersenne_twister_engineIyLm64ELm312ELm156ELm31ELy13043109905998158313ELm29ELy6148914691236517205ELm17ELy8202884508482404352ELm37ELy18444473444759240704ELm43ELy6364136223846793005EEEEExRT_RKNS1_10param_typeE
	.weak_def_can_be_hidden	__ZNSt3__124uniform_int_distributionIxEclINS_23mersenne_twister_engineIyLm64ELm312ELm156ELm31ELy13043109905998158313ELm29ELy6148914691236517205ELm17ELy8202884508482404352ELm37ELy18444473444759240704ELm43ELy6364136223846793005EEEEExRT_RKNS1_10param_typeE
	.p2align	2
__ZNSt3__124uniform_int_distributionIxEclINS_23mersenne_twister_engineIyLm64ELm312ELm156ELm31ELy13043109905998158313ELm29ELy6148914691236517205ELm17ELy8202884508482404352ELm37ELy18444473444759240704ELm43ELy6364136223846793005EEEEExRT_RKNS1_10param_typeE: ; @_ZNSt3__124uniform_int_distributionIxEclINS_23mersenne_twister_engineIyLm64ELm312ELm156ELm31ELy13043109905998158313ELm29ELy6148914691236517205ELm17ELy8202884508482404352ELm37ELy18444473444759240704ELm43ELy6364136223846793005EEEEExRT_RKNS1_10param_typeE
	.cfi_startproc
; %bb.0:
	ldp	x8, x0, [x2]
	subs	x12, x0, x8
	b.eq	LBB13_5
; %bb.1:
	mov	x8, #262645840084992            ; =0xeee000000000
	movk	x8, #65527, lsl #48
	mov	x11, #6633                      ; =0x19e9
	movk	x11, #43366, lsl #16
	movk	x11, #28506, lsl #32
	movk	x11, #46338, lsl #48
	mov	x9, #3987079168                 ; =0xeda60000
	movk	x9, #32767, lsl #32
	movk	x9, #29142, lsl #48
	mov	x10, #6148914691236517205       ; =0x5555555555555555
	and	x10, x10, #0xfffffffff
	add	x12, x12, #1
	cbz	x12, LBB13_6
; %bb.2:
	clz	x13, x12
	lsl	x14, x12, x13
	tst	x14, #0x7fffffffffffffff
	mov	w14, #63                        ; =0x3f
	cinc	x14, x14, ne
	sub	x13, x14, x13
	lsr	x14, x13, #6
	tst	x13, #0x3f
	cinc	x14, x14, ne
	cmp	x14, x13
	udiv	w13, w13, w14
	neg	x13, x13
	mov	x14, #-1                        ; =0xffffffffffffffff
	lsr	x13, x14, x13
	csel	x13, xzr, x13, hi
	ldr	x16, [x1, #2496]
	mov	x14, #3361                      ; =0xd21
	movk	x14, #8402, lsl #16
	movk	x14, #53773, lsl #32
	movk	x14, #3360, lsl #48
	mov	w15, #312                       ; =0x138
LBB13_3:                                ; =>This Inner Loop Header: Depth=1
	mov	x17, x16
	add	x16, x16, #1
	lsr	x0, x16, #3
	umulh	x0, x0, x14
	lsr	x0, x0, #1
	msub	x16, x0, x15, x16
	ldr	x0, [x1, x17, lsl #3]
	and	x0, x0, #0xffffffff80000000
	ldr	x3, [x1, x16, lsl #3]
	and	x4, x3, #0x7ffffffe
	orr	x0, x4, x0
	add	x4, x17, #156
	lsr	x5, x4, #3
	umulh	x5, x5, x14
	lsr	x5, x5, #1
	msub	x4, x5, x15, x4
	ldr	x4, [x1, x4, lsl #3]
	tst	w3, #0x1
	csel	x3, x11, xzr, ne
	eor	x3, x3, x4
	eor	x0, x3, x0, lsr #1
	str	x0, [x1, x17, lsl #3]
	and	x17, x10, x0, lsr #29
	eor	x17, x17, x0
	and	x0, x9, x17, lsl #17
	eor	x17, x0, x17
	and	x0, x8, x17, lsl #37
	eor	x17, x0, x17
	eor	x17, x17, x17, lsr #43
	and	x17, x17, x13
	cmp	x17, x12
	b.hs	LBB13_3
; %bb.4:
	str	x16, [x1, #2496]
	ldr	x8, [x2]
	add	x0, x8, x17
LBB13_5:
	ret
LBB13_6:
	ldr	x12, [x1, #2496]
	add	x13, x12, #1
	lsr	x14, x13, #3
	mov	x15, #3361                      ; =0xd21
	movk	x15, #8402, lsl #16
	movk	x15, #53773, lsl #32
	movk	x15, #3360, lsl #48
	umulh	x14, x14, x15
	lsr	x14, x14, #1
	mov	w16, #312                       ; =0x138
	msub	x13, x14, x16, x13
	ldr	x14, [x1, x12, lsl #3]
	ldr	x17, [x1, x13, lsl #3]
	and	x14, x14, #0xffffffff80000000
	and	x0, x17, #0x7ffffffe
	orr	x14, x0, x14
	add	x0, x12, #156
	lsr	x2, x0, #3
	umulh	x15, x2, x15
	lsr	x15, x15, #1
	msub	x15, x15, x16, x0
	ldr	x15, [x1, x15, lsl #3]
	tst	w17, #0x1
	csel	x11, x11, xzr, ne
	eor	x11, x11, x15
	eor	x11, x11, x14, lsr #1
	str	x11, [x1, x12, lsl #3]
	and	x10, x10, x11, lsr #29
	eor	x10, x10, x11
	str	x13, [x1, #2496]
	and	x9, x9, x10, lsl #17
	eor	x9, x9, x10
	and	x8, x8, x9, lsl #37
	eor	x8, x8, x9
	eor	x0, x8, x8, lsr #43
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"Usage: "

l_.str.1:                               ; @.str.1
	.asciz	" [B>1] [N>0]\n"

l_.str.2:                               ; @.str.2
	.asciz	"/proc/cpuinfo"

l_.str.3:                               ; @.str.3
	.asciz	"model name"

l_.str.5:                               ; @.str.5
	.asciz	"cpu MHz"

l_.str.6:                               ; @.str.6
	.asciz	"/proc/meminfo"

l_.str.7:                               ; @.str.7
	.asciz	"MemTotal"

l_.str.8:                               ; @.str.8
	.asciz	"uname -o"

l_.str.9:                               ; @.str.9
	.asciz	"r"

l_.str.10:                              ; @.str.10
	.asciz	"========================================\n"

l_.str.11:                              ; @.str.11
	.asciz	"Modular Benchmark\n"

l_.str.12:                              ; @.str.12
	.asciz	"System Information:\n"

l_.str.13:                              ; @.str.13
	.asciz	"  Hostname: "

l_.str.14:                              ; @.str.14
	.asciz	"\n"

l_.str.15:                              ; @.str.15
	.asciz	"  OS: "

l_.str.16:                              ; @.str.16
	.asciz	"  CPU Model: "

l_.str.17:                              ; @.str.17
	.asciz	"  CPU MHz: "

l_.str.18:                              ; @.str.18
	.asciz	"  Memory: "

l_.str.19:                              ; @.str.19
	.asciz	"========================================\n\n"

l_.str.20:                              ; @.str.20
	.asciz	"Benchmark with B = "

l_.str.21:                              ; @.str.21
	.asciz	", N = "

l_.str.22:                              ; @.str.22
	.asciz	"\n--- Modular remainder ---\n"

l_.str.23:                              ; @.str.23
	.asciz	"classic  : "

l_.str.24:                              ; @.str.24
	.asciz	" s\n"

l_.str.25:                              ; @.str.25
	.asciz	"REIST    : "

l_.str.26:                              ; @.str.26
	.asciz	"Speedup  : "

l_.str.27:                              ; @.str.27
	.asciz	"x (classic / REIST)\n"

l_.str.28:                              ; @.str.28
	.asciz	"basic_string"

.subsections_via_symbols
