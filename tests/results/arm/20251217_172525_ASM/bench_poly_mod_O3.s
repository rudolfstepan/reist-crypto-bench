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
	stp	d11, d10, [sp, #-128]!          ; 16-byte Folded Spill
	stp	d9, d8, [sp, #16]               ; 16-byte Folded Spill
	stp	x28, x27, [sp, #32]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #48]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #64]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #80]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #96]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	sub	sp, sp, #3712
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
	mov	x26, #-9                        ; =0xfffffffffffffff7
	movk	x26, #32767, lsl #48
	cmp	w0, #2
	b.lt	LBB0_4
; %bb.1:
	mov	x19, x1
	mov	x20, x0
	ldr	x22, [x1, #8]
	mov	x0, x22
	bl	_strlen
	cmp	x0, x26
	b.hi	LBB0_275
; %bb.2:
	mov	x21, x0
	cmp	x0, #23
	b.hs	LBB0_5
; %bb.3:
	strb	w21, [sp, #383]
	add	x23, sp, #360
	cbnz	x21, LBB0_7
	b	LBB0_8
LBB0_4:
	mov	w25, #1024                      ; =0x400
	b	LBB0_11
LBB0_5:
	orr	x8, x21, #0x7
	cmp	x8, #23
	mov	w9, #25                         ; =0x19
	csinc	x24, x9, x8, eq
Ltmp0:
	mov	x0, x24
	bl	__Znwm
Ltmp1:
; %bb.6:
	mov	x23, x0
	orr	x8, x24, #0x8000000000000000
	stp	x21, x8, [sp, #368]
	str	x0, [sp, #360]
LBB0_7:
	mov	x0, x23
	mov	x1, x22
	mov	x2, x21
	bl	_memmove
LBB0_8:
	strb	wzr, [x23, x21]
Ltmp2:
	add	x0, sp, #360
	mov	x1, #0                          ; =0x0
	mov	w2, #10                         ; =0xa
	bl	__ZNSt3__14stoiERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPmi
Ltmp3:
; %bb.9:
	mov	x25, x0
	ldrsb	w8, [sp, #383]
	tbnz	w8, #31, LBB0_86
; %bb.10:
	cmp	w20, #2
	b.ne	LBB0_87
LBB0_11:
	mov	w8, #50000                      ; =0xc350
	str	w8, [sp, #180]                  ; 4-byte Folded Spill
LBB0_12:
Ltmp23:
	mov	w0, #16                         ; =0x10
	bl	__Znwm
Ltmp24:
; %bb.13:
Lloh3:
	adrp	x8, lCPI0_0@PAGE
Lloh4:
	ldr	q0, [x8, lCPI0_0@PAGEOFF]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	str	q0, [x0], #16
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
LBB0_14:
	mov	w8, #12345                      ; =0x3039
	str	w8, [sp, #360]
	mov	w9, #1                          ; =0x1
	mov	w10, #35173                     ; =0x8965
	movk	w10, #27655, lsl #16
	add	x11, sp, #360
LBB0_15:                                ; =>This Inner Loop Header: Depth=1
	eor	w8, w8, w8, lsr #30
	madd	w8, w8, w10, w9
	str	w8, [x11, x9, lsl #2]
	add	x9, x9, #1
	cmp	x9, #624
	b.ne	LBB0_15
; %bb.16:
	str	w25, [sp, #68]                  ; 4-byte Folded Spill
	str	xzr, [sp, #2856]
	stp	xzr, xzr, [sp, #336]
	str	xzr, [sp, #352]
	stp	xzr, xzr, [sp, #304]
	str	xzr, [sp, #320]
	stp	xzr, xzr, [sp, #272]
	str	xzr, [sp, #288]
	stp	xzr, xzr, [sp, #248]
	str	xzr, [sp, #264]
	stp	xzr, xzr, [sp, #224]
	str	xzr, [sp, #240]
Ltmp26:
Lloh5:
	adrp	x1, l_.str@PAGE
Lloh6:
	add	x1, x1, l_.str@PAGEOFF
	add	x0, sp, #3120
	mov	w2, #8                          ; =0x8
	bl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEC1EPKcj
Ltmp27:
; %bb.17:
	str	xzr, [sp, #2872]
	str	xzr, [sp, #2864]
	mov	w28, #19744                     ; =0x4d20
	movk	w28, #31304, lsl #16
	str	xzr, [sp, #2880]
	mov	x25, #28525                     ; =0x6f6d
	movk	x25, #25956, lsl #16
	movk	x25, #8300, lsl #32
	movk	x25, #24942, lsl #48
	mov	w21, #25965                     ; =0x656d
	b	LBB0_20
LBB0_18:                                ;   in Loop: Header=BB0_20 Depth=1
	strb	wzr, [x22, x20]
	ldrsb	w8, [sp, #327]
	tbnz	w8, #31, LBB0_72
LBB0_19:                                ;   in Loop: Header=BB0_20 Depth=1
	ldur	q0, [sp, #200]
	str	q0, [sp, #304]
	ldr	x8, [sp, #216]
	str	x8, [sp, #320]
LBB0_20:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_27 Depth 2
                                        ;     Child Loop BB0_33 Depth 2
                                        ;     Child Loop BB0_48 Depth 2
                                        ;     Child Loop BB0_54 Depth 2
	ldr	x8, [sp, #3120]
	ldur	x9, [x8, #-24]
Ltmp29:
	add	x8, sp, #200
	add	x10, sp, #3120
	add	x0, x10, x9
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp30:
; %bb.21:                               ;   in Loop: Header=BB0_20 Depth=1
Ltmp31:
	add	x0, sp, #200
Lloh7:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh8:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp32:
; %bb.22:                               ;   in Loop: Header=BB0_20 Depth=1
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp33:
	mov	w1, #10                         ; =0xa
	blr	x8
Ltmp34:
; %bb.23:                               ;   in Loop: Header=BB0_20 Depth=1
	mov	x20, x0
	add	x0, sp, #200
	bl	__ZNSt3__16localeD1Ev
Ltmp36:
	add	x0, sp, #3120
	add	x1, sp, #2864
	mov	x2, x20
	bl	__ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
Ltmp37:
; %bb.24:                               ;   in Loop: Header=BB0_20 Depth=1
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x8, x0, x8
	ldrb	w22, [sp, #2887]
	sxtb	w19, w22
	ldrb	w8, [x8, #32]
	mov	w9, #5                          ; =0x5
	tst	w8, w9
	b.ne	LBB0_73
; %bb.25:                               ;   in Loop: Header=BB0_20 Depth=1
	cmp	w19, #0
	ldr	x26, [sp, #2864]
	ldr	x23, [sp, #2872]
	add	x8, sp, #2864
	csel	x20, x26, x8, lt
	csel	x8, x23, x22, lt
	cmp	x8, #10
	b.lt	LBB0_46
; %bb.26:                               ;   in Loop: Header=BB0_20 Depth=1
	add	x24, x20, x8
	mov	x27, x8
	mov	x0, x20
LBB0_27:                                ;   Parent Loop BB0_20 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	sub	x2, x8, #9
	mov	w1, #109                        ; =0x6d
	bl	_memchr
	cbz	x0, LBB0_46
; %bb.28:                               ;   in Loop: Header=BB0_27 Depth=2
	ldr	x8, [x0]
	ldrh	w9, [x0, #8]
	cmp	x8, x25
	ccmp	w9, w21, #0, eq
	b.eq	LBB0_30
; %bb.29:                               ;   in Loop: Header=BB0_27 Depth=2
	add	x0, x0, #1
	sub	x8, x24, x0
	cmp	x8, #10
	b.ge	LBB0_27
	b	LBB0_46
LBB0_30:                                ;   in Loop: Header=BB0_20 Depth=1
	cmp	x0, x24
	b.eq	LBB0_46
; %bb.31:                               ;   in Loop: Header=BB0_20 Depth=1
	sub	x8, x0, x20
	cmn	x8, #1
	b.eq	LBB0_46
; %bb.32:                               ;   in Loop: Header=BB0_20 Depth=1
	mov	x2, x27
	mov	x0, x20
	mov	x27, #-9                        ; =0xfffffffffffffff7
	movk	x27, #32767, lsl #48
LBB0_33:                                ;   Parent Loop BB0_20 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	mov	w1, #58                         ; =0x3a
	bl	_memchr
	cbz	x0, LBB0_36
; %bb.34:                               ;   in Loop: Header=BB0_33 Depth=2
	ldrb	w8, [x0]
	cmp	w8, #58
	b.eq	LBB0_37
; %bb.35:                               ;   in Loop: Header=BB0_33 Depth=2
	add	x0, x0, #1
	sub	x2, x24, x0
	cmp	x2, #0
	b.gt	LBB0_33
LBB0_36:                                ;   in Loop: Header=BB0_20 Depth=1
	mov	x0, x24
LBB0_37:                                ;   in Loop: Header=BB0_20 Depth=1
	sub	x8, x0, x20
	add	x8, x8, #2
	cmp	x0, x24
	csinc	x24, x8, xzr, ne
	tbnz	w19, #31, LBB0_40
; %bb.38:                               ;   in Loop: Header=BB0_20 Depth=1
	cmp	x24, x22
	b.hi	LBB0_270
; %bb.39:                               ;   in Loop: Header=BB0_20 Depth=1
	add	x26, sp, #2864
	mov	x23, x22
	b	LBB0_41
LBB0_40:                                ;   in Loop: Header=BB0_20 Depth=1
	cmp	x23, x24
	b.lo	LBB0_270
LBB0_41:                                ;   in Loop: Header=BB0_20 Depth=1
	sub	x20, x23, x24
	cmp	x20, x27
	b.hi	LBB0_271
; %bb.42:                               ;   in Loop: Header=BB0_20 Depth=1
	cmp	x20, #23
	b.hs	LBB0_61
; %bb.43:                               ;   in Loop: Header=BB0_20 Depth=1
	strb	w20, [sp, #223]
	add	x22, sp, #200
	cmp	x23, x24
	b.ne	LBB0_63
; %bb.44:                               ;   in Loop: Header=BB0_20 Depth=1
	strb	wzr, [x22, x20]
	ldrsb	w8, [sp, #359]
	tbnz	w8, #31, LBB0_64
LBB0_45:                                ;   in Loop: Header=BB0_20 Depth=1
	ldur	q0, [sp, #200]
	str	q0, [sp, #336]
	ldr	x8, [sp, #216]
	str	x8, [sp, #352]
	ldrb	w22, [sp, #2887]
	ldr	x26, [sp, #2864]
	ldr	x23, [sp, #2872]
	mov	x19, x22
LBB0_46:                                ;   in Loop: Header=BB0_20 Depth=1
	sxtb	w8, w19
	cmp	w8, #0
	add	x8, sp, #2864
	csel	x24, x26, x8, lt
	csel	x20, x23, x22, lt
	cmp	x20, #7
	b.lt	LBB0_20
; %bb.47:                               ;   in Loop: Header=BB0_20 Depth=1
	add	x27, x24, x20
	mov	x8, x20
	mov	x0, x24
LBB0_48:                                ;   Parent Loop BB0_20 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	sub	x2, x8, #6
	mov	w1, #99                         ; =0x63
	bl	_memchr
	cbz	x0, LBB0_20
; %bb.49:                               ;   in Loop: Header=BB0_48 Depth=2
	ldr	w8, [x0]
	ldur	w9, [x0, #3]
	mov	w10, #28771                     ; =0x7063
	movk	w10, #8309, lsl #16
	cmp	w8, w10
	ccmp	w9, w28, #0, eq
	b.eq	LBB0_51
; %bb.50:                               ;   in Loop: Header=BB0_48 Depth=2
	add	x0, x0, #1
	sub	x8, x27, x0
	cmp	x8, #7
	b.ge	LBB0_48
	b	LBB0_20
LBB0_51:                                ;   in Loop: Header=BB0_20 Depth=1
	cmp	x0, x27
	b.eq	LBB0_20
; %bb.52:                               ;   in Loop: Header=BB0_20 Depth=1
	sub	x8, x0, x24
	cmn	x8, #1
	b.eq	LBB0_20
; %bb.53:                               ;   in Loop: Header=BB0_20 Depth=1
	mov	x0, x24
LBB0_54:                                ;   Parent Loop BB0_20 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	mov	w1, #58                         ; =0x3a
	mov	x2, x20
	bl	_memchr
	cbz	x0, LBB0_57
; %bb.55:                               ;   in Loop: Header=BB0_54 Depth=2
	ldrb	w8, [x0]
	cmp	w8, #58
	b.eq	LBB0_58
; %bb.56:                               ;   in Loop: Header=BB0_54 Depth=2
	add	x0, x0, #1
	sub	x20, x27, x0
	cmp	x20, #0
	b.gt	LBB0_54
LBB0_57:                                ;   in Loop: Header=BB0_20 Depth=1
	mov	x0, x27
LBB0_58:                                ;   in Loop: Header=BB0_20 Depth=1
	sub	x8, x0, x24
	add	x8, x8, #2
	cmp	x0, x27
	csinc	x24, x8, xzr, ne
	tbnz	w19, #7, LBB0_65
; %bb.59:                               ;   in Loop: Header=BB0_20 Depth=1
	cmp	x24, x22
	mov	x8, #-9                         ; =0xfffffffffffffff7
	movk	x8, #32767, lsl #48
	b.hi	LBB0_272
; %bb.60:                               ;   in Loop: Header=BB0_20 Depth=1
	add	x26, sp, #2864
	mov	x23, x22
	b	LBB0_66
LBB0_61:                                ;   in Loop: Header=BB0_20 Depth=1
	orr	x8, x20, #0x7
	cmp	x8, #23
	mov	w9, #25                         ; =0x19
	csinc	x23, x9, x8, eq
Ltmp197:
	mov	x0, x23
	bl	__Znwm
Ltmp198:
; %bb.62:                               ;   in Loop: Header=BB0_20 Depth=1
	mov	x22, x0
	orr	x8, x23, #0x8000000000000000
	stp	x20, x8, [sp, #208]
	str	x0, [sp, #200]
LBB0_63:                                ;   in Loop: Header=BB0_20 Depth=1
	add	x1, x26, x24
	mov	x0, x22
	mov	x2, x20
	bl	_memmove
	strb	wzr, [x22, x20]
	ldrsb	w8, [sp, #359]
	tbz	w8, #31, LBB0_45
LBB0_64:                                ;   in Loop: Header=BB0_20 Depth=1
	ldr	x0, [sp, #336]
	bl	__ZdlPv
	b	LBB0_45
LBB0_65:                                ;   in Loop: Header=BB0_20 Depth=1
	cmp	x23, x24
	mov	x8, #-9                         ; =0xfffffffffffffff7
	movk	x8, #32767, lsl #48
	b.lo	LBB0_272
LBB0_66:                                ;   in Loop: Header=BB0_20 Depth=1
	sub	x20, x23, x24
	cmp	x20, x8
	b.hi	LBB0_273
; %bb.67:                               ;   in Loop: Header=BB0_20 Depth=1
	cmp	x20, #23
	b.hs	LBB0_69
; %bb.68:                               ;   in Loop: Header=BB0_20 Depth=1
	strb	w20, [sp, #223]
	add	x22, sp, #200
	cmp	x23, x24
	b.ne	LBB0_71
	b	LBB0_18
LBB0_69:                                ;   in Loop: Header=BB0_20 Depth=1
	orr	x8, x20, #0x7
	cmp	x8, #23
	mov	w9, #25                         ; =0x19
	csinc	x23, x9, x8, eq
Ltmp205:
	mov	x0, x23
	bl	__Znwm
Ltmp206:
; %bb.70:                               ;   in Loop: Header=BB0_20 Depth=1
	mov	x22, x0
	orr	x8, x23, #0x8000000000000000
	stp	x20, x8, [sp, #208]
	str	x0, [sp, #200]
LBB0_71:                                ;   in Loop: Header=BB0_20 Depth=1
	add	x1, x26, x24
	mov	x0, x22
	mov	x2, x20
	bl	_memmove
	strb	wzr, [x22, x20]
	ldrsb	w8, [sp, #327]
	tbz	w8, #31, LBB0_19
LBB0_72:                                ;   in Loop: Header=BB0_20 Depth=1
	ldr	x0, [sp, #304]
	bl	__ZdlPv
	b	LBB0_19
LBB0_73:
	tbz	w19, #31, LBB0_75
; %bb.74:
	ldr	x0, [sp, #2864]
	bl	__ZdlPv
LBB0_75:
Lloh9:
	adrp	x21, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh10:
	ldr	x21, [x21, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	ldr	x23, [x21]
	str	x23, [sp, #3120]
	ldr	x24, [x21, #24]
	ldur	x8, [x23, #-24]
	add	x19, sp, #3120
	str	x24, [x19, x8]
	add	x0, x19, #16
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
	add	x0, sp, #3120
	add	x1, x21, #8
	bl	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	add	x0, x19, #424
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
Ltmp39:
Lloh11:
	adrp	x1, l_.str.4@PAGE
Lloh12:
	add	x1, x1, l_.str.4@PAGEOFF
	add	x19, sp, #3120
	add	x0, sp, #3120
	mov	w2, #8                          ; =0x8
	bl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEC1EPKcj
Ltmp40:
; %bb.76:
	str	xzr, [sp, #2872]
	str	xzr, [sp, #2864]
	str	xzr, [sp, #2880]
	ldr	x8, [sp, #3120]
	ldur	x9, [x8, #-24]
Ltmp42:
	add	x8, sp, #200
	add	x0, x19, x9
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp43:
; %bb.77:
Ltmp44:
Lloh13:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh14:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #200
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp45:
; %bb.78:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp46:
	mov	w1, #10                         ; =0xa
	blr	x8
Ltmp47:
; %bb.79:
	mov	x19, x0
	add	x0, sp, #200
	bl	__ZNSt3__16localeD1Ev
Ltmp49:
	add	x0, sp, #3120
	add	x1, sp, #2864
	mov	x2, x19
	bl	__ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
Ltmp50:
; %bb.80:
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x8, x0, x8
	ldrb	w8, [x8, #32]
	mov	w9, #5                          ; =0x5
	tst	w8, w9
	b.ne	LBB0_127
; %bb.81:
	ldrsb	x20, [sp, #2887]
	add	x8, sp, #2864
	ldr	x25, [sp, #2864]
	ldr	x22, [sp, #2872]
	cmp	x20, #0
	csel	x26, x25, x8, lt
	cmp	w20, #0
	csel	x19, x22, x20, lt
	cmp	x19, #8
	b.lt	LBB0_127
; %bb.82:
	add	x27, x26, x19
	mov	x28, #25933                     ; =0x654d
	movk	x28, #21613, lsl #16
	movk	x28, #29807, lsl #32
	movk	x28, #27745, lsl #48
	mov	x8, x19
	mov	x0, x26
LBB0_83:                                ; =>This Inner Loop Header: Depth=1
	sub	x2, x8, #7
	mov	w1, #77                         ; =0x4d
	bl	_memchr
	cbz	x0, LBB0_127
; %bb.84:                               ;   in Loop: Header=BB0_83 Depth=1
	ldr	x8, [x0]
	cmp	x8, x28
	b.eq	LBB0_107
; %bb.85:                               ;   in Loop: Header=BB0_83 Depth=1
	add	x0, x0, #1
	sub	x8, x27, x0
	cmp	x8, #8
	b.ge	LBB0_83
	b	LBB0_127
LBB0_86:
	ldr	x0, [sp, #360]
	bl	__ZdlPv
	cmp	w20, #2
	b.eq	LBB0_11
LBB0_87:
	ldr	x22, [x19, #16]
	mov	x0, x22
	bl	_strlen
	cmp	x0, x26
	b.hi	LBB0_277
; %bb.88:
	mov	x21, x0
	cmp	x0, #23
	b.hs	LBB0_90
; %bb.89:
	strb	w21, [sp, #383]
	add	x23, sp, #360
	cbnz	x21, LBB0_92
	b	LBB0_93
LBB0_90:
	orr	x8, x21, #0x7
	cmp	x8, #23
	mov	w9, #25                         ; =0x19
	csinc	x24, x9, x8, eq
Ltmp5:
	mov	x0, x24
	bl	__Znwm
Ltmp6:
; %bb.91:
	mov	x23, x0
	orr	x8, x24, #0x8000000000000000
	stp	x21, x8, [sp, #368]
	str	x0, [sp, #360]
LBB0_92:
	mov	x0, x23
	mov	x1, x22
	mov	x2, x21
	bl	_memmove
LBB0_93:
	strb	wzr, [x23, x21]
Ltmp7:
	add	x0, sp, #360
	mov	x1, #0                          ; =0x0
	mov	w2, #10                         ; =0xa
	bl	__ZNSt3__14stoiERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPmi
	str	w0, [sp, #180]                  ; 4-byte Folded Spill
Ltmp8:
; %bb.94:
	ldrsb	w8, [sp, #383]
	tbz	w8, #31, LBB0_96
; %bb.95:
	ldr	x0, [sp, #360]
	bl	__ZdlPv
LBB0_96:
	cmp	w20, #4
	b.lo	LBB0_12
; %bb.97:
	ldr	x20, [x19, #24]
	mov	x0, x20
	bl	_strlen
	cmp	x0, x26
	b.hi	LBB0_279
; %bb.98:
	mov	x19, x0
	cmp	x0, #23
	b.hs	LBB0_100
; %bb.99:
	strb	w19, [sp, #383]
	add	x22, sp, #360
	cbnz	x19, LBB0_102
	b	LBB0_103
LBB0_100:
	orr	x8, x19, #0x7
	cmp	x8, #23
	mov	w9, #25                         ; =0x19
	csinc	x23, x9, x8, eq
Ltmp10:
	mov	x0, x23
	bl	__Znwm
Ltmp11:
; %bb.101:
	mov	x22, x0
	orr	x8, x23, #0x8000000000000000
	stp	x19, x8, [sp, #368]
	str	x0, [sp, #360]
LBB0_102:
	mov	x0, x22
	mov	x1, x20
	mov	x2, x19
	bl	_memmove
LBB0_103:
	strb	wzr, [x22, x19]
Ltmp12:
	add	x0, sp, #360
	mov	x1, #0                          ; =0x0
	mov	w2, #10                         ; =0xa
	bl	__ZNSt3__14stoiERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPmi
Ltmp13:
; %bb.104:
Ltmp14:
	mov	x19, x0
	mov	w0, #4                          ; =0x4
	bl	__Znwm
Ltmp15:
; %bb.105:
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	str	w19, [x0], #4
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	ldrsb	w8, [sp, #383]
	tbz	w8, #31, LBB0_14
; %bb.106:
	ldr	x0, [sp, #360]
	bl	__ZdlPv
	b	LBB0_14
LBB0_107:
	cmp	x0, x27
	b.eq	LBB0_127
; %bb.108:
	sub	x8, x0, x26
	cmn	x8, #1
	b.eq	LBB0_127
; %bb.109:
	mov	x0, x26
LBB0_110:                               ; =>This Inner Loop Header: Depth=1
	mov	w1, #58                         ; =0x3a
	mov	x2, x19
	bl	_memchr
	cbz	x0, LBB0_113
; %bb.111:                              ;   in Loop: Header=BB0_110 Depth=1
	ldrb	w8, [x0]
	cmp	w8, #58
	b.eq	LBB0_114
; %bb.112:                              ;   in Loop: Header=BB0_110 Depth=1
	add	x0, x0, #1
	sub	x19, x27, x0
	cmp	x19, #0
	b.gt	LBB0_110
LBB0_113:
	mov	x0, x27
LBB0_114:
	sub	x8, x0, x26
	add	x8, x8, #2
	cmp	x0, x27
	csinc	x26, x8, xzr, ne
	tbnz	w20, #31, LBB0_117
; %bb.115:
	cmp	x26, x20
	mov	x8, #-9                         ; =0xfffffffffffffff7
	movk	x8, #32767, lsl #48
	b.hi	LBB0_280
; %bb.116:
	add	x25, sp, #2864
	mov	x22, x20
	b	LBB0_118
LBB0_117:
	cmp	x22, x26
	mov	x8, #-9                         ; =0xfffffffffffffff7
	movk	x8, #32767, lsl #48
	b.lo	LBB0_280
LBB0_118:
	sub	x19, x22, x26
	cmp	x19, x8
	b.hi	LBB0_281
; %bb.119:
	cmp	x19, #23
	b.hs	LBB0_121
; %bb.120:
	strb	w19, [sp, #223]
	add	x20, sp, #200
	cmp	x22, x26
	b.ne	LBB0_123
	b	LBB0_124
LBB0_121:
	orr	x8, x19, #0x7
	cmp	x8, #23
	mov	w9, #25                         ; =0x19
	csinc	x22, x9, x8, eq
Ltmp52:
	mov	x0, x22
	bl	__Znwm
Ltmp53:
; %bb.122:
	mov	x20, x0
	orr	x8, x22, #0x8000000000000000
	stp	x19, x8, [sp, #208]
	str	x0, [sp, #200]
LBB0_123:
	add	x1, x25, x26
	mov	x0, x20
	mov	x2, x19
	bl	_memmove
LBB0_124:
	strb	wzr, [x20, x19]
	ldrsb	w8, [sp, #295]
	tbz	w8, #31, LBB0_126
; %bb.125:
	ldr	x0, [sp, #272]
	bl	__ZdlPv
LBB0_126:
	ldur	q0, [sp, #200]
	str	q0, [sp, #272]
	ldr	x8, [sp, #216]
	str	x8, [sp, #288]
LBB0_127:
	ldrsb	w8, [sp, #2887]
	tbz	w8, #31, LBB0_129
; %bb.128:
	ldr	x0, [sp, #2864]
	bl	__ZdlPv
LBB0_129:
	str	x23, [sp, #3120]
	ldur	x8, [x23, #-24]
	add	x19, sp, #3120
	str	x24, [x19, x8]
	add	x0, x19, #16
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
	add	x0, sp, #3120
	add	x1, x21, #8
	bl	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	add	x0, x19, #424
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
Ltmp59:
	add	x0, sp, #2864
	mov	w1, #256                        ; =0x100
	bl	_gethostname
Ltmp60:
	ldr	w21, [sp, #68]                  ; 4-byte Folded Reload
	mov	x22, #-9                        ; =0xfffffffffffffff7
	movk	x22, #32767, lsl #48
; %bb.130:
	cbnz	w0, LBB0_132
; %bb.131:
Ltmp61:
	add	x0, sp, #248
	add	x1, sp, #2864
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc
Ltmp62:
LBB0_132:
Ltmp63:
Lloh15:
	adrp	x0, l_.str.6@PAGE
Lloh16:
	add	x0, x0, l_.str.6@PAGEOFF
Lloh17:
	adrp	x1, l_.str.7@PAGE
Lloh18:
	add	x1, x1, l_.str.7@PAGEOFF
	bl	_popen
Ltmp64:
; %bb.133:
	mov	x19, x0
	cbz	x0, LBB0_152
; %bb.134:
	add	x0, sp, #3120
	mov	w1, #128                        ; =0x80
	mov	x2, x19
	bl	_fgets
	cbz	x0, LBB0_151
; %bb.135:
	add	x0, sp, #3120
	bl	_strlen
	cmp	x0, x22
	b.hi	LBB0_276
; %bb.136:
	mov	x20, x0
	cmp	x0, #23
	b.hs	LBB0_143
; %bb.137:
	strb	w20, [sp, #223]
	add	x22, sp, #200
	cbnz	x20, LBB0_145
; %bb.138:
	strb	wzr, [x22, x20]
	ldrsb	w8, [sp, #247]
	tbnz	w8, #31, LBB0_146
LBB0_139:
	ldr	x8, [sp, #216]
	str	x8, [sp, #240]
	ldur	q0, [sp, #200]
	str	q0, [sp, #224]
	ldrsb	x8, [sp, #247]
	tbnz	x8, #63, LBB0_147
LBB0_140:
	cbz	w8, LBB0_151
; %bb.141:
	add	x9, sp, #224
	add	x9, x9, x8
	ldurb	w9, [x9, #-1]
	cmp	w9, #10
	b.ne	LBB0_151
; %bb.142:
	sub	x9, x8, #1
	strb	w9, [sp, #247]
	add	x8, sp, #224
	b	LBB0_150
LBB0_143:
	orr	x8, x20, #0x7
	cmp	x8, #23
	mov	w9, #25                         ; =0x19
	csinc	x23, x9, x8, eq
Ltmp66:
	mov	x0, x23
	bl	__Znwm
Ltmp67:
; %bb.144:
	mov	x22, x0
	orr	x8, x23, #0x8000000000000000
	stp	x20, x8, [sp, #208]
	str	x0, [sp, #200]
LBB0_145:
	add	x1, sp, #3120
	mov	x0, x22
	mov	x2, x20
	bl	_memcpy
	strb	wzr, [x22, x20]
	ldrsb	w8, [sp, #247]
	tbz	w8, #31, LBB0_139
LBB0_146:
	ldr	x0, [sp, #224]
	bl	__ZdlPv
	ldr	x8, [sp, #216]
	str	x8, [sp, #240]
	ldur	q0, [sp, #200]
	str	q0, [sp, #224]
	ldrsb	x8, [sp, #247]
	tbz	x8, #63, LBB0_140
LBB0_147:
	ldr	x9, [sp, #232]
	cbz	x9, LBB0_151
; %bb.148:
	ldr	x8, [sp, #224]
	add	x10, x8, x9
	ldurb	w10, [x10, #-1]
	cmp	w10, #10
	b.ne	LBB0_151
; %bb.149:
	sub	x9, x9, #1
	str	x9, [sp, #232]
LBB0_150:
	strb	wzr, [x8, x9]
LBB0_151:
	mov	x0, x19
	bl	_pclose
LBB0_152:
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
Ltmp71:
Lloh21:
	adrp	x1, l_.str.8@PAGE
Lloh22:
	add	x1, x1, l_.str.8@PAGEOFF
	mov	w2, #41                         ; =0x29
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp72:
; %bb.153:
Ltmp73:
Lloh23:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh24:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh25:
	adrp	x1, l_.str.9@PAGE
Lloh26:
	add	x1, x1, l_.str.9@PAGEOFF
	mov	w2, #55                         ; =0x37
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp74:
; %bb.154:
Ltmp75:
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
Ltmp76:
; %bb.155:
Ltmp77:
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
Ltmp78:
; %bb.156:
Ltmp79:
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
Ltmp80:
; %bb.157:
	ldrb	w8, [sp, #271]
	sxtb	w9, w8
	ldp	x10, x11, [sp, #248]
	cmp	w9, #0
	add	x9, sp, #248
	csel	x1, x10, x9, lt
	csel	x2, x11, x8, lt
Ltmp81:
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp82:
; %bb.158:
Ltmp83:
Lloh39:
	adrp	x1, l_.str.12@PAGE
Lloh40:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp84:
; %bb.159:
Ltmp85:
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
Ltmp86:
; %bb.160:
	ldrb	w8, [sp, #247]
	sxtb	w9, w8
	ldp	x10, x11, [sp, #224]
	cmp	w9, #0
	add	x9, sp, #224
	csel	x1, x10, x9, lt
	csel	x2, x11, x8, lt
Ltmp87:
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp88:
; %bb.161:
Ltmp89:
Lloh45:
	adrp	x1, l_.str.12@PAGE
Lloh46:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp90:
; %bb.162:
Ltmp91:
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
Ltmp92:
; %bb.163:
	ldrb	w8, [sp, #359]
	sxtb	w9, w8
	ldp	x10, x11, [sp, #336]
	cmp	w9, #0
	add	x9, sp, #336
	csel	x1, x10, x9, lt
	csel	x2, x11, x8, lt
Ltmp93:
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp94:
; %bb.164:
Ltmp95:
Lloh51:
	adrp	x1, l_.str.12@PAGE
Lloh52:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp96:
; %bb.165:
Ltmp97:
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
Ltmp98:
; %bb.166:
	ldrb	w8, [sp, #327]
	sxtb	w9, w8
	ldp	x10, x11, [sp, #304]
	cmp	w9, #0
	add	x9, sp, #304
	csel	x1, x10, x9, lt
	csel	x2, x11, x8, lt
Ltmp99:
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp100:
; %bb.167:
Ltmp101:
Lloh57:
	adrp	x1, l_.str.12@PAGE
Lloh58:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp102:
; %bb.168:
Ltmp103:
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
Ltmp104:
; %bb.169:
	ldrb	w8, [sp, #295]
	sxtb	w9, w8
	ldp	x10, x11, [sp, #272]
	cmp	w9, #0
	add	x9, sp, #272
	csel	x1, x10, x9, lt
	csel	x2, x11, x8, lt
Ltmp105:
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp106:
; %bb.170:
Ltmp107:
Lloh63:
	adrp	x1, l_.str.12@PAGE
Lloh64:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp108:
; %bb.171:
Ltmp109:
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
Ltmp110:
; %bb.172:
Ltmp111:
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
Ltmp112:
; %bb.173:
Ltmp113:
	mov	x1, x21
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
Ltmp114:
; %bb.174:
Ltmp115:
Lloh73:
	adrp	x1, l_.str.19@PAGE
Lloh74:
	add	x1, x1, l_.str.19@PAGEOFF
	mov	w2, #9                          ; =0x9
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp116:
; %bb.175:
Ltmp117:
	ldr	w1, [sp, #180]                  ; 4-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
Ltmp118:
; %bb.176:
Ltmp119:
Lloh75:
	adrp	x1, l_.str.20@PAGE
Lloh76:
	add	x1, x1, l_.str.20@PAGEOFF
	mov	w2, #2                          ; =0x2
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp120:
; %bb.177:
Ltmp122:
Lloh77:
	adrp	x1, l_.str.21@PAGE
Lloh78:
	add	x1, x1, l_.str.21@PAGEOFF
	add	x19, sp, #3120
	add	x0, sp, #3120
	mov	w2, #16                         ; =0x10
	bl	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEC1EPKcj
Ltmp123:
; %bb.178:
	ldr	x8, [sp, #3120]
	ldur	x8, [x8, #-24]
	add	x8, x19, x8
	ldrb	w8, [x8, #32]
	mov	w9, #5                          ; =0x5
	tst	w8, w9
	b.eq	LBB0_181
; %bb.179:
Ltmp125:
Lloh79:
	adrp	x0, __ZNSt3__14cerrE@GOTPAGE
Lloh80:
	ldr	x0, [x0, __ZNSt3__14cerrE@GOTPAGEOFF]
Lloh81:
	adrp	x1, l_.str.22@PAGE
Lloh82:
	add	x1, x1, l_.str.22@PAGEOFF
	mov	w2, #55                         ; =0x37
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp126:
; %bb.180:
	mov	w19, #1                         ; =0x1
	b	LBB0_258
LBB0_181:
Ltmp127:
Lloh83:
	adrp	x1, l_.str.23@PAGE
Lloh84:
	add	x1, x1, l_.str.23@PAGEOFF
	add	x0, sp, #3120
	mov	w2, #31                         ; =0x1f
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp128:
; %bb.182:
	mov	w8, w21
	str	x8, [sp, #152]                  ; 8-byte Folded Spill
	cbz	w21, LBB0_188
; %bb.183:
	tbnz	w21, #31, LBB0_278
; %bb.184:
	ldr	x8, [sp, #152]                  ; 8-byte Folded Reload
	lsl	x19, x8, #2
Ltmp130:
	mov	x0, x19
	bl	__Znwm
Ltmp131:
; %bb.185:
	str	x0, [sp, #192]                  ; 8-byte Folded Spill
	mov	x1, x19
	bl	_bzero
Ltmp132:
	mov	x0, x19
	bl	__Znwm
Ltmp133:
; %bb.186:
	mov	x23, x0
	mov	x1, x19
	bl	_bzero
Ltmp135:
	mov	x0, x19
	bl	__Znwm
Ltmp136:
; %bb.187:
	ldr	x8, [sp, #192]                  ; 8-byte Folded Reload
	add	x22, x8, x19
	str	x0, [sp, #184]                  ; 8-byte Folded Spill
	mov	x1, x19
	bl	_bzero
	ldr	x20, [sp, #2856]
	ldr	x12, [sp, #8]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	cmp	x12, x8
	b.ne	LBB0_189
	b	LBB0_247
LBB0_188:
	mov	x23, #0                         ; =0x0
	mov	x22, #0                         ; =0x0
	stp	xzr, xzr, [sp, #184]            ; 16-byte Folded Spill
	ldr	x20, [sp, #2856]
	ldr	x12, [sp, #8]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	cmp	x12, x8
	b.eq	LBB0_247
LBB0_189:
	mov	w19, #-272236544                ; =0xefc60000
	mov	w21, #22144                     ; =0x5680
	movk	w21, #40236, lsl #16
	mov	w28, #45279                     ; =0xb0df
	movk	w28, #39176, lsl #16
	mov	w27, #16961                     ; =0x4241
	movk	w27, #15, lsl #16
	ldp	x14, x13, [sp, #184]            ; 16-byte Folded Reload
	sub	x8, x22, x13
	ldr	w9, [sp, #180]                  ; 4-byte Folded Reload
	cmp	w9, #1
	lsr	x9, x8, #2
	ubfx	x15, x8, #2, #31
	ccmp	w9, #1, #8, ge
	cset	w9, lt
	str	w9, [sp, #64]                   ; 4-byte Folded Spill
	sub	x9, x14, x13
	sub	x10, x14, x23
	cmp	x15, #4
	cset	w11, lo
	ubfx	x16, x8, #2, #2
	sub	x17, x15, x16
	str	x17, [sp, #160]                 ; 8-byte Folded Spill
	ubfx	x8, x8, #2, #4
	stp	x8, x15, [sp, #120]             ; 16-byte Folded Spill
	sub	x8, x15, x8
	str	x8, [sp, #112]                  ; 8-byte Folded Spill
	cmp	x9, #16
	ccmp	x10, #16, #0, hs
	csinc	w8, w11, wzr, hs
	str	w8, [sp, #148]                  ; 4-byte Folded Spill
	cmp	x9, #64
	mov	w8, #64                         ; =0x40
	ccmp	x10, x8, #0, hs
	csinc	w17, w11, wzr, hs
	neg	x8, x15
	str	x8, [sp, #168]                  ; 8-byte Folded Spill
	add	x9, x14, #32
	add	x8, x23, #32
	stp	x8, x9, [sp, #88]               ; 16-byte Folded Spill
	add	x8, x13, #32
	stp	x12, x8, [sp, #72]              ; 16-byte Folded Spill
	str	x16, [sp, #136]                 ; 8-byte Folded Spill
	sub	x8, x16, x15
	str	x8, [sp, #104]                  ; 8-byte Folded Spill
	mov	x8, #225833675390976            ; =0xcd6500000000
	movk	x8, #16845, lsl #48
	fmov	d11, x8
	mov	x25, #3361                      ; =0xd21
	movk	x25, #8402, lsl #16
	movk	x25, #53773, lsl #32
	movk	x25, #3360, lsl #48
	mov	w24, #624                       ; =0x270
	add	x22, sp, #360
	str	w17, [sp, #20]                  ; 4-byte Folded Spill
LBB0_190:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_192 Depth 2
                                        ;       Child Loop BB0_194 Depth 3
                                        ;     Child Loop BB0_225 Depth 2
                                        ;       Child Loop BB0_228 Depth 3
                                        ;       Child Loop BB0_231 Depth 3
                                        ;     Child Loop BB0_234 Depth 2
                                        ;       Child Loop BB0_239 Depth 3
                                        ;       Child Loop BB0_243 Depth 3
                                        ;       Child Loop BB0_246 Depth 3
	ldr	w8, [sp, #68]                   ; 4-byte Folded Reload
	cbz	w8, LBB0_196
; %bb.191:                              ;   in Loop: Header=BB0_190 Depth=1
	mov	x8, #0                          ; =0x0
	mov	w14, #24288                     ; =0x5ee0
	movk	w14, #65528, lsl #16
LBB0_192:                               ;   Parent Loop BB0_190 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_194 Depth 3
	mov	x9, x20
	add	x10, x20, #1
	lsr	x11, x10, #4
	umulh	x11, x11, x25
	lsr	x11, x11, #1
	msub	x20, x11, x24, x10
	ldr	w10, [x22, x9, lsl #2]
	ldr	w11, [x22, x20, lsl #2]
	and	w10, w10, #0x80000000
	and	w12, w11, #0x7ffffffe
	orr	w10, w12, w10
	add	x12, x9, #397
	lsr	x13, x12, #4
	umulh	x13, x13, x25
	lsr	x13, x13, #1
	msub	x12, x13, x24, x12
	ldr	w12, [x22, x12, lsl #2]
	tst	w11, #0x1
	csel	w11, w28, wzr, ne
	eor	w11, w11, w12
	eor	w10, w11, w10, lsr #1
	str	w10, [x22, x9, lsl #2]
	eor	w9, w10, w10, lsr #11
	and	w10, w21, w9, lsl #7
	eor	w9, w10, w9
	and	w10, w19, w9, lsl #15
	eor	w9, w10, w9
	and	w10, w9, #0xfffff
	eor	w9, w10, w9, lsr #18
	cmp	w9, w27
	b.hs	LBB0_192
; %bb.193:                              ;   in Loop: Header=BB0_192 Depth=2
	add	w9, w9, w14
	ldr	x10, [sp, #192]                 ; 8-byte Folded Reload
	str	w9, [x10, x8, lsl #2]
LBB0_194:                               ;   Parent Loop BB0_190 Depth=1
                                        ;     Parent Loop BB0_192 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	mov	x9, x20
	add	x10, x20, #1
	cmp	x10, #624
	csinc	x20, xzr, x20, eq
	ldr	w10, [x22, x9, lsl #2]
	ldr	w11, [x22, x20, lsl #2]
	add	x12, x9, #397
	lsr	x13, x12, #4
	umulh	x13, x13, x25
	lsr	x13, x13, #1
	msub	x12, x13, x24, x12
	and	w10, w10, #0x80000000
	and	w13, w11, #0x7ffffffe
	ldr	w12, [x22, x12, lsl #2]
	tst	w11, #0x1
	csel	w11, w28, wzr, ne
	orr	w10, w13, w10
	eor	w11, w11, w12
	eor	w10, w11, w10, lsr #1
	eor	w11, w10, w10, lsr #11
	and	w12, w21, w11, lsl #7
	str	w10, [x22, x9, lsl #2]
	eor	w9, w12, w11
	and	w10, w19, w9, lsl #15
	eor	w9, w10, w9
	and	w10, w9, #0xfffff
	eor	w9, w10, w9, lsr #18
	cmp	w9, w27
	b.hs	LBB0_194
; %bb.195:                              ;   in Loop: Header=BB0_192 Depth=2
	add	w9, w9, w14
	str	w9, [x23, x8, lsl #2]
	add	x8, x8, #1
	ldr	x9, [sp, #152]                  ; 8-byte Folded Reload
	cmp	x8, x9
	b.ne	LBB0_192
LBB0_196:                               ;   in Loop: Header=BB0_190 Depth=1
	ldr	x8, [sp, #72]                   ; 8-byte Folded Reload
	ldr	w26, [x8]
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	str	x0, [sp, #56]                   ; 8-byte Folded Spill
	ldr	w8, [sp, #64]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_223
LBB0_197:                               ;   in Loop: Header=BB0_190 Depth=1
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	str	x0, [sp, #48]                   ; 8-byte Folded Spill
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	str	x0, [sp, #40]                   ; 8-byte Folded Spill
	ldr	w8, [sp, #64]                   ; 4-byte Folded Reload
	ldr	w0, [sp, #20]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_232
LBB0_198:                               ;   in Loop: Header=BB0_190 Depth=1
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
Ltmp141:
Lloh85:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh86:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh87:
	adrp	x1, l_.str.24@PAGE
Lloh88:
	add	x1, x1, l_.str.24@PAGEOFF
	mov	w2, #4                          ; =0x4
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp142:
; %bb.199:                              ;   in Loop: Header=BB0_190 Depth=1
Ltmp143:
	mov	x1, x26
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
Ltmp144:
; %bb.200:                              ;   in Loop: Header=BB0_190 Depth=1
Ltmp145:
Lloh89:
	adrp	x1, l_.str.12@PAGE
Lloh90:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp146:
; %bb.201:                              ;   in Loop: Header=BB0_190 Depth=1
Ltmp147:
Lloh91:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh92:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh93:
	adrp	x1, l_.str.25@PAGE
Lloh94:
	add	x1, x1, l_.str.25@PAGEOFF
	mov	w2, #12                         ; =0xc
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp148:
; %bb.202:                              ;   in Loop: Header=BB0_190 Depth=1
Ltmp149:
	ldp	x9, x8, [sp, #48]               ; 16-byte Folded Reload
	sub	x8, x9, x8
	scvtf	d0, x8
	fdiv	d8, d0, d11
	fmov	d0, d8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp150:
; %bb.203:                              ;   in Loop: Header=BB0_190 Depth=1
Ltmp151:
Lloh95:
	adrp	x1, l_.str.26@PAGE
Lloh96:
	add	x1, x1, l_.str.26@PAGEOFF
	mov	w2, #3                          ; =0x3
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp152:
; %bb.204:                              ;   in Loop: Header=BB0_190 Depth=1
Ltmp153:
Lloh97:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh98:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh99:
	adrp	x1, l_.str.27@PAGE
Lloh100:
	add	x1, x1, l_.str.27@PAGEOFF
	mov	w2, #12                         ; =0xc
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp154:
; %bb.205:                              ;   in Loop: Header=BB0_190 Depth=1
Ltmp155:
	ldp	x9, x8, [sp, #32]               ; 16-byte Folded Reload
	sub	x8, x9, x8
	scvtf	d0, x8
	fdiv	d9, d0, d11
	fmov	d0, d9
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp156:
; %bb.206:                              ;   in Loop: Header=BB0_190 Depth=1
Ltmp157:
Lloh101:
	adrp	x1, l_.str.26@PAGE
Lloh102:
	add	x1, x1, l_.str.26@PAGEOFF
	mov	w2, #3                          ; =0x3
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp158:
; %bb.207:                              ;   in Loop: Header=BB0_190 Depth=1
Ltmp159:
Lloh103:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh104:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh105:
	adrp	x1, l_.str.28@PAGE
Lloh106:
	add	x1, x1, l_.str.28@PAGEOFF
	mov	w2, #12                         ; =0xc
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp160:
; %bb.208:                              ;   in Loop: Header=BB0_190 Depth=1
Ltmp161:
	fdiv	d10, d8, d9
	fmov	d0, d10
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp162:
; %bb.209:                              ;   in Loop: Header=BB0_190 Depth=1
Ltmp163:
Lloh107:
	adrp	x1, l_.str.29@PAGE
Lloh108:
	add	x1, x1, l_.str.29@PAGEOFF
	mov	w2, #3                          ; =0x3
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp164:
; %bb.210:                              ;   in Loop: Header=BB0_190 Depth=1
Ltmp165:
	add	x0, sp, #3120
	mov	x1, x26
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
Ltmp166:
; %bb.211:                              ;   in Loop: Header=BB0_190 Depth=1
Ltmp167:
Lloh109:
	adrp	x1, l_.str.30@PAGE
Lloh110:
	add	x1, x1, l_.str.30@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp168:
; %bb.212:                              ;   in Loop: Header=BB0_190 Depth=1
Ltmp169:
	ldr	w1, [sp, #68]                   ; 4-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
Ltmp170:
; %bb.213:                              ;   in Loop: Header=BB0_190 Depth=1
Ltmp171:
Lloh111:
	adrp	x1, l_.str.30@PAGE
Lloh112:
	add	x1, x1, l_.str.30@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp172:
; %bb.214:                              ;   in Loop: Header=BB0_190 Depth=1
Ltmp173:
	ldr	w1, [sp, #180]                  ; 4-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
Ltmp174:
; %bb.215:                              ;   in Loop: Header=BB0_190 Depth=1
Ltmp175:
Lloh113:
	adrp	x1, l_.str.30@PAGE
Lloh114:
	add	x1, x1, l_.str.30@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp176:
; %bb.216:                              ;   in Loop: Header=BB0_190 Depth=1
Ltmp177:
	fmov	d0, d8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp178:
; %bb.217:                              ;   in Loop: Header=BB0_190 Depth=1
Ltmp179:
Lloh115:
	adrp	x1, l_.str.30@PAGE
Lloh116:
	add	x1, x1, l_.str.30@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp180:
; %bb.218:                              ;   in Loop: Header=BB0_190 Depth=1
Ltmp181:
	fmov	d0, d9
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp182:
; %bb.219:                              ;   in Loop: Header=BB0_190 Depth=1
Ltmp183:
Lloh117:
	adrp	x1, l_.str.30@PAGE
Lloh118:
	add	x1, x1, l_.str.30@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp184:
; %bb.220:                              ;   in Loop: Header=BB0_190 Depth=1
Ltmp185:
	fmov	d0, d10
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp186:
; %bb.221:                              ;   in Loop: Header=BB0_190 Depth=1
Ltmp187:
Lloh119:
	adrp	x1, l_.str.12@PAGE
Lloh120:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp188:
; %bb.222:                              ;   in Loop: Header=BB0_190 Depth=1
	ldr	x9, [sp, #72]                   ; 8-byte Folded Reload
	add	x9, x9, #4
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	str	x9, [sp, #72]                   ; 8-byte Folded Spill
	cmp	x9, x8
	b.ne	LBB0_190
	b	LBB0_247
LBB0_223:                               ;   in Loop: Header=BB0_190 Depth=1
	mov	w8, #0                          ; =0x0
	dup.4s	v0, w26
	b	LBB0_225
LBB0_224:                               ;   in Loop: Header=BB0_225 Depth=2
	add	w8, w8, #1
	ldr	w9, [sp, #180]                  ; 4-byte Folded Reload
	cmp	w8, w9
	b.eq	LBB0_197
LBB0_225:                               ;   Parent Loop BB0_190 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_228 Depth 3
                                        ;       Child Loop BB0_231 Depth 3
	ldr	w9, [sp, #148]                  ; 4-byte Folded Reload
	tbz	w9, #0, LBB0_227
; %bb.226:                              ;   in Loop: Header=BB0_225 Depth=2
	mov	x10, #0                         ; =0x0
	b	LBB0_230
LBB0_227:                               ;   in Loop: Header=BB0_225 Depth=2
	ldr	x9, [sp, #160]                  ; 8-byte Folded Reload
	ldp	x10, x12, [sp, #184]            ; 16-byte Folded Reload
	mov	x11, x23
LBB0_228:                               ;   Parent Loop BB0_190 Depth=1
                                        ;     Parent Loop BB0_225 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldr	q1, [x12], #16
	ldr	q2, [x11], #16
	add.4s	v1, v2, v1
	mov.s	w13, v1[1]
	fmov	w14, s0
	mov.s	w15, v1[2]
	mov.s	w16, v1[3]
	fmov	w17, s1
	sdiv	w0, w17, w14
	msub	w14, w0, w14, w17
	mov.s	w17, v0[1]
	sdiv	w0, w13, w17
	msub	w13, w0, w17, w13
	fmov	s1, w14
	mov.s	w14, v0[2]
	sdiv	w17, w15, w14
	mov.s	v1[1], w13
	msub	w13, w17, w14, w15
	mov.s	w14, v0[3]
	sdiv	w15, w16, w14
	mov.s	v1[2], w13
	msub	w13, w15, w14, w16
	mov.s	v1[3], w13
	str	q1, [x10], #16
	subs	x9, x9, #4
	b.ne	LBB0_228
; %bb.229:                              ;   in Loop: Header=BB0_225 Depth=2
	ldr	x10, [sp, #160]                 ; 8-byte Folded Reload
	ldr	x9, [sp, #136]                  ; 8-byte Folded Reload
	cbz	x9, LBB0_224
LBB0_230:                               ;   in Loop: Header=BB0_225 Depth=2
	ldr	x9, [sp, #168]                  ; 8-byte Folded Reload
	add	x9, x9, x10
	lsl	x12, x10, #2
	ldp	x10, x13, [sp, #184]            ; 16-byte Folded Reload
	add	x10, x10, x12
	add	x11, x23, x12
	add	x12, x13, x12
LBB0_231:                               ;   Parent Loop BB0_190 Depth=1
                                        ;     Parent Loop BB0_225 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldr	w13, [x12], #4
	ldr	w14, [x11], #4
	add	w13, w14, w13
	sdiv	w14, w13, w26
	msub	w13, w14, w26, w13
	str	w13, [x10], #4
	adds	x9, x9, #1
	b.lo	LBB0_231
	b	LBB0_224
LBB0_232:                               ;   in Loop: Header=BB0_190 Depth=1
	mov	w8, #0                          ; =0x0
	add	w9, w26, w26, lsr #31
	asr	w9, w9, #1
	neg	w10, w9
	dup.4s	v0, w9
	dup.4s	v1, w10
	dup.4s	v2, w26
	b	LBB0_234
LBB0_233:                               ;   in Loop: Header=BB0_234 Depth=2
	add	w8, w8, #1
	ldr	w11, [sp, #180]                 ; 4-byte Folded Reload
	cmp	w8, w11
	b.eq	LBB0_198
LBB0_234:                               ;   Parent Loop BB0_190 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_239 Depth 3
                                        ;       Child Loop BB0_243 Depth 3
                                        ;       Child Loop BB0_246 Depth 3
	tbz	w0, #0, LBB0_236
; %bb.235:                              ;   in Loop: Header=BB0_234 Depth=2
	mov	x12, #0                         ; =0x0
	b	LBB0_245
LBB0_236:                               ;   in Loop: Header=BB0_234 Depth=2
	ldr	x11, [sp, #128]                 ; 8-byte Folded Reload
	cmp	x11, #16
	b.hs	LBB0_238
; %bb.237:                              ;   in Loop: Header=BB0_234 Depth=2
	mov	x14, #0                         ; =0x0
	b	LBB0_242
LBB0_238:                               ;   in Loop: Header=BB0_234 Depth=2
	ldp	x11, x12, [sp, #80]             ; 16-byte Folded Reload
	ldr	x13, [sp, #96]                  ; 8-byte Folded Reload
	ldr	x14, [sp, #112]                 ; 8-byte Folded Reload
LBB0_239:                               ;   Parent Loop BB0_190 Depth=1
                                        ;     Parent Loop BB0_234 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldp	q3, q4, [x11, #-32]
	ldp	q5, q6, [x11], #64
	ldp	q7, q16, [x12, #-32]
	ldp	q17, q18, [x12], #64
	add.4s	v3, v7, v3
	add.4s	v4, v16, v4
	add.4s	v5, v17, v5
	add.4s	v6, v18, v6
	cmgt.4s	v7, v3, v0
	cmgt.4s	v16, v4, v0
	cmgt.4s	v17, v5, v0
	cmgt.4s	v18, v6, v0
	cmgt.4s	v19, v3, v1
	cmgt.4s	v20, v4, v1
	cmgt.4s	v21, v5, v1
	cmgt.4s	v22, v6, v1
	and.16b	v7, v2, v7
	and.16b	v16, v2, v16
	and.16b	v17, v2, v17
	and.16b	v18, v2, v18
	sub.4s	v3, v3, v7
	sub.4s	v4, v4, v16
	sub.4s	v5, v5, v17
	sub.4s	v6, v6, v18
	bic.16b	v7, v2, v19
	bic.16b	v16, v2, v20
	bic.16b	v17, v2, v21
	bic.16b	v18, v2, v22
	add.4s	v3, v3, v7
	add.4s	v4, v4, v16
	add.4s	v5, v5, v17
	add.4s	v6, v6, v18
	stp	q3, q4, [x13, #-32]
	stp	q5, q6, [x13], #64
	subs	x14, x14, #16
	b.ne	LBB0_239
; %bb.240:                              ;   in Loop: Header=BB0_234 Depth=2
	ldr	x11, [sp, #120]                 ; 8-byte Folded Reload
	cbz	x11, LBB0_233
; %bb.241:                              ;   in Loop: Header=BB0_234 Depth=2
	ldp	x12, x11, [sp, #112]            ; 16-byte Folded Reload
	mov	x14, x12
	cmp	x11, #4
	b.lo	LBB0_245
LBB0_242:                               ;   in Loop: Header=BB0_234 Depth=2
	lsl	x13, x14, #2
	ldp	x15, x11, [sp, #184]            ; 16-byte Folded Reload
	add	x11, x11, x13
	add	x12, x23, x13
	add	x13, x15, x13
	ldr	x15, [sp, #104]                 ; 8-byte Folded Reload
	add	x14, x15, x14
LBB0_243:                               ;   Parent Loop BB0_190 Depth=1
                                        ;     Parent Loop BB0_234 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldr	q3, [x11], #16
	ldr	q4, [x12], #16
	add.4s	v3, v4, v3
	cmgt.4s	v4, v3, v0
	cmgt.4s	v5, v3, v1
	and.16b	v4, v2, v4
	sub.4s	v3, v3, v4
	bic.16b	v4, v2, v5
	add.4s	v3, v3, v4
	str	q3, [x13], #16
	adds	x14, x14, #4
	b.ne	LBB0_243
; %bb.244:                              ;   in Loop: Header=BB0_234 Depth=2
	ldr	x12, [sp, #160]                 ; 8-byte Folded Reload
	ldr	x11, [sp, #136]                 ; 8-byte Folded Reload
	cbz	x11, LBB0_233
LBB0_245:                               ;   in Loop: Header=BB0_234 Depth=2
	ldr	x11, [sp, #168]                 ; 8-byte Folded Reload
	add	x11, x11, x12
	lsl	x14, x12, #2
	ldp	x12, x15, [sp, #184]            ; 16-byte Folded Reload
	add	x12, x12, x14
	add	x13, x23, x14
	add	x14, x15, x14
LBB0_246:                               ;   Parent Loop BB0_190 Depth=1
                                        ;     Parent Loop BB0_234 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldr	w15, [x14], #4
	ldr	w16, [x13], #4
	add	w15, w16, w15
	cmp	w15, w9
	csel	w16, w26, wzr, gt
	cmp	w15, w10
	csel	w17, wzr, w26, gt
	sub	w15, w15, w16
	add	w15, w15, w17
	str	w15, [x12], #4
	adds	x11, x11, #1
	b.lo	LBB0_246
	b	LBB0_233
LBB0_247:
	str	x20, [sp, #2856]
	add	x8, sp, #3120
Ltmp190:
	add	x0, x8, #8
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5closeEv
Ltmp191:
; %bb.248:
	cbnz	x0, LBB0_250
; %bb.249:
	ldr	x8, [sp, #3120]
	ldur	x8, [x8, #-24]
	add	x9, sp, #3120
	add	x0, x9, x8
	ldr	w8, [x0, #32]
Ltmp192:
	orr	w1, w8, #0x4
	bl	__ZNSt3__18ios_base5clearEj
Ltmp193:
LBB0_250:
Ltmp194:
Lloh121:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh122:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh123:
	adrp	x1, l_.str.31@PAGE
Lloh124:
	add	x1, x1, l_.str.31@PAGEOFF
	mov	w2, #36                         ; =0x24
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp195:
; %bb.251:
	ldr	x0, [sp, #184]                  ; 8-byte Folded Reload
	cbz	x0, LBB0_253
; %bb.252:
	bl	__ZdlPv
LBB0_253:
	cbz	x23, LBB0_255
; %bb.254:
	mov	x0, x23
	bl	__ZdlPv
LBB0_255:
	ldr	x0, [sp, #192]                  ; 8-byte Folded Reload
	cbz	x0, LBB0_257
; %bb.256:
	bl	__ZdlPv
LBB0_257:
	mov	w19, #0                         ; =0x0
LBB0_258:
Lloh125:
	adrp	x20, __ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh126:
	ldr	x20, [x20, __ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	ldr	x8, [x20]
	str	x8, [sp, #3120]
	ldr	x9, [x20, #24]
	ldur	x8, [x8, #-24]
	add	x21, sp, #3120
	str	x9, [x21, x8]
	add	x0, x21, #8
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
	add	x0, sp, #3120
	add	x1, x20, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev
	add	x0, x21, #416
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	ldrsb	w8, [sp, #247]
	tbnz	w8, #31, LBB0_265
; %bb.259:
	ldrsb	w8, [sp, #271]
	tbnz	w8, #31, LBB0_266
LBB0_260:
	ldrsb	w8, [sp, #295]
	tbnz	w8, #31, LBB0_267
LBB0_261:
	ldrsb	w8, [sp, #327]
	tbnz	w8, #31, LBB0_268
LBB0_262:
	ldrsb	w8, [sp, #359]
	tbnz	w8, #31, LBB0_269
LBB0_263:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZdlPv
	ldur	x8, [x29, #-128]
Lloh127:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh128:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh129:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_274
; %bb.264:
	mov	x0, x19
	add	sp, sp, #3712
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #96]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #80]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #64]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #48]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #32]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #16]               ; 16-byte Folded Reload
	ldp	d11, d10, [sp], #128            ; 16-byte Folded Reload
	ret
LBB0_265:
	ldr	x0, [sp, #224]
	bl	__ZdlPv
	ldrsb	w8, [sp, #271]
	tbz	w8, #31, LBB0_260
LBB0_266:
	ldr	x0, [sp, #248]
	bl	__ZdlPv
	ldrsb	w8, [sp, #295]
	tbz	w8, #31, LBB0_261
LBB0_267:
	ldr	x0, [sp, #272]
	bl	__ZdlPv
	ldrsb	w8, [sp, #327]
	tbz	w8, #31, LBB0_262
LBB0_268:
	ldr	x0, [sp, #304]
	bl	__ZdlPv
	ldrsb	w8, [sp, #359]
	tbz	w8, #31, LBB0_263
LBB0_269:
	ldr	x0, [sp, #336]
	bl	__ZdlPv
	b	LBB0_263
LBB0_270:
Ltmp202:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_out_of_rangeB8ne200100Ev
Ltmp203:
	b	LBB0_282
LBB0_271:
Ltmp200:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev
Ltmp201:
	b	LBB0_282
LBB0_272:
Ltmp210:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_out_of_rangeB8ne200100Ev
Ltmp211:
	b	LBB0_282
LBB0_273:
Ltmp208:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev
Ltmp209:
	b	LBB0_282
LBB0_274:
	bl	___stack_chk_fail
LBB0_275:
Ltmp213:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev
Ltmp214:
	b	LBB0_282
LBB0_276:
Ltmp68:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev
Ltmp69:
	b	LBB0_282
LBB0_277:
Ltmp20:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev
Ltmp21:
	b	LBB0_282
LBB0_278:
Ltmp138:
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8ne200100Ev
Ltmp139:
	b	LBB0_282
LBB0_279:
Ltmp17:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev
Ltmp18:
	b	LBB0_282
LBB0_280:
Ltmp56:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_out_of_rangeB8ne200100Ev
Ltmp57:
	b	LBB0_282
LBB0_281:
Ltmp54:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev
Ltmp55:
LBB0_282:
	brk	#0x1
LBB0_283:
Ltmp58:
	b	LBB0_316
LBB0_284:
Ltmp19:
	b	LBB0_297
LBB0_285:
Ltmp137:
	mov	x19, x0
	b	LBB0_338
LBB0_286:
Ltmp134:
	mov	x19, x0
	ldr	x0, [sp, #192]                  ; 8-byte Folded Reload
	b	LBB0_324
LBB0_287:
Ltmp16:
	b	LBB0_292
LBB0_288:
Ltmp9:
	b	LBB0_292
LBB0_289:
Ltmp22:
	b	LBB0_297
LBB0_290:
Ltmp140:
	b	LBB0_301
LBB0_291:
Ltmp4:
LBB0_292:
	mov	x19, x0
	ldrsb	w8, [sp, #383]
	tbz	w8, #31, LBB0_298
; %bb.293:
	ldr	x0, [sp, #360]
	bl	__ZdlPv
	mov	x0, x19
	bl	__Unwind_Resume
LBB0_294:
Ltmp70:
	mov	x19, x0
	b	LBB0_326
LBB0_295:
Ltmp215:
	b	LBB0_297
LBB0_296:
Ltmp25:
LBB0_297:
	mov	x19, x0
LBB0_298:
	mov	x0, x19
	bl	__Unwind_Resume
LBB0_299:
Ltmp196:
	mov	x19, x0
	b	LBB0_321
LBB0_300:
Ltmp129:
LBB0_301:
	mov	x19, x0
	b	LBB0_325
LBB0_302:
Ltmp124:
	mov	x19, x0
	b	LBB0_326
LBB0_303:
Ltmp65:
	mov	x19, x0
	b	LBB0_326
LBB0_304:
Ltmp41:
	mov	x19, x0
	b	LBB0_326
LBB0_305:
Ltmp28:
	mov	x19, x0
	b	LBB0_326
LBB0_306:
Ltmp207:
	b	LBB0_316
LBB0_307:
Ltmp199:
	b	LBB0_316
LBB0_308:
Ltmp51:
	b	LBB0_316
LBB0_309:
Ltmp48:
	b	LBB0_314
LBB0_310:
Ltmp212:
	b	LBB0_316
LBB0_311:
Ltmp204:
	b	LBB0_316
LBB0_312:
Ltmp121:
	mov	x19, x0
	b	LBB0_326
LBB0_313:
Ltmp35:
LBB0_314:
	mov	x19, x0
	add	x0, sp, #200
	bl	__ZNSt3__16localeD1Ev
	b	LBB0_317
LBB0_315:
Ltmp38:
LBB0_316:
	mov	x19, x0
LBB0_317:
	ldrsb	w8, [sp, #2887]
	tbz	w8, #31, LBB0_319
; %bb.318:
	ldr	x0, [sp, #2864]
	bl	__ZdlPv
LBB0_319:
	add	x0, sp, #3120
	bl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
	b	LBB0_326
LBB0_320:
Ltmp189:
	mov	x19, x0
	str	x20, [sp, #2856]
LBB0_321:
	ldr	x0, [sp, #184]                  ; 8-byte Folded Reload
	cbnz	x0, LBB0_337
; %bb.322:
	cbnz	x23, LBB0_338
LBB0_323:
	ldr	x0, [sp, #192]                  ; 8-byte Folded Reload
	cbz	x0, LBB0_325
LBB0_324:
	bl	__ZdlPv
LBB0_325:
	add	x0, sp, #3120
	bl	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev
LBB0_326:
	ldrsb	w8, [sp, #247]
	tbz	w8, #31, LBB0_332
; %bb.327:
	ldr	x0, [sp, #224]
	bl	__ZdlPv
	ldrsb	w8, [sp, #271]
	tbnz	w8, #31, LBB0_333
LBB0_328:
	ldrsb	w8, [sp, #295]
	tbz	w8, #31, LBB0_334
LBB0_329:
	ldr	x0, [sp, #272]
	bl	__ZdlPv
	ldrsb	w8, [sp, #327]
	tbnz	w8, #31, LBB0_335
LBB0_330:
	ldrsb	w8, [sp, #359]
	tbz	w8, #31, LBB0_336
LBB0_331:
	ldr	x0, [sp, #336]
	bl	__ZdlPv
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZdlPv
	mov	x0, x19
	bl	__Unwind_Resume
LBB0_332:
	ldrsb	w8, [sp, #271]
	tbz	w8, #31, LBB0_328
LBB0_333:
	ldr	x0, [sp, #248]
	bl	__ZdlPv
	ldrsb	w8, [sp, #295]
	tbnz	w8, #31, LBB0_329
LBB0_334:
	ldrsb	w8, [sp, #327]
	tbz	w8, #31, LBB0_330
LBB0_335:
	ldr	x0, [sp, #304]
	bl	__ZdlPv
	ldrsb	w8, [sp, #359]
	tbnz	w8, #31, LBB0_331
LBB0_336:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZdlPv
	mov	x0, x19
	bl	__Unwind_Resume
LBB0_337:
	bl	__ZdlPv
	cbz	x23, LBB0_323
LBB0_338:
	mov	x0, x23
	bl	__ZdlPv
	ldr	x0, [sp, #192]                  ; 8-byte Folded Reload
	cbnz	x0, LBB0_324
	b	LBB0_325
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
	.loh AdrpAdd	Lloh75, Lloh76
	.loh AdrpAdd	Lloh77, Lloh78
	.loh AdrpAdd	Lloh81, Lloh82
	.loh AdrpLdrGot	Lloh79, Lloh80
	.loh AdrpAdd	Lloh83, Lloh84
	.loh AdrpAdd	Lloh87, Lloh88
	.loh AdrpLdrGot	Lloh85, Lloh86
	.loh AdrpAdd	Lloh89, Lloh90
	.loh AdrpAdd	Lloh93, Lloh94
	.loh AdrpLdrGot	Lloh91, Lloh92
	.loh AdrpAdd	Lloh95, Lloh96
	.loh AdrpAdd	Lloh99, Lloh100
	.loh AdrpLdrGot	Lloh97, Lloh98
	.loh AdrpAdd	Lloh101, Lloh102
	.loh AdrpAdd	Lloh105, Lloh106
	.loh AdrpLdrGot	Lloh103, Lloh104
	.loh AdrpAdd	Lloh107, Lloh108
	.loh AdrpAdd	Lloh109, Lloh110
	.loh AdrpAdd	Lloh111, Lloh112
	.loh AdrpAdd	Lloh113, Lloh114
	.loh AdrpAdd	Lloh115, Lloh116
	.loh AdrpAdd	Lloh117, Lloh118
	.loh AdrpAdd	Lloh119, Lloh120
	.loh AdrpAdd	Lloh123, Lloh124
	.loh AdrpLdrGot	Lloh121, Lloh122
	.loh AdrpLdrGot	Lloh125, Lloh126
	.loh AdrpLdrGotLdr	Lloh127, Lloh128, Lloh129
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
	.uleb128 Ltmp0-Lfunc_begin0             ; >> Call Site 1 <<
	.uleb128 Ltmp1-Ltmp0                    ;   Call between Ltmp0 and Ltmp1
	.uleb128 Ltmp215-Lfunc_begin0           ;     jumps to Ltmp215
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp1-Lfunc_begin0             ; >> Call Site 2 <<
	.uleb128 Ltmp2-Ltmp1                    ;   Call between Ltmp1 and Ltmp2
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp2-Lfunc_begin0             ; >> Call Site 3 <<
	.uleb128 Ltmp3-Ltmp2                    ;   Call between Ltmp2 and Ltmp3
	.uleb128 Ltmp4-Lfunc_begin0             ;     jumps to Ltmp4
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp23-Lfunc_begin0            ; >> Call Site 4 <<
	.uleb128 Ltmp24-Ltmp23                  ;   Call between Ltmp23 and Ltmp24
	.uleb128 Ltmp25-Lfunc_begin0            ;     jumps to Ltmp25
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp26-Lfunc_begin0            ; >> Call Site 5 <<
	.uleb128 Ltmp27-Ltmp26                  ;   Call between Ltmp26 and Ltmp27
	.uleb128 Ltmp28-Lfunc_begin0            ;     jumps to Ltmp28
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp29-Lfunc_begin0            ; >> Call Site 6 <<
	.uleb128 Ltmp30-Ltmp29                  ;   Call between Ltmp29 and Ltmp30
	.uleb128 Ltmp38-Lfunc_begin0            ;     jumps to Ltmp38
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp31-Lfunc_begin0            ; >> Call Site 7 <<
	.uleb128 Ltmp34-Ltmp31                  ;   Call between Ltmp31 and Ltmp34
	.uleb128 Ltmp35-Lfunc_begin0            ;     jumps to Ltmp35
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp36-Lfunc_begin0            ; >> Call Site 8 <<
	.uleb128 Ltmp37-Ltmp36                  ;   Call between Ltmp36 and Ltmp37
	.uleb128 Ltmp38-Lfunc_begin0            ;     jumps to Ltmp38
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp197-Lfunc_begin0           ; >> Call Site 9 <<
	.uleb128 Ltmp198-Ltmp197                ;   Call between Ltmp197 and Ltmp198
	.uleb128 Ltmp199-Lfunc_begin0           ;     jumps to Ltmp199
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp198-Lfunc_begin0           ; >> Call Site 10 <<
	.uleb128 Ltmp205-Ltmp198                ;   Call between Ltmp198 and Ltmp205
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp205-Lfunc_begin0           ; >> Call Site 11 <<
	.uleb128 Ltmp206-Ltmp205                ;   Call between Ltmp205 and Ltmp206
	.uleb128 Ltmp207-Lfunc_begin0           ;     jumps to Ltmp207
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp206-Lfunc_begin0           ; >> Call Site 12 <<
	.uleb128 Ltmp39-Ltmp206                 ;   Call between Ltmp206 and Ltmp39
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp39-Lfunc_begin0            ; >> Call Site 13 <<
	.uleb128 Ltmp40-Ltmp39                  ;   Call between Ltmp39 and Ltmp40
	.uleb128 Ltmp41-Lfunc_begin0            ;     jumps to Ltmp41
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp42-Lfunc_begin0            ; >> Call Site 14 <<
	.uleb128 Ltmp43-Ltmp42                  ;   Call between Ltmp42 and Ltmp43
	.uleb128 Ltmp51-Lfunc_begin0            ;     jumps to Ltmp51
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp44-Lfunc_begin0            ; >> Call Site 15 <<
	.uleb128 Ltmp47-Ltmp44                  ;   Call between Ltmp44 and Ltmp47
	.uleb128 Ltmp48-Lfunc_begin0            ;     jumps to Ltmp48
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp49-Lfunc_begin0            ; >> Call Site 16 <<
	.uleb128 Ltmp50-Ltmp49                  ;   Call between Ltmp49 and Ltmp50
	.uleb128 Ltmp51-Lfunc_begin0            ;     jumps to Ltmp51
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp5-Lfunc_begin0             ; >> Call Site 17 <<
	.uleb128 Ltmp6-Ltmp5                    ;   Call between Ltmp5 and Ltmp6
	.uleb128 Ltmp22-Lfunc_begin0            ;     jumps to Ltmp22
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp6-Lfunc_begin0             ; >> Call Site 18 <<
	.uleb128 Ltmp7-Ltmp6                    ;   Call between Ltmp6 and Ltmp7
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp7-Lfunc_begin0             ; >> Call Site 19 <<
	.uleb128 Ltmp8-Ltmp7                    ;   Call between Ltmp7 and Ltmp8
	.uleb128 Ltmp9-Lfunc_begin0             ;     jumps to Ltmp9
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp10-Lfunc_begin0            ; >> Call Site 20 <<
	.uleb128 Ltmp11-Ltmp10                  ;   Call between Ltmp10 and Ltmp11
	.uleb128 Ltmp19-Lfunc_begin0            ;     jumps to Ltmp19
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp11-Lfunc_begin0            ; >> Call Site 21 <<
	.uleb128 Ltmp12-Ltmp11                  ;   Call between Ltmp11 and Ltmp12
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp12-Lfunc_begin0            ; >> Call Site 22 <<
	.uleb128 Ltmp15-Ltmp12                  ;   Call between Ltmp12 and Ltmp15
	.uleb128 Ltmp16-Lfunc_begin0            ;     jumps to Ltmp16
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp52-Lfunc_begin0            ; >> Call Site 23 <<
	.uleb128 Ltmp53-Ltmp52                  ;   Call between Ltmp52 and Ltmp53
	.uleb128 Ltmp58-Lfunc_begin0            ;     jumps to Ltmp58
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp53-Lfunc_begin0            ; >> Call Site 24 <<
	.uleb128 Ltmp59-Ltmp53                  ;   Call between Ltmp53 and Ltmp59
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp59-Lfunc_begin0            ; >> Call Site 25 <<
	.uleb128 Ltmp62-Ltmp59                  ;   Call between Ltmp59 and Ltmp62
	.uleb128 Ltmp121-Lfunc_begin0           ;     jumps to Ltmp121
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp63-Lfunc_begin0            ; >> Call Site 26 <<
	.uleb128 Ltmp64-Ltmp63                  ;   Call between Ltmp63 and Ltmp64
	.uleb128 Ltmp65-Lfunc_begin0            ;     jumps to Ltmp65
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp66-Lfunc_begin0            ; >> Call Site 27 <<
	.uleb128 Ltmp67-Ltmp66                  ;   Call between Ltmp66 and Ltmp67
	.uleb128 Ltmp70-Lfunc_begin0            ;     jumps to Ltmp70
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp67-Lfunc_begin0            ; >> Call Site 28 <<
	.uleb128 Ltmp71-Ltmp67                  ;   Call between Ltmp67 and Ltmp71
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp71-Lfunc_begin0            ; >> Call Site 29 <<
	.uleb128 Ltmp120-Ltmp71                 ;   Call between Ltmp71 and Ltmp120
	.uleb128 Ltmp121-Lfunc_begin0           ;     jumps to Ltmp121
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp122-Lfunc_begin0           ; >> Call Site 30 <<
	.uleb128 Ltmp123-Ltmp122                ;   Call between Ltmp122 and Ltmp123
	.uleb128 Ltmp124-Lfunc_begin0           ;     jumps to Ltmp124
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp125-Lfunc_begin0           ; >> Call Site 31 <<
	.uleb128 Ltmp128-Ltmp125                ;   Call between Ltmp125 and Ltmp128
	.uleb128 Ltmp129-Lfunc_begin0           ;     jumps to Ltmp129
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp130-Lfunc_begin0           ; >> Call Site 32 <<
	.uleb128 Ltmp131-Ltmp130                ;   Call between Ltmp130 and Ltmp131
	.uleb128 Ltmp140-Lfunc_begin0           ;     jumps to Ltmp140
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp131-Lfunc_begin0           ; >> Call Site 33 <<
	.uleb128 Ltmp132-Ltmp131                ;   Call between Ltmp131 and Ltmp132
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp132-Lfunc_begin0           ; >> Call Site 34 <<
	.uleb128 Ltmp133-Ltmp132                ;   Call between Ltmp132 and Ltmp133
	.uleb128 Ltmp134-Lfunc_begin0           ;     jumps to Ltmp134
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp133-Lfunc_begin0           ; >> Call Site 35 <<
	.uleb128 Ltmp135-Ltmp133                ;   Call between Ltmp133 and Ltmp135
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp135-Lfunc_begin0           ; >> Call Site 36 <<
	.uleb128 Ltmp136-Ltmp135                ;   Call between Ltmp135 and Ltmp136
	.uleb128 Ltmp137-Lfunc_begin0           ;     jumps to Ltmp137
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp136-Lfunc_begin0           ; >> Call Site 37 <<
	.uleb128 Ltmp141-Ltmp136                ;   Call between Ltmp136 and Ltmp141
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp141-Lfunc_begin0           ; >> Call Site 38 <<
	.uleb128 Ltmp188-Ltmp141                ;   Call between Ltmp141 and Ltmp188
	.uleb128 Ltmp189-Lfunc_begin0           ;     jumps to Ltmp189
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp190-Lfunc_begin0           ; >> Call Site 39 <<
	.uleb128 Ltmp195-Ltmp190                ;   Call between Ltmp190 and Ltmp195
	.uleb128 Ltmp196-Lfunc_begin0           ;     jumps to Ltmp196
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp202-Lfunc_begin0           ; >> Call Site 40 <<
	.uleb128 Ltmp201-Ltmp202                ;   Call between Ltmp202 and Ltmp201
	.uleb128 Ltmp204-Lfunc_begin0           ;     jumps to Ltmp204
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp210-Lfunc_begin0           ; >> Call Site 41 <<
	.uleb128 Ltmp209-Ltmp210                ;   Call between Ltmp210 and Ltmp209
	.uleb128 Ltmp212-Lfunc_begin0           ;     jumps to Ltmp212
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp209-Lfunc_begin0           ; >> Call Site 42 <<
	.uleb128 Ltmp213-Ltmp209                ;   Call between Ltmp209 and Ltmp213
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp213-Lfunc_begin0           ; >> Call Site 43 <<
	.uleb128 Ltmp214-Ltmp213                ;   Call between Ltmp213 and Ltmp214
	.uleb128 Ltmp215-Lfunc_begin0           ;     jumps to Ltmp215
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp68-Lfunc_begin0            ; >> Call Site 44 <<
	.uleb128 Ltmp69-Ltmp68                  ;   Call between Ltmp68 and Ltmp69
	.uleb128 Ltmp70-Lfunc_begin0            ;     jumps to Ltmp70
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp20-Lfunc_begin0            ; >> Call Site 45 <<
	.uleb128 Ltmp21-Ltmp20                  ;   Call between Ltmp20 and Ltmp21
	.uleb128 Ltmp22-Lfunc_begin0            ;     jumps to Ltmp22
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp138-Lfunc_begin0           ; >> Call Site 46 <<
	.uleb128 Ltmp139-Ltmp138                ;   Call between Ltmp138 and Ltmp139
	.uleb128 Ltmp140-Lfunc_begin0           ;     jumps to Ltmp140
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp17-Lfunc_begin0            ; >> Call Site 47 <<
	.uleb128 Ltmp18-Ltmp17                  ;   Call between Ltmp17 and Ltmp18
	.uleb128 Ltmp19-Lfunc_begin0            ;     jumps to Ltmp19
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp56-Lfunc_begin0            ; >> Call Site 48 <<
	.uleb128 Ltmp55-Ltmp56                  ;   Call between Ltmp56 and Ltmp55
	.uleb128 Ltmp58-Lfunc_begin0            ;     jumps to Ltmp58
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp55-Lfunc_begin0            ; >> Call Site 49 <<
	.uleb128 Lfunc_end0-Ltmp55              ;   Call between Ltmp55 and Lfunc_end0
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
Lloh130:
	adrp	x25, __ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh131:
	ldr	x25, [x25, __ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	add	x24, x25, #64
	str	x24, [x0, #424]
Lloh132:
	adrp	x23, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh133:
	ldr	x23, [x23, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	ldp	x8, x9, [x23, #8]
	str	x8, [x0]
	ldur	x8, [x8, #-24]
	str	x9, [x0, x8]
	str	xzr, [x0, #8]
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x22, x0, x8
Ltmp216:
	add	x1, x0, #16
	mov	x0, x22
	bl	__ZNSt3__18ios_base4initEPv
Ltmp217:
; %bb.1:
	str	xzr, [x22, #136]
	mov	w8, #-1                         ; =0xffffffff
	str	w8, [x22, #144]
	add	x8, x25, #24
	str	x8, [x19]
	str	x24, [x19, #424]
Ltmp219:
	add	x0, x19, #16
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC1Ev
Ltmp220:
; %bb.2:
Ltmp222:
	add	x0, x19, #16
	orr	w2, w21, #0x8
	mov	x1, x20
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4openEPKcj
Ltmp223:
; %bb.3:
	cbnz	x0, LBB1_5
; %bb.4:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
	ldr	w8, [x0, #32]
Ltmp224:
	orr	w1, w8, #0x4
	bl	__ZNSt3__18ios_base5clearEj
Ltmp225:
LBB1_5:
	mov	x0, x19
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp], #80             ; 16-byte Folded Reload
	ret
LBB1_6:
Ltmp221:
	mov	x20, x0
	b	LBB1_9
LBB1_7:
Ltmp218:
	mov	x20, x0
	add	x0, x19, #424
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	mov	x0, x20
	bl	__Unwind_Resume
LBB1_8:
Ltmp226:
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
	.loh AdrpLdrGot	Lloh132, Lloh133
	.loh AdrpLdrGot	Lloh130, Lloh131
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
	.uleb128 Ltmp216-Lfunc_begin1           ; >> Call Site 1 <<
	.uleb128 Ltmp217-Ltmp216                ;   Call between Ltmp216 and Ltmp217
	.uleb128 Ltmp218-Lfunc_begin1           ;     jumps to Ltmp218
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp219-Lfunc_begin1           ; >> Call Site 2 <<
	.uleb128 Ltmp220-Ltmp219                ;   Call between Ltmp219 and Ltmp220
	.uleb128 Ltmp221-Lfunc_begin1           ;     jumps to Ltmp221
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp222-Lfunc_begin1           ; >> Call Site 3 <<
	.uleb128 Ltmp225-Ltmp222                ;   Call between Ltmp222 and Ltmp225
	.uleb128 Ltmp226-Lfunc_begin1           ;     jumps to Ltmp226
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp225-Lfunc_begin1           ; >> Call Site 4 <<
	.uleb128 Lfunc_end1-Ltmp225             ;   Call between Ltmp225 and Lfunc_end1
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
Lloh134:
	adrp	x20, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh135:
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
	.loh AdrpLdrGot	Lloh134, Lloh135
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
Lloh136:
	adrp	x25, __ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh137:
	ldr	x25, [x25, __ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	add	x24, x25, #64
	str	x24, [x0, #416]
Lloh138:
	adrp	x23, __ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh139:
	ldr	x23, [x23, __ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	ldp	x8, x9, [x23, #8]
	str	x8, [x0]
	ldur	x8, [x8, #-24]
	str	x9, [x0, x8]
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x22, x0, x8
Ltmp227:
	add	x1, x0, #8
	mov	x0, x22
	bl	__ZNSt3__18ios_base4initEPv
Ltmp228:
; %bb.1:
	str	xzr, [x22, #136]
	mov	w8, #-1                         ; =0xffffffff
	str	w8, [x22, #144]
	add	x8, x25, #24
	str	x8, [x19]
	str	x24, [x19, #416]
Ltmp230:
	add	x0, x19, #8
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC1Ev
Ltmp231:
; %bb.2:
Ltmp233:
	add	x0, x19, #8
	orr	w2, w21, #0x10
	mov	x1, x20
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4openEPKcj
Ltmp234:
; %bb.3:
	cbnz	x0, LBB3_5
; %bb.4:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
	ldr	w8, [x0, #32]
Ltmp235:
	orr	w1, w8, #0x4
	bl	__ZNSt3__18ios_base5clearEj
Ltmp236:
LBB3_5:
	mov	x0, x19
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp], #80             ; 16-byte Folded Reload
	ret
LBB3_6:
Ltmp232:
	mov	x20, x0
	b	LBB3_9
LBB3_7:
Ltmp229:
	mov	x20, x0
	add	x0, x19, #416
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	mov	x0, x20
	bl	__Unwind_Resume
LBB3_8:
Ltmp237:
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
	.loh AdrpLdrGot	Lloh138, Lloh139
	.loh AdrpLdrGot	Lloh136, Lloh137
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
	.uleb128 Ltmp227-Lfunc_begin2           ; >> Call Site 1 <<
	.uleb128 Ltmp228-Ltmp227                ;   Call between Ltmp227 and Ltmp228
	.uleb128 Ltmp229-Lfunc_begin2           ;     jumps to Ltmp229
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp230-Lfunc_begin2           ; >> Call Site 2 <<
	.uleb128 Ltmp231-Ltmp230                ;   Call between Ltmp230 and Ltmp231
	.uleb128 Ltmp232-Lfunc_begin2           ;     jumps to Ltmp232
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp233-Lfunc_begin2           ; >> Call Site 3 <<
	.uleb128 Ltmp236-Ltmp233                ;   Call between Ltmp233 and Ltmp236
	.uleb128 Ltmp237-Lfunc_begin2           ;     jumps to Ltmp237
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp236-Lfunc_begin2           ; >> Call Site 4 <<
	.uleb128 Lfunc_end2-Ltmp236             ;   Call between Ltmp236 and Lfunc_end2
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
Lloh140:
	adrp	x20, __ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh141:
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
	.loh AdrpLdrGot	Lloh140, Lloh141
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
Lloh142:
	adrp	x0, l_.str.32@PAGE
Lloh143:
	add	x0, x0, l_.str.32@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB8ne200100EPKc
	.loh AdrpAdd	Lloh142, Lloh143
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
Ltmp238:
	mov	x1, x20
	bl	__ZNSt12length_errorC1B8ne200100EPKc
Ltmp239:
; %bb.1:
Lloh144:
	adrp	x1, __ZTISt12length_error@GOTPAGE
Lloh145:
	ldr	x1, [x1, __ZTISt12length_error@GOTPAGEOFF]
Lloh146:
	adrp	x2, __ZNSt12length_errorD1Ev@GOTPAGE
Lloh147:
	ldr	x2, [x2, __ZNSt12length_errorD1Ev@GOTPAGEOFF]
	mov	x0, x19
	bl	___cxa_throw
LBB6_2:
Ltmp240:
	mov	x20, x0
	mov	x0, x19
	bl	___cxa_free_exception
	mov	x0, x20
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh146, Lloh147
	.loh AdrpLdrGot	Lloh144, Lloh145
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
	.uleb128 Ltmp238-Lfunc_begin3           ;   Call between Lfunc_begin3 and Ltmp238
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp238-Lfunc_begin3           ; >> Call Site 2 <<
	.uleb128 Ltmp239-Ltmp238                ;   Call between Ltmp238 and Ltmp239
	.uleb128 Ltmp240-Lfunc_begin3           ;     jumps to Ltmp240
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp239-Lfunc_begin3           ; >> Call Site 3 <<
	.uleb128 Lfunc_end3-Ltmp239             ;   Call between Ltmp239 and Lfunc_end3
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
Lloh148:
	adrp	x8, __ZTVSt12length_error@GOTPAGE
Lloh149:
	ldr	x8, [x8, __ZTVSt12length_error@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGot	Lloh148, Lloh149
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
	.private_extern	__ZNSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8ne200100Ev ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8ne200100Ev
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8ne200100Ev
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8ne200100Ev: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8ne200100Ev
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Lloh150:
	adrp	x0, l_.str.33@PAGE
Lloh151:
	add	x0, x0, l_.str.33@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB8ne200100EPKc
	.loh AdrpAdd	Lloh150, Lloh151
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_ ; -- Begin function _ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
	.globl	__ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
	.weak_def_can_be_hidden	__ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
	.p2align	2
__ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_: ; @_ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception4
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
	b.ne	LBB10_17
; %bb.1:
	ldrsb	w8, [x21, #23]
	tbnz	w8, #31, LBB10_3
; %bb.2:
	strb	wzr, [x21]
	strb	wzr, [x21, #23]
	b	LBB10_4
LBB10_3:
	ldr	x8, [x21]
	strb	wzr, [x8]
	str	xzr, [x21, #8]
LBB10_4:
	mov	x22, #0                         ; =0x0
	add	x23, x19, #40
	mov	x24, #-9                        ; =0xfffffffffffffff7
	movk	x24, #32767, lsl #48
LBB10_5:                                ; =>This Inner Loop Header: Depth=1
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	ldr	x0, [x23, x8]
	ldp	x8, x9, [x0, #24]
	cmp	x8, x9
	b.eq	LBB10_7
; %bb.6:                                ;   in Loop: Header=BB10_5 Depth=1
	add	x9, x8, #1
	str	x9, [x0, #24]
	ldrb	w0, [x8]
	b	LBB10_9
LBB10_7:                                ;   in Loop: Header=BB10_5 Depth=1
	ldr	x8, [x0]
	ldr	x8, [x8, #80]
Ltmp241:
	blr	x8
Ltmp242:
; %bb.8:                                ;   in Loop: Header=BB10_5 Depth=1
	cmn	w0, #1
	b.eq	LBB10_15
LBB10_9:                                ;   in Loop: Header=BB10_5 Depth=1
	and	w8, w0, #0xff
	cmp	w8, w20, uxtb
	b.eq	LBB10_14
; %bb.10:                               ;   in Loop: Header=BB10_5 Depth=1
Ltmp244:
	sxtb	w1, w0
	mov	x0, x21
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc
Ltmp245:
; %bb.11:                               ;   in Loop: Header=BB10_5 Depth=1
	ldrsb	w8, [x21, #23]
	sub	x22, x22, #1
	tbz	w8, #31, LBB10_5
; %bb.12:                               ;   in Loop: Header=BB10_5 Depth=1
	ldr	x8, [x21, #8]
	cmp	x8, x24
	b.ne	LBB10_5
; %bb.13:
	mov	w8, #4                          ; =0x4
	b	LBB10_16
LBB10_14:
	mov	w8, #0                          ; =0x0
	b	LBB10_16
LBB10_15:
	cmp	x22, #0
	mov	w8, #2                          ; =0x2
	mov	w9, #6                          ; =0x6
	csel	w8, w9, w8, eq
LBB10_16:
	ldr	x9, [x19]
	ldur	x9, [x9, #-24]
	add	x0, x19, x9
	ldr	w9, [x0, #32]
	orr	w1, w9, w8
	bl	__ZNSt3__18ios_base5clearEj
LBB10_17:
	mov	x0, x19
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB10_18:
Ltmp243:
	b	LBB10_20
LBB10_19:
Ltmp246:
LBB10_20:
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
	tbnz	w8, #0, LBB10_22
; %bb.21:
	bl	___cxa_end_catch
	mov	w8, #1                          ; =0x1
	b	LBB10_16
LBB10_22:
Ltmp247:
	bl	___cxa_rethrow
Ltmp248:
; %bb.23:
	brk	#0x1
LBB10_24:
Ltmp249:
	mov	x19, x0
Ltmp250:
	bl	___cxa_end_catch
Ltmp251:
; %bb.25:
	mov	x0, x19
	bl	__Unwind_Resume
LBB10_26:
Ltmp252:
	bl	___clang_call_terminate
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
	.uleb128 Lfunc_begin4-Lfunc_begin4      ; >> Call Site 1 <<
	.uleb128 Ltmp241-Lfunc_begin4           ;   Call between Lfunc_begin4 and Ltmp241
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp241-Lfunc_begin4           ; >> Call Site 2 <<
	.uleb128 Ltmp242-Ltmp241                ;   Call between Ltmp241 and Ltmp242
	.uleb128 Ltmp243-Lfunc_begin4           ;     jumps to Ltmp243
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp244-Lfunc_begin4           ; >> Call Site 3 <<
	.uleb128 Ltmp245-Ltmp244                ;   Call between Ltmp244 and Ltmp245
	.uleb128 Ltmp246-Lfunc_begin4           ;     jumps to Ltmp246
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp245-Lfunc_begin4           ; >> Call Site 4 <<
	.uleb128 Ltmp247-Ltmp245                ;   Call between Ltmp245 and Ltmp247
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp247-Lfunc_begin4           ; >> Call Site 5 <<
	.uleb128 Ltmp248-Ltmp247                ;   Call between Ltmp247 and Ltmp248
	.uleb128 Ltmp249-Lfunc_begin4           ;     jumps to Ltmp249
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp250-Lfunc_begin4           ; >> Call Site 6 <<
	.uleb128 Ltmp251-Ltmp250                ;   Call between Ltmp250 and Ltmp251
	.uleb128 Ltmp252-Lfunc_begin4           ;     jumps to Ltmp252
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp251-Lfunc_begin4           ; >> Call Site 7 <<
	.uleb128 Lfunc_end4-Ltmp251             ;   Call between Ltmp251 and Lfunc_end4
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
Lloh152:
	adrp	x0, l_.str.32@PAGE
Lloh153:
	add	x0, x0, l_.str.32@PAGEOFF
	bl	__ZNSt3__120__throw_out_of_rangeB8ne200100EPKc
	.loh AdrpAdd	Lloh152, Lloh153
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__120__throw_out_of_rangeB8ne200100EPKc ; -- Begin function _ZNSt3__120__throw_out_of_rangeB8ne200100EPKc
	.globl	__ZNSt3__120__throw_out_of_rangeB8ne200100EPKc
	.weak_def_can_be_hidden	__ZNSt3__120__throw_out_of_rangeB8ne200100EPKc
	.p2align	2
__ZNSt3__120__throw_out_of_rangeB8ne200100EPKc: ; @_ZNSt3__120__throw_out_of_rangeB8ne200100EPKc
Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception5
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
Ltmp253:
	mov	x1, x20
	bl	__ZNSt12out_of_rangeC1B8ne200100EPKc
Ltmp254:
; %bb.1:
Lloh154:
	adrp	x1, __ZTISt12out_of_range@GOTPAGE
Lloh155:
	ldr	x1, [x1, __ZTISt12out_of_range@GOTPAGEOFF]
Lloh156:
	adrp	x2, __ZNSt12out_of_rangeD1Ev@GOTPAGE
Lloh157:
	ldr	x2, [x2, __ZNSt12out_of_rangeD1Ev@GOTPAGEOFF]
	mov	x0, x19
	bl	___cxa_throw
LBB12_2:
Ltmp255:
	mov	x20, x0
	mov	x0, x19
	bl	___cxa_free_exception
	mov	x0, x20
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh156, Lloh157
	.loh AdrpLdrGot	Lloh154, Lloh155
Lfunc_end5:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table12:
Lexception5:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end5-Lcst_begin5
Lcst_begin5:
	.uleb128 Lfunc_begin5-Lfunc_begin5      ; >> Call Site 1 <<
	.uleb128 Ltmp253-Lfunc_begin5           ;   Call between Lfunc_begin5 and Ltmp253
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp253-Lfunc_begin5           ; >> Call Site 2 <<
	.uleb128 Ltmp254-Ltmp253                ;   Call between Ltmp253 and Ltmp254
	.uleb128 Ltmp255-Lfunc_begin5           ;     jumps to Ltmp255
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp254-Lfunc_begin5           ; >> Call Site 3 <<
	.uleb128 Lfunc_end5-Ltmp254             ;   Call between Ltmp254 and Lfunc_end5
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end5:
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
Lloh158:
	adrp	x8, __ZTVSt12out_of_range@GOTPAGE
Lloh159:
	ldr	x8, [x8, __ZTVSt12out_of_range@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGot	Lloh158, Lloh159
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m ; -- Begin function _ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.globl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_def_can_be_hidden	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.p2align	2
__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ; @_ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
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
	mov	x21, x2
	mov	x20, x1
	mov	x19, x0
Ltmp256:
	add	x0, sp, #8
	mov	x1, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp257:
; %bb.1:
	ldrb	w8, [sp, #8]
	cmp	w8, #1
	b.ne	LBB14_10
; %bb.2:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x4, x19, x8
	ldr	x22, [x4, #40]
	ldr	w24, [x4, #8]
	ldr	w23, [x4, #144]
	cmn	w23, #1
	b.ne	LBB14_7
; %bb.3:
Ltmp259:
	add	x8, sp, #24
	mov	x25, x4
	mov	x0, x4
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp260:
; %bb.4:
Ltmp261:
Lloh160:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh161:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #24
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp262:
; %bb.5:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp263:
	mov	w1, #32                         ; =0x20
	blr	x8
Ltmp264:
; %bb.6:
	mov	x23, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	mov	x4, x25
	str	w23, [x25, #144]
LBB14_7:
	mov	w8, #176                        ; =0xb0
	and	w8, w24, w8
	add	x3, x20, x21
	cmp	w8, #32
	csel	x2, x3, x20, eq
Ltmp266:
	sxtb	w5, w23
	mov	x0, x22
	mov	x1, x20
	bl	__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp267:
; %bb.8:
	cbnz	x0, LBB14_10
; %bb.9:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
	ldr	w8, [x0, #32]
	mov	w9, #5                          ; =0x5
Ltmp269:
	orr	w1, w8, w9
	bl	__ZNSt3__18ios_base5clearEj
Ltmp270:
LBB14_10:
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
LBB14_11:
	mov	x0, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB14_12:
Ltmp271:
	b	LBB14_15
LBB14_13:
Ltmp265:
	mov	x20, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	b	LBB14_16
LBB14_14:
Ltmp268:
LBB14_15:
	mov	x20, x0
LBB14_16:
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB14_18
LBB14_17:
Ltmp258:
	mov	x20, x0
LBB14_18:
	mov	x0, x20
	bl	___cxa_begin_catch
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
Ltmp272:
	add	x0, x19, x8
	bl	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp273:
; %bb.19:
	bl	___cxa_end_catch
	b	LBB14_11
LBB14_20:
Ltmp274:
	mov	x19, x0
Ltmp275:
	bl	___cxa_end_catch
Ltmp276:
; %bb.21:
	mov	x0, x19
	bl	__Unwind_Resume
LBB14_22:
Ltmp277:
	bl	___clang_call_terminate
	.loh AdrpLdrGot	Lloh160, Lloh161
Lfunc_end6:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table14:
Lexception6:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase1-Lttbaseref1
Lttbaseref1:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end6-Lcst_begin6
Lcst_begin6:
	.uleb128 Ltmp256-Lfunc_begin6           ; >> Call Site 1 <<
	.uleb128 Ltmp257-Ltmp256                ;   Call between Ltmp256 and Ltmp257
	.uleb128 Ltmp258-Lfunc_begin6           ;     jumps to Ltmp258
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp259-Lfunc_begin6           ; >> Call Site 2 <<
	.uleb128 Ltmp260-Ltmp259                ;   Call between Ltmp259 and Ltmp260
	.uleb128 Ltmp268-Lfunc_begin6           ;     jumps to Ltmp268
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp261-Lfunc_begin6           ; >> Call Site 3 <<
	.uleb128 Ltmp264-Ltmp261                ;   Call between Ltmp261 and Ltmp264
	.uleb128 Ltmp265-Lfunc_begin6           ;     jumps to Ltmp265
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp266-Lfunc_begin6           ; >> Call Site 4 <<
	.uleb128 Ltmp267-Ltmp266                ;   Call between Ltmp266 and Ltmp267
	.uleb128 Ltmp268-Lfunc_begin6           ;     jumps to Ltmp268
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp269-Lfunc_begin6           ; >> Call Site 5 <<
	.uleb128 Ltmp270-Ltmp269                ;   Call between Ltmp269 and Ltmp270
	.uleb128 Ltmp271-Lfunc_begin6           ;     jumps to Ltmp271
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp270-Lfunc_begin6           ; >> Call Site 6 <<
	.uleb128 Ltmp272-Ltmp270                ;   Call between Ltmp270 and Ltmp272
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp272-Lfunc_begin6           ; >> Call Site 7 <<
	.uleb128 Ltmp273-Ltmp272                ;   Call between Ltmp272 and Ltmp273
	.uleb128 Ltmp274-Lfunc_begin6           ;     jumps to Ltmp274
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp273-Lfunc_begin6           ; >> Call Site 8 <<
	.uleb128 Ltmp275-Ltmp273                ;   Call between Ltmp273 and Ltmp275
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp275-Lfunc_begin6           ; >> Call Site 9 <<
	.uleb128 Ltmp276-Ltmp275                ;   Call between Ltmp275 and Ltmp276
	.uleb128 Ltmp277-Lfunc_begin6           ;     jumps to Ltmp277
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp276-Lfunc_begin6           ; >> Call Site 10 <<
	.uleb128 Lfunc_end6-Ltmp276             ;   Call between Ltmp276 and Lfunc_end6
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
	.private_extern	__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ ; -- Begin function _ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.globl	__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.weak_def_can_be_hidden	__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.p2align	2
__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_: ; @_ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception7
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
	cbz	x0, LBB15_16
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
	b.lt	LBB15_3
; %bb.2:
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
	mov	x0, x19
	mov	x2, x25
	blr	x8
	cmp	x0, x25
	b.ne	LBB15_15
LBB15_3:
	cmp	x23, #1
	b.lt	LBB15_12
; %bb.4:
	mov	x8, #9223372036854775800        ; =0x7ffffffffffffff8
	cmp	x23, x8
	b.hs	LBB15_17
; %bb.5:
	cmp	x23, #23
	b.hs	LBB15_7
; %bb.6:
	strb	w23, [sp, #31]
	add	x25, sp, #8
	b	LBB15_8
LBB15_7:
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
LBB15_8:
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
Ltmp278:
	mov	x0, x19
	mov	x2, x23
	blr	x8
Ltmp279:
; %bb.9:
	ldrsb	w8, [sp, #31]
	tbnz	w8, #31, LBB15_11
; %bb.10:
	cmp	x0, x23
	b.ne	LBB15_15
	b	LBB15_12
LBB15_11:
	ldr	x8, [sp, #8]
	mov	x24, x0
	mov	x0, x8
	bl	__ZdlPv
	cmp	x24, x23
	b.ne	LBB15_15
LBB15_12:
	sub	x22, x22, x21
	cmp	x22, #1
	b.lt	LBB15_14
; %bb.13:
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
	mov	x0, x19
	mov	x1, x21
	mov	x2, x22
	blr	x8
	cmp	x0, x22
	b.ne	LBB15_15
LBB15_14:
	str	xzr, [x20, #24]
	b	LBB15_16
LBB15_15:
	mov	x19, #0                         ; =0x0
LBB15_16:
	mov	x0, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB15_17:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev
LBB15_18:
Ltmp280:
	mov	x19, x0
	ldrsb	w8, [sp, #31]
	tbz	w8, #31, LBB15_20
; %bb.19:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
LBB15_20:
	mov	x0, x19
	bl	__Unwind_Resume
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
	.uleb128 Ltmp278-Lfunc_begin7           ;   Call between Lfunc_begin7 and Ltmp278
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp278-Lfunc_begin7           ; >> Call Site 2 <<
	.uleb128 Ltmp279-Ltmp278                ;   Call between Ltmp278 and Ltmp279
	.uleb128 Ltmp280-Lfunc_begin7           ;     jumps to Ltmp280
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp279-Lfunc_begin7           ; >> Call Site 3 <<
	.uleb128 Lfunc_end7-Ltmp279             ;   Call between Ltmp279 and Lfunc_end7
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end7:
	.p2align	2, 0x0
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
	.asciz	"Polynomial Modular Add Benchmark (NTRU-style, large q)\n"

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
	.asciz	", reps = "

l_.str.20:                              ; @.str.20
	.asciz	"\n\n"

l_.str.21:                              ; @.str.21
	.asciz	"results_poly_mod.csv"

l_.str.22:                              ; @.str.22
	.asciz	"ERROR: could not open results_poly_mod.csv for writing\n"

l_.str.23:                              ; @.str.23
	.asciz	"q,N,reps,classic,reist,speedup\n"

l_.str.24:                              ; @.str.24
	.asciz	"q = "

l_.str.25:                              ; @.str.25
	.asciz	"  classic : "

l_.str.26:                              ; @.str.26
	.asciz	" s\n"

l_.str.27:                              ; @.str.27
	.asciz	"  REIST   : "

l_.str.28:                              ; @.str.28
	.asciz	"  speedup : "

l_.str.29:                              ; @.str.29
	.asciz	"x\n\n"

l_.str.30:                              ; @.str.30
	.asciz	","

l_.str.31:                              ; @.str.31
	.asciz	"CSV written to results_poly_mod.csv\n"

l_.str.32:                              ; @.str.32
	.asciz	"basic_string"

l_.str.33:                              ; @.str.33
	.asciz	"vector"

.subsections_via_symbols
