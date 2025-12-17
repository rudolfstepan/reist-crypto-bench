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
	sub	sp, sp, #192
	stp	d13, d12, [sp, #48]             ; 16-byte Folded Spill
	stp	d11, d10, [sp, #64]             ; 16-byte Folded Spill
	stp	d9, d8, [sp, #80]               ; 16-byte Folded Spill
	stp	x28, x27, [sp, #96]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #112]            ; 16-byte Folded Spill
	stp	x24, x23, [sp, #128]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #144]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #160]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #176]            ; 16-byte Folded Spill
	add	x29, sp, #176
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
	mov	w0, #40                         ; =0x28
	bl	__Znwm
	mov	x10, x0
	mov	w8, #51719                      ; =0xca07
	movk	w8, #15258, lsl #16
Lloh0:
	adrp	x9, l_constinit@PAGE
Lloh1:
	add	x9, x9, l_constinit@PAGEOFF
	str	x8, [x0, #32]
	ldp	q1, q0, [x9]
Lloh2:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh3:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	stp	q1, q0, [x10]
	str	x10, [sp, #8]                   ; 8-byte Folded Spill
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
Ltmp0:
Lloh4:
	adrp	x1, l_.str@PAGE
Lloh5:
	add	x1, x1, l_.str@PAGEOFF
	mov	w2, #46                         ; =0x2e
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp1:
; %bb.1:
Ltmp2:
Lloh6:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh7:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh8:
	adrp	x1, l_.str.1@PAGE
Lloh9:
	add	x1, x1, l_.str.1@PAGEOFF
	mov	w2, #42                         ; =0x2a
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp3:
; %bb.2:
Ltmp4:
Lloh10:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh11:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh12:
	adrp	x1, l_.str@PAGE
Lloh13:
	add	x1, x1, l_.str@PAGEOFF
	mov	w2, #46                         ; =0x2e
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp5:
; %bb.3:
Ltmp6:
Lloh14:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh15:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh16:
	adrp	x1, l_.str.2@PAGE
Lloh17:
	add	x1, x1, l_.str.2@PAGEOFF
	mov	w2, #24                         ; =0x18
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp7:
; %bb.4:
Ltmp8:
	mov	w1, #38528                      ; =0x9680
	movk	w1, #152, lsl #16
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
Ltmp9:
; %bb.5:
Ltmp10:
Lloh18:
	adrp	x1, l_.str.3@PAGE
Lloh19:
	add	x1, x1, l_.str.3@PAGEOFF
	mov	w2, #2                          ; =0x2
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp11:
; %bb.6:
	mov	x19, #0                         ; =0x0
Lloh20:
	adrp	x20, __ZNSt3__14coutE@GOTPAGE
Lloh21:
	ldr	x20, [x20, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh22:
	adrp	x21, l_.str.4@PAGE
Lloh23:
	add	x21, x21, l_.str.4@PAGEOFF
	fmov	d12, #1.00000000
LBB0_7:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_13 Depth 2
                                        ;     Child Loop BB0_15 Depth 2
                                        ;     Child Loop BB0_17 Depth 2
                                        ;     Child Loop BB0_19 Depth 2
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x23, [x8, x19]
Ltmp13:
	mov	x0, x20
	mov	x1, x21
	mov	w2, #46                         ; =0x2e
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp14:
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=1
Ltmp15:
	mov	x0, x20
Lloh24:
	adrp	x1, l_.str.5@PAGE
Lloh25:
	add	x1, x1, l_.str.5@PAGEOFF
	mov	w2, #10                         ; =0xa
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp16:
; %bb.9:                                ;   in Loop: Header=BB0_7 Depth=1
Ltmp17:
	mov	x1, x23
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
Ltmp18:
; %bb.10:                               ;   in Loop: Header=BB0_7 Depth=1
Ltmp19:
Lloh26:
	adrp	x1, l_.str.6@PAGE
Lloh27:
	add	x1, x1, l_.str.6@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp20:
; %bb.11:                               ;   in Loop: Header=BB0_7 Depth=1
Ltmp21:
	mov	x0, x20
	mov	x1, x21
	mov	w2, #46                         ; =0x2e
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp22:
; %bb.12:                               ;   in Loop: Header=BB0_7 Depth=1
	str	x19, [sp, #16]                  ; 8-byte Folded Spill
	mov	w9, #54919                      ; =0xd687
	movk	w9, #18, lsl #16
	sdiv	x8, x9, x23
	msub	x19, x8, x23, x9
	mov	w9, #39043                      ; =0x9883
	movk	w9, #13, lsl #16
	sdiv	x8, x9, x23
	msub	x20, x8, x23, x9
	asr	x28, x23, #1
	cmp	x19, x28
	csel	x24, x23, xzr, gt
	cmp	x20, x28
	csel	x25, x23, xzr, gt
	asr	w21, w23, #1
	sdiv	w8, w19, w23
	msub	w27, w8, w23, w19
	cmp	w27, w21
	csel	w22, w23, wzr, gt
	sdiv	w8, w20, w23
	msub	w8, w8, w23, w20
	str	w8, [sp, #36]                   ; 4-byte Folded Spill
	cmp	w8, w21
	csel	w8, w23, wzr, gt
	str	w8, [sp, #32]                   ; 4-byte Folded Spill
	str	xzr, [sp, #40]
	scvtf	d0, x23
	fdiv	d0, d12, d0
	mov	x8, #4751297606875873280        ; =0x41f0000000000000
	fmov	d1, x8
	fmul	d8, d0, d1
	scvtf	d0, w23
	fdiv	d0, d12, d0
	fmul	d9, d0, d1
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x26, x0
	mov	w9, #38528                      ; =0x9680
	movk	w9, #152, lsl #16
	mov	x8, x19
LBB0_13:                                ;   Parent Loop BB0_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	add	x8, x8, x20
	sdiv	x10, x8, x23
	msub	x8, x10, x23, x8
	subs	x9, x9, #1
	b.ne	LBB0_13
; %bb.14:                               ;   in Loop: Header=BB0_7 Depth=1
	sub	x24, x19, x24
	sub	x20, x20, x25
	sub	w22, w27, w22
	fcvtzu	x27, d8
	str	x8, [sp, #40]
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	sub	x8, x0, x26
	scvtf	d8, x8
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	neg	x19, x28
	neg	x26, x23
	mov	w8, #38528                      ; =0x9680
	movk	w8, #152, lsl #16
	mov	x9, x24
LBB0_15:                                ;   Parent Loop BB0_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	add	x9, x9, x20
	cmp	x9, x19
	csel	x10, xzr, x23, gt
	cmp	x9, x28
	csel	x10, x26, x10, gt
	add	x9, x10, x9
	subs	x8, x8, #1
	b.ne	LBB0_15
; %bb.16:                               ;   in Loop: Header=BB0_7 Depth=1
	fcvtzu	w25, d9
	str	x9, [sp, #40]
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	sub	x8, x0, x8
	scvtf	d9, x8
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	mov	w8, #38528                      ; =0x9680
	movk	w8, #152, lsl #16
LBB0_17:                                ;   Parent Loop BB0_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	add	x9, x24, x20
	asr	x10, x9, #63
	umulh	x11, x9, x27
	madd	w10, w10, w27, w11
	mul	x11, x9, x27
	extr	x10, x10, x11, #32
	msub	x9, x23, x10, x9
	cmp	x9, x19
	csel	x10, xzr, x23, gt
	cmp	x9, x28
	csel	x10, x26, x10, gt
	add	x24, x10, x9
	subs	x8, x8, #1
	b.ne	LBB0_17
; %bb.18:                               ;   in Loop: Header=BB0_7 Depth=1
	ldp	w9, w8, [sp, #32]               ; 8-byte Folded Reload
	sub	w19, w8, w9
	mov	x27, #225833675390976           ; =0xcd6500000000
	movk	x27, #16845, lsl #48
	fmov	d0, x27
	str	x24, [sp, #40]
	fdiv	d8, d8, d0
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	sub	x8, x0, x8
	scvtf	d11, x8
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x26, x0
	neg	w8, w21
	neg	w9, w23
	mov	w10, #38528                     ; =0x9680
	movk	w10, #152, lsl #16
LBB0_19:                                ;   Parent Loop BB0_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	add	w11, w22, w19
	sxtw	x12, w11
	mul	x12, x12, x25
	lsr	x12, x12, #32
	msub	w11, w12, w23, w11
	cmp	w11, w8
	csel	w12, wzr, w23, gt
	cmp	w11, w21
	csel	w12, w9, w12, gt
	add	w22, w12, w11
	subs	x10, x10, #1
	b.ne	LBB0_19
; %bb.20:                               ;   in Loop: Header=BB0_7 Depth=1
	sxtw	x8, w22
	str	x8, [sp, #40]
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x23, x0
Ltmp24:
Lloh28:
	adrp	x20, __ZNSt3__14coutE@GOTPAGE
Lloh29:
	ldr	x20, [x20, __ZNSt3__14coutE@GOTPAGEOFF]
	mov	x0, x20
Lloh30:
	adrp	x1, l_.str.7@PAGE
Lloh31:
	add	x1, x1, l_.str.7@PAGEOFF
	mov	w2, #27                         ; =0x1b
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp25:
Lloh32:
	adrp	x19, l_.str.8@PAGE
Lloh33:
	add	x19, x19, l_.str.8@PAGEOFF
Lloh34:
	adrp	x21, l_.str.14@PAGE
Lloh35:
	add	x21, x21, l_.str.14@PAGEOFF
; %bb.21:                               ;   in Loop: Header=BB0_7 Depth=1
Ltmp26:
	fmov	d0, d8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp27:
; %bb.22:                               ;   in Loop: Header=BB0_7 Depth=1
Ltmp28:
	mov	x1, x19
	mov	w2, #3                          ; =0x3
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp29:
; %bb.23:                               ;   in Loop: Header=BB0_7 Depth=1
Ltmp30:
	mov	x0, x20
Lloh36:
	adrp	x1, l_.str.9@PAGE
Lloh37:
	add	x1, x1, l_.str.9@PAGEOFF
	mov	w2, #27                         ; =0x1b
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp31:
; %bb.24:                               ;   in Loop: Header=BB0_7 Depth=1
Ltmp32:
	fmov	d13, x27
	fdiv	d10, d9, d13
	fmov	d0, d10
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp33:
; %bb.25:                               ;   in Loop: Header=BB0_7 Depth=1
Ltmp34:
	mov	x1, x19
	mov	w2, #3                          ; =0x3
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp35:
; %bb.26:                               ;   in Loop: Header=BB0_7 Depth=1
Ltmp36:
	mov	x0, x20
Lloh38:
	adrp	x1, l_.str.10@PAGE
Lloh39:
	add	x1, x1, l_.str.10@PAGEOFF
	mov	w2, #29                         ; =0x1d
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp37:
; %bb.27:                               ;   in Loop: Header=BB0_7 Depth=1
Ltmp38:
	fdiv	d9, d11, d13
	fmov	d0, d9
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp39:
; %bb.28:                               ;   in Loop: Header=BB0_7 Depth=1
Ltmp40:
	mov	x1, x19
	mov	w2, #3                          ; =0x3
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp41:
; %bb.29:                               ;   in Loop: Header=BB0_7 Depth=1
Ltmp42:
	mov	x0, x20
Lloh40:
	adrp	x1, l_.str.11@PAGE
Lloh41:
	add	x1, x1, l_.str.11@PAGEOFF
	mov	w2, #29                         ; =0x1d
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp43:
; %bb.30:                               ;   in Loop: Header=BB0_7 Depth=1
Ltmp44:
	sub	x8, x23, x26
	scvtf	d0, x8
	fdiv	d11, d0, d13
	fmov	d0, d11
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp45:
; %bb.31:                               ;   in Loop: Header=BB0_7 Depth=1
Ltmp46:
	mov	x1, x19
	mov	w2, #3                          ; =0x3
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp47:
; %bb.32:                               ;   in Loop: Header=BB0_7 Depth=1
Ltmp48:
	mov	x0, x20
Lloh42:
	adrp	x1, l_.str.12@PAGE
Lloh43:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #10                         ; =0xa
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp49:
; %bb.33:                               ;   in Loop: Header=BB0_7 Depth=1
Ltmp50:
	mov	x0, x20
Lloh44:
	adrp	x1, l_.str.13@PAGE
Lloh45:
	add	x1, x1, l_.str.13@PAGEOFF
	mov	w2, #38                         ; =0x26
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp51:
; %bb.34:                               ;   in Loop: Header=BB0_7 Depth=1
	fdiv	d0, d8, d10
Ltmp52:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp53:
; %bb.35:                               ;   in Loop: Header=BB0_7 Depth=1
Ltmp54:
	mov	x1, x21
	mov	w2, #2                          ; =0x2
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp55:
; %bb.36:                               ;   in Loop: Header=BB0_7 Depth=1
Ltmp56:
	mov	x0, x20
Lloh46:
	adrp	x1, l_.str.15@PAGE
Lloh47:
	add	x1, x1, l_.str.15@PAGEOFF
	mov	w2, #40                         ; =0x28
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp57:
; %bb.37:                               ;   in Loop: Header=BB0_7 Depth=1
	fdiv	d0, d8, d9
Ltmp58:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp59:
; %bb.38:                               ;   in Loop: Header=BB0_7 Depth=1
Ltmp60:
	mov	x1, x21
	mov	w2, #2                          ; =0x2
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp61:
; %bb.39:                               ;   in Loop: Header=BB0_7 Depth=1
Ltmp62:
	mov	x0, x20
Lloh48:
	adrp	x1, l_.str.16@PAGE
Lloh49:
	add	x1, x1, l_.str.16@PAGEOFF
	mov	w2, #40                         ; =0x28
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp63:
; %bb.40:                               ;   in Loop: Header=BB0_7 Depth=1
	fdiv	d0, d9, d11
Ltmp64:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp65:
; %bb.41:                               ;   in Loop: Header=BB0_7 Depth=1
Ltmp66:
	mov	x1, x21
	mov	w2, #2                          ; =0x2
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp67:
; %bb.42:                               ;   in Loop: Header=BB0_7 Depth=1
Ltmp68:
	mov	x0, x20
Lloh50:
	adrp	x1, l_.str.17@PAGE
Lloh51:
	add	x1, x1, l_.str.17@PAGEOFF
	mov	w2, #7                          ; =0x7
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp69:
; %bb.43:                               ;   in Loop: Header=BB0_7 Depth=1
	ldr	x1, [sp, #40]
Ltmp70:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
Ltmp71:
; %bb.44:                               ;   in Loop: Header=BB0_7 Depth=1
Ltmp72:
Lloh52:
	adrp	x1, l_.str.3@PAGE
Lloh53:
	add	x1, x1, l_.str.3@PAGEOFF
	mov	w2, #2                          ; =0x2
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp73:
; %bb.45:                               ;   in Loop: Header=BB0_7 Depth=1
	ldr	x19, [sp, #16]                  ; 8-byte Folded Reload
	add	x19, x19, #8
	cmp	x19, #40
Lloh54:
	adrp	x21, l_.str.4@PAGE
Lloh55:
	add	x21, x21, l_.str.4@PAGEOFF
	b.ne	LBB0_7
; %bb.46:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZdlPv
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #176]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #160]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #144]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #128]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #112]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #96]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #80]               ; 16-byte Folded Reload
	ldp	d11, d10, [sp, #64]             ; 16-byte Folded Reload
	ldp	d13, d12, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #192
	ret
LBB0_47:
Ltmp12:
	mov	x20, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZdlPv
	mov	x0, x20
	bl	__Unwind_Resume
LBB0_48:
Ltmp23:
	mov	x20, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZdlPv
	mov	x0, x20
	bl	__Unwind_Resume
LBB0_49:
Ltmp74:
	mov	x20, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZdlPv
	mov	x0, x20
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
	.loh AdrpAdd	Lloh22, Lloh23
	.loh AdrpLdrGot	Lloh20, Lloh21
	.loh AdrpAdd	Lloh24, Lloh25
	.loh AdrpAdd	Lloh26, Lloh27
	.loh AdrpAdd	Lloh34, Lloh35
	.loh AdrpAdd	Lloh32, Lloh33
	.loh AdrpAdd	Lloh30, Lloh31
	.loh AdrpLdrGot	Lloh28, Lloh29
	.loh AdrpAdd	Lloh36, Lloh37
	.loh AdrpAdd	Lloh38, Lloh39
	.loh AdrpAdd	Lloh40, Lloh41
	.loh AdrpAdd	Lloh42, Lloh43
	.loh AdrpAdd	Lloh44, Lloh45
	.loh AdrpAdd	Lloh46, Lloh47
	.loh AdrpAdd	Lloh48, Lloh49
	.loh AdrpAdd	Lloh50, Lloh51
	.loh AdrpAdd	Lloh52, Lloh53
	.loh AdrpAdd	Lloh54, Lloh55
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
	.uleb128 Ltmp11-Ltmp0                   ;   Call between Ltmp0 and Ltmp11
	.uleb128 Ltmp12-Lfunc_begin0            ;     jumps to Ltmp12
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp13-Lfunc_begin0            ; >> Call Site 3 <<
	.uleb128 Ltmp22-Ltmp13                  ;   Call between Ltmp13 and Ltmp22
	.uleb128 Ltmp23-Lfunc_begin0            ;     jumps to Ltmp23
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp24-Lfunc_begin0            ; >> Call Site 4 <<
	.uleb128 Ltmp73-Ltmp24                  ;   Call between Ltmp24 and Ltmp73
	.uleb128 Ltmp74-Lfunc_begin0            ;     jumps to Ltmp74
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp73-Lfunc_begin0            ; >> Call Site 5 <<
	.uleb128 Lfunc_end0-Ltmp73              ;   Call between Ltmp73 and Lfunc_end0
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end0:
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
	.private_extern	__ZNSt3__120__throw_length_errorB8ne200100EPKc ; -- Begin function _ZNSt3__120__throw_length_errorB8ne200100EPKc
	.globl	__ZNSt3__120__throw_length_errorB8ne200100EPKc
	.weak_def_can_be_hidden	__ZNSt3__120__throw_length_errorB8ne200100EPKc
	.p2align	2
__ZNSt3__120__throw_length_errorB8ne200100EPKc: ; @_ZNSt3__120__throw_length_errorB8ne200100EPKc
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception1
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
Ltmp75:
	mov	x1, x20
	bl	__ZNSt12length_errorC1B8ne200100EPKc
Ltmp76:
; %bb.1:
Lloh56:
	adrp	x1, __ZTISt12length_error@GOTPAGE
Lloh57:
	ldr	x1, [x1, __ZTISt12length_error@GOTPAGEOFF]
Lloh58:
	adrp	x2, __ZNSt12length_errorD1Ev@GOTPAGE
Lloh59:
	ldr	x2, [x2, __ZNSt12length_errorD1Ev@GOTPAGEOFF]
	mov	x0, x19
	bl	___cxa_throw
LBB2_2:
Ltmp77:
	mov	x20, x0
	mov	x0, x19
	bl	___cxa_free_exception
	mov	x0, x20
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh58, Lloh59
	.loh AdrpLdrGot	Lloh56, Lloh57
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table2:
Lexception1:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end1-Lcst_begin1
Lcst_begin1:
	.uleb128 Lfunc_begin1-Lfunc_begin1      ; >> Call Site 1 <<
	.uleb128 Ltmp75-Lfunc_begin1            ;   Call between Lfunc_begin1 and Ltmp75
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp75-Lfunc_begin1            ; >> Call Site 2 <<
	.uleb128 Ltmp76-Ltmp75                  ;   Call between Ltmp75 and Ltmp76
	.uleb128 Ltmp77-Lfunc_begin1            ;     jumps to Ltmp77
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp76-Lfunc_begin1            ; >> Call Site 3 <<
	.uleb128 Lfunc_end1-Ltmp76              ;   Call between Ltmp76 and Lfunc_end1
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end1:
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
Lloh60:
	adrp	x8, __ZTVSt12length_error@GOTPAGE
Lloh61:
	ldr	x8, [x8, __ZTVSt12length_error@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGot	Lloh60, Lloh61
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m ; -- Begin function _ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.globl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_def_can_be_hidden	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.p2align	2
__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ; @_ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
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
	mov	x21, x2
	mov	x20, x1
	mov	x19, x0
Ltmp78:
	add	x0, sp, #8
	mov	x1, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp79:
; %bb.1:
	ldrb	w8, [sp, #8]
	cmp	w8, #1
	b.ne	LBB4_10
; %bb.2:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x4, x19, x8
	ldr	x22, [x4, #40]
	ldr	w24, [x4, #8]
	ldr	w23, [x4, #144]
	cmn	w23, #1
	b.ne	LBB4_7
; %bb.3:
Ltmp81:
	add	x8, sp, #24
	mov	x25, x4
	mov	x0, x4
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp82:
; %bb.4:
Ltmp83:
Lloh62:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh63:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #24
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp84:
; %bb.5:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp85:
	mov	w1, #32                         ; =0x20
	blr	x8
Ltmp86:
; %bb.6:
	mov	x23, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	mov	x4, x25
	str	w23, [x25, #144]
LBB4_7:
	mov	w8, #176                        ; =0xb0
	and	w8, w24, w8
	add	x3, x20, x21
	cmp	w8, #32
	csel	x2, x3, x20, eq
Ltmp88:
	sxtb	w5, w23
	mov	x0, x22
	mov	x1, x20
	bl	__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp89:
; %bb.8:
	cbnz	x0, LBB4_10
; %bb.9:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
	ldr	w8, [x0, #32]
	mov	w9, #5                          ; =0x5
Ltmp91:
	orr	w1, w8, w9
	bl	__ZNSt3__18ios_base5clearEj
Ltmp92:
LBB4_10:
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
LBB4_11:
	mov	x0, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB4_12:
Ltmp93:
	b	LBB4_15
LBB4_13:
Ltmp87:
	mov	x20, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	b	LBB4_16
LBB4_14:
Ltmp90:
LBB4_15:
	mov	x20, x0
LBB4_16:
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB4_18
LBB4_17:
Ltmp80:
	mov	x20, x0
LBB4_18:
	mov	x0, x20
	bl	___cxa_begin_catch
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
Ltmp94:
	add	x0, x19, x8
	bl	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp95:
; %bb.19:
	bl	___cxa_end_catch
	b	LBB4_11
LBB4_20:
Ltmp96:
	mov	x19, x0
Ltmp97:
	bl	___cxa_end_catch
Ltmp98:
; %bb.21:
	mov	x0, x19
	bl	__Unwind_Resume
LBB4_22:
Ltmp99:
	bl	___clang_call_terminate
	.loh AdrpLdrGot	Lloh62, Lloh63
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table4:
Lexception2:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase0-Lttbaseref0
Lttbaseref0:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end2-Lcst_begin2
Lcst_begin2:
	.uleb128 Ltmp78-Lfunc_begin2            ; >> Call Site 1 <<
	.uleb128 Ltmp79-Ltmp78                  ;   Call between Ltmp78 and Ltmp79
	.uleb128 Ltmp80-Lfunc_begin2            ;     jumps to Ltmp80
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp81-Lfunc_begin2            ; >> Call Site 2 <<
	.uleb128 Ltmp82-Ltmp81                  ;   Call between Ltmp81 and Ltmp82
	.uleb128 Ltmp90-Lfunc_begin2            ;     jumps to Ltmp90
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp83-Lfunc_begin2            ; >> Call Site 3 <<
	.uleb128 Ltmp86-Ltmp83                  ;   Call between Ltmp83 and Ltmp86
	.uleb128 Ltmp87-Lfunc_begin2            ;     jumps to Ltmp87
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp88-Lfunc_begin2            ; >> Call Site 4 <<
	.uleb128 Ltmp89-Ltmp88                  ;   Call between Ltmp88 and Ltmp89
	.uleb128 Ltmp90-Lfunc_begin2            ;     jumps to Ltmp90
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp91-Lfunc_begin2            ; >> Call Site 5 <<
	.uleb128 Ltmp92-Ltmp91                  ;   Call between Ltmp91 and Ltmp92
	.uleb128 Ltmp93-Lfunc_begin2            ;     jumps to Ltmp93
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp92-Lfunc_begin2            ; >> Call Site 6 <<
	.uleb128 Ltmp94-Ltmp92                  ;   Call between Ltmp92 and Ltmp94
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp94-Lfunc_begin2            ; >> Call Site 7 <<
	.uleb128 Ltmp95-Ltmp94                  ;   Call between Ltmp94 and Ltmp95
	.uleb128 Ltmp96-Lfunc_begin2            ;     jumps to Ltmp96
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp95-Lfunc_begin2            ; >> Call Site 8 <<
	.uleb128 Ltmp97-Ltmp95                  ;   Call between Ltmp95 and Ltmp97
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp97-Lfunc_begin2            ; >> Call Site 9 <<
	.uleb128 Ltmp98-Ltmp97                  ;   Call between Ltmp97 and Ltmp98
	.uleb128 Ltmp99-Lfunc_begin2            ;     jumps to Ltmp99
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp98-Lfunc_begin2            ; >> Call Site 10 <<
	.uleb128 Lfunc_end2-Ltmp98              ;   Call between Ltmp98 and Lfunc_end2
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end2:
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
	mov	x19, x0
	cbz	x0, LBB5_16
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
	b.lt	LBB5_3
; %bb.2:
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
	mov	x0, x19
	mov	x2, x25
	blr	x8
	cmp	x0, x25
	b.ne	LBB5_15
LBB5_3:
	cmp	x23, #1
	b.lt	LBB5_12
; %bb.4:
	mov	x8, #9223372036854775800        ; =0x7ffffffffffffff8
	cmp	x23, x8
	b.hs	LBB5_17
; %bb.5:
	cmp	x23, #23
	b.hs	LBB5_7
; %bb.6:
	strb	w23, [sp, #31]
	add	x25, sp, #8
	b	LBB5_8
LBB5_7:
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
LBB5_8:
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
Ltmp100:
	mov	x0, x19
	mov	x2, x23
	blr	x8
Ltmp101:
; %bb.9:
	ldrsb	w8, [sp, #31]
	tbnz	w8, #31, LBB5_11
; %bb.10:
	cmp	x0, x23
	b.ne	LBB5_15
	b	LBB5_12
LBB5_11:
	ldr	x8, [sp, #8]
	mov	x24, x0
	mov	x0, x8
	bl	__ZdlPv
	cmp	x24, x23
	b.ne	LBB5_15
LBB5_12:
	sub	x22, x22, x21
	cmp	x22, #1
	b.lt	LBB5_14
; %bb.13:
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
	mov	x0, x19
	mov	x1, x21
	mov	x2, x22
	blr	x8
	cmp	x0, x22
	b.ne	LBB5_15
LBB5_14:
	str	xzr, [x20, #24]
	b	LBB5_16
LBB5_15:
	mov	x19, #0                         ; =0x0
LBB5_16:
	mov	x0, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB5_17:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev
LBB5_18:
Ltmp102:
	mov	x19, x0
	ldrsb	w8, [sp, #31]
	tbz	w8, #31, LBB5_20
; %bb.19:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
LBB5_20:
	mov	x0, x19
	bl	__Unwind_Resume
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
	.uleb128 Ltmp100-Lfunc_begin3           ;   Call between Lfunc_begin3 and Ltmp100
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp100-Lfunc_begin3           ; >> Call Site 2 <<
	.uleb128 Ltmp101-Ltmp100                ;   Call between Ltmp100 and Ltmp101
	.uleb128 Ltmp102-Lfunc_begin3           ;     jumps to Ltmp102
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp101-Lfunc_begin3           ; >> Call Site 3 <<
	.uleb128 Lfunc_end3-Ltmp101             ;   Call between Ltmp101 and Lfunc_end3
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end3:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
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
Lloh64:
	adrp	x0, l_.str.19@PAGE
Lloh65:
	add	x0, x0, l_.str.19@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB8ne200100EPKc
	.loh AdrpAdd	Lloh64, Lloh65
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

	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"=============================================\n"

l_.str.1:                               ; @.str.1
	.asciz	"Barret-REIST v2 Benchmark (Division-Free)\n"

l_.str.2:                               ; @.str.2
	.asciz	"Iterations per modulus: "

l_.str.3:                               ; @.str.3
	.asciz	"\n\n"

l_.str.4:                               ; @.str.4
	.asciz	"---------------------------------------------\n"

l_.str.5:                               ; @.str.5
	.asciz	"Modulus = "

l_.str.6:                               ; @.str.6
	.asciz	"\n"

l_.str.7:                               ; @.str.7
	.asciz	"Classic modulo           : "

l_.str.8:                               ; @.str.8
	.asciz	" s\n"

l_.str.9:                               ; @.str.9
	.asciz	"REIST v1 scalar          : "

l_.str.10:                              ; @.str.10
	.asciz	"Barret-REIST v2 scalar     : "

l_.str.11:                              ; @.str.11
	.asciz	"Barret-REIST v2 int32      : "

l_.str.12:                              ; @.str.12
	.asciz	"Speedups:\n"

l_.str.13:                              ; @.str.13
	.asciz	"  REIST v1 scalar vs Classic        : "

l_.str.14:                              ; @.str.14
	.asciz	"x\n"

l_.str.15:                              ; @.str.15
	.asciz	"  Barret-REIST scalar vs Classic      : "

l_.str.16:                              ; @.str.16
	.asciz	"  Barret-REIST int32 vs scalar        : "

l_.str.17:                              ; @.str.17
	.asciz	"\nSink: "

l_.str.19:                              ; @.str.19
	.asciz	"basic_string"

.subsections_via_symbols
