	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 26, 0	sdk_version 26, 2
	.globl	__Z14classic_modaddyyy          ; -- Begin function _Z14classic_modaddyyy
	.p2align	2
__Z14classic_modaddyyy:                 ; @_Z14classic_modaddyyy
	.cfi_startproc
; %bb.0:
	add	x8, x1, x0
	udiv	x9, x8, x2
	msub	x0, x9, x2, x8
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z14classic_modmulyyy          ; -- Begin function _Z14classic_modmulyyy
	.p2align	2
__Z14classic_modmulyyy:                 ; @_Z14classic_modmulyyy
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mul	x8, x1, x0
	umulh	x1, x1, x0
	mov	x0, x8
	mov	x3, #0                          ; =0x0
	bl	___umodti3
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z12reist_modaddxxx            ; -- Begin function _Z12reist_modaddxxx
	.p2align	2
__Z12reist_modaddxxx:                   ; @_Z12reist_modaddxxx
	.cfi_startproc
; %bb.0:
	asr	x8, x2, #1
	add	x9, x1, x0
	cmp	x9, x8
	csel	x10, x2, xzr, gt
	sub	x9, x9, x10
	neg	x8, x8
	cmp	x9, x8
	csel	x8, x2, xzr, lt
	add	x0, x8, x9
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z12reist_modmulxxx            ; -- Begin function _Z12reist_modmulxxx
	.p2align	2
