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
	sub	sp, sp, #256
	stp	d11, d10, [sp, #128]            ; 16-byte Folded Spill
	stp	d9, d8, [sp, #144]              ; 16-byte Folded Spill
	stp	x28, x27, [sp, #160]            ; 16-byte Folded Spill
	stp	x26, x25, [sp, #176]            ; 16-byte Folded Spill
	stp	x24, x23, [sp, #192]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #208]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #224]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #240]            ; 16-byte Folded Spill
	add	x29, sp, #240
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
	cmp	w0, #2
	b.lt	LBB0_3
; %bb.1:
	mov	x20, x1
	mov	x21, x0
	ldr	x0, [x1, #8]
	bl	_atoi
	mov	x19, x0
	cmp	w21, #2
	b.ne	LBB0_4
; %bb.2:
	mov	w28, #5000                      ; =0x1388
	b	LBB0_5
LBB0_3:
	mov	w28, #5000                      ; =0x1388
	mov	w19, #1024                      ; =0x400
	b	LBB0_5
LBB0_4:
	ldr	x0, [x20, #16]
	bl	_atoi
	mov	x28, x0
LBB0_5:
	mov	x24, #246294899589120           ; =0xe00100000000
	movk	x24, #127, lsl #48
Lloh0:
	adrp	x20, __ZNSt3__14coutE@GOTPAGE
Lloh1:
	ldr	x20, [x20, __ZNSt3__14coutE@GOTPAGEOFF]
	mov	w23, #57345                     ; =0xe001
	movk	w23, #127, lsl #16
	ldr	x8, [x20]
	ldur	x9, [x8, #-24]
	add	x9, x20, x9
	ldr	w10, [x9, #8]
	and	w10, w10, #0xfffffeff
	orr	w10, w10, #0x4
	str	w10, [x9, #8]
	ldur	x8, [x8, #-24]
	add	x8, x20, x8
	mov	w9, #6                          ; =0x6
	str	x9, [x8, #16]
Lloh2:
	adrp	x1, l_.str@PAGE
Lloh3:
	add	x1, x1, l_.str@PAGEOFF
	mov	x0, x20
	mov	w2, #49                         ; =0x31
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh4:
	adrp	x1, l_.str.1@PAGE
Lloh5:
	add	x1, x1, l_.str.1@PAGEOFF
	mov	x0, x20
	mov	w2, #12                         ; =0xc
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	w1, #57345                      ; =0xe001
	movk	w1, #127, lsl #16
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
Lloh6:
	adrp	x1, l_.str.2@PAGE
Lloh7:
	add	x1, x1, l_.str.2@PAGEOFF
	mov	w2, #6                          ; =0x6
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x1, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
Lloh8:
	adrp	x1, l_.str.3@PAGE
Lloh9:
	add	x1, x1, l_.str.3@PAGEOFF
	mov	w2, #11                         ; =0xb
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x1, x28
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
Lloh10:
	adrp	x21, l_.str.4@PAGE
Lloh11:
	add	x21, x21, l_.str.4@PAGEOFF
	mov	x1, x21
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh12:
	adrp	x1, l_.str.5@PAGE
Lloh13:
	add	x1, x1, l_.str.5@PAGEOFF
	mov	x0, x20
	mov	w2, #14                         ; =0xe
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x0, x20
	mov	x1, x21
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	sxtw	x27, w19
	cbz	w19, LBB0_16
; %bb.6:
	tbnz	w27, #31, LBB0_119
; %bb.7:
	lsl	x22, x27, #2
	mov	x0, x22
	bl	__Znwm
	str	x0, [sp, #72]                   ; 8-byte Folded Spill
	mov	x1, x22
	bl	_bzero
Ltmp0:
	mov	x0, x22
	bl	__Znwm
Ltmp1:
; %bb.8:
	str	x0, [sp, #64]                   ; 8-byte Folded Spill
	mov	x1, x22
	bl	_bzero
Ltmp3:
	mov	x0, x22
	bl	__Znwm
Ltmp4:
; %bb.9:
	mov	x21, x0
	mov	w19, #62303                     ; =0xf35f
	movk	w19, #15470, lsl #16
	mov	w20, #26125                     ; =0x660d
	movk	w20, #25, lsl #16
	mov	x1, x22
	bl	_bzero
	mov	x8, #0                          ; =0x0
	mov	w12, #1                         ; =0x1
	mov	w9, #897                        ; =0x381
	movk	w9, #16400, lsl #16
	mov	w10, #57345                     ; =0xe001
	movk	w10, #127, lsl #16
	mov	w11, #-8380417                  ; =0xff801fff
	ldp	x0, x17, [sp, #64]              ; 16-byte Folded Reload
LBB0_10:                                ; =>This Inner Loop Header: Depth=1
	madd	w12, w12, w20, w19
	umull	x13, w12, w9
	lsr	x13, x13, #53
	msub	w13, w13, w10, w12
	madd	w12, w12, w20, w19
	umull	x14, w12, w9
	lsr	x14, x14, #53
	msub	w14, w14, w10, w12
	madd	w12, w12, w20, w19
	umull	x15, w12, w9
	lsr	x15, x15, #53
	msub	w15, w15, w10, w12
	add	w16, w13, w11
	cmp	w13, #1023, lsl #12             ; =4190208
	csel	w13, w16, w13, hi
	add	w16, w14, w11
	cmp	w14, #1023, lsl #12             ; =4190208
	csel	w14, w16, w14, hi
	add	w16, w15, w11
	cmp	w15, #1023, lsl #12             ; =4190208
	csel	w15, w16, w15, hi
	str	w13, [x17, x8, lsl #2]
	str	w14, [x0, x8, lsl #2]
	str	w15, [x21, x8, lsl #2]
	add	x8, x8, #1
	cmp	x27, x8
	b.ne	LBB0_10
; %bb.11:
Ltmp6:
	mov	x0, x22
	bl	__Znwm
Ltmp7:
; %bb.12:
	str	x0, [sp, #88]                   ; 8-byte Folded Spill
	mov	x1, x22
	bl	_bzero
Ltmp9:
	mov	x0, x22
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	bl	__Znwm
Ltmp10:
; %bb.13:
	str	x0, [sp, #80]                   ; 8-byte Folded Spill
	mov	x1, x22
	bl	_bzero
Ltmp12:
	mov	x0, x22
	bl	__Znwm
Ltmp13:
; %bb.14:
	mov	x25, x0
	mov	x1, x22
	bl	_bzero
	mov	w8, w27
	cmp	w27, #3
	str	x25, [sp, #96]                  ; 8-byte Folded Spill
	b.hi	LBB0_17
; %bb.15:
	mov	x9, #0                          ; =0x0
	b	LBB0_20
LBB0_16:
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	stp	x0, xzr, [sp, #24]              ; 16-byte Folded Spill
	mov	x19, #0                         ; =0x0
	mov	x25, #0                         ; =0x0
	stp	xzr, xzr, [sp, #104]            ; 16-byte Folded Spill
	stp	xzr, xzr, [sp, #40]             ; 16-byte Folded Spill
	stp	xzr, xzr, [sp, #56]             ; 16-byte Folded Spill
	stp	xzr, xzr, [sp, #88]             ; 16-byte Folded Spill
	mov	x21, #0                         ; =0x0
	stp	xzr, xzr, [sp, #72]             ; 16-byte Folded Spill
	mov	x22, #0                         ; =0x0
	mov	x26, #0                         ; =0x0
	mov	w20, #-8380417                  ; =0xff801fff
	sub	x10, x19, x25
	lsr	x8, x10, #2
	cmp	w28, #1
	b.ge	LBB0_29
	b	LBB0_39
LBB0_17:
	and	x9, x8, #0x7ffffffc
	mov	w10, #57345                     ; =0xe001
	movk	w10, #127, lsl #16
	dup.4s	v0, w10
	mov	w10, #6655                      ; =0x19ff
	movk	w10, #36, lsl #16
	dup.4s	v1, w10
	mov	w10, #1537                      ; =0x601
	movk	w10, #32796, lsl #16
	dup.4s	v2, w10
	mov	x10, #246294899589120           ; =0xe00100000000
	movk	x10, #127, lsl #48
	dup.2d	v3, x10
	mov	w13, #-8380417                  ; =0xff801fff
	mov	x10, x9
	dup.4s	v4, w13
	ldp	x12, x13, [sp, #80]             ; 16-byte Folded Reload
	mov	x14, x21
	mov	x15, x20
	mov	x16, x19
LBB0_18:                                ; =>This Inner Loop Header: Depth=1
	ldr	q5, [x16], #16
	cmlt.4s	v6, v5, #0
	and.16b	v6, v6, v0
	ldr	q7, [x15], #16
	add.4s	v6, v5, v6
	cmlt.4s	v5, v7, #0
	and.16b	v5, v5, v0
	ldr	q16, [x14], #16
	cmlt.4s	v17, v16, #0
	add.4s	v7, v7, v5
	and.16b	v5, v17, v0
	add.4s	v5, v16, v5
	umull2.2d	v16, v6, v1
	umull.2d	v17, v6, v1
	umull2.2d	v18, v6, v2
	umull.2d	v19, v6, v2
	xtn.2s	v19, v19
	xtn.2s	v18, v18
	umull.2d	v18, v18, v0
	umull.2d	v19, v19, v0
	addhn.2s	v17, v19, v17
	umlal.2d	v19, v6, v1
	addhn2.4s	v17, v18, v16
	umlal2.2d	v18, v6, v1
	cmhi.2d	v6, v3, v19
	umull2.2d	v16, v7, v1
	umull.2d	v19, v7, v1
	cmhi.2d	v18, v3, v18
	umull2.2d	v20, v7, v2
	umull.2d	v21, v7, v2
	xtn.2s	v21, v21
	xtn.2s	v20, v20
	umull.2d	v20, v20, v0
	uzp1.4s	v6, v6, v18
	umull.2d	v18, v21, v0
	addhn.2s	v19, v18, v19
	umlal.2d	v18, v7, v1
	addhn2.4s	v19, v20, v16
	umlal2.2d	v20, v7, v1
	bic.16b	v6, v4, v6
	cmhi.2d	v7, v3, v20
	cmhi.2d	v16, v3, v18
	uzp1.4s	v7, v16, v7
	bic.16b	v7, v4, v7
	umull2.2d	v16, v5, v1
	add.4s	v6, v6, v17
	umull.2d	v17, v5, v1
	umull2.2d	v18, v5, v2
	umull.2d	v20, v5, v2
	xtn.2s	v20, v20
	xtn.2s	v18, v18
	add.4s	v7, v7, v19
	umull.2d	v18, v18, v0
	umull.2d	v19, v20, v0
	addhn.2s	v17, v19, v17
	umlal.2d	v19, v5, v1
	str	q6, [x13], #16
	addhn2.4s	v17, v18, v16
	umlal2.2d	v18, v5, v1
	cmhi.2d	v5, v3, v18
	cmhi.2d	v6, v3, v19
	str	q7, [x12], #16
	uzp1.4s	v5, v6, v5
	bic.16b	v5, v4, v5
	add.4s	v5, v5, v17
	str	q5, [x25], #16
	subs	x10, x10, #4
	b.ne	LBB0_18
; %bb.19:
	cmp	x9, x8
	b.eq	LBB0_22
LBB0_20:
	mov	x10, #0                         ; =0x0
	mov	w11, #1537                      ; =0x601
	movk	w11, #32796, lsl #16
	mov	w12, #6655                      ; =0x19ff
	movk	w12, #36, lsl #16
	lsl	x0, x9, #2
	add	x13, x19, x0
	add	x14, x20, x0
	add	x15, x21, x0
	ldp	x17, x16, [sp, #80]             ; 16-byte Folded Reload
	add	x16, x16, x0
	add	x17, x17, x0
	ldr	x1, [sp, #96]                   ; 8-byte Folded Reload
	add	x0, x1, x0
	sub	x8, x8, x9
	mov	w9, #-8380417                   ; =0xff801fff
LBB0_21:                                ; =>This Inner Loop Header: Depth=1
	ldr	w1, [x13, x10, lsl #2]
	add	w2, w1, w23
	cmp	w1, #0
	csel	w1, w2, w1, lt
	ldr	w2, [x14, x10, lsl #2]
	add	w3, w2, w23
	cmp	w2, #0
	csel	w2, w3, w2, lt
	ldr	w3, [x15, x10, lsl #2]
	add	w4, w3, w23
	cmp	w3, #0
	csel	w3, w4, w3, lt
	umull	x4, w12, w1
	mul	w1, w1, w11
	umaddl	x1, w23, w1, x4
	lsr	x4, x1, #32
	cmp	x1, x24
	csel	w1, wzr, w9, lo
	add	w1, w1, w4
	str	w1, [x16, x10, lsl #2]
	umull	x1, w12, w2
	mul	w2, w2, w11
	umaddl	x1, w23, w2, x1
	lsr	x2, x1, #32
	cmp	x1, x24
	csel	w1, wzr, w9, lo
	add	w1, w1, w2
	str	w1, [x17, x10, lsl #2]
	umull	x1, w12, w3
	mul	w2, w3, w11
	umaddl	x1, w23, w2, x1
	lsr	x2, x1, #32
	cmp	x1, x24
	csel	w1, wzr, w9, lo
	add	w1, w1, w2
	str	w1, [x0, x10, lsl #2]
	add	x10, x10, #1
	cmp	x8, x10
	b.ne	LBB0_21
LBB0_22:
Ltmp15:
	mov	x0, x22
	bl	__Znwm
Ltmp16:
; %bb.23:
	str	x0, [sp, #56]                   ; 8-byte Folded Spill
	mov	x1, x19
	mov	x2, x22
	bl	_memcpy
Ltmp18:
	mov	x0, x22
	bl	__Znwm
Ltmp19:
; %bb.24:
	str	x0, [sp, #48]                   ; 8-byte Folded Spill
	mov	x1, x20
	mov	x2, x22
	bl	_memcpy
Ltmp21:
	mov	x0, x22
	bl	__Znwm
Ltmp22:
; %bb.25:
	mov	x19, x0
	ldr	x1, [sp, #88]                   ; 8-byte Folded Reload
	mov	x2, x22
	bl	_memcpy
Ltmp24:
	mov	x0, x22
	str	x19, [sp, #112]                 ; 8-byte Folded Spill
	bl	__Znwm
Ltmp25:
; %bb.26:
	mov	x20, x0
	ldr	x1, [sp, #80]                   ; 8-byte Folded Reload
	mov	x2, x22
	bl	_memcpy
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
Ltmp27:
	mov	x0, x22
	str	x20, [sp, #104]                 ; 8-byte Folded Spill
	bl	__Znwm
Ltmp28:
; %bb.27:
	mov	x25, x0
	ldr	x1, [sp, #56]                   ; 8-byte Folded Reload
	mov	x2, x22
	bl	_memcpy
Ltmp30:
	mov	x0, x22
	bl	__Znwm
Ltmp31:
; %bb.28:
	mov	x26, x0
	add	x8, x19, x22
	str	x8, [sp, #40]                   ; 8-byte Folded Spill
	add	x8, x20, x22
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	add	x19, x25, x22
	ldr	x1, [sp, #48]                   ; 8-byte Folded Reload
	mov	x2, x22
	bl	_memcpy
	mov	w20, #-8380417                  ; =0xff801fff
	sub	x10, x19, x25
	lsr	x8, x10, #2
	cmp	w28, #1
	b.lt	LBB0_39
LBB0_29:
	cmp	w8, #1
	b.lt	LBB0_39
; %bb.30:
	mov	w9, #0                          ; =0x0
	ubfx	x13, x10, #2, #31
	lsl	x11, x13, #2
	add	x12, x25, x11
	cmp	x13, #4
	cset	w14, lo
	add	x15, x26, x11
	cmp	x25, x15
	ccmp	x26, x12, #2, lo
	cset	w16, lo
	add	x11, x21, x11
	cmp	x25, x11
	ccmp	x21, x12, #2, lo
	csinc	w12, w16, wzr, hs
	cmp	x26, x11
	ccmp	x21, x15, #2, lo
	csinc	w12, w12, wzr, hs
	ubfx	x10, x10, #2, #2
	sub	x11, x13, x10
	orr	w12, w14, w12
	neg	x13, x13
	mov	x14, #-8380417                  ; =0xffffffffff801fff
	mov	w15, #57345                     ; =0xe001
	movk	w15, #127, lsl #16
	dup.4s	v0, w15
	mov	w15, #8380416                   ; =0x7fe000
	dup.2d	v1, x15
	mov	w15, #4190208                   ; =0x3ff000
	dup.4s	v2, w15
	mov	w15, #-8380417                  ; =0xff801fff
	movi.2d	v3, #0x000000ffffffff
	dup.2d	v4, x14
	dup.4s	v5, w15
	b	LBB0_32
LBB0_31:                                ;   in Loop: Header=BB0_32 Depth=1
	add	w9, w9, #1
	cmp	w9, w28
	b.eq	LBB0_39
LBB0_32:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_35 Depth 2
                                        ;     Child Loop BB0_38 Depth 2
	tbz	w12, #0, LBB0_34
; %bb.33:                               ;   in Loop: Header=BB0_32 Depth=1
	mov	x17, #0                         ; =0x0
	b	LBB0_37
LBB0_34:                                ;   in Loop: Header=BB0_32 Depth=1
	mov	x16, x11
	mov	x17, x25
	mov	x0, x21
	mov	x1, x26
LBB0_35:                                ;   Parent Loop BB0_32 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	q6, [x1]
	ldr	q7, [x0], #16
	cmlt.4s	v16, v6, #0
	and.16b	v16, v16, v0
	add.4s	v6, v6, v16
	cmlt.4s	v16, v7, #0
	and.16b	v16, v16, v0
	add.4s	v7, v7, v16
	umull2.2d	v16, v7, v6
	umull.2d	v17, v7, v6
	ushr.2d	v17, v17, #23
	ushr.2d	v16, v16, #23
	and.16b	v16, v16, v3
	and.16b	v17, v17, v3
	mov.d	x2, v17[1]
	mul	x2, x2, x14
	fmov	x3, d17
	mul	x3, x3, x14
	fmov	d17, x3
	mov.d	v17[1], x2
	mov.d	x2, v16[1]
	mul	x2, x2, x14
	fmov	x3, d16
	mul	x3, x3, x14
	fmov	d16, x3
	mov.d	v16[1], x2
	umlal2.2d	v16, v7, v6
	umlal.2d	v17, v7, v6
	cmgt.2d	v6, v17, v1
	cmgt.2d	v7, v16, v1
	and.16b	v7, v7, v4
	add.2d	v7, v16, v7
	and.16b	v6, v6, v4
	add.2d	v6, v17, v6
	cmgt.2d	v16, v6, v1
	cmgt.2d	v17, v7, v1
	dup.2d	v18, x15
	and.16b	v17, v17, v18
	add.2d	v7, v7, v17
	and.16b	v16, v16, v18
	add.2d	v6, v6, v16
	uzp1.4s	v6, v6, v7
	cmgt.4s	v7, v6, v2
	and.16b	v7, v7, v5
	add.4s	v6, v6, v7
	ldr	q7, [x17]
	add.4s	v16, v6, v7
	cmlt.4s	v17, v16, #0
	and.16b	v17, v17, v0
	add.4s	v16, v17, v16
	cmgt.4s	v17, v0, v16
	bic.16b	v17, v5, v17
	add.4s	v16, v17, v16
	cmgt.4s	v17, v16, v2
	and.16b	v17, v17, v5
	add.4s	v16, v17, v16
	str	q16, [x17], #16
	sub.4s	v6, v7, v6
	cmlt.4s	v7, v6, #0
	and.16b	v7, v7, v0
	add.4s	v6, v7, v6
	cmgt.4s	v7, v0, v6
	bic.16b	v7, v5, v7
	add.4s	v6, v7, v6
	cmgt.4s	v7, v6, v2
	and.16b	v7, v7, v5
	add.4s	v6, v7, v6
	str	q6, [x1], #16
	subs	x16, x16, #4
	b.ne	LBB0_35
; %bb.36:                               ;   in Loop: Header=BB0_32 Depth=1
	mov	x17, x11
	cbz	x10, LBB0_31
LBB0_37:                                ;   in Loop: Header=BB0_32 Depth=1
	add	x16, x13, x17
	lsl	x1, x17, #2
	add	x17, x25, x1
	add	x0, x21, x1
	add	x1, x26, x1
LBB0_38:                                ;   Parent Loop BB0_32 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w2, [x1]
	ldr	w3, [x0], #4
	add	w4, w2, w23
	cmp	w2, #0
	csel	w2, w4, w2, lt
	add	w4, w3, w23
	cmp	w3, #0
	csel	w3, w4, w3, lt
	umull	x4, w3, w2
	ubfx	x4, x4, #23, #32
	mul	x4, x4, x14
	umaddl	x2, w3, w2, x4
	add	x3, x2, x14
	cmp	x2, #2046, lsl #12              ; =8380416
	csel	x2, x3, x2, gt
	add	w3, w2, w20
	cmp	x2, #2046, lsl #12              ; =8380416
	csel	w2, w3, w2, gt
	add	w3, w2, w15
	cmp	w2, #1023, lsl #12              ; =4190208
	csel	w2, w3, w2, gt
	ldr	w3, [x17]
	add	w4, w2, w3
	and	w5, w23, w4, asr #31
	add	w4, w5, w4
	cmp	w4, w23
	csel	w5, wzr, w15, lt
	add	w4, w5, w4
	cmp	w4, #1023, lsl #12              ; =4190208
	csel	w5, w15, wzr, gt
	add	w4, w5, w4
	str	w4, [x17], #4
	sub	w2, w3, w2
	and	w3, w23, w2, asr #31
	add	w2, w3, w2
	cmp	w2, w23
	csel	w3, wzr, w15, lt
	add	w2, w3, w2
	cmp	w2, #1023, lsl #12              ; =4190208
	csel	w3, w15, wzr, gt
	add	w2, w3, w2
	str	w2, [x1], #4
	adds	x16, x16, #1
	b.lo	LBB0_38
	b	LBB0_31
LBB0_39:
	add	w8, w8, w8, lsr #31
	asr	w8, w8, #1
	ldr	w8, [x26, w8, sxtw #2]
	ldr	w9, [x25]
	adrp	x11, __ZL6g_sink@PAGE
	ldr	x10, [x11, __ZL6g_sink@PAGEOFF]
	add	w8, w8, w9
	eor	x8, x10, x8
	str	x8, [x11, __ZL6g_sink@PAGEOFF]
	ldr	w8, [x25, #4]
	ldr	w9, [x26, #8]
	ldr	x10, [x11, __ZL6g_sink@PAGEOFF]
	add	w8, w9, w8
	eor	x8, x10, x8
	str	x8, [x11, __ZL6g_sink@PAGEOFF]
	mov	x0, x26
	bl	__ZdlPv
	mov	x0, x25
	bl	__ZdlPv
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	cbz	w27, LBB0_44
; %bb.40:
Ltmp33:
	mov	x0, x22
	bl	__Znwm
Ltmp34:
; %bb.41:
	mov	x26, x0
	add	x19, x0, x22
	ldr	x1, [sp, #56]                   ; 8-byte Folded Reload
	mov	x2, x22
	bl	_memcpy
	cbz	w27, LBB0_45
LBB0_42:
Ltmp36:
	mov	x0, x22
	bl	__Znwm
Ltmp37:
; %bb.43:
	mov	x25, x0
	ldr	x1, [sp, #48]                   ; 8-byte Folded Reload
	mov	x2, x22
	bl	_memcpy
	sub	x8, x19, x26
	lsr	x8, x8, #2
	cmp	w28, #1
	b.ge	LBB0_46
	b	LBB0_56
LBB0_44:
	mov	x26, #0                         ; =0x0
	mov	x19, #0                         ; =0x0
	cbnz	w27, LBB0_42
LBB0_45:
	mov	x25, #0                         ; =0x0
	sub	x8, x19, x26
	lsr	x8, x8, #2
	cmp	w28, #1
	b.lt	LBB0_56
LBB0_46:
	mov	w9, #0                          ; =0x0
	and	w16, w8, #0xfffffffc
	sxtw	x10, w16
	sxtw	x11, w8
	orr	x12, x10, #0x1
	cmp	x12, x11
	csinc	x15, x11, x10, le
	and	x12, x15, #0x3
	sub	x13, x15, x10
	sub	x14, x13, x12
	add	x14, x14, x10
	mov	x17, x10
	bfxil	x17, x15, #0, #2
	sub	x15, x17, x15
	sbfiz	x1, x16, #2, #32
	add	x16, x25, x1
	add	x17, x21, x1
	mov	w0, #57345                      ; =0xe001
	movk	w0, #127, lsl #16
	dup.4s	v0, w0
	mov	w0, #-8380417                   ; =0xff801fff
	dup.4s	v1, w0
	add	x1, x26, x1
	movi.2s	v2, #2, lsl #8
	mov	w2, #4190208                    ; =0x3ff000
	dup.4s	v3, w2
	mov	w2, #8380416                    ; =0x7fe000
	dup.2d	v4, x2
	mov	x2, #-8380417                   ; =0xffffffffff801fff
	movi.2d	v5, #0x000000ffffffff
	dup.2d	v6, x2
	b	LBB0_48
LBB0_47:                                ;   in Loop: Header=BB0_48 Depth=1
	add	w9, w9, #1
	cmp	w9, w28
	b.eq	LBB0_56
LBB0_48:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_50 Depth 2
                                        ;     Child Loop BB0_53 Depth 2
                                        ;     Child Loop BB0_55 Depth 2
	cmp	w10, #1
	b.lt	LBB0_51
; %bb.49:                               ;   in Loop: Header=BB0_48 Depth=1
	mov	x3, #0                          ; =0x0
	mov	x4, x26
	mov	x5, x25
	mov	x6, x21
LBB0_50:                                ;   Parent Loop BB0_48 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	q7, [x4]
	ldr	q16, [x5]
	ldr	q17, [x6], #16
	cmlt.4s	v18, v16, #0
	and.16b	v18, v18, v0
	add.4s	v16, v18, v16
	cmgt.4s	v18, v0, v16
	bic.16b	v18, v1, v18
	add.4s	v16, v18, v16
	cmlt.4s	v18, v17, #0
	and.16b	v18, v18, v0
	add.4s	v17, v18, v17
	cmgt.4s	v18, v0, v17
	bic.16b	v18, v1, v18
	add.4s	v17, v18, v17
	umull.2d	v18, v16, v17
	umull2.2d	v16, v16, v17
	xtn.2s	v17, v18
	umull.2d	v17, v17, v2
	xtn.2s	v19, v16
	umull.2d	v19, v19, v2
	shrn.2s	v17, v17, #32
	shrn.2s	v19, v19, #32
	umlsl.2d	v18, v17, v0
	umlsl.2d	v16, v19, v0
	uzp1.4s	v16, v18, v16
	cmhi.4s	v17, v0, v16
	bic.16b	v17, v1, v17
	add.4s	v16, v17, v16
	cmhi.4s	v17, v0, v16
	bic.16b	v17, v1, v17
	add.4s	v16, v17, v16
	cmgt.4s	v17, v16, v3
	and.16b	v17, v17, v1
	add.4s	v16, v17, v16
	add.4s	v17, v16, v7
	cmlt.4s	v18, v17, #0
	and.16b	v18, v18, v0
	add.4s	v17, v18, v17
	cmgt.4s	v18, v0, v17
	bic.16b	v18, v1, v18
	add.4s	v17, v18, v17
	cmgt.4s	v18, v17, v3
	and.16b	v18, v18, v1
	add.4s	v17, v18, v17
	sub.4s	v7, v7, v16
	cmlt.4s	v16, v7, #0
	and.16b	v16, v16, v0
	add.4s	v7, v16, v7
	cmgt.4s	v16, v0, v7
	bic.16b	v16, v1, v16
	add.4s	v7, v16, v7
	cmgt.4s	v16, v7, v3
	and.16b	v16, v16, v1
	add.4s	v7, v16, v7
	str	q17, [x4], #16
	str	q7, [x5], #16
	add	x3, x3, #4
	cmp	x3, x10
	b.lt	LBB0_50
LBB0_51:                                ;   in Loop: Header=BB0_48 Depth=1
	cmp	w10, w8
	b.eq	LBB0_47
; %bb.52:                               ;   in Loop: Header=BB0_48 Depth=1
	mov	x7, x10
	mov	x3, x1
	mov	x4, x17
	mov	x5, x16
	mov	x6, x15
	cmp	x13, #4
	b.lo	LBB0_55
LBB0_53:                                ;   Parent Loop BB0_48 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	q7, [x5]
	ldr	q16, [x4], #16
	cmlt.4s	v17, v7, #0
	and.16b	v17, v17, v0
	add.4s	v7, v7, v17
	cmlt.4s	v17, v16, #0
	and.16b	v17, v17, v0
	add.4s	v16, v16, v17
	umull2.2d	v17, v16, v7
	umull.2d	v18, v16, v7
	ushr.2d	v18, v18, #23
	ushr.2d	v17, v17, #23
	and.16b	v17, v17, v5
	and.16b	v18, v18, v5
	mov.d	x7, v18[1]
	mul	x7, x7, x2
	fmov	x19, d18
	mul	x19, x19, x2
	fmov	d18, x19
	mov.d	v18[1], x7
	mov.d	x7, v17[1]
	mul	x7, x7, x2
	fmov	x19, d17
	mul	x19, x19, x2
	fmov	d17, x19
	mov.d	v17[1], x7
	umlal2.2d	v17, v16, v7
	umlal.2d	v18, v16, v7
	cmgt.2d	v7, v18, v4
	cmgt.2d	v16, v17, v4
	and.16b	v16, v16, v6
	add.2d	v16, v17, v16
	and.16b	v7, v7, v6
	add.2d	v7, v18, v7
	cmgt.2d	v17, v7, v4
	cmgt.2d	v18, v16, v4
	dup.2d	v19, x0
	and.16b	v18, v18, v19
	add.2d	v16, v16, v18
	and.16b	v17, v17, v19
	add.2d	v7, v7, v17
	uzp1.4s	v7, v7, v16
	cmgt.4s	v16, v7, v3
	and.16b	v16, v16, v1
	add.4s	v7, v7, v16
	ldr	q16, [x3]
	add.4s	v17, v7, v16
	cmlt.4s	v18, v17, #0
	and.16b	v18, v18, v0
	add.4s	v17, v18, v17
	cmgt.4s	v18, v0, v17
	bic.16b	v18, v1, v18
	add.4s	v17, v18, v17
	cmgt.4s	v18, v17, v3
	and.16b	v18, v18, v1
	add.4s	v17, v18, v17
	str	q17, [x3], #16
	sub.4s	v7, v16, v7
	cmlt.4s	v16, v7, #0
	and.16b	v16, v16, v0
	add.4s	v7, v16, v7
	cmgt.4s	v16, v0, v7
	bic.16b	v16, v1, v16
	add.4s	v7, v16, v7
	cmgt.4s	v16, v7, v3
	and.16b	v16, v16, v1
	add.4s	v7, v16, v7
	str	q7, [x5], #16
	adds	x6, x6, #4
	b.ne	LBB0_53
; %bb.54:                               ;   in Loop: Header=BB0_48 Depth=1
	mov	x7, x14
	cbz	x12, LBB0_47
LBB0_55:                                ;   Parent Loop BB0_48 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w3, [x25, x7, lsl #2]
	ldr	w4, [x21, x7, lsl #2]
	add	w5, w3, w23
	cmp	w3, #0
	csel	w3, w5, w3, lt
	add	w5, w4, w23
	cmp	w4, #0
	csel	w4, w5, w4, lt
	umull	x5, w4, w3
	ubfx	x5, x5, #23, #32
	mul	x5, x5, x2
	umaddl	x3, w4, w3, x5
	add	x4, x3, x2
	cmp	x3, #2046, lsl #12              ; =8380416
	csel	x3, x4, x3, gt
	add	w4, w3, w20
	cmp	x3, #2046, lsl #12              ; =8380416
	csel	w3, w4, w3, gt
	add	w4, w3, w0
	cmp	w3, #1023, lsl #12              ; =4190208
	csel	w3, w4, w3, gt
	ldr	w4, [x26, x7, lsl #2]
	add	w5, w3, w4
	and	w6, w23, w5, asr #31
	add	w5, w6, w5
	cmp	w5, w23
	csel	w6, wzr, w0, lt
	add	w5, w6, w5
	cmp	w5, #1023, lsl #12              ; =4190208
	csel	w6, w0, wzr, gt
	add	w5, w6, w5
	str	w5, [x26, x7, lsl #2]
	sub	w3, w4, w3
	and	w4, w23, w3, asr #31
	add	w3, w4, w3
	cmp	w3, w23
	csel	w4, wzr, w0, lt
	add	w3, w4, w3
	cmp	w3, #1023, lsl #12              ; =4190208
	csel	w4, w0, wzr, gt
	add	w3, w4, w3
	str	w3, [x25, x7, lsl #2]
	add	x7, x7, #1
	cmp	x7, x11
	b.lt	LBB0_55
	b	LBB0_47
LBB0_56:
	ldr	w9, [x26]
	add	w8, w8, w8, lsr #31
	asr	w8, w8, #1
	ldr	w8, [x25, w8, sxtw #2]
	adrp	x11, __ZL6g_sink@PAGE
	ldr	x10, [x11, __ZL6g_sink@PAGEOFF]
	add	w8, w8, w9
	eor	x8, x10, x8
	str	x8, [x11, __ZL6g_sink@PAGEOFF]
	ldr	w8, [x26, #4]
	ldr	w9, [x25, #8]
	ldr	x10, [x11, __ZL6g_sink@PAGEOFF]
	add	w8, w9, w8
	eor	x8, x10, x8
	str	x8, [x11, __ZL6g_sink@PAGEOFF]
	mov	x0, x25
	bl	__ZdlPv
	mov	x0, x26
	bl	__ZdlPv
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x26, x0
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x8, [sp, #112]                  ; 8-byte Folded Reload
	ldr	x9, [sp, #40]                   ; 8-byte Folded Reload
	subs	x27, x9, x8
	b.eq	LBB0_63
; %bb.57:
	tbnz	x27, #63, LBB0_120
; %bb.58:
Ltmp39:
	mov	x0, x27
	bl	__Znwm
Ltmp40:
; %bb.59:
	mov	x25, x0
	add	x19, x0, x27
	ldr	x1, [sp, #112]                  ; 8-byte Folded Reload
	mov	x2, x27
	bl	_memcpy
	ldr	x8, [sp, #104]                  ; 8-byte Folded Reload
	ldr	x9, [sp, #32]                   ; 8-byte Folded Reload
	subs	x22, x9, x8
	b.eq	LBB0_64
LBB0_60:
	tbnz	x22, #63, LBB0_121
; %bb.61:
Ltmp44:
	mov	x0, x22
	bl	__Znwm
Ltmp45:
; %bb.62:
	mov	x27, x0
	ldr	x1, [sp, #104]                  ; 8-byte Folded Reload
	mov	x2, x22
	bl	_memcpy
	sub	x11, x19, x25
	lsr	x8, x11, #2
	cmp	w28, #1
	ldr	x6, [sp, #96]                   ; 8-byte Folded Reload
	b.ge	LBB0_65
	b	LBB0_75
LBB0_63:
	mov	x25, #0                         ; =0x0
	mov	x19, #0                         ; =0x0
	ldr	x8, [sp, #104]                  ; 8-byte Folded Reload
	ldr	x9, [sp, #32]                   ; 8-byte Folded Reload
	subs	x22, x9, x8
	b.ne	LBB0_60
LBB0_64:
	mov	x27, #0                         ; =0x0
	sub	x11, x19, x25
	lsr	x8, x11, #2
	cmp	w28, #1
	ldr	x6, [sp, #96]                   ; 8-byte Folded Reload
	b.lt	LBB0_75
LBB0_65:
	cmp	w8, #1
	b.lt	LBB0_75
; %bb.66:
	mov	w9, #0                          ; =0x0
	ubfx	x10, x11, #2, #31
	ubfx	x11, x11, #2, #2
	sub	x12, x10, x11
	neg	x13, x10
	mov	w14, #57343                     ; =0xdfff
	movk	w14, #64639, lsl #16
	mov	w15, #57345                     ; =0xe001
	movk	w15, #127, lsl #16
	dup.4s	v0, w15
	mov	x15, #246294899589120           ; =0xe00100000000
	movk	x15, #127, lsl #48
	dup.2d	v1, x15
	mov	w15, #-8380417                  ; =0xff801fff
	dup.4s	v2, w15
	mov	w16, #8380416                   ; =0x7fe000
	dup.4s	v3, w16
	b	LBB0_68
LBB0_67:                                ;   in Loop: Header=BB0_68 Depth=1
	add	w9, w9, #1
	cmp	w9, w28
	b.eq	LBB0_75
LBB0_68:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_71 Depth 2
                                        ;     Child Loop BB0_74 Depth 2
	cmp	x10, #4
	b.hs	LBB0_70
; %bb.69:                               ;   in Loop: Header=BB0_68 Depth=1
	mov	x17, #0                         ; =0x0
	b	LBB0_73
LBB0_70:                                ;   in Loop: Header=BB0_68 Depth=1
	mov	x16, x12
	mov	x17, x25
	mov	x0, x6
	mov	x1, x27
LBB0_71:                                ;   Parent Loop BB0_68 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	q4, [x1]
	ldr	q5, [x0], #16
	umull.2d	v6, v5, v4
	umull2.2d	v7, v5, v4
	mov.d	x2, v7[1]
	mul	w2, w2, w14
	fmov	x3, d7
	mul	w3, w3, w14
	fmov	d16, x3
	mov.d	v16[1], x2
	mov.d	x2, v6[1]
	mul	w2, w2, w14
	fmov	x3, d6
	mul	w3, w3, w14
	fmov	d17, x3
	mov.d	v17[1], x2
	xtn.2s	v17, v17
	xtn.2s	v16, v16
	umull.2d	v16, v16, v0
	umull.2d	v17, v17, v0
	addhn.2s	v6, v17, v6
	umlal.2d	v17, v5, v4
	addhn2.4s	v6, v16, v7
	umlal2.2d	v16, v5, v4
	cmhi.2d	v4, v1, v16
	cmhi.2d	v5, v1, v17
	uzp1.4s	v4, v5, v4
	bic.16b	v4, v2, v4
	add.4s	v4, v4, v6
	ldr	q5, [x17]
	add.4s	v6, v4, v5
	cmhi.4s	v7, v6, v3
	cmhi.4s	v16, v5, v6
	orr.16b	v7, v7, v16
	and.16b	v7, v7, v2
	add.4s	v6, v7, v6
	str	q6, [x17], #16
	sub.4s	v6, v5, v4
	cmhi.4s	v4, v4, v5
	and.16b	v4, v4, v0
	add.4s	v4, v6, v4
	str	q4, [x1], #16
	subs	x16, x16, #4
	b.ne	LBB0_71
; %bb.72:                               ;   in Loop: Header=BB0_68 Depth=1
	mov	x17, x12
	cbz	x11, LBB0_67
LBB0_73:                                ;   in Loop: Header=BB0_68 Depth=1
	add	x16, x13, x17
	lsl	x1, x17, #2
	add	x17, x25, x1
	add	x0, x6, x1
	add	x1, x27, x1
LBB0_74:                                ;   Parent Loop BB0_68 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w2, [x1]
	ldr	w3, [x0], #4
	umull	x2, w3, w2
	mul	w3, w2, w14
	umaddl	x2, w23, w3, x2
	lsr	x3, x2, #32
	cmp	x2, x24
	csel	w2, wzr, w15, lo
	ldr	w4, [x17]
	add	w2, w2, w3
	adds	w3, w2, w4
	cmp	w3, #2046, lsl #12              ; =8380416
	cset	w3, hi
	adds	w5, w2, w4
	csinc	w3, w3, wzr, lo
	cmp	w3, #0
	csel	w3, w15, wzr, ne
	add	w3, w3, w5
	str	w3, [x17], #4
	subs	w2, w4, w2
	csel	w3, w23, wzr, lo
	add	w2, w2, w3
	str	w2, [x1], #4
	adds	x16, x16, #1
	b.lo	LBB0_74
	b	LBB0_67
LBB0_75:
	add	w8, w8, w8, lsr #31
	asr	w8, w8, #1
	ldr	w8, [x27, w8, sxtw #2]
	ldr	w9, [x25]
	eor	w8, w8, w9
	mov	w9, #57343                      ; =0xdfff
	movk	w9, #64639, lsl #16
	mul	w10, w8, w9
	umaddl	x8, w23, w10, x8
	lsr	x10, x8, #32
	cmp	x8, x24
	csel	w8, w24, w20, lo
	adrp	x12, __ZL6g_sink@PAGE
	ldr	x11, [x12, __ZL6g_sink@PAGEOFF]
	add	w8, w8, w10
	eor	x8, x8, x11
	str	x8, [x12, __ZL6g_sink@PAGEOFF]
	ldr	w8, [x25, #12]
	ldr	w10, [x27, #16]
	eor	w8, w10, w8
	mul	w9, w8, w9
	umaddl	x8, w23, w9, x8
	lsr	x9, x8, #32
	cmp	x8, x24
	csel	w8, w24, w20, lo
	ldr	x10, [x12, __ZL6g_sink@PAGEOFF]
	add	w8, w8, w9
	eor	x8, x8, x10
	str	x8, [x12, __ZL6g_sink@PAGEOFF]
	mov	x0, x27
	bl	__ZdlPv
	mov	x0, x25
	bl	__ZdlPv
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x25, x0
Ltmp49:
Lloh14:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh15:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh16:
	adrp	x1, l_.str.6@PAGE
Lloh17:
	add	x1, x1, l_.str.6@PAGEOFF
	mov	w2, #18                         ; =0x12
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp50:
; %bb.76:
Ltmp51:
Lloh18:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh19:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh20:
	adrp	x1, l_.str.7@PAGE
Lloh21:
	add	x1, x1, l_.str.7@PAGEOFF
	mov	w2, #20                         ; =0x14
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp52:
; %bb.77:
Ltmp53:
	ldp	x9, x8, [sp, #16]               ; 16-byte Folded Reload
	sub	x8, x9, x8
	mov	x9, #225833675390976            ; =0xcd6500000000
	movk	x9, #16845, lsl #48
	scvtf	d0, x8
	fmov	d1, x9
	fdiv	d8, d0, d1
	fmov	d0, d8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp54:
; %bb.78:
Ltmp55:
Lloh22:
	adrp	x1, l_.str.4@PAGE
Lloh23:
	add	x1, x1, l_.str.4@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp56:
; %bb.79:
Ltmp57:
Lloh24:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh25:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh26:
	adrp	x1, l_.str.8@PAGE
Lloh27:
	add	x1, x1, l_.str.8@PAGEOFF
	mov	w2, #20                         ; =0x14
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp58:
; %bb.80:
Ltmp59:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	sub	x8, x26, x8
	mov	x9, #225833675390976            ; =0xcd6500000000
	movk	x9, #16845, lsl #48
	scvtf	d0, x8
	fmov	d1, x9
	fdiv	d9, d0, d1
	fmov	d0, d9
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp60:
; %bb.81:
Ltmp61:
Lloh28:
	adrp	x1, l_.str.4@PAGE
Lloh29:
	add	x1, x1, l_.str.4@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp62:
; %bb.82:
Ltmp63:
Lloh30:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh31:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh32:
	adrp	x1, l_.str.9@PAGE
Lloh33:
	add	x1, x1, l_.str.9@PAGEOFF
	mov	w2, #20                         ; =0x14
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp64:
; %bb.83:
Ltmp65:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	sub	x8, x25, x8
	scvtf	d0, x8
	mov	x8, #225833675390976            ; =0xcd6500000000
	movk	x8, #16845, lsl #48
	fmov	d1, x8
	fdiv	d10, d0, d1
	fmov	d0, d10
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp66:
; %bb.84:
Ltmp67:
Lloh34:
	adrp	x1, l_.str.10@PAGE
Lloh35:
	add	x1, x1, l_.str.10@PAGEOFF
	mov	w2, #2                          ; =0x2
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp68:
; %bb.85:
Ltmp69:
Lloh36:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh37:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh38:
	adrp	x1, l_.str.11@PAGE
Lloh39:
	add	x1, x1, l_.str.11@PAGEOFF
	mov	w2, #9                          ; =0x9
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp70:
; %bb.86:
Ltmp71:
Lloh40:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh41:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh42:
	adrp	x1, l_.str.12@PAGE
Lloh43:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #29                         ; =0x1d
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp72:
; %bb.87:
	fdiv	d0, d8, d9
Ltmp73:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp74:
; %bb.88:
Ltmp75:
Lloh44:
	adrp	x1, l_.str.13@PAGE
Lloh45:
	add	x1, x1, l_.str.13@PAGEOFF
	mov	w2, #2                          ; =0x2
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp76:
; %bb.89:
Ltmp77:
Lloh46:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh47:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh48:
	adrp	x1, l_.str.14@PAGE
Lloh49:
	add	x1, x1, l_.str.14@PAGEOFF
	mov	w2, #29                         ; =0x1d
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp78:
; %bb.90:
	fdiv	d0, d9, d10
Ltmp79:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp80:
; %bb.91:
Ltmp81:
Lloh50:
	adrp	x1, l_.str.15@PAGE
Lloh51:
	add	x1, x1, l_.str.15@PAGEOFF
	mov	w2, #34                         ; =0x22
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp82:
; %bb.92:
Ltmp83:
Lloh52:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh53:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh54:
	adrp	x1, l_.str.16@PAGE
Lloh55:
	add	x1, x1, l_.str.16@PAGEOFF
	mov	w2, #29                         ; =0x1d
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp84:
; %bb.93:
	fdiv	d0, d8, d10
Ltmp85:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp86:
; %bb.94:
Ltmp87:
Lloh56:
	adrp	x1, l_.str.17@PAGE
Lloh57:
	add	x1, x1, l_.str.17@PAGEOFF
	mov	w2, #36                         ; =0x24
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp88:
; %bb.95:
Ltmp89:
Lloh58:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh59:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh60:
	adrp	x1, l_.str.18@PAGE
Lloh61:
	add	x1, x1, l_.str.18@PAGEOFF
	mov	w2, #7                          ; =0x7
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp90:
; %bb.96:
Lloh62:
	adrp	x8, __ZL6g_sink@PAGE
Lloh63:
	ldr	x1, [x8, __ZL6g_sink@PAGEOFF]
Ltmp91:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEy
Ltmp92:
; %bb.97:
Ltmp93:
Lloh64:
	adrp	x1, l_.str.4@PAGE
Lloh65:
	add	x1, x1, l_.str.4@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp94:
; %bb.98:
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x23, x22, [sp, #80]             ; 16-byte Folded Reload
	ldp	x25, x24, [sp, #48]             ; 16-byte Folded Reload
	ldr	x0, [sp, #104]                  ; 8-byte Folded Reload
	cbz	x0, LBB0_100
; %bb.99:
	bl	__ZdlPv
LBB0_100:
	ldr	x0, [sp, #112]                  ; 8-byte Folded Reload
	cbz	x0, LBB0_102
; %bb.101:
	bl	__ZdlPv
LBB0_102:
	cbz	x25, LBB0_104
; %bb.103:
	mov	x0, x25
	bl	__ZdlPv
LBB0_104:
	cbz	x24, LBB0_106
; %bb.105:
	mov	x0, x24
	bl	__ZdlPv
LBB0_106:
	ldr	x0, [sp, #96]                   ; 8-byte Folded Reload
	cbz	x0, LBB0_108
; %bb.107:
	bl	__ZdlPv
LBB0_108:
	cbz	x23, LBB0_110
; %bb.109:
	mov	x0, x23
	bl	__ZdlPv
LBB0_110:
	cbz	x22, LBB0_112
; %bb.111:
	mov	x0, x22
	bl	__ZdlPv
LBB0_112:
	cbz	x21, LBB0_114
; %bb.113:
	mov	x0, x21
	bl	__ZdlPv
LBB0_114:
	cbz	x20, LBB0_116
; %bb.115:
	mov	x0, x20
	bl	__ZdlPv
LBB0_116:
	cbz	x19, LBB0_118
; %bb.117:
	mov	x0, x19
	bl	__ZdlPv
LBB0_118:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #240]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #224]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #208]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #192]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #176]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #160]            ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #144]              ; 16-byte Folded Reload
	ldp	d11, d10, [sp, #128]            ; 16-byte Folded Reload
	add	sp, sp, #256
	ret
LBB0_119:
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8ne200100Ev
LBB0_120:
Ltmp41:
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB8ne200100Ev
Ltmp42:
	b	LBB0_122
LBB0_121:
Ltmp46:
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB8ne200100Ev
Ltmp47:
LBB0_122:
	brk	#0x1
LBB0_123:
Ltmp32:
	mov	x23, x0
	b	LBB0_138
LBB0_124:
Ltmp29:
	b	LBB0_141
LBB0_125:
Ltmp26:
	mov	x23, x0
	ldr	x8, [sp, #112]                  ; 8-byte Folded Reload
	cbz	x8, LBB0_144
	b	LBB0_154
LBB0_126:
Ltmp38:
	mov	x23, x0
	cbz	x26, LBB0_142
; %bb.127:
	mov	x0, x26
	bl	__ZdlPv
	b	LBB0_142
LBB0_128:
Ltmp23:
	mov	x23, x0
	ldr	x8, [sp, #48]                   ; 8-byte Folded Reload
	cbz	x8, LBB0_145
	b	LBB0_155
LBB0_129:
Ltmp35:
	b	LBB0_141
LBB0_130:
Ltmp20:
	mov	x23, x0
	ldr	x8, [sp, #56]                   ; 8-byte Folded Reload
	cbz	x8, LBB0_146
	b	LBB0_156
LBB0_131:
Ltmp17:
	mov	x23, x0
	b	LBB0_157
LBB0_132:
Ltmp14:
	mov	x23, x0
	b	LBB0_158
LBB0_133:
Ltmp11:
	mov	x23, x0
	b	LBB0_159
LBB0_134:
Ltmp8:
	mov	x23, x0
	b	LBB0_160
LBB0_135:
Ltmp5:
	mov	x23, x0
	b	LBB0_161
LBB0_136:
Ltmp2:
	mov	x23, x0
	ldr	x0, [sp, #72]                   ; 8-byte Folded Reload
	bl	__ZdlPv
	mov	x0, x23
	bl	__Unwind_Resume
LBB0_137:
Ltmp48:
	mov	x23, x0
	cbz	x25, LBB0_142
LBB0_138:
	mov	x0, x25
	bl	__ZdlPv
	b	LBB0_142
LBB0_139:
Ltmp43:
	b	LBB0_141
LBB0_140:
Ltmp95:
LBB0_141:
	mov	x23, x0
LBB0_142:
	ldr	x8, [sp, #104]                  ; 8-byte Folded Reload
	cbnz	x8, LBB0_153
; %bb.143:
	ldr	x8, [sp, #112]                  ; 8-byte Folded Reload
	cbnz	x8, LBB0_154
LBB0_144:
	ldr	x8, [sp, #48]                   ; 8-byte Folded Reload
	cbnz	x8, LBB0_155
LBB0_145:
	ldr	x8, [sp, #56]                   ; 8-byte Folded Reload
	cbnz	x8, LBB0_156
LBB0_146:
	ldr	x8, [sp, #96]                   ; 8-byte Folded Reload
	cbnz	x8, LBB0_157
LBB0_147:
	ldr	x8, [sp, #80]                   ; 8-byte Folded Reload
	cbnz	x8, LBB0_158
LBB0_148:
	ldr	x8, [sp, #88]                   ; 8-byte Folded Reload
	cbnz	x8, LBB0_159
LBB0_149:
	cbnz	x21, LBB0_160
LBB0_150:
	ldr	x8, [sp, #64]                   ; 8-byte Folded Reload
	cbnz	x8, LBB0_161
LBB0_151:
	ldr	x8, [sp, #72]                   ; 8-byte Folded Reload
	cbnz	x8, LBB0_162
LBB0_152:
	mov	x0, x23
	bl	__Unwind_Resume
LBB0_153:
	ldr	x0, [sp, #104]                  ; 8-byte Folded Reload
	bl	__ZdlPv
	ldr	x8, [sp, #112]                  ; 8-byte Folded Reload
	cbz	x8, LBB0_144
LBB0_154:
	ldr	x0, [sp, #112]                  ; 8-byte Folded Reload
	bl	__ZdlPv
	ldr	x8, [sp, #48]                   ; 8-byte Folded Reload
	cbz	x8, LBB0_145
LBB0_155:
	ldr	x0, [sp, #48]                   ; 8-byte Folded Reload
	bl	__ZdlPv
	ldr	x8, [sp, #56]                   ; 8-byte Folded Reload
	cbz	x8, LBB0_146
LBB0_156:
	ldr	x0, [sp, #56]                   ; 8-byte Folded Reload
	bl	__ZdlPv
	ldr	x8, [sp, #96]                   ; 8-byte Folded Reload
	cbz	x8, LBB0_147
LBB0_157:
	ldr	x0, [sp, #96]                   ; 8-byte Folded Reload
	bl	__ZdlPv
	ldr	x8, [sp, #80]                   ; 8-byte Folded Reload
	cbz	x8, LBB0_148
LBB0_158:
	ldr	x0, [sp, #80]                   ; 8-byte Folded Reload
	bl	__ZdlPv
	ldr	x8, [sp, #88]                   ; 8-byte Folded Reload
	cbz	x8, LBB0_149
LBB0_159:
	ldr	x0, [sp, #88]                   ; 8-byte Folded Reload
	bl	__ZdlPv
	cbz	x21, LBB0_150
LBB0_160:
	mov	x0, x21
	bl	__ZdlPv
	ldr	x8, [sp, #64]                   ; 8-byte Folded Reload
	cbz	x8, LBB0_151
LBB0_161:
	ldr	x0, [sp, #64]                   ; 8-byte Folded Reload
	bl	__ZdlPv
	ldr	x8, [sp, #72]                   ; 8-byte Folded Reload
	cbz	x8, LBB0_152
LBB0_162:
	ldr	x0, [sp, #72]                   ; 8-byte Folded Reload
	bl	__ZdlPv
	mov	x0, x23
	bl	__Unwind_Resume
	.loh AdrpAdd	Lloh12, Lloh13
	.loh AdrpAdd	Lloh10, Lloh11
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpLdrGot	Lloh0, Lloh1
	.loh AdrpAdd	Lloh16, Lloh17
	.loh AdrpLdrGot	Lloh14, Lloh15
	.loh AdrpAdd	Lloh20, Lloh21
	.loh AdrpLdrGot	Lloh18, Lloh19
	.loh AdrpAdd	Lloh22, Lloh23
	.loh AdrpAdd	Lloh26, Lloh27
	.loh AdrpLdrGot	Lloh24, Lloh25
	.loh AdrpAdd	Lloh28, Lloh29
	.loh AdrpAdd	Lloh32, Lloh33
	.loh AdrpLdrGot	Lloh30, Lloh31
	.loh AdrpAdd	Lloh34, Lloh35
	.loh AdrpAdd	Lloh38, Lloh39
	.loh AdrpLdrGot	Lloh36, Lloh37
	.loh AdrpAdd	Lloh42, Lloh43
	.loh AdrpLdrGot	Lloh40, Lloh41
	.loh AdrpAdd	Lloh44, Lloh45
	.loh AdrpAdd	Lloh48, Lloh49
	.loh AdrpLdrGot	Lloh46, Lloh47
	.loh AdrpAdd	Lloh50, Lloh51
	.loh AdrpAdd	Lloh54, Lloh55
	.loh AdrpLdrGot	Lloh52, Lloh53
	.loh AdrpAdd	Lloh56, Lloh57
	.loh AdrpAdd	Lloh60, Lloh61
	.loh AdrpLdrGot	Lloh58, Lloh59
	.loh AdrpLdr	Lloh62, Lloh63
	.loh AdrpAdd	Lloh64, Lloh65
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
	.uleb128 Ltmp1-Lfunc_begin0             ; >> Call Site 3 <<
	.uleb128 Ltmp3-Ltmp1                    ;   Call between Ltmp1 and Ltmp3
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp3-Lfunc_begin0             ; >> Call Site 4 <<
	.uleb128 Ltmp4-Ltmp3                    ;   Call between Ltmp3 and Ltmp4
	.uleb128 Ltmp5-Lfunc_begin0             ;     jumps to Ltmp5
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp4-Lfunc_begin0             ; >> Call Site 5 <<
	.uleb128 Ltmp6-Ltmp4                    ;   Call between Ltmp4 and Ltmp6
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp6-Lfunc_begin0             ; >> Call Site 6 <<
	.uleb128 Ltmp7-Ltmp6                    ;   Call between Ltmp6 and Ltmp7
	.uleb128 Ltmp8-Lfunc_begin0             ;     jumps to Ltmp8
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp7-Lfunc_begin0             ; >> Call Site 7 <<
	.uleb128 Ltmp9-Ltmp7                    ;   Call between Ltmp7 and Ltmp9
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp9-Lfunc_begin0             ; >> Call Site 8 <<
	.uleb128 Ltmp10-Ltmp9                   ;   Call between Ltmp9 and Ltmp10
	.uleb128 Ltmp11-Lfunc_begin0            ;     jumps to Ltmp11
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp10-Lfunc_begin0            ; >> Call Site 9 <<
	.uleb128 Ltmp12-Ltmp10                  ;   Call between Ltmp10 and Ltmp12
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp12-Lfunc_begin0            ; >> Call Site 10 <<
	.uleb128 Ltmp13-Ltmp12                  ;   Call between Ltmp12 and Ltmp13
	.uleb128 Ltmp14-Lfunc_begin0            ;     jumps to Ltmp14
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp13-Lfunc_begin0            ; >> Call Site 11 <<
	.uleb128 Ltmp15-Ltmp13                  ;   Call between Ltmp13 and Ltmp15
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp15-Lfunc_begin0            ; >> Call Site 12 <<
	.uleb128 Ltmp16-Ltmp15                  ;   Call between Ltmp15 and Ltmp16
	.uleb128 Ltmp17-Lfunc_begin0            ;     jumps to Ltmp17
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp16-Lfunc_begin0            ; >> Call Site 13 <<
	.uleb128 Ltmp18-Ltmp16                  ;   Call between Ltmp16 and Ltmp18
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp18-Lfunc_begin0            ; >> Call Site 14 <<
	.uleb128 Ltmp19-Ltmp18                  ;   Call between Ltmp18 and Ltmp19
	.uleb128 Ltmp20-Lfunc_begin0            ;     jumps to Ltmp20
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp19-Lfunc_begin0            ; >> Call Site 15 <<
	.uleb128 Ltmp21-Ltmp19                  ;   Call between Ltmp19 and Ltmp21
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp21-Lfunc_begin0            ; >> Call Site 16 <<
	.uleb128 Ltmp22-Ltmp21                  ;   Call between Ltmp21 and Ltmp22
	.uleb128 Ltmp23-Lfunc_begin0            ;     jumps to Ltmp23
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp22-Lfunc_begin0            ; >> Call Site 17 <<
	.uleb128 Ltmp24-Ltmp22                  ;   Call between Ltmp22 and Ltmp24
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp24-Lfunc_begin0            ; >> Call Site 18 <<
	.uleb128 Ltmp25-Ltmp24                  ;   Call between Ltmp24 and Ltmp25
	.uleb128 Ltmp26-Lfunc_begin0            ;     jumps to Ltmp26
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp25-Lfunc_begin0            ; >> Call Site 19 <<
	.uleb128 Ltmp27-Ltmp25                  ;   Call between Ltmp25 and Ltmp27
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp27-Lfunc_begin0            ; >> Call Site 20 <<
	.uleb128 Ltmp28-Ltmp27                  ;   Call between Ltmp27 and Ltmp28
	.uleb128 Ltmp29-Lfunc_begin0            ;     jumps to Ltmp29
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp28-Lfunc_begin0            ; >> Call Site 21 <<
	.uleb128 Ltmp30-Ltmp28                  ;   Call between Ltmp28 and Ltmp30
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp30-Lfunc_begin0            ; >> Call Site 22 <<
	.uleb128 Ltmp31-Ltmp30                  ;   Call between Ltmp30 and Ltmp31
	.uleb128 Ltmp32-Lfunc_begin0            ;     jumps to Ltmp32
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp31-Lfunc_begin0            ; >> Call Site 23 <<
	.uleb128 Ltmp33-Ltmp31                  ;   Call between Ltmp31 and Ltmp33
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp33-Lfunc_begin0            ; >> Call Site 24 <<
	.uleb128 Ltmp34-Ltmp33                  ;   Call between Ltmp33 and Ltmp34
	.uleb128 Ltmp35-Lfunc_begin0            ;     jumps to Ltmp35
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp34-Lfunc_begin0            ; >> Call Site 25 <<
	.uleb128 Ltmp36-Ltmp34                  ;   Call between Ltmp34 and Ltmp36
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp36-Lfunc_begin0            ; >> Call Site 26 <<
	.uleb128 Ltmp37-Ltmp36                  ;   Call between Ltmp36 and Ltmp37
	.uleb128 Ltmp38-Lfunc_begin0            ;     jumps to Ltmp38
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp37-Lfunc_begin0            ; >> Call Site 27 <<
	.uleb128 Ltmp39-Ltmp37                  ;   Call between Ltmp37 and Ltmp39
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp39-Lfunc_begin0            ; >> Call Site 28 <<
	.uleb128 Ltmp40-Ltmp39                  ;   Call between Ltmp39 and Ltmp40
	.uleb128 Ltmp43-Lfunc_begin0            ;     jumps to Ltmp43
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp40-Lfunc_begin0            ; >> Call Site 29 <<
	.uleb128 Ltmp44-Ltmp40                  ;   Call between Ltmp40 and Ltmp44
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp44-Lfunc_begin0            ; >> Call Site 30 <<
	.uleb128 Ltmp45-Ltmp44                  ;   Call between Ltmp44 and Ltmp45
	.uleb128 Ltmp48-Lfunc_begin0            ;     jumps to Ltmp48
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp45-Lfunc_begin0            ; >> Call Site 31 <<
	.uleb128 Ltmp49-Ltmp45                  ;   Call between Ltmp45 and Ltmp49
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp49-Lfunc_begin0            ; >> Call Site 32 <<
	.uleb128 Ltmp94-Ltmp49                  ;   Call between Ltmp49 and Ltmp94
	.uleb128 Ltmp95-Lfunc_begin0            ;     jumps to Ltmp95
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp94-Lfunc_begin0            ; >> Call Site 33 <<
	.uleb128 Ltmp41-Ltmp94                  ;   Call between Ltmp94 and Ltmp41
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp41-Lfunc_begin0            ; >> Call Site 34 <<
	.uleb128 Ltmp42-Ltmp41                  ;   Call between Ltmp41 and Ltmp42
	.uleb128 Ltmp43-Lfunc_begin0            ;     jumps to Ltmp43
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp46-Lfunc_begin0            ; >> Call Site 35 <<
	.uleb128 Ltmp47-Ltmp46                  ;   Call between Ltmp46 and Ltmp47
	.uleb128 Ltmp48-Lfunc_begin0            ;     jumps to Ltmp48
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp47-Lfunc_begin0            ; >> Call Site 36 <<
	.uleb128 Lfunc_end0-Ltmp47              ;   Call between Ltmp47 and Lfunc_end0
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end0:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m ; -- Begin function _ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.globl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_def_can_be_hidden	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.p2align	2
__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ; @_ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception1
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
Ltmp96:
	add	x0, sp, #8
	mov	x1, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp97:
; %bb.1:
	ldrb	w8, [sp, #8]
	cmp	w8, #1
	b.ne	LBB1_10
; %bb.2:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x4, x19, x8
	ldr	x22, [x4, #40]
	ldr	w24, [x4, #8]
	ldr	w23, [x4, #144]
	cmn	w23, #1
	b.ne	LBB1_7
; %bb.3:
Ltmp99:
	add	x8, sp, #24
	mov	x25, x4
	mov	x0, x4
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp100:
; %bb.4:
Ltmp101:
Lloh66:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh67:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #24
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp102:
; %bb.5:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp103:
	mov	w1, #32                         ; =0x20
	blr	x8
Ltmp104:
; %bb.6:
	mov	x23, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	mov	x4, x25
	str	w23, [x25, #144]
LBB1_7:
	mov	w8, #176                        ; =0xb0
	and	w8, w24, w8
	add	x3, x20, x21
	cmp	w8, #32
	csel	x2, x3, x20, eq
Ltmp106:
	sxtb	w5, w23
	mov	x0, x22
	mov	x1, x20
	bl	__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp107:
; %bb.8:
	cbnz	x0, LBB1_10
; %bb.9:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
	ldr	w8, [x0, #32]
	mov	w9, #5                          ; =0x5
Ltmp109:
	orr	w1, w8, w9
	bl	__ZNSt3__18ios_base5clearEj
Ltmp110:
LBB1_10:
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
LBB1_11:
	mov	x0, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB1_12:
Ltmp111:
	b	LBB1_15
LBB1_13:
Ltmp105:
	mov	x20, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	b	LBB1_16
LBB1_14:
Ltmp108:
LBB1_15:
	mov	x20, x0
LBB1_16:
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB1_18
LBB1_17:
Ltmp98:
	mov	x20, x0
LBB1_18:
	mov	x0, x20
	bl	___cxa_begin_catch
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
Ltmp112:
	add	x0, x19, x8
	bl	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp113:
; %bb.19:
	bl	___cxa_end_catch
	b	LBB1_11
LBB1_20:
Ltmp114:
	mov	x19, x0
Ltmp115:
	bl	___cxa_end_catch
Ltmp116:
; %bb.21:
	mov	x0, x19
	bl	__Unwind_Resume
LBB1_22:
Ltmp117:
	bl	___clang_call_terminate
	.loh AdrpLdrGot	Lloh66, Lloh67
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table1:
Lexception1:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase0-Lttbaseref0
Lttbaseref0:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end1-Lcst_begin1
Lcst_begin1:
	.uleb128 Ltmp96-Lfunc_begin1            ; >> Call Site 1 <<
	.uleb128 Ltmp97-Ltmp96                  ;   Call between Ltmp96 and Ltmp97
	.uleb128 Ltmp98-Lfunc_begin1            ;     jumps to Ltmp98
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp99-Lfunc_begin1            ; >> Call Site 2 <<
	.uleb128 Ltmp100-Ltmp99                 ;   Call between Ltmp99 and Ltmp100
	.uleb128 Ltmp108-Lfunc_begin1           ;     jumps to Ltmp108
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp101-Lfunc_begin1           ; >> Call Site 3 <<
	.uleb128 Ltmp104-Ltmp101                ;   Call between Ltmp101 and Ltmp104
	.uleb128 Ltmp105-Lfunc_begin1           ;     jumps to Ltmp105
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp106-Lfunc_begin1           ; >> Call Site 4 <<
	.uleb128 Ltmp107-Ltmp106                ;   Call between Ltmp106 and Ltmp107
	.uleb128 Ltmp108-Lfunc_begin1           ;     jumps to Ltmp108
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp109-Lfunc_begin1           ; >> Call Site 5 <<
	.uleb128 Ltmp110-Ltmp109                ;   Call between Ltmp109 and Ltmp110
	.uleb128 Ltmp111-Lfunc_begin1           ;     jumps to Ltmp111
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp110-Lfunc_begin1           ; >> Call Site 6 <<
	.uleb128 Ltmp112-Ltmp110                ;   Call between Ltmp110 and Ltmp112
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp112-Lfunc_begin1           ; >> Call Site 7 <<
	.uleb128 Ltmp113-Ltmp112                ;   Call between Ltmp112 and Ltmp113
	.uleb128 Ltmp114-Lfunc_begin1           ;     jumps to Ltmp114
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp113-Lfunc_begin1           ; >> Call Site 8 <<
	.uleb128 Ltmp115-Ltmp113                ;   Call between Ltmp113 and Ltmp115
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp115-Lfunc_begin1           ; >> Call Site 9 <<
	.uleb128 Ltmp116-Ltmp115                ;   Call between Ltmp115 and Ltmp116
	.uleb128 Ltmp117-Lfunc_begin1           ;     jumps to Ltmp117
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp116-Lfunc_begin1           ; >> Call Site 10 <<
	.uleb128 Lfunc_end1-Ltmp116             ;   Call between Ltmp116 and Lfunc_end1
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end1:
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
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception2
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
	cbz	x0, LBB2_16
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
	b.lt	LBB2_3
; %bb.2:
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
	mov	x0, x19
	mov	x2, x25
	blr	x8
	cmp	x0, x25
	b.ne	LBB2_15
LBB2_3:
	cmp	x23, #1
	b.lt	LBB2_12
; %bb.4:
	mov	x8, #9223372036854775800        ; =0x7ffffffffffffff8
	cmp	x23, x8
	b.hs	LBB2_17
; %bb.5:
	cmp	x23, #23
	b.hs	LBB2_7
; %bb.6:
	strb	w23, [sp, #31]
	add	x25, sp, #8
	b	LBB2_8
LBB2_7:
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
LBB2_8:
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
Ltmp118:
	mov	x0, x19
	mov	x2, x23
	blr	x8
Ltmp119:
; %bb.9:
	ldrsb	w8, [sp, #31]
	tbnz	w8, #31, LBB2_11
; %bb.10:
	cmp	x0, x23
	b.ne	LBB2_15
	b	LBB2_12
LBB2_11:
	ldr	x8, [sp, #8]
	mov	x24, x0
	mov	x0, x8
	bl	__ZdlPv
	cmp	x24, x23
	b.ne	LBB2_15
LBB2_12:
	sub	x22, x22, x21
	cmp	x22, #1
	b.lt	LBB2_14
; %bb.13:
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
	mov	x0, x19
	mov	x1, x21
	mov	x2, x22
	blr	x8
	cmp	x0, x22
	b.ne	LBB2_15
LBB2_14:
	str	xzr, [x20, #24]
	b	LBB2_16
LBB2_15:
	mov	x19, #0                         ; =0x0
LBB2_16:
	mov	x0, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB2_17:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev
LBB2_18:
Ltmp120:
	mov	x19, x0
	ldrsb	w8, [sp, #31]
	tbz	w8, #31, LBB2_20
; %bb.19:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
LBB2_20:
	mov	x0, x19
	bl	__Unwind_Resume
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table2:
Lexception2:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end2-Lcst_begin2
Lcst_begin2:
	.uleb128 Lfunc_begin2-Lfunc_begin2      ; >> Call Site 1 <<
	.uleb128 Ltmp118-Lfunc_begin2           ;   Call between Lfunc_begin2 and Ltmp118
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp118-Lfunc_begin2           ; >> Call Site 2 <<
	.uleb128 Ltmp119-Ltmp118                ;   Call between Ltmp118 and Ltmp119
	.uleb128 Ltmp120-Lfunc_begin2           ;     jumps to Ltmp120
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp119-Lfunc_begin2           ; >> Call Site 3 <<
	.uleb128 Lfunc_end2-Ltmp119             ;   Call between Ltmp119 and Lfunc_end2
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end2:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
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
Lloh68:
	adrp	x0, l_.str.20@PAGE
Lloh69:
	add	x0, x0, l_.str.20@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB8ne200100EPKc
	.loh AdrpAdd	Lloh68, Lloh69
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
Ltmp121:
	mov	x1, x20
	bl	__ZNSt12length_errorC1B8ne200100EPKc
Ltmp122:
; %bb.1:
Lloh70:
	adrp	x1, __ZTISt12length_error@GOTPAGE
Lloh71:
	ldr	x1, [x1, __ZTISt12length_error@GOTPAGEOFF]
Lloh72:
	adrp	x2, __ZNSt12length_errorD1Ev@GOTPAGE
Lloh73:
	ldr	x2, [x2, __ZNSt12length_errorD1Ev@GOTPAGEOFF]
	mov	x0, x19
	bl	___cxa_throw
LBB5_2:
Ltmp123:
	mov	x20, x0
	mov	x0, x19
	bl	___cxa_free_exception
	mov	x0, x20
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh72, Lloh73
	.loh AdrpLdrGot	Lloh70, Lloh71
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table5:
Lexception3:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end3-Lcst_begin3
Lcst_begin3:
	.uleb128 Lfunc_begin3-Lfunc_begin3      ; >> Call Site 1 <<
	.uleb128 Ltmp121-Lfunc_begin3           ;   Call between Lfunc_begin3 and Ltmp121
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp121-Lfunc_begin3           ; >> Call Site 2 <<
	.uleb128 Ltmp122-Ltmp121                ;   Call between Ltmp121 and Ltmp122
	.uleb128 Ltmp123-Lfunc_begin3           ;     jumps to Ltmp123
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp122-Lfunc_begin3           ; >> Call Site 3 <<
	.uleb128 Lfunc_end3-Ltmp122             ;   Call between Ltmp122 and Lfunc_end3
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
Lloh74:
	adrp	x8, __ZTVSt12length_error@GOTPAGE
Lloh75:
	ldr	x8, [x8, __ZTVSt12length_error@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGot	Lloh74, Lloh75
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
Lloh76:
	adrp	x0, l_.str.21@PAGE
Lloh77:
	add	x0, x0, l_.str.21@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB8ne200100EPKc
	.loh AdrpAdd	Lloh76, Lloh77
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
Lloh78:
	adrp	x0, l_.str.21@PAGE
Lloh79:
	add	x0, x0, l_.str.21@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB8ne200100EPKc
	.loh AdrpAdd	Lloh78, Lloh79
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"Montgomery vs REIST-Tree NTT Butterfly Benchmark\n"

l_.str.1:                               ; @.str.1
	.asciz	"Modulus Q = "

l_.str.2:                               ; @.str.2
	.asciz	", n = "

l_.str.3:                               ; @.str.3
	.asciz	", rounds = "

l_.str.4:                               ; @.str.4
	.asciz	"\n"

l_.str.5:                               ; @.str.5
	.asciz	"NEON: enabled\n"

l_.str.6:                               ; @.str.6
	.asciz	"Results (seconds)\n"

l_.str.7:                               ; @.str.7
	.asciz	"REIST-Tree scalar : "

l_.str.8:                               ; @.str.8
	.asciz	"REIST-Tree NEON   : "

l_.str.9:                               ; @.str.9
	.asciz	"Montgomery (stay) : "

l_.str.10:                              ; @.str.10
	.asciz	"\n\n"

l_.str.11:                              ; @.str.11
	.asciz	"Speedups\n"

l_.str.12:                              ; @.str.12
	.asciz	"NEON vs scalar (REIST-Tree): "

l_.str.13:                              ; @.str.13
	.asciz	"x\n"

l_.str.14:                              ; @.str.14
	.asciz	"Mont vs REIST-Tree NEON    : "

l_.str.15:                              ; @.str.15
	.asciz	"x  ( <1 means Montgomery faster )\n"

l_.str.16:                              ; @.str.16
	.asciz	"Mont vs REIST-Tree scalar  : "

l_.str.17:                              ; @.str.17
	.asciz	"x  ( >1 means REIST scalar faster )\n"

l_.str.18:                              ; @.str.18
	.asciz	"\nSink: "

.zerofill __DATA,__bss,__ZL6g_sink,8,3  ; @_ZL6g_sink
l_.str.20:                              ; @.str.20
	.asciz	"basic_string"

l_.str.21:                              ; @.str.21
	.asciz	"vector"

.subsections_via_symbols