__Z12reist_modmulxxx:                   ; @_Z12reist_modmulxxx
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
	mov	x19, x2
	mul	x8, x1, x0
	smulh	x1, x1, x0
	asr	x3, x2, #63
	mov	x0, x8
	bl	___modti3
	asr	x8, x19, #1
	cmp	x8, x0
	csel	x9, x19, xzr, lt
	sub	x9, x0, x9
	neg	x8, x8
	cmp	x9, x8
	csel	x8, x19, xzr, lt
	add	x0, x8, x9
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
; %bb.0:
	sub	sp, sp, #224
	stp	d11, d10, [sp, #96]             ; 16-byte Folded Spill
	stp	d9, d8, [sp, #112]              ; 16-byte Folded Spill
	stp	x28, x27, [sp, #128]            ; 16-byte Folded Spill
	stp	x26, x25, [sp, #144]            ; 16-byte Folded Spill
	stp	x24, x23, [sp, #160]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #176]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #192]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #208]            ; 16-byte Folded Spill
	add	x29, sp, #208
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
	b.lt	LBB4_4
; %bb.1:
	ldr	x20, [x1, #8]
	mov	x0, x20
	bl	_strlen
	mov	x8, #9223372036854775800        ; =0x7ffffffffffffff8
	cmp	x0, x8
	b.hs	LBB4_86
; %bb.2:
	mov	x19, x0
	cmp	x0, #23
	b.hs	LBB4_5
; %bb.3:
	strb	w19, [sp, #95]
	add	x21, sp, #72
	cbnz	x19, LBB4_6
	b	LBB4_7
LBB4_4:
	mov	w27, #38528                     ; =0x9680
	movk	w27, #152, lsl #16
	b	LBB4_10
LBB4_5:
	orr	x8, x19, #0x7
	cmp	x8, #23
	mov	w9, #25                         ; =0x19
	csinc	x22, x9, x8, eq
	mov	x0, x22
	bl	__Znwm
	mov	x21, x0
	orr	x8, x22, #0x8000000000000000
	stp	x19, x8, [sp, #80]
	str	x0, [sp, #72]
LBB4_6:
	mov	x0, x21
	mov	x1, x20
	mov	x2, x19
	bl	_memmove
LBB4_7:
	strb	wzr, [x21, x19]
Ltmp0:
	add	x0, sp, #72
	mov	x1, #0                          ; =0x0
	mov	w2, #10                         ; =0xa
	bl	__ZNSt3__15stollERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPmi
Ltmp1:
; %bb.8:
	mov	x27, x0
	ldrsb	w8, [sp, #95]
	tbz	w8, #31, LBB4_10
; %bb.9:
	ldr	x0, [sp, #72]
	bl	__ZdlPv
LBB4_10:
	mov	w0, #48                         ; =0x30
	bl	__Znwm
	mov	x9, x0
Lloh0:
	adrp	x8, l_constinit@PAGE
Lloh1:
	add	x8, x8, l_constinit@PAGEOFF
	ldp	q0, q1, [x8]
	stp	q0, q1, [x0]
	ldr	q0, [x8, #32]
Lloh2:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh3:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	str	x9, [sp]                        ; 8-byte Folded Spill
	str	q0, [x9, #32]
	ldr	x8, [x0]
	ldur	x9, [x8, #-24]
	add	x9, x0, x9
	ldr	w10, [x9, #8]
	and	w10, w10, #0xfffffeff
	orr	w10, w10, #0x4
	str	w10, [x9, #8]
	ldur	x8, [x8, #-24]
	add	x8, x0, x8
	mov	w9, #9                          ; =0x9
	str	x9, [x8, #16]
Ltmp3:
Lloh4:
	adrp	x1, l_.str@PAGE
Lloh5:
	add	x1, x1, l_.str@PAGEOFF
	mov	w2, #41                         ; =0x29
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp4:
; %bb.11:
Ltmp5:
Lloh6:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh7:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh8:
	adrp	x1, l_.str.1@PAGE
Lloh9:
	add	x1, x1, l_.str.1@PAGEOFF
	mov	w2, #41                         ; =0x29
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp6:
; %bb.12:
Ltmp7:
Lloh10:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh11:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh12:
	adrp	x1, l_.str@PAGE
Lloh13:
	add	x1, x1, l_.str@PAGEOFF
	mov	w2, #41                         ; =0x29
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp8:
; %bb.13:
Ltmp9:
Lloh14:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh15:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh16:
	adrp	x1, l_.str.2@PAGE
Lloh17:
	add	x1, x1, l_.str.2@PAGEOFF
	mov	w2, #31                         ; =0x1f
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp10:
; %bb.14:
Ltmp11:
	mov	x1, x27
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
Ltmp12:
; %bb.15:
Ltmp13:
Lloh18:
	adrp	x1, l_.str.3@PAGE
Lloh19:
	add	x1, x1, l_.str.3@PAGEOFF
	mov	w2, #2                          ; =0x2
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp14:
; %bb.16:
	mov	x28, #0                         ; =0x0
Lloh20:
	adrp	x19, l_.str@PAGE
Lloh21:
	add	x19, x19, l_.str@PAGEOFF
	fmov	d10, #-1.00000000
	str	x27, [sp, #64]                  ; 8-byte Folded Spill
LBB4_17:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB4_25 Depth 2
                                        ;     Child Loop BB4_28 Depth 2
                                        ;     Child Loop BB4_32 Depth 2
                                        ;     Child Loop BB4_45 Depth 2
                                        ;     Child Loop BB4_48 Depth 2
                                        ;     Child Loop BB4_51 Depth 2
                                        ;     Child Loop BB4_64 Depth 2
                                        ;     Child Loop BB4_69 Depth 2
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldr	x24, [x8, x28]
Ltmp16:
Lloh22:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh23:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	mov	x1, x19
	mov	w2, #41                         ; =0x29
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp17:
; %bb.18:                               ;   in Loop: Header=BB4_17 Depth=1
Ltmp18:
Lloh24:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh25:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh26:
	adrp	x1, l_.str.4@PAGE
Lloh27:
	add	x1, x1, l_.str.4@PAGEOFF
	mov	w2, #10                         ; =0xa
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp19:
; %bb.19:                               ;   in Loop: Header=BB4_17 Depth=1
Ltmp20:
	mov	x1, x24
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEy
Ltmp21:
; %bb.20:                               ;   in Loop: Header=BB4_17 Depth=1
Ltmp22:
Lloh28:
	adrp	x1, l_.str.5@PAGE
Lloh29:
	add	x1, x1, l_.str.5@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp23:
; %bb.21:                               ;   in Loop: Header=BB4_17 Depth=1
Ltmp24:
Lloh30:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh31:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	mov	x1, x19
	mov	w2, #41                         ; =0x29
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp25:
; %bb.22:                               ;   in Loop: Header=BB4_17 Depth=1
	tbz	w24, #0, LBB4_84
; %bb.23:                               ;   in Loop: Header=BB4_17 Depth=1
	mov	x0, #0                          ; =0x0
	mov	w1, #1                          ; =0x1
	mov	x2, x24
	mov	x3, #0                          ; =0x0
	bl	___umodti3
	mul	x8, x0, x0
	umulh	x1, x0, x0
	mov	x0, x8
	mov	x2, x24
	mov	x3, #0                          ; =0x0
	bl	___umodti3
	mov	x19, x0
	mov	x26, x1
	mov	w9, #54919                      ; =0xd687
	movk	w9, #18, lsl #16
	udiv	x8, x9, x24
	msub	x20, x8, x24, x9
	mov	w9, #37688                      ; =0x9338
	movk	w9, #1359, lsl #16
	udiv	x8, x9, x24
	msub	x25, x8, x24, x9
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	str	x0, [sp, #56]                   ; 8-byte Folded Spill
	mov	x8, x20
	cmp	x27, #1
	b.lt	LBB4_26
; %bb.24:                               ;   in Loop: Header=BB4_17 Depth=1
	mov	x9, x27
	mov	x8, x20
LBB4_25:                                ;   Parent Loop BB4_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	add	x8, x8, x25
	udiv	x10, x8, x24
	msub	x8, x10, x24, x8
	subs	x9, x9, #1
	b.ne	LBB4_25
LBB4_26:                                ;   in Loop: Header=BB4_17 Depth=1
	adrp	x9, __ZL6g_sink@PAGE
	str	x8, [x9, __ZL6g_sink@PAGEOFF]
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	str	x0, [sp, #48]                   ; 8-byte Folded Spill
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	str	x0, [sp, #40]                   ; 8-byte Folded Spill
	asr	x23, x24, #1
	mov	x8, x20
	cmp	x27, #1
	b.lt	LBB4_30
; %bb.27:                               ;   in Loop: Header=BB4_17 Depth=1
	neg	x8, x23
	mov	x9, x27
	mov	x10, x20
LBB4_28:                                ;   Parent Loop BB4_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	add	x10, x10, x25
	cmp	x10, x23
	csel	x11, x24, xzr, gt
	sub	x10, x10, x11
	cmp	x10, x8
	csel	x11, x24, xzr, lt
	add	x10, x11, x10
	subs	x9, x9, #1
	b.ne	LBB4_28
; %bb.29:                               ;   in Loop: Header=BB4_17 Depth=1
	and	x8, x24, x10, asr #63
	add	x8, x8, x10
LBB4_30:                                ;   in Loop: Header=BB4_17 Depth=1
	str	x28, [sp, #24]                  ; 8-byte Folded Spill
	adrp	x9, __ZL6g_sink@PAGE
	str	x8, [x9, __ZL6g_sink@PAGEOFF]
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x21, x0
	umulh	x8, x19, x20
	madd	x1, x26, x20, x8
	mul	x0, x19, x20
	mov	x2, x24
	mov	x3, #0                          ; =0x0
	bl	___umodti3
	mov	x22, x0
	umulh	x8, x19, x25
	stp	x26, x19, [sp, #8]              ; 16-byte Folded Spill
	madd	x1, x26, x25, x8
	mul	x0, x19, x25
	mov	x2, x24
	mov	x3, #0                          ; =0x0
	bl	___umodti3
	mov	x26, x0
	mov	x28, x1
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
	mov	x8, x22
	cmp	x27, #1
	b.lt	LBB4_33
; %bb.31:                               ;   in Loop: Header=BB4_17 Depth=1
	ldr	x9, [sp, #64]                   ; 8-byte Folded Reload
	mov	x8, x22
LBB4_32:                                ;   Parent Loop BB4_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	adds	x8, x8, x26
	cset	w10, hs
	cmp	x8, x24
	csinc	w10, w10, wzr, lo
	cmp	w10, #0
	csel	x10, x24, xzr, ne
	sub	x8, x8, x10
	subs	x9, x9, #1
	b.ne	LBB4_32
LBB4_33:                                ;   in Loop: Header=BB4_17 Depth=1
	mov	w11, #2                         ; =0x2
	sub	x9, x11, x24
	msub	x10, x9, x24, x11
	mul	x9, x10, x9
	msub	x10, x9, x24, x11
	mul	x9, x10, x9
	msub	x10, x9, x24, x11
	mul	x9, x10, x9
	msub	x10, x9, x24, x11
	mul	x9, x10, x9
	msub	x10, x9, x24, x11
	mul	x19, x10, x9
	mul	x9, x8, x19
	umulh	x10, x9, x24
	mul	x9, x9, x24
	cmn	x9, x8
	cinc	x8, x10, hs
	cmp	x24, x8
	csel	x9, xzr, x24, hi
	sub	x8, x8, x9
	adrp	x9, __ZL6g_sink@PAGE
	str	x8, [x9, __ZL6g_sink@PAGEOFF]
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x27, x0
Ltmp27:
Lloh32:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh33:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh34:
	adrp	x1, l_.str.6@PAGE
Lloh35:
	add	x1, x1, l_.str.6@PAGEOFF
	mov	w2, #26                         ; =0x1a
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp28:
; %bb.34:                               ;   in Loop: Header=BB4_17 Depth=1
Ltmp29:
Lloh36:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh37:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh38:
	adrp	x1, l_.str.7@PAGE
Lloh39:
	add	x1, x1, l_.str.7@PAGEOFF
	mov	w2, #14                         ; =0xe
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp30:
; %bb.35:                               ;   in Loop: Header=BB4_17 Depth=1
Ltmp31:
	ldp	x9, x8, [sp, #48]               ; 16-byte Folded Reload
	sub	x8, x9, x8
	scvtf	d0, x8
	mov	x8, #225833675390976            ; =0xcd6500000000
	movk	x8, #16845, lsl #48
	fmov	d1, x8
	fdiv	d0, d0, d1
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp32:
; %bb.36:                               ;   in Loop: Header=BB4_17 Depth=1
Ltmp33:
Lloh40:
	adrp	x1, l_.str.8@PAGE
Lloh41:
	add	x1, x1, l_.str.8@PAGEOFF
	mov	w2, #3                          ; =0x3
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp34:
; %bb.37:                               ;   in Loop: Header=BB4_17 Depth=1
Ltmp35:
Lloh42:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh43:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh44:
	adrp	x1, l_.str.9@PAGE
Lloh45:
	add	x1, x1, l_.str.9@PAGEOFF
	mov	w2, #14                         ; =0xe
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp36:
; %bb.38:                               ;   in Loop: Header=BB4_17 Depth=1
Ltmp37:
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	sub	x8, x21, x8
	scvtf	d0, x8
	mov	x8, #225833675390976            ; =0xcd6500000000
	movk	x8, #16845, lsl #48
	fmov	d1, x8
	fdiv	d0, d0, d1
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp38:
; %bb.39:                               ;   in Loop: Header=BB4_17 Depth=1
Ltmp39:
Lloh46:
	adrp	x1, l_.str.8@PAGE
Lloh47:
	add	x1, x1, l_.str.8@PAGEOFF
	mov	w2, #3                          ; =0x3
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp40:
; %bb.40:                               ;   in Loop: Header=BB4_17 Depth=1
Ltmp41:
Lloh48:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh49:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh50:
	adrp	x1, l_.str.10@PAGE
Lloh51:
	add	x1, x1, l_.str.10@PAGEOFF
	mov	w2, #14                         ; =0xe
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp42:
; %bb.41:                               ;   in Loop: Header=BB4_17 Depth=1
Ltmp43:
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	sub	x8, x27, x8
	scvtf	d0, x8
	mov	x8, #225833675390976            ; =0xcd6500000000
	movk	x8, #16845, lsl #48
	fmov	d1, x8
	fdiv	d0, d0, d1
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp44:
; %bb.42:                               ;   in Loop: Header=BB4_17 Depth=1
Ltmp45:
Lloh52:
	adrp	x1, l_.str.8@PAGE
Lloh53:
	add	x1, x1, l_.str.8@PAGEOFF
	mov	w2, #3                          ; =0x3
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp46:
; %bb.43:                               ;   in Loop: Header=BB4_17 Depth=1
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	str	x0, [sp, #56]                   ; 8-byte Folded Spill
	mov	x0, x20
	ldr	x8, [sp, #64]                   ; 8-byte Folded Reload
	cmp	x8, #1
	b.lt	LBB4_46
; %bb.44:                               ;   in Loop: Header=BB4_17 Depth=1
	ldr	x21, [sp, #64]                  ; 8-byte Folded Reload
	mov	x0, x20
LBB4_45:                                ;   Parent Loop BB4_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	mul	x8, x0, x25
	umulh	x1, x0, x25
	mov	x0, x8
	mov	x2, x24
	mov	x3, #0                          ; =0x0
	bl	___umodti3
	subs	x21, x21, #1
	b.ne	LBB4_45
LBB4_46:                                ;   in Loop: Header=BB4_17 Depth=1
	adrp	x8, __ZL6g_sink@PAGE
	str	x0, [x8, __ZL6g_sink@PAGEOFF]
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	str	x0, [sp, #48]                   ; 8-byte Folded Spill
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	str	x0, [sp, #40]                   ; 8-byte Folded Spill
	mov	x8, x20
	ldr	x21, [sp, #64]                  ; 8-byte Folded Reload
	cmp	x21, #1
	b.lt	LBB4_50
; %bb.47:                               ;   in Loop: Header=BB4_17 Depth=1
	neg	x27, x23
	mov	x8, x20
LBB4_48:                                ;   Parent Loop BB4_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	asr	x3, x24, #63
	asr	x9, x8, #63
	umulh	x10, x8, x25
	madd	x1, x9, x25, x10
	mul	x0, x8, x25
	mov	x2, x24
	bl	___modti3
	cmp	x23, x0
	csel	x8, x24, xzr, lt
	sub	x8, x0, x8
	cmp	x8, x27
	csel	x9, x24, xzr, lt
	add	x8, x9, x8
	subs	x21, x21, #1
	b.ne	LBB4_48
; %bb.49:                               ;   in Loop: Header=BB4_17 Depth=1
	and	x9, x24, x8, asr #63
	add	x8, x9, x8
	ldr	x21, [sp, #64]                  ; 8-byte Folded Reload
LBB4_50:                                ;   in Loop: Header=BB4_17 Depth=1
	adrp	x9, __ZL6g_sink@PAGE
	str	x8, [x9, __ZL6g_sink@PAGEOFF]
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x23, x0
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x27, x0
	cmp	x21, #1
	b.lt	LBB4_52
LBB4_51:                                ;   Parent Loop BB4_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	umulh	x9, x26, x22
	madd	x9, x28, x22, x9
	mul	x10, x26, x22
	mul	x11, x19, x10
	umulh	x12, x11, x24
	mul	x11, x11, x24
	cmn	x11, x10
	adc	x9, x12, x9
	cmp	x24, x9
	csel	x10, xzr, x24, hi
	sub	x22, x9, x10
	subs	x21, x21, #1
	b.ne	LBB4_51
LBB4_52:                                ;   in Loop: Header=BB4_17 Depth=1
	mul	x8, x22, x19
	umulh	x9, x8, x24
	mul	x8, x8, x24
	cmn	x8, x22
	cinc	x8, x9, hs
	cmp	x24, x8
	csel	x9, xzr, x24, hi
	sub	x8, x8, x9
	adrp	x9, __ZL6g_sink@PAGE
	str	x8, [x9, __ZL6g_sink@PAGEOFF]
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x22, x0
Ltmp48:
Lloh54:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh55:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh56:
	adrp	x1, l_.str.11@PAGE
Lloh57:
	add	x1, x1, l_.str.11@PAGEOFF
	mov	w2, #32                         ; =0x20
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp49:
; %bb.53:                               ;   in Loop: Header=BB4_17 Depth=1
Ltmp50:
Lloh58:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh59:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh60:
	adrp	x1, l_.str.7@PAGE
Lloh61:
	add	x1, x1, l_.str.7@PAGEOFF
	mov	w2, #14                         ; =0xe
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp51:
; %bb.54:                               ;   in Loop: Header=BB4_17 Depth=1
Ltmp52:
	ldp	x9, x8, [sp, #48]               ; 16-byte Folded Reload
	sub	x8, x9, x8
	scvtf	d0, x8
	mov	x8, #225833675390976            ; =0xcd6500000000
	movk	x8, #16845, lsl #48
	fmov	d1, x8
	fdiv	d0, d0, d1
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp53:
; %bb.55:                               ;   in Loop: Header=BB4_17 Depth=1
Ltmp54:
Lloh62:
	adrp	x1, l_.str.8@PAGE
Lloh63:
	add	x1, x1, l_.str.8@PAGEOFF
	mov	w2, #3                          ; =0x3
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp55:
; %bb.56:                               ;   in Loop: Header=BB4_17 Depth=1
Ltmp56:
Lloh64:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh65:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh66:
	adrp	x1, l_.str.9@PAGE
Lloh67:
	add	x1, x1, l_.str.9@PAGEOFF
	mov	w2, #14                         ; =0xe
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp57:
; %bb.57:                               ;   in Loop: Header=BB4_17 Depth=1
Ltmp58:
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	sub	x8, x23, x8
	scvtf	d0, x8
	mov	x8, #225833675390976            ; =0xcd6500000000
	movk	x8, #16845, lsl #48
	fmov	d1, x8
	fdiv	d0, d0, d1
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp59:
; %bb.58:                               ;   in Loop: Header=BB4_17 Depth=1
Ltmp60:
Lloh68:
	adrp	x1, l_.str.8@PAGE
Lloh69:
	add	x1, x1, l_.str.8@PAGEOFF
	mov	w2, #3                          ; =0x3
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp61:
; %bb.59:                               ;   in Loop: Header=BB4_17 Depth=1
Ltmp62:
Lloh70:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh71:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh72:
	adrp	x1, l_.str.10@PAGE
Lloh73:
	add	x1, x1, l_.str.10@PAGEOFF
	mov	w2, #14                         ; =0xe
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp63:
; %bb.60:                               ;   in Loop: Header=BB4_17 Depth=1
Ltmp64:
	sub	x8, x22, x27
	scvtf	d0, x8
	mov	x8, #225833675390976            ; =0xcd6500000000
	movk	x8, #16845, lsl #48
	fmov	d1, x8
	fdiv	d0, d0, d1
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp65:
; %bb.61:                               ;   in Loop: Header=BB4_17 Depth=1
Ltmp66:
Lloh74:
	adrp	x1, l_.str.8@PAGE
Lloh75:
	add	x1, x1, l_.str.8@PAGEOFF
	mov	w2, #3                          ; =0x3
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp67:
; %bb.62:                               ;   in Loop: Header=BB4_17 Depth=1
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x22, x0
	ldr	x27, [sp, #64]                  ; 8-byte Folded Reload
	cmp	x27, #1
	b.lt	LBB4_66
; %bb.63:                               ;   in Loop: Header=BB4_17 Depth=1
	mov	w9, #1                          ; =0x1
	mov	x11, x27
	mov	x8, x25
	mov	x10, x20
	ldr	x28, [sp, #24]                  ; 8-byte Folded Reload
LBB4_64:                                ;   Parent Loop BB4_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	add	x10, x10, x9
	eor	x8, x10, x8
	add	x9, x9, #1
	subs	x11, x11, #1
	b.ne	LBB4_64
; %bb.65:                               ;   in Loop: Header=BB4_17 Depth=1
	udiv	x9, x10, x24
	msub	x9, x9, x24, x10
	udiv	x10, x8, x24
	msub	x8, x10, x24, x8
	mul	x0, x8, x9
	umulh	x1, x8, x9
	mov	x2, x24
	mov	x3, #0                          ; =0x0
	bl	___umodti3
	b	LBB4_67
LBB4_66:                                ;   in Loop: Header=BB4_17 Depth=1
	mov	x0, #0                          ; =0x0
	ldr	x28, [sp, #24]                  ; 8-byte Folded Reload
LBB4_67:                                ;   in Loop: Header=BB4_17 Depth=1
	adrp	x8, __ZL6g_sink@PAGE
	str	x0, [x8, __ZL6g_sink@PAGEOFF]
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x21, x0
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x26, x0
	cmp	x27, #1
	b.lt	LBB4_71
; %bb.68:                               ;   in Loop: Header=BB4_17 Depth=1
	mov	x9, x27
	str	x26, [sp, #56]                  ; 8-byte Folded Spill
	mov	x26, x22
	mov	w8, #1                          ; =0x1
LBB4_69:                                ;   Parent Loop BB4_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	add	x20, x8, x20
	eor	x25, x20, x25
	add	x8, x8, #1
	subs	x9, x9, #1
	b.ne	LBB4_69
; %bb.70:                               ;   in Loop: Header=BB4_17 Depth=1
	udiv	x8, x20, x24
	msub	x8, x8, x24, x20
	ldp	x22, x20, [sp, #8]              ; 16-byte Folded Reload
	umulh	x9, x20, x8
	madd	x1, x22, x8, x9
	mul	x0, x20, x8
	mov	x2, x24
	mov	x3, #0                          ; =0x0
	bl	___umodti3
	mov	x23, x0
	udiv	x8, x25, x24
	msub	x8, x8, x24, x25
	umulh	x9, x20, x8
	madd	x1, x22, x8, x9
	mul	x0, x20, x8
	mov	x2, x24
	mov	x3, #0                          ; =0x0
	bl	___umodti3
	umulh	x8, x0, x23
	mul	x9, x0, x23
	mul	x10, x19, x9
	umulh	x11, x10, x24
	mul	x10, x10, x24
	cmn	x10, x9
	adc	x8, x11, x8
	cmp	x24, x8
	csel	x9, xzr, x24, hi
	sub	x8, x8, x9
	mul	x9, x8, x19
	umulh	x10, x9, x24
	mul	x9, x9, x24
	cmn	x9, x8
	cinc	x8, x10, hs
	cmp	x24, x8
	csel	x9, xzr, x24, hi
	sub	x8, x8, x9
	mov	x22, x26
	ldr	x26, [sp, #56]                  ; 8-byte Folded Reload
	b	LBB4_72
LBB4_71:                                ;   in Loop: Header=BB4_17 Depth=1
	mov	x8, #0                          ; =0x0
LBB4_72:                                ;   in Loop: Header=BB4_17 Depth=1
	adrp	x9, __ZL6g_sink@PAGE
	str	x8, [x9, __ZL6g_sink@PAGEOFF]
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x23, x0
Ltmp69:
Lloh76:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh77:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh78:
	adrp	x1, l_.str.12@PAGE
Lloh79:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #38                         ; =0x26
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp70:
Lloh80:
	adrp	x19, l_.str@PAGE
Lloh81:
	add	x19, x19, l_.str@PAGEOFF
; %bb.73:                               ;   in Loop: Header=BB4_17 Depth=1
Ltmp71:
Lloh82:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh83:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh84:
	adrp	x1, l_.str.13@PAGE
Lloh85:
	add	x1, x1, l_.str.13@PAGEOFF
	mov	w2, #18                         ; =0x12
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp72:
; %bb.74:                               ;   in Loop: Header=BB4_17 Depth=1
Ltmp73:
	sub	x8, x21, x22
	scvtf	d0, x8
	mov	x8, #225833675390976            ; =0xcd6500000000
	movk	x8, #16845, lsl #48
	fmov	d1, x8
	fdiv	d8, d0, d1
	fmov	d0, d8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp74:
; %bb.75:                               ;   in Loop: Header=BB4_17 Depth=1
Ltmp75:
Lloh86:
	adrp	x1, l_.str.8@PAGE
Lloh87:
	add	x1, x1, l_.str.8@PAGEOFF
	mov	w2, #3                          ; =0x3
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp76:
; %bb.76:                               ;   in Loop: Header=BB4_17 Depth=1
Ltmp77:
Lloh88:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh89:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh90:
	adrp	x1, l_.str.14@PAGE
Lloh91:
	add	x1, x1, l_.str.14@PAGEOFF
	mov	w2, #18                         ; =0x12
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp78:
; %bb.77:                               ;   in Loop: Header=BB4_17 Depth=1
Ltmp79:
	sub	x8, x23, x26
	scvtf	d0, x8
	mov	x8, #225833675390976            ; =0xcd6500000000
	movk	x8, #16845, lsl #48
	fmov	d1, x8
	fdiv	d9, d0, d1
	fmov	d0, d9
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp80:
; %bb.78:                               ;   in Loop: Header=BB4_17 Depth=1
Ltmp81:
Lloh92:
	adrp	x1, l_.str.8@PAGE
Lloh93:
	add	x1, x1, l_.str.8@PAGEOFF
	mov	w2, #3                          ; =0x3
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp82:
; %bb.79:                               ;   in Loop: Header=BB4_17 Depth=1
Ltmp83:
Lloh94:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh95:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh96:
	adrp	x1, l_.str.15@PAGE
Lloh97:
	add	x1, x1, l_.str.15@PAGEOFF
	mov	w2, #21                         ; =0x15
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp84:
; %bb.80:                               ;   in Loop: Header=BB4_17 Depth=1
	fdiv	d0, d9, d8
	fadd	d0, d0, d10
	mov	x8, #4636737291354636288        ; =0x4059000000000000
	fmov	d1, x8
	fmul	d0, d0, d1
Ltmp85:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp86:
; %bb.81:                               ;   in Loop: Header=BB4_17 Depth=1
Ltmp87:
Lloh98:
	adrp	x1, l_.str.16@PAGE
Lloh99:
	add	x1, x1, l_.str.16@PAGEOFF
	mov	w2, #4                          ; =0x4
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp88:
; %bb.82:                               ;   in Loop: Header=BB4_17 Depth=1
	add	x28, x28, #8
	cmp	x28, #48
	b.ne	LBB4_17
; %bb.83:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZdlPv
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #208]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #192]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #176]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #160]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #144]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #128]            ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #112]              ; 16-byte Folded Reload
	ldp	d11, d10, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #224
	ret
LBB4_84:
Ltmp90:
Lloh100:
	adrp	x0, __ZNSt3__14cerrE@GOTPAGE
Lloh101:
	ldr	x0, [x0, __ZNSt3__14cerrE@GOTPAGEOFF]
Lloh102:
	adrp	x1, l_.str.17@PAGE
Lloh103:
	add	x1, x1, l_.str.17@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp91:
; %bb.85:
	bl	_abort
LBB4_86:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev
LBB4_87:
Ltmp2:
	mov	x19, x0
	ldrsb	w8, [sp, #95]
	tbz	w8, #31, LBB4_97
; %bb.88:
	ldr	x0, [sp, #72]
	b	LBB4_96
LBB4_89:
Ltmp15:
	b	LBB4_95
LBB4_90:
Ltmp92:
	b	LBB4_95
LBB4_91:
Ltmp26:
	b	LBB4_95
LBB4_92:
Ltmp89:
	b	LBB4_95
LBB4_93:
Ltmp68:
	b	LBB4_95
LBB4_94:
Ltmp47:
LBB4_95:
	mov	x19, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
LBB4_96:
	bl	__ZdlPv
LBB4_97:
	mov	x0, x19
	bl	__Unwind_Resume
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpLdrGot	Lloh2, Lloh3
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpLdrGot	Lloh6, Lloh7
	.loh AdrpAdd	Lloh12, Lloh13
	.loh AdrpLdrGot	Lloh10, Lloh11
	.loh AdrpAdd	Lloh16, Lloh17
	.loh AdrpLdrGot	Lloh14, Lloh15
	.loh AdrpAdd	Lloh18, Lloh19
	.loh AdrpAdd	Lloh20, Lloh21
	.loh AdrpLdrGot	Lloh22, Lloh23
	.loh AdrpAdd	Lloh26, Lloh27
	.loh AdrpLdrGot	Lloh24, Lloh25
	.loh AdrpAdd	Lloh28, Lloh29
	.loh AdrpLdrGot	Lloh30, Lloh31
	.loh AdrpAdd	Lloh34, Lloh35
	.loh AdrpLdrGot	Lloh32, Lloh33
	.loh AdrpAdd	Lloh38, Lloh39
	.loh AdrpLdrGot	Lloh36, Lloh37
	.loh AdrpAdd	Lloh40, Lloh41
	.loh AdrpAdd	Lloh44, Lloh45
	.loh AdrpLdrGot	Lloh42, Lloh43
	.loh AdrpAdd	Lloh46, Lloh47
	.loh AdrpAdd	Lloh50, Lloh51
	.loh AdrpLdrGot	Lloh48, Lloh49
	.loh AdrpAdd	Lloh52, Lloh53
	.loh AdrpAdd	Lloh56, Lloh57
	.loh AdrpLdrGot	Lloh54, Lloh55
	.loh AdrpAdd	Lloh60, Lloh61
	.loh AdrpLdrGot	Lloh58, Lloh59
	.loh AdrpAdd	Lloh62, Lloh63
	.loh AdrpAdd	Lloh66, Lloh67
	.loh AdrpLdrGot	Lloh64, Lloh65
	.loh AdrpAdd	Lloh68, Lloh69
	.loh AdrpAdd	Lloh72, Lloh73
	.loh AdrpLdrGot	Lloh70, Lloh71
	.loh AdrpAdd	Lloh74, Lloh75
	.loh AdrpAdd	Lloh80, Lloh81
	.loh AdrpAdd	Lloh78, Lloh79
	.loh AdrpLdrGot	Lloh76, Lloh77
	.loh AdrpAdd	Lloh84, Lloh85
	.loh AdrpLdrGot	Lloh82, Lloh83
	.loh AdrpAdd	Lloh86, Lloh87
	.loh AdrpAdd	Lloh90, Lloh91
	.loh AdrpLdrGot	Lloh88, Lloh89
	.loh AdrpAdd	Lloh92, Lloh93
	.loh AdrpAdd	Lloh96, Lloh97
	.loh AdrpLdrGot	Lloh94, Lloh95
	.loh AdrpAdd	Lloh98, Lloh99
	.loh AdrpAdd	Lloh102, Lloh103
	.loh AdrpLdrGot	Lloh100, Lloh101
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table4:
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
	.uleb128 Ltmp14-Ltmp3                   ;   Call between Ltmp3 and Ltmp14
	.uleb128 Ltmp15-Lfunc_begin0            ;     jumps to Ltmp15
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp16-Lfunc_begin0            ; >> Call Site 5 <<
	.uleb128 Ltmp25-Ltmp16                  ;   Call between Ltmp16 and Ltmp25
	.uleb128 Ltmp26-Lfunc_begin0            ;     jumps to Ltmp26
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp25-Lfunc_begin0            ; >> Call Site 6 <<
	.uleb128 Ltmp27-Ltmp25                  ;   Call between Ltmp25 and Ltmp27
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp27-Lfunc_begin0            ; >> Call Site 7 <<
	.uleb128 Ltmp46-Ltmp27                  ;   Call between Ltmp27 and Ltmp46
	.uleb128 Ltmp47-Lfunc_begin0            ;     jumps to Ltmp47
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp46-Lfunc_begin0            ; >> Call Site 8 <<
	.uleb128 Ltmp48-Ltmp46                  ;   Call between Ltmp46 and Ltmp48
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp48-Lfunc_begin0            ; >> Call Site 9 <<
	.uleb128 Ltmp67-Ltmp48                  ;   Call between Ltmp48 and Ltmp67
	.uleb128 Ltmp68-Lfunc_begin0            ;     jumps to Ltmp68
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp67-Lfunc_begin0            ; >> Call Site 10 <<
	.uleb128 Ltmp69-Ltmp67                  ;   Call between Ltmp67 and Ltmp69
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp69-Lfunc_begin0            ; >> Call Site 11 <<
	.uleb128 Ltmp88-Ltmp69                  ;   Call between Ltmp69 and Ltmp88
	.uleb128 Ltmp89-Lfunc_begin0            ;     jumps to Ltmp89
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp90-Lfunc_begin0            ; >> Call Site 12 <<
	.uleb128 Ltmp91-Ltmp90                  ;   Call between Ltmp90 and Ltmp91
	.uleb128 Ltmp92-Lfunc_begin0            ;     jumps to Ltmp92
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp91-Lfunc_begin0            ; >> Call Site 13 <<
	.uleb128 Lfunc_end0-Ltmp91              ;   Call between Ltmp91 and Lfunc_end0
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end0:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc ; -- Begin function _ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.globl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.weak_def_can_be_hidden	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.p2align	2
__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc: ; @_ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
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
	mov	x19, x1
	mov	x20, x0
	mov	x0, x1
	bl	_strlen
	mov	x2, x0
	mov	x0, x20
	mov	x1, x19
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	b	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.cfi_endproc
                                        ; -- End function
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
Ltmp93:
	add	x0, sp, #8
	mov	x1, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp94:
; %bb.1:
	ldrb	w8, [sp, #8]
	cmp	w8, #1
	b.ne	LBB6_10
; %bb.2:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x4, x19, x8
	ldr	x22, [x4, #40]
	ldr	w24, [x4, #8]
	ldr	w23, [x4, #144]
	cmn	w23, #1
	b.ne	LBB6_7
; %bb.3:
Ltmp96:
	add	x8, sp, #24
	mov	x25, x4
	mov	x0, x4
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp97:
; %bb.4:
Ltmp98:
Lloh104:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh105:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #24
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp99:
; %bb.5:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp100:
	mov	w1, #32                         ; =0x20
	blr	x8
Ltmp101:
; %bb.6:
	mov	x23, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	mov	x4, x25
	str	w23, [x25, #144]
LBB6_7:
	mov	w8, #176                        ; =0xb0
	and	w8, w24, w8
	add	x3, x20, x21
	cmp	w8, #32
	csel	x2, x3, x20, eq
Ltmp103:
	sxtb	w5, w23
	mov	x0, x22
	mov	x1, x20
	bl	__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp104:
; %bb.8:
	cbnz	x0, LBB6_10
; %bb.9:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
	ldr	w8, [x0, #32]
	mov	w9, #5                          ; =0x5
Ltmp106:
	orr	w1, w8, w9
	bl	__ZNSt3__18ios_base5clearEj
Ltmp107:
LBB6_10:
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
LBB6_11:
	mov	x0, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB6_12:
Ltmp108:
	b	LBB6_15
LBB6_13:
Ltmp102:
	mov	x20, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	b	LBB6_16
LBB6_14:
Ltmp105:
LBB6_15:
	mov	x20, x0
LBB6_16:
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB6_18
LBB6_17:
Ltmp95:
	mov	x20, x0
LBB6_18:
	mov	x0, x20
	bl	___cxa_begin_catch
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
Ltmp109:
	add	x0, x19, x8
	bl	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp110:
; %bb.19:
	bl	___cxa_end_catch
	b	LBB6_11
LBB6_20:
Ltmp111:
	mov	x19, x0
Ltmp112:
	bl	___cxa_end_catch
Ltmp113:
; %bb.21:
	mov	x0, x19
	bl	__Unwind_Resume
LBB6_22:
Ltmp114:
	bl	___clang_call_terminate
	.loh AdrpLdrGot	Lloh104, Lloh105
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table6:
Lexception1:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase0-Lttbaseref0
Lttbaseref0:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end1-Lcst_begin1
Lcst_begin1:
	.uleb128 Ltmp93-Lfunc_begin1            ; >> Call Site 1 <<
	.uleb128 Ltmp94-Ltmp93                  ;   Call between Ltmp93 and Ltmp94
	.uleb128 Ltmp95-Lfunc_begin1            ;     jumps to Ltmp95
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp96-Lfunc_begin1            ; >> Call Site 2 <<
	.uleb128 Ltmp97-Ltmp96                  ;   Call between Ltmp96 and Ltmp97
	.uleb128 Ltmp105-Lfunc_begin1           ;     jumps to Ltmp105
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp98-Lfunc_begin1            ; >> Call Site 3 <<
	.uleb128 Ltmp101-Ltmp98                 ;   Call between Ltmp98 and Ltmp101
	.uleb128 Ltmp102-Lfunc_begin1           ;     jumps to Ltmp102
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp103-Lfunc_begin1           ; >> Call Site 4 <<
	.uleb128 Ltmp104-Ltmp103                ;   Call between Ltmp103 and Ltmp104
	.uleb128 Ltmp105-Lfunc_begin1           ;     jumps to Ltmp105
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp106-Lfunc_begin1           ; >> Call Site 5 <<
	.uleb128 Ltmp107-Ltmp106                ;   Call between Ltmp106 and Ltmp107
	.uleb128 Ltmp108-Lfunc_begin1           ;     jumps to Ltmp108
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp107-Lfunc_begin1           ; >> Call Site 6 <<
	.uleb128 Ltmp109-Ltmp107                ;   Call between Ltmp107 and Ltmp109
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp109-Lfunc_begin1           ; >> Call Site 7 <<
	.uleb128 Ltmp110-Ltmp109                ;   Call between Ltmp109 and Ltmp110
	.uleb128 Ltmp111-Lfunc_begin1           ;     jumps to Ltmp111
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp110-Lfunc_begin1           ; >> Call Site 8 <<
	.uleb128 Ltmp112-Ltmp110                ;   Call between Ltmp110 and Ltmp112
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp112-Lfunc_begin1           ; >> Call Site 9 <<
	.uleb128 Ltmp113-Ltmp112                ;   Call between Ltmp112 and Ltmp113
	.uleb128 Ltmp114-Lfunc_begin1           ;     jumps to Ltmp114
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp113-Lfunc_begin1           ; >> Call Site 10 <<
	.uleb128 Lfunc_end1-Ltmp113             ;   Call between Ltmp113 and Lfunc_end1
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
	cbz	x0, LBB7_16
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
	b.lt	LBB7_3
; %bb.2:
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
	mov	x0, x19
	mov	x2, x25
	blr	x8
	cmp	x0, x25
	b.ne	LBB7_15
LBB7_3:
	cmp	x23, #1
	b.lt	LBB7_12
; %bb.4:
	mov	x8, #9223372036854775800        ; =0x7ffffffffffffff8
	cmp	x23, x8
	b.hs	LBB7_17
; %bb.5:
	cmp	x23, #23
	b.hs	LBB7_7
; %bb.6:
	strb	w23, [sp, #31]
	add	x25, sp, #8
	b	LBB7_8
LBB7_7:
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
LBB7_8:
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
Ltmp115:
	mov	x0, x19
	mov	x2, x23
	blr	x8
Ltmp116:
; %bb.9:
	ldrsb	w8, [sp, #31]
	tbnz	w8, #31, LBB7_11
; %bb.10:
	cmp	x0, x23
	b.ne	LBB7_15
	b	LBB7_12
LBB7_11:
	ldr	x8, [sp, #8]
	mov	x24, x0
	mov	x0, x8
	bl	__ZdlPv
	cmp	x24, x23
	b.ne	LBB7_15
LBB7_12:
	sub	x22, x22, x21
	cmp	x22, #1
	b.lt	LBB7_14
; %bb.13:
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
	mov	x0, x19
	mov	x1, x21
	mov	x2, x22
	blr	x8
	cmp	x0, x22
	b.ne	LBB7_15
LBB7_14:
	str	xzr, [x20, #24]
	b	LBB7_16
LBB7_15:
	mov	x19, #0                         ; =0x0
LBB7_16:
	mov	x0, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB7_17:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev
LBB7_18:
Ltmp117:
	mov	x19, x0
	ldrsb	w8, [sp, #31]
	tbz	w8, #31, LBB7_20
; %bb.19:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
LBB7_20:
	mov	x0, x19
	bl	__Unwind_Resume
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table7:
Lexception2:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end2-Lcst_begin2
Lcst_begin2:
	.uleb128 Lfunc_begin2-Lfunc_begin2      ; >> Call Site 1 <<
	.uleb128 Ltmp115-Lfunc_begin2           ;   Call between Lfunc_begin2 and Ltmp115
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp115-Lfunc_begin2           ; >> Call Site 2 <<
	.uleb128 Ltmp116-Ltmp115                ;   Call between Ltmp115 and Ltmp116
	.uleb128 Ltmp117-Lfunc_begin2           ;     jumps to Ltmp117
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp116-Lfunc_begin2           ; >> Call Site 3 <<
	.uleb128 Lfunc_end2-Ltmp116             ;   Call between Ltmp116 and Lfunc_end2
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
Lloh106:
	adrp	x0, l_.str.18@PAGE
Lloh107:
	add	x0, x0, l_.str.18@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB8ne200100EPKc
	.loh AdrpAdd	Lloh106, Lloh107
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
Ltmp118:
	mov	x1, x20
	bl	__ZNSt12length_errorC1B8ne200100EPKc
Ltmp119:
; %bb.1:
Lloh108:
	adrp	x1, __ZTISt12length_error@GOTPAGE
Lloh109:
	ldr	x1, [x1, __ZTISt12length_error@GOTPAGEOFF]
Lloh110:
	adrp	x2, __ZNSt12length_errorD1Ev@GOTPAGE
Lloh111:
	ldr	x2, [x2, __ZNSt12length_errorD1Ev@GOTPAGEOFF]
	mov	x0, x19
	bl	___cxa_throw
LBB10_2:
Ltmp120:
	mov	x20, x0
	mov	x0, x19
	bl	___cxa_free_exception
	mov	x0, x20
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh110, Lloh111
	.loh AdrpLdrGot	Lloh108, Lloh109
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table10:
Lexception3:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end3-Lcst_begin3
Lcst_begin3:
	.uleb128 Lfunc_begin3-Lfunc_begin3      ; >> Call Site 1 <<
	.uleb128 Ltmp118-Lfunc_begin3           ;   Call between Lfunc_begin3 and Ltmp118
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp118-Lfunc_begin3           ; >> Call Site 2 <<
	.uleb128 Ltmp119-Ltmp118                ;   Call between Ltmp118 and Ltmp119
	.uleb128 Ltmp120-Lfunc_begin3           ;     jumps to Ltmp120
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp119-Lfunc_begin3           ; >> Call Site 3 <<
	.uleb128 Lfunc_end3-Ltmp119             ;   Call between Ltmp119 and Lfunc_end3
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
Lloh112:
	adrp	x8, __ZTVSt12length_error@GOTPAGE
Lloh113:
	ldr	x8, [x8, __ZTVSt12length_error@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGot	Lloh112, Lloh113
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__const
	.p2align	3, 0x0                          ; @constinit
l_constinit:
	.quad	257                             ; 0x101
	.quad	65537                           ; 0x10001
	.quad	1000003                         ; 0xf4243
	.quad	10000019                        ; 0x989693
	.quad	1000000007                      ; 0x3b9aca07
	.quad	1000000000039                   ; 0xe8d4a51027

	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"========================================\n"

l_.str.1:                               ; @.str.1
	.asciz	"REIST vs Montgomery Arithmetic Benchmark\n"

l_.str.2:                               ; @.str.2
	.asciz	"Total operations per modulus = "

l_.str.3:                               ; @.str.3
	.asciz	"\n\n"

l_.str.4:                               ; @.str.4
	.asciz	"Modulus = "

l_.str.5:                               ; @.str.5
	.asciz	"\n"

l_.str.6:                               ; @.str.6
	.asciz	"\n--- Modular Addition ---\n"

l_.str.7:                               ; @.str.7
	.asciz	"Classic     : "

l_.str.8:                               ; @.str.8
	.asciz	" s\n"

l_.str.9:                               ; @.str.9
	.asciz	"REIST       : "

l_.str.10:                              ; @.str.10
	.asciz	"Montgomery  : "

l_.str.11:                              ; @.str.11
	.asciz	"\n--- Modular Multiplication ---\n"

l_.str.12:                              ; @.str.12
	.asciz	"\n--- Full Cycle (with conversion) ---\n"

l_.str.13:                              ; @.str.13
	.asciz	"Classic full    : "

l_.str.14:                              ; @.str.14
	.asciz	"Montgomery full : "

l_.str.15:                              ; @.str.15
	.asciz	"Overhead vs classic: "

l_.str.16:                              ; @.str.16
	.asciz	" %\n\n"

l_.str.17:                              ; @.str.17
	.asciz	"Montgomery requires odd modulus\n"

l_.str.18:                              ; @.str.18
	.asciz	"basic_string"

.zerofill __DATA,__bss,__ZL6g_sink,8,3  ; @_ZL6g_sink
.subsections_via_symbols
