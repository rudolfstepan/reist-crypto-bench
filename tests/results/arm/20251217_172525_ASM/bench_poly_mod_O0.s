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
	stp	x28, x27, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	mov	w9, #5744                       ; =0x1670
Lloh0:
	adrp	x16, ___chkstk_darwin@GOTPAGE
Lloh1:
	ldr	x16, [x16, ___chkstk_darwin@GOTPAGEOFF]
	blr	x16
	sub	sp, sp, #1, lsl #12             ; =4096
	sub	sp, sp, #1648
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	str	wzr, [sp, #3612]
	str	w0, [sp, #3608]
	str	x1, [sp, #3600]
	mov	w8, #1024                       ; =0x400
	str	w8, [sp, #3596]
	mov	w8, #50000                      ; =0xc350
	str	w8, [sp, #3592]
	add	x0, sp, #3568
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEEC1B8ne200100Ev
	ldr	w8, [sp, #3608]
	subs	w8, w8, #2
	b.lt	LBB0_6
	b	LBB0_1
LBB0_1:
	ldr	x8, [sp, #3600]
	ldr	x1, [x8, #8]
Ltmp0:
	add	x0, sp, #3544
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100ILi0EEEPKc
Ltmp1:
	b	LBB0_2
LBB0_2:
Ltmp2:
	add	x0, sp, #3544
	mov	x1, #0                          ; =0x0
	mov	w2, #10                         ; =0xa
	bl	__ZNSt3__14stoiERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPmi
	str	w0, [sp, #468]                  ; 4-byte Folded Spill
Ltmp3:
	b	LBB0_3
LBB0_3:
	ldr	w8, [sp, #468]                  ; 4-byte Folded Reload
	str	w8, [sp, #3596]
	add	x0, sp, #3544
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	b	LBB0_6
LBB0_4:
Ltmp21:
	str	x0, [sp, #3536]
	mov	x8, x1
	str	w8, [sp, #3532]
	b	LBB0_147
LBB0_5:
Ltmp4:
	str	x0, [sp, #3536]
	mov	x8, x1
	str	w8, [sp, #3532]
	add	x0, sp, #3544
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	b	LBB0_147
LBB0_6:
	ldr	w8, [sp, #3608]
	subs	w8, w8, #3
	b.lt	LBB0_11
	b	LBB0_7
LBB0_7:
	ldr	x8, [sp, #3600]
	ldr	x1, [x8, #16]
Ltmp5:
	add	x0, sp, #3504
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100ILi0EEEPKc
Ltmp6:
	b	LBB0_8
LBB0_8:
Ltmp7:
	add	x0, sp, #3504
	mov	x1, #0                          ; =0x0
	mov	w2, #10                         ; =0xa
	bl	__ZNSt3__14stoiERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPmi
	str	w0, [sp, #464]                  ; 4-byte Folded Spill
Ltmp8:
	b	LBB0_9
LBB0_9:
	ldr	w8, [sp, #464]                  ; 4-byte Folded Reload
	str	w8, [sp, #3592]
	add	x0, sp, #3504
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	b	LBB0_11
LBB0_10:
Ltmp9:
	str	x0, [sp, #3536]
	mov	x8, x1
	str	w8, [sp, #3532]
	add	x0, sp, #3504
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	b	LBB0_147
LBB0_11:
	ldr	w8, [sp, #3608]
	subs	w8, w8, #4
	b.lt	LBB0_17
	b	LBB0_12
LBB0_12:
	ldr	x8, [sp, #3600]
	ldr	x1, [x8, #24]
Ltmp12:
	add	x0, sp, #3472
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100ILi0EEEPKc
Ltmp13:
	b	LBB0_13
LBB0_13:
Ltmp14:
	add	x0, sp, #3472
	mov	x1, #0                          ; =0x0
	mov	w2, #10                         ; =0xa
	bl	__ZNSt3__14stoiERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPmi
	str	w0, [sp, #460]                  ; 4-byte Folded Spill
Ltmp15:
	b	LBB0_14
LBB0_14:
	ldr	w8, [sp, #460]                  ; 4-byte Folded Reload
	add	x1, sp, #3500
	str	w8, [sp, #3500]
Ltmp16:
	add	x0, sp, #3568
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE9push_backB8ne200100EOi
Ltmp17:
	b	LBB0_15
LBB0_15:
	add	x0, sp, #3472
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	b	LBB0_19
LBB0_16:
Ltmp18:
	str	x0, [sp, #3536]
	mov	x8, x1
	str	w8, [sp, #3532]
	add	x0, sp, #3472
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	b	LBB0_147
LBB0_17:
	sub	x8, x29, #40
	mov	w9, #16963                      ; =0x4243
	movk	w9, #15, lsl #16
	stur	w9, [x29, #-40]
	mov	w9, #38547                      ; =0x9693
	movk	w9, #152, lsl #16
	stur	w9, [x29, #-36]
	mov	w9, #57607                      ; =0xe107
	movk	w9, #1525, lsl #16
	stur	w9, [x29, #-32]
	mov	w9, #51719                      ; =0xca07
	movk	w9, #15258, lsl #16
	stur	w9, [x29, #-28]
	str	x8, [sp, #3456]
	mov	x8, #4                          ; =0x4
	str	x8, [sp, #3464]
	ldr	x1, [sp, #3456]
	ldr	x2, [sp, #3464]
Ltmp10:
	add	x0, sp, #3568
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEEaSB8ne200100ESt16initializer_listIiE
Ltmp11:
	b	LBB0_18
LBB0_18:
	b	LBB0_19
LBB0_19:
Ltmp19:
	add	x0, sp, #952
	mov	w1, #12345                      ; =0x3039
	bl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEC1B8ne200100Ej
Ltmp20:
	b	LBB0_20
LBB0_20:
	add	x0, sp, #928
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100Ev
	add	x0, sp, #904
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100Ev
	add	x0, sp, #880
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100Ev
	add	x0, sp, #856
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100Ev
	add	x0, sp, #832
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100Ev
Ltmp22:
	add	x0, sp, #1, lsl #12             ; =4096
	add	x0, x0, #1048
	adrp	x1, l_.str@PAGE
	add	x1, x1, l_.str@PAGEOFF
	mov	w2, #8                          ; =0x8
	bl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEC1EPKcj
Ltmp23:
	b	LBB0_21
LBB0_21:
	add	x0, sp, #808
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100Ev
	b	LBB0_22
LBB0_22:                                ; =>This Inner Loop Header: Depth=1
Ltmp24:
	add	x0, sp, #1, lsl #12             ; =4096
	add	x0, x0, #1048
	add	x1, sp, #808
	bl	__ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EE
	str	x0, [sp, #448]                  ; 8-byte Folded Spill
Ltmp25:
	b	LBB0_23
LBB0_23:                                ;   in Loop: Header=BB0_22 Depth=1
	ldr	x8, [sp, #448]                  ; 8-byte Folded Reload
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp26:
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEEcvbB8ne200100Ev
	str	w0, [sp, #444]                  ; 4-byte Folded Spill
Ltmp27:
	b	LBB0_24
LBB0_24:                                ;   in Loop: Header=BB0_22 Depth=1
	ldr	w8, [sp, #444]                  ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_34
	b	LBB0_25
LBB0_25:                                ;   in Loop: Header=BB0_22 Depth=1
	add	x0, sp, #808
	adrp	x1, l_.str.1@PAGE
	add	x1, x1, l_.str.1@PAGEOFF
	mov	x2, #0                          ; =0x0
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findB8ne200100EPKcm
	adds	x8, x0, #1
	b.eq	LBB0_30
	b	LBB0_26
LBB0_26:                                ;   in Loop: Header=BB0_22 Depth=1
	add	x0, sp, #808
	str	x0, [sp, #432]                  ; 8-byte Folded Spill
	adrp	x1, l_.str.2@PAGE
	add	x1, x1, l_.str.2@PAGEOFF
	mov	x2, #0                          ; =0x0
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findB8ne200100EPKcm
	mov	x8, x0
	ldr	x0, [sp, #432]                  ; 8-byte Folded Reload
	add	x1, x8, #2
Ltmp188:
	add	x8, sp, #784
	mov	x2, #-1                         ; =0xffffffffffffffff
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6substrB8ne200100Emm
Ltmp189:
	b	LBB0_27
LBB0_27:                                ;   in Loop: Header=BB0_22 Depth=1
	add	x0, sp, #928
	add	x1, sp, #784
	str	x1, [sp, #424]                  ; 8-byte Folded Spill
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne200100EOS5_
	ldr	x0, [sp, #424]                  ; 8-byte Folded Reload
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	b	LBB0_30
LBB0_28:
Ltmp109:
	str	x0, [sp, #3536]
	mov	x8, x1
	str	w8, [sp, #3532]
	b	LBB0_146
LBB0_29:
Ltmp192:
	str	x0, [sp, #3536]
	mov	x8, x1
	str	w8, [sp, #3532]
	add	x0, sp, #808
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	add	x0, sp, #1, lsl #12             ; =4096
	add	x0, x0, #1048
	bl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
	b	LBB0_146
LBB0_30:                                ;   in Loop: Header=BB0_22 Depth=1
	add	x0, sp, #808
	adrp	x1, l_.str.3@PAGE
	add	x1, x1, l_.str.3@PAGEOFF
	mov	x2, #0                          ; =0x0
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findB8ne200100EPKcm
	adds	x8, x0, #1
	b.eq	LBB0_33
	b	LBB0_31
LBB0_31:                                ;   in Loop: Header=BB0_22 Depth=1
	add	x0, sp, #808
	str	x0, [sp, #416]                  ; 8-byte Folded Spill
	adrp	x1, l_.str.2@PAGE
	add	x1, x1, l_.str.2@PAGEOFF
	mov	x2, #0                          ; =0x0
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findB8ne200100EPKcm
	mov	x8, x0
	ldr	x0, [sp, #416]                  ; 8-byte Folded Reload
	add	x1, x8, #2
Ltmp190:
	add	x8, sp, #760
	mov	x2, #-1                         ; =0xffffffffffffffff
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6substrB8ne200100Emm
Ltmp191:
	b	LBB0_32
LBB0_32:                                ;   in Loop: Header=BB0_22 Depth=1
	add	x0, sp, #904
	add	x1, sp, #760
	str	x1, [sp, #408]                  ; 8-byte Folded Spill
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne200100EOS5_
	ldr	x0, [sp, #408]                  ; 8-byte Folded Reload
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	b	LBB0_33
LBB0_33:                                ;   in Loop: Header=BB0_22 Depth=1
	b	LBB0_22
LBB0_34:
	add	x0, sp, #808
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	add	x0, sp, #1, lsl #12             ; =4096
	add	x0, x0, #1048
	bl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
Ltmp28:
	add	x0, sp, #1, lsl #12             ; =4096
	add	x0, x0, #472
	adrp	x1, l_.str.4@PAGE
	add	x1, x1, l_.str.4@PAGEOFF
	mov	w2, #8                          ; =0x8
	bl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEC1EPKcj
Ltmp29:
	b	LBB0_35
LBB0_35:
	add	x0, sp, #736
	str	x0, [sp, #392]                  ; 8-byte Folded Spill
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100Ev
	ldr	x1, [sp, #392]                  ; 8-byte Folded Reload
Ltmp30:
	add	x0, sp, #1, lsl #12             ; =4096
	add	x0, x0, #472
	bl	__ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EE
	str	x0, [sp, #400]                  ; 8-byte Folded Spill
Ltmp31:
	b	LBB0_36
LBB0_36:
	ldr	x8, [sp, #400]                  ; 8-byte Folded Reload
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp32:
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEEcvbB8ne200100Ev
	str	w0, [sp, #388]                  ; 4-byte Folded Spill
Ltmp33:
	b	LBB0_37
LBB0_37:
	ldr	w8, [sp, #388]                  ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_43
	b	LBB0_38
LBB0_38:
	add	x0, sp, #736
	adrp	x1, l_.str.5@PAGE
	add	x1, x1, l_.str.5@PAGEOFF
	mov	x2, #0                          ; =0x0
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findB8ne200100EPKcm
	adds	x8, x0, #1
	b.eq	LBB0_42
	b	LBB0_39
LBB0_39:
	add	x0, sp, #736
	str	x0, [sp, #376]                  ; 8-byte Folded Spill
	adrp	x1, l_.str.2@PAGE
	add	x1, x1, l_.str.2@PAGEOFF
	mov	x2, #0                          ; =0x0
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findB8ne200100EPKcm
	mov	x8, x0
	ldr	x0, [sp, #376]                  ; 8-byte Folded Reload
	add	x1, x8, #2
Ltmp34:
	add	x8, sp, #712
	mov	x2, #-1                         ; =0xffffffffffffffff
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6substrB8ne200100Emm
Ltmp35:
	b	LBB0_40
LBB0_40:
	add	x0, sp, #880
	add	x1, sp, #712
	str	x1, [sp, #368]                  ; 8-byte Folded Spill
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne200100EOS5_
	ldr	x0, [sp, #368]                  ; 8-byte Folded Reload
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	b	LBB0_42
LBB0_41:
Ltmp36:
	str	x0, [sp, #3536]
	mov	x8, x1
	str	w8, [sp, #3532]
	add	x0, sp, #736
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	add	x0, sp, #1, lsl #12             ; =4096
	add	x0, x0, #472
	bl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
	b	LBB0_146
LBB0_42:
	b	LBB0_43
LBB0_43:
	add	x0, sp, #736
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	add	x0, sp, #1, lsl #12             ; =4096
	add	x0, x0, #472
	bl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
Ltmp37:
	add	x0, sp, #1, lsl #12             ; =4096
	add	x0, x0, #216
	mov	x1, #256                        ; =0x100
	bl	_gethostname
	str	w0, [sp, #364]                  ; 4-byte Folded Spill
Ltmp38:
	b	LBB0_44
LBB0_44:
	ldr	w8, [sp, #364]                  ; 4-byte Folded Reload
	cbnz	w8, LBB0_47
	b	LBB0_45
LBB0_45:
Ltmp39:
	add	x0, sp, #856
	add	x1, sp, #1, lsl #12             ; =4096
	add	x1, x1, #216
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne200100EPKc
Ltmp40:
	b	LBB0_46
LBB0_46:
	b	LBB0_47
LBB0_47:
Ltmp41:
	adrp	x0, l_.str.6@PAGE
	add	x0, x0, l_.str.6@PAGEOFF
	adrp	x1, l_.str.7@PAGE
	add	x1, x1, l_.str.7@PAGEOFF
	bl	_popen
	str	x0, [sp, #352]                  ; 8-byte Folded Spill
Ltmp42:
	b	LBB0_48
LBB0_48:
	ldr	x8, [sp, #352]                  ; 8-byte Folded Reload
	str	x8, [sp, #704]
	ldr	x8, [sp, #704]
	cbz	x8, LBB0_59
	b	LBB0_49
LBB0_49:
	ldr	x2, [sp, #704]
Ltmp43:
	add	x0, sp, #1, lsl #12             ; =4096
	add	x0, x0, #88
	mov	w1, #128                        ; =0x80
	bl	_fgets
	str	x0, [sp, #344]                  ; 8-byte Folded Spill
Ltmp44:
	b	LBB0_50
LBB0_50:
	ldr	x8, [sp, #344]                  ; 8-byte Folded Reload
	cbz	x8, LBB0_57
	b	LBB0_51
LBB0_51:
Ltmp45:
	add	x0, sp, #680
	add	x1, sp, #1, lsl #12             ; =4096
	add	x1, x1, #88
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100ILi0EEEPKc
Ltmp46:
	b	LBB0_52
LBB0_52:
	add	x0, sp, #832
	str	x0, [sp, #336]                  ; 8-byte Folded Spill
	add	x1, sp, #680
	str	x1, [sp, #328]                  ; 8-byte Folded Spill
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne200100EOS5_
	ldr	x0, [sp, #328]                  ; 8-byte Folded Reload
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	ldr	x0, [sp, #336]                  ; 8-byte Folded Reload
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5emptyB8ne200100Ev
	tbnz	w0, #0, LBB0_56
	b	LBB0_53
LBB0_53:
	add	x0, sp, #832
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4backB8ne200100Ev
	ldrsb	w8, [x0]
	subs	w8, w8, #10
	b.ne	LBB0_56
	b	LBB0_54
LBB0_54:
Ltmp47:
	add	x0, sp, #832
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8pop_backB8ne200100Ev
Ltmp48:
	b	LBB0_55
LBB0_55:
	b	LBB0_56
LBB0_56:
	b	LBB0_57
LBB0_57:
	ldr	x0, [sp, #704]
Ltmp49:
	bl	_pclose
Ltmp50:
	b	LBB0_58
LBB0_58:
	b	LBB0_59
LBB0_59:
Ltmp51:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, __ZNSt3__15fixedB8ne200100ERNS_8ios_baseE@PAGE
	add	x1, x1, __ZNSt3__15fixedB8ne200100ERNS_8ios_baseE@PAGEOFF
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne200100EPFRNS_8ios_baseES5_E
	str	x0, [sp, #320]                  ; 8-byte Folded Spill
Ltmp52:
	b	LBB0_60
LBB0_60:
Ltmp53:
	mov	w0, #6                          ; =0x6
	bl	__ZNSt3__112setprecisionB8ne200100Ei
	str	w0, [sp, #316]                  ; 4-byte Folded Spill
Ltmp54:
	b	LBB0_61
LBB0_61:
	ldr	x0, [sp, #320]                  ; 8-byte Folded Reload
	ldr	w8, [sp, #316]                  ; 4-byte Folded Reload
	add	x1, sp, #676
	str	w8, [sp, #676]
Ltmp55:
	bl	__ZNSt3__1lsB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_8__iom_t5E
Ltmp56:
	b	LBB0_62
LBB0_62:
Ltmp57:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.8@PAGE
	add	x1, x1, l_.str.8@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp58:
	b	LBB0_63
LBB0_63:
Ltmp59:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.9@PAGE
	add	x1, x1, l_.str.9@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp60:
	b	LBB0_64
LBB0_64:
Ltmp61:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.8@PAGE
	add	x1, x1, l_.str.8@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp62:
	b	LBB0_65
LBB0_65:
Ltmp63:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.10@PAGE
	add	x1, x1, l_.str.10@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp64:
	b	LBB0_66
LBB0_66:
Ltmp65:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.11@PAGE
	add	x1, x1, l_.str.11@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #304]                  ; 8-byte Folded Spill
Ltmp66:
	b	LBB0_67
LBB0_67:
Ltmp67:
	ldr	x0, [sp, #304]                  ; 8-byte Folded Reload
	add	x1, sp, #856
	bl	__ZNSt3__1lsB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
	str	x0, [sp, #296]                  ; 8-byte Folded Spill
Ltmp68:
	b	LBB0_68
LBB0_68:
Ltmp69:
	ldr	x0, [sp, #296]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.12@PAGE
	add	x1, x1, l_.str.12@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp70:
	b	LBB0_69
LBB0_69:
Ltmp71:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.13@PAGE
	add	x1, x1, l_.str.13@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #288]                  ; 8-byte Folded Spill
Ltmp72:
	b	LBB0_70
LBB0_70:
Ltmp73:
	ldr	x0, [sp, #288]                  ; 8-byte Folded Reload
	add	x1, sp, #832
	bl	__ZNSt3__1lsB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
	str	x0, [sp, #280]                  ; 8-byte Folded Spill
Ltmp74:
	b	LBB0_71
LBB0_71:
Ltmp75:
	ldr	x0, [sp, #280]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.12@PAGE
	add	x1, x1, l_.str.12@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp76:
	b	LBB0_72
LBB0_72:
Ltmp77:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.14@PAGE
	add	x1, x1, l_.str.14@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #272]                  ; 8-byte Folded Spill
Ltmp78:
	b	LBB0_73
LBB0_73:
Ltmp79:
	ldr	x0, [sp, #272]                  ; 8-byte Folded Reload
	add	x1, sp, #928
	bl	__ZNSt3__1lsB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
	str	x0, [sp, #264]                  ; 8-byte Folded Spill
Ltmp80:
	b	LBB0_74
LBB0_74:
Ltmp81:
	ldr	x0, [sp, #264]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.12@PAGE
	add	x1, x1, l_.str.12@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp82:
	b	LBB0_75
LBB0_75:
Ltmp83:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.15@PAGE
	add	x1, x1, l_.str.15@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #256]                  ; 8-byte Folded Spill
Ltmp84:
	b	LBB0_76
LBB0_76:
Ltmp85:
	ldr	x0, [sp, #256]                  ; 8-byte Folded Reload
	add	x1, sp, #904
	bl	__ZNSt3__1lsB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
	str	x0, [sp, #248]                  ; 8-byte Folded Spill
Ltmp86:
	b	LBB0_77
LBB0_77:
Ltmp87:
	ldr	x0, [sp, #248]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.12@PAGE
	add	x1, x1, l_.str.12@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp88:
	b	LBB0_78
LBB0_78:
Ltmp89:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.16@PAGE
	add	x1, x1, l_.str.16@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #240]                  ; 8-byte Folded Spill
Ltmp90:
	b	LBB0_79
LBB0_79:
Ltmp91:
	ldr	x0, [sp, #240]                  ; 8-byte Folded Reload
	add	x1, sp, #880
	bl	__ZNSt3__1lsB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
	str	x0, [sp, #232]                  ; 8-byte Folded Spill
Ltmp92:
	b	LBB0_80
LBB0_80:
Ltmp93:
	ldr	x0, [sp, #232]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.12@PAGE
	add	x1, x1, l_.str.12@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp94:
	b	LBB0_81
LBB0_81:
Ltmp95:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.17@PAGE
	add	x1, x1, l_.str.17@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp96:
	b	LBB0_82
LBB0_82:
Ltmp97:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.18@PAGE
	add	x1, x1, l_.str.18@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #224]                  ; 8-byte Folded Spill
Ltmp98:
	b	LBB0_83
LBB0_83:
	ldr	x0, [sp, #224]                  ; 8-byte Folded Reload
	ldr	w1, [sp, #3596]
Ltmp99:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	str	x0, [sp, #216]                  ; 8-byte Folded Spill
Ltmp100:
	b	LBB0_84
LBB0_84:
Ltmp101:
	ldr	x0, [sp, #216]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.19@PAGE
	add	x1, x1, l_.str.19@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #208]                  ; 8-byte Folded Spill
Ltmp102:
	b	LBB0_85
LBB0_85:
	ldr	x0, [sp, #208]                  ; 8-byte Folded Reload
	ldr	w1, [sp, #3592]
Ltmp103:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	str	x0, [sp, #200]                  ; 8-byte Folded Spill
Ltmp104:
	b	LBB0_86
LBB0_86:
Ltmp105:
	ldr	x0, [sp, #200]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.20@PAGE
	add	x1, x1, l_.str.20@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp106:
	b	LBB0_87
LBB0_87:
Ltmp107:
	add	x0, sp, #3616
	adrp	x1, l_.str.21@PAGE
	add	x1, x1, l_.str.21@PAGEOFF
	mov	w2, #16                         ; =0x10
	bl	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEC1EPKcj
Ltmp108:
	b	LBB0_88
LBB0_88:
	add	x8, sp, #3616
	ldr	x9, [sp, #3616]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp110:
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEEntB8ne200100Ev
	str	w0, [sp, #196]                  ; 4-byte Folded Spill
Ltmp111:
	b	LBB0_89
LBB0_89:
	ldr	w8, [sp, #196]                  ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_93
	b	LBB0_90
LBB0_90:
Ltmp185:
	adrp	x0, __ZNSt3__14cerrE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14cerrE@GOTPAGEOFF]
	adrp	x1, l_.str.22@PAGE
	add	x1, x1, l_.str.22@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp186:
	b	LBB0_91
LBB0_91:
	mov	w8, #1                          ; =0x1
	str	w8, [sp, #3612]
	str	w8, [sp, #672]
	b	LBB0_142
LBB0_92:
Ltmp187:
	str	x0, [sp, #3536]
	mov	x8, x1
	str	w8, [sp, #3532]
	b	LBB0_145
LBB0_93:
Ltmp112:
	add	x0, sp, #3616
	adrp	x1, l_.str.23@PAGE
	add	x1, x1, l_.str.23@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp113:
	b	LBB0_94
LBB0_94:
	ldrsw	x1, [sp, #3596]
Ltmp114:
	add	x0, sp, #648
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEEC1B8ne200100Em
Ltmp115:
	b	LBB0_95
LBB0_95:
	ldrsw	x1, [sp, #3596]
Ltmp116:
	add	x0, sp, #624
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEEC1B8ne200100Em
Ltmp117:
	b	LBB0_96
LBB0_96:
	ldrsw	x1, [sp, #3596]
Ltmp119:
	add	x0, sp, #600
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEEC1B8ne200100Em
Ltmp120:
	b	LBB0_97
LBB0_97:
Ltmp122:
	add	x0, sp, #592
	mov	w1, #24288                      ; =0x5ee0
	movk	w1, #65528, lsl #16
	mov	w2, #41248                      ; =0xa120
	movk	w2, #7, lsl #16
	bl	__ZNSt3__124uniform_int_distributionIiEC1B8ne200100Eii
Ltmp123:
	b	LBB0_98
LBB0_98:
	add	x8, sp, #3568
	str	x8, [sp, #584]
	ldr	x0, [sp, #584]
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE5beginB8ne200100Ev
	str	x0, [sp, #576]
	ldr	x0, [sp, #584]
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE3endB8ne200100Ev
	str	x0, [sp, #568]
	b	LBB0_99
LBB0_99:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_101 Depth 2
	add	x0, sp, #576
	add	x1, sp, #568
	bl	__ZNSt3__1neB8ne200100IPiEEbRKNS_11__wrap_iterIT_EES6_
	tbz	w0, #0, LBB0_137
	b	LBB0_100
LBB0_100:                               ;   in Loop: Header=BB0_99 Depth=1
	add	x0, sp, #576
	bl	__ZNKSt3__111__wrap_iterIPiEdeB8ne200100Ev
	ldr	w8, [x0]
	str	w8, [sp, #564]
	str	wzr, [sp, #560]
	b	LBB0_101
LBB0_101:                               ;   Parent Loop BB0_99 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #560]
	ldr	w9, [sp, #3596]
	subs	w8, w8, w9
	b.ge	LBB0_109
	b	LBB0_102
LBB0_102:                               ;   in Loop: Header=BB0_101 Depth=2
Ltmp180:
	add	x0, sp, #592
	add	x1, sp, #952
	bl	__ZNSt3__124uniform_int_distributionIiEclB8ne200100INS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEiRT_
	str	w0, [sp, #192]                  ; 4-byte Folded Spill
Ltmp181:
	b	LBB0_103
LBB0_103:                               ;   in Loop: Header=BB0_101 Depth=2
	ldrsw	x1, [sp, #560]
	add	x0, sp, #648
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEEixB8ne200100Em
	ldr	w8, [sp, #192]                  ; 4-byte Folded Reload
	str	w8, [x0]
Ltmp182:
	add	x0, sp, #592
	add	x1, sp, #952
	bl	__ZNSt3__124uniform_int_distributionIiEclB8ne200100INS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEiRT_
	str	w0, [sp, #188]                  ; 4-byte Folded Spill
Ltmp183:
	b	LBB0_104
LBB0_104:                               ;   in Loop: Header=BB0_101 Depth=2
	ldrsw	x1, [sp, #560]
	add	x0, sp, #624
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEEixB8ne200100Em
	ldr	w8, [sp, #188]                  ; 4-byte Folded Reload
	str	w8, [x0]
	b	LBB0_105
LBB0_105:                               ;   in Loop: Header=BB0_101 Depth=2
	ldr	w8, [sp, #560]
	add	w8, w8, #1
	str	w8, [sp, #560]
	b	LBB0_101
LBB0_106:
Ltmp118:
	str	x0, [sp, #3536]
	mov	x8, x1
	str	w8, [sp, #3532]
	b	LBB0_141
LBB0_107:
Ltmp121:
	str	x0, [sp, #3536]
	mov	x8, x1
	str	w8, [sp, #3532]
	b	LBB0_140
LBB0_108:
Ltmp184:
	str	x0, [sp, #3536]
	mov	x8, x1
	str	w8, [sp, #3532]
	add	x0, sp, #600
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEED1B8ne200100Ev
	b	LBB0_140
LBB0_109:                               ;   in Loop: Header=BB0_99 Depth=1
	add	x0, sp, #520
	add	x8, sp, #648
	str	x8, [sp, #520]
	add	x8, sp, #624
	str	x8, [sp, #528]
	add	x8, sp, #600
	str	x8, [sp, #536]
	add	x8, sp, #564
	str	x8, [sp, #544]
	ldr	w1, [sp, #3592]
Ltmp128:
	bl	__Z9time_execIZ4mainE3$_0EdOT_i
	str	d0, [sp, #176]                  ; 8-byte Folded Spill
Ltmp129:
	b	LBB0_110
LBB0_110:                               ;   in Loop: Header=BB0_99 Depth=1
	ldr	d0, [sp, #176]                  ; 8-byte Folded Reload
	str	d0, [sp, #552]
	add	x0, sp, #480
	add	x8, sp, #648
	str	x8, [sp, #480]
	add	x8, sp, #624
	str	x8, [sp, #488]
	add	x8, sp, #600
	str	x8, [sp, #496]
	add	x8, sp, #564
	str	x8, [sp, #504]
	ldr	w1, [sp, #3592]
Ltmp130:
	bl	__Z9time_execIZ4mainE3$_1EdOT_i
	str	d0, [sp, #168]                  ; 8-byte Folded Spill
Ltmp131:
	b	LBB0_111
LBB0_111:                               ;   in Loop: Header=BB0_99 Depth=1
	ldr	d0, [sp, #168]                  ; 8-byte Folded Reload
	str	d0, [sp, #512]
	ldr	d0, [sp, #552]
	ldr	d1, [sp, #512]
	fdiv	d0, d0, d1
	str	d0, [sp, #472]
Ltmp132:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.24@PAGE
	add	x1, x1, l_.str.24@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #160]                  ; 8-byte Folded Spill
Ltmp133:
	b	LBB0_112
LBB0_112:                               ;   in Loop: Header=BB0_99 Depth=1
	ldr	x0, [sp, #160]                  ; 8-byte Folded Reload
	ldr	w1, [sp, #564]
Ltmp134:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	str	x0, [sp, #152]                  ; 8-byte Folded Spill
Ltmp135:
	b	LBB0_113
LBB0_113:                               ;   in Loop: Header=BB0_99 Depth=1
Ltmp136:
	ldr	x0, [sp, #152]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.12@PAGE
	add	x1, x1, l_.str.12@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp137:
	b	LBB0_114
LBB0_114:                               ;   in Loop: Header=BB0_99 Depth=1
Ltmp138:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.25@PAGE
	add	x1, x1, l_.str.25@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #144]                  ; 8-byte Folded Spill
Ltmp139:
	b	LBB0_115
LBB0_115:                               ;   in Loop: Header=BB0_99 Depth=1
	ldr	x0, [sp, #144]                  ; 8-byte Folded Reload
	ldr	d0, [sp, #552]
Ltmp140:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	str	x0, [sp, #136]                  ; 8-byte Folded Spill
Ltmp141:
	b	LBB0_116
LBB0_116:                               ;   in Loop: Header=BB0_99 Depth=1
Ltmp142:
	ldr	x0, [sp, #136]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.26@PAGE
	add	x1, x1, l_.str.26@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp143:
	b	LBB0_117
LBB0_117:                               ;   in Loop: Header=BB0_99 Depth=1
Ltmp144:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.27@PAGE
	add	x1, x1, l_.str.27@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #128]                  ; 8-byte Folded Spill
Ltmp145:
	b	LBB0_118
LBB0_118:                               ;   in Loop: Header=BB0_99 Depth=1
	ldr	x0, [sp, #128]                  ; 8-byte Folded Reload
	ldr	d0, [sp, #512]
Ltmp146:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	str	x0, [sp, #120]                  ; 8-byte Folded Spill
Ltmp147:
	b	LBB0_119
LBB0_119:                               ;   in Loop: Header=BB0_99 Depth=1
Ltmp148:
	ldr	x0, [sp, #120]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.26@PAGE
	add	x1, x1, l_.str.26@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp149:
	b	LBB0_120
LBB0_120:                               ;   in Loop: Header=BB0_99 Depth=1
Ltmp150:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.28@PAGE
	add	x1, x1, l_.str.28@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #112]                  ; 8-byte Folded Spill
Ltmp151:
	b	LBB0_121
LBB0_121:                               ;   in Loop: Header=BB0_99 Depth=1
	ldr	x0, [sp, #112]                  ; 8-byte Folded Reload
	ldr	d0, [sp, #472]
Ltmp152:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	str	x0, [sp, #104]                  ; 8-byte Folded Spill
Ltmp153:
	b	LBB0_122
LBB0_122:                               ;   in Loop: Header=BB0_99 Depth=1
Ltmp154:
	ldr	x0, [sp, #104]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.29@PAGE
	add	x1, x1, l_.str.29@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp155:
	b	LBB0_123
LBB0_123:                               ;   in Loop: Header=BB0_99 Depth=1
	ldr	w1, [sp, #564]
Ltmp156:
	add	x0, sp, #3616
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	str	x0, [sp, #96]                   ; 8-byte Folded Spill
Ltmp157:
	b	LBB0_124
LBB0_124:                               ;   in Loop: Header=BB0_99 Depth=1
Ltmp158:
	ldr	x0, [sp, #96]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.30@PAGE
	add	x1, x1, l_.str.30@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #88]                   ; 8-byte Folded Spill
Ltmp159:
	b	LBB0_125
LBB0_125:                               ;   in Loop: Header=BB0_99 Depth=1
	ldr	x0, [sp, #88]                   ; 8-byte Folded Reload
	ldr	w1, [sp, #3596]
Ltmp160:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	str	x0, [sp, #80]                   ; 8-byte Folded Spill
Ltmp161:
	b	LBB0_126
LBB0_126:                               ;   in Loop: Header=BB0_99 Depth=1
Ltmp162:
	ldr	x0, [sp, #80]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.30@PAGE
	add	x1, x1, l_.str.30@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #72]                   ; 8-byte Folded Spill
Ltmp163:
	b	LBB0_127
LBB0_127:                               ;   in Loop: Header=BB0_99 Depth=1
	ldr	x0, [sp, #72]                   ; 8-byte Folded Reload
	ldr	w1, [sp, #3592]
Ltmp164:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	str	x0, [sp, #64]                   ; 8-byte Folded Spill
Ltmp165:
	b	LBB0_128
LBB0_128:                               ;   in Loop: Header=BB0_99 Depth=1
Ltmp166:
	ldr	x0, [sp, #64]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.30@PAGE
	add	x1, x1, l_.str.30@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #56]                   ; 8-byte Folded Spill
Ltmp167:
	b	LBB0_129
LBB0_129:                               ;   in Loop: Header=BB0_99 Depth=1
	ldr	x0, [sp, #56]                   ; 8-byte Folded Reload
	ldr	d0, [sp, #552]
Ltmp168:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	str	x0, [sp, #48]                   ; 8-byte Folded Spill
Ltmp169:
	b	LBB0_130
LBB0_130:                               ;   in Loop: Header=BB0_99 Depth=1
Ltmp170:
	ldr	x0, [sp, #48]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.30@PAGE
	add	x1, x1, l_.str.30@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #40]                   ; 8-byte Folded Spill
Ltmp171:
	b	LBB0_131
LBB0_131:                               ;   in Loop: Header=BB0_99 Depth=1
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	ldr	d0, [sp, #512]
Ltmp172:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
Ltmp173:
	b	LBB0_132
LBB0_132:                               ;   in Loop: Header=BB0_99 Depth=1
Ltmp174:
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.30@PAGE
	add	x1, x1, l_.str.30@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
Ltmp175:
	b	LBB0_133
LBB0_133:                               ;   in Loop: Header=BB0_99 Depth=1
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldr	d0, [sp, #472]
Ltmp176:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp177:
	b	LBB0_134
LBB0_134:                               ;   in Loop: Header=BB0_99 Depth=1
Ltmp178:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.12@PAGE
	add	x1, x1, l_.str.12@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp179:
	b	LBB0_135
LBB0_135:                               ;   in Loop: Header=BB0_99 Depth=1
	b	LBB0_136
LBB0_136:                               ;   in Loop: Header=BB0_99 Depth=1
	add	x0, sp, #576
	bl	__ZNSt3__111__wrap_iterIPiEppB8ne200100Ev
	b	LBB0_99
LBB0_137:
Ltmp124:
	add	x0, sp, #3616
	bl	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEE5closeEv
Ltmp125:
	b	LBB0_138
LBB0_138:
Ltmp126:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.31@PAGE
	add	x1, x1, l_.str.31@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp127:
	b	LBB0_139
LBB0_139:
	str	wzr, [sp, #3612]
	mov	w8, #1                          ; =0x1
	str	w8, [sp, #672]
	add	x0, sp, #600
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEED1B8ne200100Ev
	add	x0, sp, #624
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEED1B8ne200100Ev
	add	x0, sp, #648
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEED1B8ne200100Ev
	b	LBB0_142
LBB0_140:
	add	x0, sp, #624
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEED1B8ne200100Ev
	b	LBB0_141
LBB0_141:
	add	x0, sp, #648
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEED1B8ne200100Ev
	b	LBB0_145
LBB0_142:
	add	x0, sp, #3616
	bl	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev
	add	x0, sp, #832
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	add	x0, sp, #856
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	add	x0, sp, #880
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	add	x0, sp, #904
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	add	x0, sp, #928
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	add	x0, sp, #3568
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEED1B8ne200100Ev
	ldr	w8, [sp, #3612]
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x9, [x29, #-24]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	b.eq	LBB0_144
	b	LBB0_143
LBB0_143:
	bl	___stack_chk_fail
LBB0_144:
	ldr	w0, [sp, #12]                   ; 4-byte Folded Reload
	add	sp, sp, #1, lsl #12             ; =4096
	add	sp, sp, #1648
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #32             ; 16-byte Folded Reload
	ret
LBB0_145:
	add	x0, sp, #3616
	bl	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev
	b	LBB0_146
LBB0_146:
	add	x0, sp, #832
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	add	x0, sp, #856
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	add	x0, sp, #880
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	add	x0, sp, #904
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	add	x0, sp, #928
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	b	LBB0_147
LBB0_147:
	add	x0, sp, #3568
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEED1B8ne200100Ev
	b	LBB0_148
LBB0_148:
	ldr	x0, [sp, #3536]
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh0, Lloh1
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
	.uleb128 Ltmp21-Lfunc_begin0            ;     jumps to Ltmp21
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp2-Lfunc_begin0             ; >> Call Site 3 <<
	.uleb128 Ltmp3-Ltmp2                    ;   Call between Ltmp2 and Ltmp3
	.uleb128 Ltmp4-Lfunc_begin0             ;     jumps to Ltmp4
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp5-Lfunc_begin0             ; >> Call Site 4 <<
	.uleb128 Ltmp6-Ltmp5                    ;   Call between Ltmp5 and Ltmp6
	.uleb128 Ltmp21-Lfunc_begin0            ;     jumps to Ltmp21
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp7-Lfunc_begin0             ; >> Call Site 5 <<
	.uleb128 Ltmp8-Ltmp7                    ;   Call between Ltmp7 and Ltmp8
	.uleb128 Ltmp9-Lfunc_begin0             ;     jumps to Ltmp9
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp12-Lfunc_begin0            ; >> Call Site 6 <<
	.uleb128 Ltmp13-Ltmp12                  ;   Call between Ltmp12 and Ltmp13
	.uleb128 Ltmp21-Lfunc_begin0            ;     jumps to Ltmp21
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp14-Lfunc_begin0            ; >> Call Site 7 <<
	.uleb128 Ltmp17-Ltmp14                  ;   Call between Ltmp14 and Ltmp17
	.uleb128 Ltmp18-Lfunc_begin0            ;     jumps to Ltmp18
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp10-Lfunc_begin0            ; >> Call Site 8 <<
	.uleb128 Ltmp20-Ltmp10                  ;   Call between Ltmp10 and Ltmp20
	.uleb128 Ltmp21-Lfunc_begin0            ;     jumps to Ltmp21
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp22-Lfunc_begin0            ; >> Call Site 9 <<
	.uleb128 Ltmp23-Ltmp22                  ;   Call between Ltmp22 and Ltmp23
	.uleb128 Ltmp109-Lfunc_begin0           ;     jumps to Ltmp109
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp24-Lfunc_begin0            ; >> Call Site 10 <<
	.uleb128 Ltmp191-Ltmp24                 ;   Call between Ltmp24 and Ltmp191
	.uleb128 Ltmp192-Lfunc_begin0           ;     jumps to Ltmp192
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp28-Lfunc_begin0            ; >> Call Site 11 <<
	.uleb128 Ltmp29-Ltmp28                  ;   Call between Ltmp28 and Ltmp29
	.uleb128 Ltmp109-Lfunc_begin0           ;     jumps to Ltmp109
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp30-Lfunc_begin0            ; >> Call Site 12 <<
	.uleb128 Ltmp35-Ltmp30                  ;   Call between Ltmp30 and Ltmp35
	.uleb128 Ltmp36-Lfunc_begin0            ;     jumps to Ltmp36
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp37-Lfunc_begin0            ; >> Call Site 13 <<
	.uleb128 Ltmp108-Ltmp37                 ;   Call between Ltmp37 and Ltmp108
	.uleb128 Ltmp109-Lfunc_begin0           ;     jumps to Ltmp109
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp110-Lfunc_begin0           ; >> Call Site 14 <<
	.uleb128 Ltmp115-Ltmp110                ;   Call between Ltmp110 and Ltmp115
	.uleb128 Ltmp187-Lfunc_begin0           ;     jumps to Ltmp187
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp116-Lfunc_begin0           ; >> Call Site 15 <<
	.uleb128 Ltmp117-Ltmp116                ;   Call between Ltmp116 and Ltmp117
	.uleb128 Ltmp118-Lfunc_begin0           ;     jumps to Ltmp118
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp119-Lfunc_begin0           ; >> Call Site 16 <<
	.uleb128 Ltmp120-Ltmp119                ;   Call between Ltmp119 and Ltmp120
	.uleb128 Ltmp121-Lfunc_begin0           ;     jumps to Ltmp121
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp122-Lfunc_begin0           ; >> Call Site 17 <<
	.uleb128 Ltmp127-Ltmp122                ;   Call between Ltmp122 and Ltmp127
	.uleb128 Ltmp184-Lfunc_begin0           ;     jumps to Ltmp184
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp127-Lfunc_begin0           ; >> Call Site 18 <<
	.uleb128 Lfunc_end0-Ltmp127             ;   Call between Ltmp127 and Lfunc_end0
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end0:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__16vectorIiNS_9allocatorIiEEEC1B8ne200100Ev ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEEC1B8ne200100Ev
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEEC1B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIiNS_9allocatorIiEEEC1B8ne200100Ev
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEEC1B8ne200100Ev: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEEC1B8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEEC2B8ne200100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100ILi0EEEPKc ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100ILi0EEEPKc
	.weak_def_can_be_hidden	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100ILi0EEEPKc
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100ILi0EEEPKc: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100ILi0EEEPKc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne200100ILi0EEEPKc
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIiNS_9allocatorIiEEE9push_backB8ne200100EOi ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE9push_backB8ne200100EOi
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEE9push_backB8ne200100EOi
	.weak_definition	__ZNSt3__16vectorIiNS_9allocatorIiEEE9push_backB8ne200100EOi
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEE9push_backB8ne200100EOi: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEE9push_backB8ne200100EOi
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE12emplace_backIJiEEEvDpOT_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIiNS_9allocatorIiEEEaSB8ne200100ESt16initializer_listIiE ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEEaSB8ne200100ESt16initializer_listIiE
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEEaSB8ne200100ESt16initializer_listIiE
	.weak_definition	__ZNSt3__16vectorIiNS_9allocatorIiEEEaSB8ne200100ESt16initializer_listIiE
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEEaSB8ne200100ESt16initializer_listIiE: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEEaSB8ne200100ESt16initializer_listIiE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x8, x0
	sub	x0, x29, #16
	str	x0, [sp]                        ; 8-byte Folded Spill
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-8]
	str	x8, [sp, #24]
	ldr	x8, [sp, #24]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt16initializer_listIiE5beginB8ne200100Ev
	mov	x1, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	str	x1, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt16initializer_listIiE3endB8ne200100Ev
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	mov	x2, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE6assignB8ne200100IPKiLi0EEEvT_S7_
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEC1B8ne200100Ej ; -- Begin function _ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEC1B8ne200100Ej
	.globl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEC1B8ne200100Ej
	.weak_def_can_be_hidden	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEC1B8ne200100Ej
	.p2align	2
__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEC1B8ne200100Ej: ; @_ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEC1B8ne200100Ej
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	w1, [x29, #-12]
	bl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEC2B8ne200100Ej
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100Ev ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100Ev
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100Ev
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100Ev: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne200100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
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
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	w2, [x29, #-28]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	mov	x9, x8
	stur	x9, [x29, #-8]
	add	x0, x8, #424
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2B8ne200100Ev
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	adrp	x9, __ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGE
	ldr	x9, [x9, __ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	add	x10, x9, #24
	str	x10, [x8]
	add	x9, x9, #64
	str	x9, [x8, #424]
Ltmp193:
	mov	x0, x8
	adrp	x9, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGE
	ldr	x9, [x9, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	add	x1, x9, #8
	add	x2, x8, #16
	bl	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2B8ne200100EPNS_15basic_streambufIcS2_EE
Ltmp194:
	b	LBB7_1
LBB7_1:
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	adrp	x9, __ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGE
	ldr	x9, [x9, __ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	add	x10, x9, #24
	str	x10, [x8]
	add	x9, x9, #64
	str	x9, [x8, #424]
	add	x0, x8, #16
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp196:
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC1Ev
Ltmp197:
	b	LBB7_2
LBB7_2:
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	add	x0, x8, #16
	ldur	x1, [x29, #-24]
	ldur	w8, [x29, #-28]
	orr	w2, w8, #0x8
Ltmp199:
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4openEPKcj
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp200:
	b	LBB7_3
LBB7_3:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	cbnz	x8, LBB7_9
	b	LBB7_4
LBB7_4:
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp201:
	mov	w1, #4                          ; =0x4
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne200100Ej
Ltmp202:
	b	LBB7_5
LBB7_5:
	b	LBB7_9
LBB7_6:
Ltmp195:
	str	x0, [sp, #40]
	mov	x8, x1
	str	w8, [sp, #36]
	b	LBB7_11
LBB7_7:
Ltmp198:
	str	x0, [sp, #40]
	mov	x8, x1
	str	w8, [sp, #36]
	b	LBB7_10
LBB7_8:
Ltmp203:
	mov	x8, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	str	x8, [sp, #40]
	mov	x8, x1
	str	w8, [sp, #36]
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
	b	LBB7_10
LBB7_9:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
LBB7_10:
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	adrp	x8, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGE
	ldr	x8, [x8, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	add	x1, x8, #8
	bl	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	b	LBB7_11
LBB7_11:
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	add	x0, x8, #424
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	b	LBB7_12
LBB7_12:
	ldr	x0, [sp, #40]
	bl	__Unwind_Resume
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table7:
Lexception1:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end1-Lcst_begin1
Lcst_begin1:
	.uleb128 Lfunc_begin1-Lfunc_begin1      ; >> Call Site 1 <<
	.uleb128 Ltmp193-Lfunc_begin1           ;   Call between Lfunc_begin1 and Ltmp193
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp193-Lfunc_begin1           ; >> Call Site 2 <<
	.uleb128 Ltmp194-Ltmp193                ;   Call between Ltmp193 and Ltmp194
	.uleb128 Ltmp195-Lfunc_begin1           ;     jumps to Ltmp195
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp196-Lfunc_begin1           ; >> Call Site 3 <<
	.uleb128 Ltmp197-Ltmp196                ;   Call between Ltmp196 and Ltmp197
	.uleb128 Ltmp198-Lfunc_begin1           ;     jumps to Ltmp198
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp199-Lfunc_begin1           ; >> Call Site 4 <<
	.uleb128 Ltmp202-Ltmp199                ;   Call between Ltmp199 and Ltmp202
	.uleb128 Ltmp203-Lfunc_begin1           ;     jumps to Ltmp203
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp202-Lfunc_begin1           ; >> Call Site 5 <<
	.uleb128 Lfunc_end1-Ltmp202             ;   Call between Ltmp202 and Lfunc_end1
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end1:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EE ; -- Begin function _ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EE
	.globl	__ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EE
	.weak_definition	__ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EE
	.p2align	2
__ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EE: ; @_ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x8, [sp, #16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
	mov	w1, #10                         ; =0xa
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne200100Ec
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	mov	x2, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEEcvbB8ne200100Ev ; -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEEcvbB8ne200100Ev
	.globl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEEcvbB8ne200100Ev
	.weak_definition	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEEcvbB8ne200100Ev
	.p2align	2
__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEEcvbB8ne200100Ev: ; @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEEcvbB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4failB8ne200100Ev
	eor	w0, w0, #0x1
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findB8ne200100EPKcm ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findB8ne200100EPKcm
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findB8ne200100EPKcm
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findB8ne200100EPKcm
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findB8ne200100EPKcm: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findB8ne200100EPKcm
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne200100Ev
	mov	x1, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	str	x1, [sp, #32]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB8ne200100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-24]
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	__ZNSt3__111char_traitsIcE6lengthB8ne200100EPKc
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x2, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x3, [sp, #24]                   ; 8-byte Folded Reload
	mov	x4, x0
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	bl	__ZNSt3__110__str_findB8ne200100IcmNS_11char_traitsIcEELm18446744073709551615EEET0_PKT_S3_S6_S3_S3_
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6substrB8ne200100Emm ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6substrB8ne200100Emm
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6substrB8ne200100Emm
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6substrB8ne200100Emm
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6substrB8ne200100Emm: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6substrB8ne200100Emm
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x8, [sp]                        ; 8-byte Folded Spill
	stur	x8, [x29, #-8]
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x8, [x29, #-24]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-32]
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	sub	x0, x29, #33
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
	bl	__ZNSt3__19allocatorIcEC1B8ne200100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x2, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x3, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x4, [sp, #32]                   ; 8-byte Folded Reload
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_mmRKS4_
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne200100EOS5_ ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne200100EOS5_
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne200100EOS5_
	.weak_definition	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne200100EOS5_
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne200100EOS5_: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne200100EOS5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__move_assignB8ne200100ERS5_NS_17integral_constantIbLb1EEE
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev ; -- Begin function _ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
	.p2align	2
__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev: ; @_ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	adrp	x1, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGE
	ldr	x1, [x1, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	bl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED2Ev
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	add	x0, x8, #424
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne200100EPKc ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne200100EPKc
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne200100EPKc
	.weak_definition	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne200100EPKc
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne200100EPKc: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne200100EPKc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5emptyB8ne200100Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5emptyB8ne200100Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5emptyB8ne200100Ev
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5emptyB8ne200100Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5emptyB8ne200100Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5emptyB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB8ne200100Ev
	subs	x8, x0, #0
	cset	w0, eq
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4backB8ne200100Ev ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4backB8ne200100Ev
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4backB8ne200100Ev
	.weak_definition	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4backB8ne200100Ev
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4backB8ne200100Ev: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4backB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne200100Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB8ne200100Ev
	mov	x8, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	add	x8, x0, x8
	subs	x0, x8, #1
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8pop_backB8ne200100Ev ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8pop_backB8ne200100Ev
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8pop_backB8ne200100Ev
	.weak_definition	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8pop_backB8ne200100Ev
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8pop_backB8ne200100Ev: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8pop_backB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB8ne200100Ev
	mov	x8, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	subs	x1, x8, #1
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__erase_to_endB8ne200100Em
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__1lsB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_8__iom_t5E ; -- Begin function _ZNSt3__1lsB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_8__iom_t5E
	.globl	__ZNSt3__1lsB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_8__iom_t5E
	.weak_definition	__ZNSt3__1lsB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_8__iom_t5E
	.p2align	2
__ZNSt3__1lsB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_8__iom_t5E: ; @_ZNSt3__1lsB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_8__iom_t5E
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x8, [sp, #8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	ldr	x10, [sp]
	ldrsw	x1, [x10]
	add	x0, x8, x9
	bl	__ZNSt3__18ios_base9precisionB8ne200100El
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne200100EPFRNS_8ios_baseES5_E ; -- Begin function _ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne200100EPFRNS_8ios_baseES5_E
	.globl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne200100EPFRNS_8ios_baseES5_E
	.weak_definition	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne200100EPFRNS_8ios_baseES5_E
	.p2align	2
__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne200100EPFRNS_8ios_baseES5_E: ; @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne200100EPFRNS_8ios_baseES5_E
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x9, [x29, #-8]
	str	x9, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x8, [sp, #16]
	ldr	x10, [x9]
	ldur	x10, [x10, #-24]
	add	x0, x9, x10
	blr	x8
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__15fixedB8ne200100ERNS_8ios_baseE ; -- Begin function _ZNSt3__15fixedB8ne200100ERNS_8ios_baseE
	.globl	__ZNSt3__15fixedB8ne200100ERNS_8ios_baseE
	.weak_definition	__ZNSt3__15fixedB8ne200100ERNS_8ios_baseE
	.p2align	2
__ZNSt3__15fixedB8ne200100ERNS_8ios_baseE: ; @_ZNSt3__15fixedB8ne200100ERNS_8ios_baseE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	mov	w1, #4                          ; =0x4
	mov	w2, #260                        ; =0x104
	bl	__ZNSt3__18ios_base4setfB8ne200100Ejj
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112setprecisionB8ne200100Ei ; -- Begin function _ZNSt3__112setprecisionB8ne200100Ei
	.globl	__ZNSt3__112setprecisionB8ne200100Ei
	.weak_definition	__ZNSt3__112setprecisionB8ne200100Ei
	.p2align	2
__ZNSt3__112setprecisionB8ne200100Ei:   ; @_ZNSt3__112setprecisionB8ne200100Ei
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	w0, [sp, #8]
	ldr	w1, [sp, #8]
	sub	x0, x29, #4
	bl	__ZNSt3__18__iom_t5C1B8ne200100Ei
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc ; -- Begin function _ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.globl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.weak_definition	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.p2align	2
__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc: ; @_ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x8, [sp, #16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	__ZNSt3__111char_traitsIcE6lengthB8ne200100EPKc
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	mov	x2, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__1lsB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE ; -- Begin function _ZNSt3__1lsB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
	.globl	__ZNSt3__1lsB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
	.weak_definition	__ZNSt3__1lsB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
	.p2align	2
__ZNSt3__1lsB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE: ; @_ZNSt3__1lsB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne200100Ev
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB8ne200100Ev
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	mov	x2, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
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
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	w2, [x29, #-28]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	mov	x9, x8
	stur	x9, [x29, #-8]
	add	x0, x8, #416
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2B8ne200100Ev
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	adrp	x9, __ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPAGE
	ldr	x9, [x9, __ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	add	x10, x9, #24
	str	x10, [x8]
	add	x9, x9, #64
	str	x9, [x8, #416]
Ltmp204:
	mov	x0, x8
	adrp	x9, __ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPAGE
	ldr	x9, [x9, __ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	add	x1, x9, #8
	add	x2, x8, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2B8ne200100EPNS_15basic_streambufIcS2_EE
Ltmp205:
	b	LBB24_1
LBB24_1:
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	adrp	x9, __ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPAGE
	ldr	x9, [x9, __ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	add	x10, x9, #24
	str	x10, [x8]
	add	x9, x9, #64
	str	x9, [x8, #416]
	add	x0, x8, #8
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp207:
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC1Ev
Ltmp208:
	b	LBB24_2
LBB24_2:
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	add	x0, x8, #8
	ldur	x1, [x29, #-24]
	ldur	w8, [x29, #-28]
	orr	w2, w8, #0x10
Ltmp210:
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4openEPKcj
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp211:
	b	LBB24_3
LBB24_3:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	cbnz	x8, LBB24_9
	b	LBB24_4
LBB24_4:
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp212:
	mov	w1, #4                          ; =0x4
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne200100Ej
Ltmp213:
	b	LBB24_5
LBB24_5:
	b	LBB24_9
LBB24_6:
Ltmp206:
	str	x0, [sp, #40]
	mov	x8, x1
	str	w8, [sp, #36]
	b	LBB24_11
LBB24_7:
Ltmp209:
	str	x0, [sp, #40]
	mov	x8, x1
	str	w8, [sp, #36]
	b	LBB24_10
LBB24_8:
Ltmp214:
	mov	x8, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	str	x8, [sp, #40]
	mov	x8, x1
	str	w8, [sp, #36]
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
	b	LBB24_10
LBB24_9:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
LBB24_10:
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	adrp	x8, __ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPAGE
	ldr	x8, [x8, __ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	add	x1, x8, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev
	b	LBB24_11
LBB24_11:
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	add	x0, x8, #416
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	b	LBB24_12
LBB24_12:
	ldr	x0, [sp, #40]
	bl	__Unwind_Resume
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table24:
Lexception2:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end2-Lcst_begin2
Lcst_begin2:
	.uleb128 Lfunc_begin2-Lfunc_begin2      ; >> Call Site 1 <<
	.uleb128 Ltmp204-Lfunc_begin2           ;   Call between Lfunc_begin2 and Ltmp204
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp204-Lfunc_begin2           ; >> Call Site 2 <<
	.uleb128 Ltmp205-Ltmp204                ;   Call between Ltmp204 and Ltmp205
	.uleb128 Ltmp206-Lfunc_begin2           ;     jumps to Ltmp206
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp207-Lfunc_begin2           ; >> Call Site 3 <<
	.uleb128 Ltmp208-Ltmp207                ;   Call between Ltmp207 and Ltmp208
	.uleb128 Ltmp209-Lfunc_begin2           ;     jumps to Ltmp209
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp210-Lfunc_begin2           ; >> Call Site 4 <<
	.uleb128 Ltmp213-Ltmp210                ;   Call between Ltmp210 and Ltmp213
	.uleb128 Ltmp214-Lfunc_begin2           ;     jumps to Ltmp214
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp213-Lfunc_begin2           ; >> Call Site 5 <<
	.uleb128 Lfunc_end2-Ltmp213             ;   Call between Ltmp213 and Lfunc_end2
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end2:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEEntB8ne200100Ev ; -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEEntB8ne200100Ev
	.globl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEEntB8ne200100Ev
	.weak_definition	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEEntB8ne200100Ev
	.p2align	2
__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEEntB8ne200100Ev: ; @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEEntB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4failB8ne200100Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIiNS_9allocatorIiEEEC1B8ne200100Em ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEEC1B8ne200100Em
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEEC1B8ne200100Em
	.weak_def_can_be_hidden	__ZNSt3__16vectorIiNS_9allocatorIiEEEC1B8ne200100Em
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEEC1B8ne200100Em: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEEC1B8ne200100Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEEC2B8ne200100Em
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__124uniform_int_distributionIiEC1B8ne200100Eii ; -- Begin function _ZNSt3__124uniform_int_distributionIiEC1B8ne200100Eii
	.globl	__ZNSt3__124uniform_int_distributionIiEC1B8ne200100Eii
	.weak_def_can_be_hidden	__ZNSt3__124uniform_int_distributionIiEC1B8ne200100Eii
	.p2align	2
__ZNSt3__124uniform_int_distributionIiEC1B8ne200100Eii: ; @_ZNSt3__124uniform_int_distributionIiEC1B8ne200100Eii
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	str	w2, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	w1, [x29, #-12]
	ldr	w2, [sp, #16]
	bl	__ZNSt3__124uniform_int_distributionIiEC2B8ne200100Eii
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIiNS_9allocatorIiEEE5beginB8ne200100Ev ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE5beginB8ne200100Ev
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEE5beginB8ne200100Ev
	.weak_definition	__ZNSt3__16vectorIiNS_9allocatorIiEEE5beginB8ne200100Ev
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEE5beginB8ne200100Ev: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEE5beginB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x0, [x8]
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE26__add_alignment_assumptionB8ne200100IPiLi0EEES5_T_
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE11__make_iterB8ne200100EPi
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIiNS_9allocatorIiEEE3endB8ne200100Ev ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE3endB8ne200100Ev
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEE3endB8ne200100Ev
	.weak_definition	__ZNSt3__16vectorIiNS_9allocatorIiEEE3endB8ne200100Ev
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEE3endB8ne200100Ev: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEE3endB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x0, [x8, #8]
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE26__add_alignment_assumptionB8ne200100IPiLi0EEES5_T_
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE11__make_iterB8ne200100EPi
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__1neB8ne200100IPiEEbRKNS_11__wrap_iterIT_EES6_ ; -- Begin function _ZNSt3__1neB8ne200100IPiEEbRKNS_11__wrap_iterIT_EES6_
	.globl	__ZNSt3__1neB8ne200100IPiEEbRKNS_11__wrap_iterIT_EES6_
	.weak_definition	__ZNSt3__1neB8ne200100IPiEEbRKNS_11__wrap_iterIT_EES6_
	.p2align	2
__ZNSt3__1neB8ne200100IPiEEbRKNS_11__wrap_iterIT_EES6_: ; @_ZNSt3__1neB8ne200100IPiEEbRKNS_11__wrap_iterIT_EES6_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNSt3__1eqB8ne200100IPiEEbRKNS_11__wrap_iterIT_EES6_
	eor	w0, w0, #0x1
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__111__wrap_iterIPiEdeB8ne200100Ev ; -- Begin function _ZNKSt3__111__wrap_iterIPiEdeB8ne200100Ev
	.globl	__ZNKSt3__111__wrap_iterIPiEdeB8ne200100Ev
	.weak_definition	__ZNKSt3__111__wrap_iterIPiEdeB8ne200100Ev
	.p2align	2
__ZNKSt3__111__wrap_iterIPiEdeB8ne200100Ev: ; @_ZNKSt3__111__wrap_iterIPiEdeB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__124uniform_int_distributionIiEclB8ne200100INS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEiRT_ ; -- Begin function _ZNSt3__124uniform_int_distributionIiEclB8ne200100INS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEiRT_
	.weak_definition	__ZNSt3__124uniform_int_distributionIiEclB8ne200100INS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEiRT_
	.p2align	2
__ZNSt3__124uniform_int_distributionIiEclB8ne200100INS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEiRT_: ; @_ZNSt3__124uniform_int_distributionIiEclB8ne200100INS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEiRT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x2, [sp, #8]
	ldr	x1, [sp]
	mov	x0, x2
	bl	__ZNSt3__124uniform_int_distributionIiEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEiRT_RKNS1_10param_typeE
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIiNS_9allocatorIiEEEixB8ne200100Em ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEEixB8ne200100Em
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEEixB8ne200100Em
	.weak_definition	__ZNSt3__16vectorIiNS_9allocatorIiEEEixB8ne200100Em
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEEixB8ne200100Em: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEEixB8ne200100Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x9, [sp]
	add	x0, x8, x9, lsl #2
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _Z9time_execIZ4mainE3$_0EdOT_i
__Z9time_execIZ4mainE3$_0EdOT_i:        ; @"_Z9time_execIZ4mainE3$_0EdOT_i"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	stur	x0, [x29, #-24]
	stur	wzr, [x29, #-28]
	b	LBB34_1
LBB34_1:                                ; =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-28]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	b.ge	LBB34_4
	b	LBB34_2
LBB34_2:                                ;   in Loop: Header=BB34_1 Depth=1
	ldur	x0, [x29, #-8]
	bl	__ZZ4mainENK3$_0clEv
	b	LBB34_3
LBB34_3:                                ;   in Loop: Header=BB34_1 Depth=1
	ldur	w8, [x29, #-28]
	add	w8, w8, #1
	stur	w8, [x29, #-28]
	b	LBB34_1
LBB34_4:
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x8, x0
	add	x0, sp, #24
	str	x8, [sp, #24]
	sub	x1, x29, #24
	bl	__ZNSt3__16chronomiB8ne200100INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	add	x1, sp, #8
	str	x0, [sp, #8]
	add	x0, sp, #16
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B8ne200100IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEE5countB8ne200100Ev
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _Z9time_execIZ4mainE3$_1EdOT_i
__Z9time_execIZ4mainE3$_1EdOT_i:        ; @"_Z9time_execIZ4mainE3$_1EdOT_i"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	stur	x0, [x29, #-24]
	stur	wzr, [x29, #-28]
	b	LBB35_1
LBB35_1:                                ; =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-28]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	b.ge	LBB35_4
	b	LBB35_2
LBB35_2:                                ;   in Loop: Header=BB35_1 Depth=1
	ldur	x0, [x29, #-8]
	bl	__ZZ4mainENK3$_1clEv
	b	LBB35_3
LBB35_3:                                ;   in Loop: Header=BB35_1 Depth=1
	ldur	w8, [x29, #-28]
	add	w8, w8, #1
	stur	w8, [x29, #-28]
	b	LBB35_1
LBB35_4:
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x8, x0
	add	x0, sp, #24
	str	x8, [sp, #24]
	sub	x1, x29, #24
	bl	__ZNSt3__16chronomiB8ne200100INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	add	x1, sp, #8
	str	x0, [sp, #8]
	add	x0, sp, #16
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B8ne200100IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEE5countB8ne200100Ev
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__111__wrap_iterIPiEppB8ne200100Ev ; -- Begin function _ZNSt3__111__wrap_iterIPiEppB8ne200100Ev
	.globl	__ZNSt3__111__wrap_iterIPiEppB8ne200100Ev
	.weak_definition	__ZNSt3__111__wrap_iterIPiEppB8ne200100Ev
	.p2align	2
__ZNSt3__111__wrap_iterIPiEppB8ne200100Ev: ; @_ZNSt3__111__wrap_iterIPiEppB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x8, [x0]
	add	x8, x8, #4
	str	x8, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEE5closeEv ; -- Begin function _ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEE5closeEv
	.globl	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEE5closeEv
	.weak_definition	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEE5closeEv
	.p2align	2
__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEE5closeEv: ; @_ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEE5closeEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	add	x0, x8, #8
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5closeEv
	cbnz	x0, LBB37_2
	b	LBB37_1
LBB37_1:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
	mov	w1, #4                          ; =0x4
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne200100Ej
	b	LBB37_2
LBB37_2:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIiNS_9allocatorIiEEED1B8ne200100Ev ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEED1B8ne200100Ev
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEED1B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIiNS_9allocatorIiEEED1B8ne200100Ev
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEED1B8ne200100Ev: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEED1B8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne200100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev ; -- Begin function _ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev
	.p2align	2
__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev: ; @_ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	adrp	x1, __ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPAGE
	ldr	x1, [x1, __ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	bl	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED2Ev
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	add	x0, x8, #416
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED2Ev ; -- Begin function _ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED2Ev
	.weak_def_can_be_hidden	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED2Ev
	.p2align	2
__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED2Ev: ; @_ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED2Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x9, [sp, #16]
	str	x9, [sp]                        ; 8-byte Folded Spill
	ldr	x10, [x9]
	str	x10, [x8]
	ldr	x9, [x9, #24]
	ldr	x10, [x8]
	ldur	x10, [x10, #-24]
	str	x9, [x8, x10]
	add	x0, x8, #16
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	add	x1, x8, #8
	bl	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZTv0_n24_NSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev ; -- Begin function _ZTv0_n24_NSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
	.weak_def_can_be_hidden	__ZTv0_n24_NSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
	.p2align	2
__ZTv0_n24_NSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev: ; @_ZTv0_n24_NSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp]
	ldr	x8, [sp]
	mov	x9, x8
	str	x9, [sp, #8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
	add	sp, sp, #16
	b	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18ios_base4setfB8ne200100Ejj ; -- Begin function _ZNSt3__18ios_base4setfB8ne200100Ejj
	.globl	__ZNSt3__18ios_base4setfB8ne200100Ejj
	.weak_definition	__ZNSt3__18ios_base4setfB8ne200100Ejj
	.p2align	2
__ZNSt3__18ios_base4setfB8ne200100Ejj:  ; @_ZNSt3__18ios_base4setfB8ne200100Ejj
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	str	w2, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	w8, [x0, #8]
	str	w8, [sp, #12]
	ldr	w1, [sp, #16]
	bl	__ZNSt3__18ios_base6unsetfB8ne200100Ej
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	ldur	w8, [x29, #-12]
	ldr	w10, [sp, #16]
	and	w10, w8, w10
	ldr	w8, [x9, #8]
	orr	w8, w8, w10
	str	w8, [x9, #8]
	ldr	w0, [sp, #12]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18ios_base6unsetfB8ne200100Ej ; -- Begin function _ZNSt3__18ios_base6unsetfB8ne200100Ej
	.globl	__ZNSt3__18ios_base6unsetfB8ne200100Ej
	.weak_definition	__ZNSt3__18ios_base6unsetfB8ne200100Ej
	.p2align	2
__ZNSt3__18ios_base6unsetfB8ne200100Ej: ; @_ZNSt3__18ios_base6unsetfB8ne200100Ej
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	x9, [sp, #8]
	ldr	w10, [sp, #4]
	ldr	w8, [x9, #8]
	bic	w8, w8, w10
	str	w8, [x9, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18__iom_t5C1B8ne200100Ei ; -- Begin function _ZNSt3__18__iom_t5C1B8ne200100Ei
	.globl	__ZNSt3__18__iom_t5C1B8ne200100Ei
	.weak_def_can_be_hidden	__ZNSt3__18__iom_t5C1B8ne200100Ei
	.p2align	2
__ZNSt3__18__iom_t5C1B8ne200100Ei:      ; @_ZNSt3__18__iom_t5C1B8ne200100Ei
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	w1, [x29, #-12]
	bl	__ZNSt3__18__iom_t5C2B8ne200100Ei
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18__iom_t5C2B8ne200100Ei ; -- Begin function _ZNSt3__18__iom_t5C2B8ne200100Ei
	.globl	__ZNSt3__18__iom_t5C2B8ne200100Ei
	.weak_def_can_be_hidden	__ZNSt3__18__iom_t5C2B8ne200100Ei
	.p2align	2
__ZNSt3__18__iom_t5C2B8ne200100Ei:      ; @_ZNSt3__18__iom_t5C2B8ne200100Ei
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	x0, [sp, #8]
	ldr	w8, [sp, #4]
	str	w8, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__1eqB8ne200100IPiEEbRKNS_11__wrap_iterIT_EES6_ ; -- Begin function _ZNSt3__1eqB8ne200100IPiEEbRKNS_11__wrap_iterIT_EES6_
	.globl	__ZNSt3__1eqB8ne200100IPiEEbRKNS_11__wrap_iterIT_EES6_
	.weak_definition	__ZNSt3__1eqB8ne200100IPiEEbRKNS_11__wrap_iterIT_EES6_
	.p2align	2
__ZNSt3__1eqB8ne200100IPiEEbRKNS_11__wrap_iterIT_EES6_: ; @_ZNSt3__1eqB8ne200100IPiEEbRKNS_11__wrap_iterIT_EES6_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	bl	__ZNKSt3__111__wrap_iterIPiE4baseB8ne200100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	__ZNKSt3__111__wrap_iterIPiE4baseB8ne200100Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	subs	x8, x0, x8
	cset	w0, eq
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__111__wrap_iterIPiE4baseB8ne200100Ev ; -- Begin function _ZNKSt3__111__wrap_iterIPiE4baseB8ne200100Ev
	.globl	__ZNKSt3__111__wrap_iterIPiE4baseB8ne200100Ev
	.weak_definition	__ZNKSt3__111__wrap_iterIPiE4baseB8ne200100Ev
	.p2align	2
__ZNKSt3__111__wrap_iterIPiE4baseB8ne200100Ev: ; @_ZNKSt3__111__wrap_iterIPiE4baseB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED2Ev ; -- Begin function _ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED2Ev
	.weak_def_can_be_hidden	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED2Ev
	.p2align	2
__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED2Ev: ; @_ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED2Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x9, [sp, #16]
	str	x9, [sp]                        ; 8-byte Folded Spill
	ldr	x10, [x9]
	str	x10, [x8]
	ldr	x9, [x9, #24]
	ldr	x10, [x8]
	ldur	x10, [x10, #-24]
	str	x9, [x8, x10]
	add	x0, x8, #8
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	add	x1, x8, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZTv0_n24_NSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev ; -- Begin function _ZTv0_n24_NSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev
	.weak_def_can_be_hidden	__ZTv0_n24_NSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev
	.p2align	2
__ZTv0_n24_NSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev: ; @_ZTv0_n24_NSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp]
	ldr	x8, [sp]
	mov	x9, x8
	str	x9, [sp, #8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
	add	sp, sp, #16
	b	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne200100ILi0EEEPKc ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne200100ILi0EEEPKc
	.weak_def_can_be_hidden	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne200100ILi0EEEPKc
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne200100ILi0EEEPKc: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne200100ILi0EEEPKc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__19allocatorIcEC1B8ne200100Ev
	ldr	x8, [sp, #16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	__ZNSt3__111char_traitsIcE6lengthB8ne200100EPKc
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	mov	x2, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIcEC1B8ne200100Ev ; -- Begin function _ZNSt3__19allocatorIcEC1B8ne200100Ev
	.globl	__ZNSt3__19allocatorIcEC1B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__19allocatorIcEC1B8ne200100Ev
	.p2align	2
__ZNSt3__19allocatorIcEC1B8ne200100Ev:  ; @_ZNSt3__19allocatorIcEC1B8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__19allocatorIcEC2B8ne200100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__111char_traitsIcE6lengthB8ne200100EPKc ; -- Begin function _ZNSt3__111char_traitsIcE6lengthB8ne200100EPKc
	.globl	__ZNSt3__111char_traitsIcE6lengthB8ne200100EPKc
	.weak_definition	__ZNSt3__111char_traitsIcE6lengthB8ne200100EPKc
	.p2align	2
__ZNSt3__111char_traitsIcE6lengthB8ne200100EPKc: ; @_ZNSt3__111char_traitsIcE6lengthB8ne200100EPKc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__118__constexpr_strlenB8ne200100IcEEmPKT_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIcEC2B8ne200100Ev ; -- Begin function _ZNSt3__19allocatorIcEC2B8ne200100Ev
	.globl	__ZNSt3__19allocatorIcEC2B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__19allocatorIcEC2B8ne200100Ev
	.p2align	2
__ZNSt3__19allocatorIcEC2B8ne200100Ev:  ; @_ZNSt3__19allocatorIcEC2B8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B8ne200100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B8ne200100Ev ; -- Begin function _ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B8ne200100Ev
	.globl	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B8ne200100Ev
	.p2align	2
__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B8ne200100Ev: ; @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__118__constexpr_strlenB8ne200100IcEEmPKT_ ; -- Begin function _ZNSt3__118__constexpr_strlenB8ne200100IcEEmPKT_
	.globl	__ZNSt3__118__constexpr_strlenB8ne200100IcEEmPKT_
	.weak_definition	__ZNSt3__118__constexpr_strlenB8ne200100IcEEmPKT_
	.p2align	2
__ZNSt3__118__constexpr_strlenB8ne200100IcEEmPKT_: ; @_ZNSt3__118__constexpr_strlenB8ne200100IcEEmPKT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_strlen
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIiNS_9allocatorIiEEEC2B8ne200100Ev ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEEC2B8ne200100Ev
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEEC2B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIiNS_9allocatorIiEEEC2B8ne200100Ev
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEEC2B8ne200100Ev: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEEC2B8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8]
	str	xzr, [x8, #8]
	str	xzr, [x8, #16]
	add	x0, x8, #16
	bl	__ZNSt3__19allocatorIiEC1B8ne200100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIiEC1B8ne200100Ev ; -- Begin function _ZNSt3__19allocatorIiEC1B8ne200100Ev
	.globl	__ZNSt3__19allocatorIiEC1B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__19allocatorIiEC1B8ne200100Ev
	.p2align	2
__ZNSt3__19allocatorIiEC1B8ne200100Ev:  ; @_ZNSt3__19allocatorIiEC1B8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__19allocatorIiEC2B8ne200100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIiEC2B8ne200100Ev ; -- Begin function _ZNSt3__19allocatorIiEC2B8ne200100Ev
	.globl	__ZNSt3__19allocatorIiEC2B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__19allocatorIiEC2B8ne200100Ev
	.p2align	2
__ZNSt3__19allocatorIiEC2B8ne200100Ev:  ; @_ZNSt3__19allocatorIiEC2B8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIiEEEC2B8ne200100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIiEEEC2B8ne200100Ev ; -- Begin function _ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIiEEEC2B8ne200100Ev
	.globl	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIiEEEC2B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIiEEEC2B8ne200100Ev
	.p2align	2
__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIiEEEC2B8ne200100Ev: ; @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIiEEEC2B8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne200100Ev ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne200100Ev
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne200100Ev
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne200100Ev: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne200100Ev
Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception3
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x1, [x29, #-8]
	str	x1, [sp, #8]                    ; 8-byte Folded Spill
Ltmp225:
	add	x0, sp, #16
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE16__destroy_vectorC1B8ne200100ERS3_
Ltmp226:
	b	LBB60_1
LBB60_1:
Ltmp227:
	add	x0, sp, #16
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE16__destroy_vectorclB8ne200100Ev
Ltmp228:
	b	LBB60_2
LBB60_2:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB60_3:
Ltmp229:
	bl	___clang_call_terminate
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table60:
Lexception3:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase0-Lttbaseref0
Lttbaseref0:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end3-Lcst_begin3
Lcst_begin3:
	.uleb128 Ltmp225-Lfunc_begin3           ; >> Call Site 1 <<
	.uleb128 Ltmp228-Ltmp225                ;   Call between Ltmp225 and Ltmp228
	.uleb128 Ltmp229-Lfunc_begin3           ;     jumps to Ltmp229
	.byte	1                               ;   On action: 1
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
	.private_extern	__ZNSt3__16vectorIiNS_9allocatorIiEEE16__destroy_vectorC1B8ne200100ERS3_ ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE16__destroy_vectorC1B8ne200100ERS3_
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEE16__destroy_vectorC1B8ne200100ERS3_
	.weak_def_can_be_hidden	__ZNSt3__16vectorIiNS_9allocatorIiEEE16__destroy_vectorC1B8ne200100ERS3_
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEE16__destroy_vectorC1B8ne200100ERS3_: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEE16__destroy_vectorC1B8ne200100ERS3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE16__destroy_vectorC2B8ne200100ERS3_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	___clang_call_terminate ; -- Begin function __clang_call_terminate
	.globl	___clang_call_terminate
	.weak_definition	___clang_call_terminate
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
	.private_extern	__ZNSt3__16vectorIiNS_9allocatorIiEEE16__destroy_vectorclB8ne200100Ev ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE16__destroy_vectorclB8ne200100Ev
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEE16__destroy_vectorclB8ne200100Ev
	.weak_definition	__ZNSt3__16vectorIiNS_9allocatorIiEEE16__destroy_vectorclB8ne200100Ev
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEE16__destroy_vectorclB8ne200100Ev: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEE16__destroy_vectorclB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldr	x8, [x8]
	ldr	x8, [x8]
	cbz	x8, LBB63_2
	b	LBB63_1
LBB63_1:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE5clearB8ne200100Ev
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	bl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE17__annotate_deleteB8ne200100Ev
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x9, [x8]
	add	x9, x9, #16
	str	x9, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x9, [x8]
	ldr	x9, [x9]
	str	x9, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [x8]
	bl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE8capacityB8ne200100Ev
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	mov	x2, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIiEEE10deallocateB8ne200100ERS2_Pim
	b	LBB63_2
LBB63_2:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIiNS_9allocatorIiEEE16__destroy_vectorC2B8ne200100ERS3_ ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE16__destroy_vectorC2B8ne200100ERS3_
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEE16__destroy_vectorC2B8ne200100ERS3_
	.weak_def_can_be_hidden	__ZNSt3__16vectorIiNS_9allocatorIiEEE16__destroy_vectorC2B8ne200100ERS3_
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEE16__destroy_vectorC2B8ne200100ERS3_: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEE16__destroy_vectorC2B8ne200100ERS3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x8, [sp]
	str	x8, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIiNS_9allocatorIiEEE5clearB8ne200100Ev ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE5clearB8ne200100Ev
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEE5clearB8ne200100Ev
	.weak_definition	__ZNSt3__16vectorIiNS_9allocatorIiEEE5clearB8ne200100Ev
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEE5clearB8ne200100Ev: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEE5clearB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeB8ne200100Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	str	x8, [sp, #16]
	ldr	x1, [x0]
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE22__base_destruct_at_endB8ne200100EPi
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x1, [sp, #16]
	bl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE17__annotate_shrinkB8ne200100Em
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIiNS_9allocatorIiEEE17__annotate_deleteB8ne200100Ev ; -- Begin function _ZNKSt3__16vectorIiNS_9allocatorIiEEE17__annotate_deleteB8ne200100Ev
	.globl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE17__annotate_deleteB8ne200100Ev
	.weak_definition	__ZNKSt3__16vectorIiNS_9allocatorIiEEE17__annotate_deleteB8ne200100Ev
	.p2align	2
__ZNKSt3__16vectorIiNS_9allocatorIiEEE17__annotate_deleteB8ne200100Ev: ; @_ZNKSt3__16vectorIiNS_9allocatorIiEEE17__annotate_deleteB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116allocator_traitsINS_9allocatorIiEEE10deallocateB8ne200100ERS2_Pim ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIiEEE10deallocateB8ne200100ERS2_Pim
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIiEEE10deallocateB8ne200100ERS2_Pim
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIiEEE10deallocateB8ne200100ERS2_Pim
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIiEEE10deallocateB8ne200100ERS2_Pim: ; @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE10deallocateB8ne200100ERS2_Pim
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__19allocatorIiE10deallocateB8ne200100EPim
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIiNS_9allocatorIiEEE8capacityB8ne200100Ev ; -- Begin function _ZNKSt3__16vectorIiNS_9allocatorIiEEE8capacityB8ne200100Ev
	.globl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE8capacityB8ne200100Ev
	.weak_definition	__ZNKSt3__16vectorIiNS_9allocatorIiEEE8capacityB8ne200100Ev
	.p2align	2
__ZNKSt3__16vectorIiNS_9allocatorIiEEE8capacityB8ne200100Ev: ; @_ZNKSt3__16vectorIiNS_9allocatorIiEEE8capacityB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	ldr	x8, [x9, #16]
	ldr	x9, [x9]
	subs	x8, x8, x9
	mov	x9, #4                          ; =0x4
	sdiv	x0, x8, x9
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeB8ne200100Ev ; -- Begin function _ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeB8ne200100Ev
	.globl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeB8ne200100Ev
	.weak_definition	__ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeB8ne200100Ev
	.p2align	2
__ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeB8ne200100Ev: ; @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	ldr	x8, [x9, #8]
	ldr	x9, [x9]
	subs	x8, x8, x9
	mov	x9, #4                          ; =0x4
	sdiv	x0, x8, x9
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIiNS_9allocatorIiEEE22__base_destruct_at_endB8ne200100EPi ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE22__base_destruct_at_endB8ne200100EPi
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEE22__base_destruct_at_endB8ne200100EPi
	.weak_definition	__ZNSt3__16vectorIiNS_9allocatorIiEEE22__base_destruct_at_endB8ne200100EPi
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEE22__base_destruct_at_endB8ne200100EPi: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEE22__base_destruct_at_endB8ne200100EPi
Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception4
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldr	x8, [x8, #8]
	str	x8, [sp, #24]
	b	LBB70_1
LBB70_1:                                ; =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-16]
	ldr	x9, [sp, #24]
	subs	x8, x8, x9
	b.eq	LBB70_4
	b	LBB70_2
LBB70_2:                                ;   in Loop: Header=BB70_1 Depth=1
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	add	x8, x8, #16
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x8, [sp, #24]
	subs	x0, x8, #4
	str	x0, [sp, #24]
	bl	__ZNSt3__112__to_addressB8ne200100IiEEPT_S2_
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
Ltmp234:
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIiEEE7destroyB8ne200100IiLi0EEEvRS2_PT_
Ltmp235:
	b	LBB70_3
LBB70_3:                                ;   in Loop: Header=BB70_1 Depth=1
	b	LBB70_1
LBB70_4:
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	str	x8, [x9, #8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB70_5:
Ltmp236:
	bl	___clang_call_terminate
Lfunc_end4:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table70:
Lexception4:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase1-Lttbaseref1
Lttbaseref1:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end4-Lcst_begin4
Lcst_begin4:
	.uleb128 Ltmp234-Lfunc_begin4           ; >> Call Site 1 <<
	.uleb128 Ltmp235-Ltmp234                ;   Call between Ltmp234 and Ltmp235
	.uleb128 Ltmp236-Lfunc_begin4           ;     jumps to Ltmp236
	.byte	1                               ;   On action: 1
Lcst_end4:
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
	.private_extern	__ZNKSt3__16vectorIiNS_9allocatorIiEEE17__annotate_shrinkB8ne200100Em ; -- Begin function _ZNKSt3__16vectorIiNS_9allocatorIiEEE17__annotate_shrinkB8ne200100Em
	.globl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE17__annotate_shrinkB8ne200100Em
	.weak_definition	__ZNKSt3__16vectorIiNS_9allocatorIiEEE17__annotate_shrinkB8ne200100Em
	.p2align	2
__ZNKSt3__16vectorIiNS_9allocatorIiEEE17__annotate_shrinkB8ne200100Em: ; @_ZNKSt3__16vectorIiNS_9allocatorIiEEE17__annotate_shrinkB8ne200100Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIiEEE7destroyB8ne200100IiLi0EEEvRS2_PT_ ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIiEEE7destroyB8ne200100IiLi0EEEvRS2_PT_
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIiEEE7destroyB8ne200100IiLi0EEEvRS2_PT_
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIiEEE7destroyB8ne200100IiLi0EEEvRS2_PT_: ; @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE7destroyB8ne200100IiLi0EEEvRS2_PT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNSt3__19allocatorIiE7destroyB8ne200100EPi
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112__to_addressB8ne200100IiEEPT_S2_ ; -- Begin function _ZNSt3__112__to_addressB8ne200100IiEEPT_S2_
	.globl	__ZNSt3__112__to_addressB8ne200100IiEEPT_S2_
	.weak_definition	__ZNSt3__112__to_addressB8ne200100IiEEPT_S2_
	.p2align	2
__ZNSt3__112__to_addressB8ne200100IiEEPT_S2_: ; @_ZNSt3__112__to_addressB8ne200100IiEEPT_S2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIiE7destroyB8ne200100EPi ; -- Begin function _ZNSt3__19allocatorIiE7destroyB8ne200100EPi
	.globl	__ZNSt3__19allocatorIiE7destroyB8ne200100EPi
	.weak_definition	__ZNSt3__19allocatorIiE7destroyB8ne200100EPi
	.p2align	2
__ZNSt3__19allocatorIiE7destroyB8ne200100EPi: ; @_ZNSt3__19allocatorIiE7destroyB8ne200100EPi
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIiE10deallocateB8ne200100EPim ; -- Begin function _ZNSt3__19allocatorIiE10deallocateB8ne200100EPim
	.globl	__ZNSt3__19allocatorIiE10deallocateB8ne200100EPim
	.weak_definition	__ZNSt3__19allocatorIiE10deallocateB8ne200100EPim
	.p2align	2
__ZNSt3__19allocatorIiE10deallocateB8ne200100EPim: ; @_ZNSt3__19allocatorIiE10deallocateB8ne200100EPim
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	mov	x2, #4                          ; =0x4
	bl	__ZNSt3__119__libcpp_deallocateB8ne200100IiEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__libcpp_deallocateB8ne200100IiEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm ; -- Begin function _ZNSt3__119__libcpp_deallocateB8ne200100IiEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm
	.globl	__ZNSt3__119__libcpp_deallocateB8ne200100IiEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm
	.weak_definition	__ZNSt3__119__libcpp_deallocateB8ne200100IiEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm
	.p2align	2
__ZNSt3__119__libcpp_deallocateB8ne200100IiEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm: ; @_ZNSt3__119__libcpp_deallocateB8ne200100IiEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x8, [sp, #16]
	lsl	x8, x8, #2
	str	x8, [sp]
	ldur	x0, [x29, #-8]
	bl	__ZNSt3__124__libcpp_operator_deleteB8ne200100IJPiEEEvDpT_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__124__libcpp_operator_deleteB8ne200100IJPiEEEvDpT_ ; -- Begin function _ZNSt3__124__libcpp_operator_deleteB8ne200100IJPiEEEvDpT_
	.globl	__ZNSt3__124__libcpp_operator_deleteB8ne200100IJPiEEEvDpT_
	.weak_definition	__ZNSt3__124__libcpp_operator_deleteB8ne200100IJPiEEEvDpT_
	.p2align	2
__ZNSt3__124__libcpp_operator_deleteB8ne200100IJPiEEEvDpT_: ; @_ZNSt3__124__libcpp_operator_deleteB8ne200100IJPiEEEvDpT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZdlPv
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEE12emplace_backIJiEEEvDpOT_ ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE12emplace_backIJiEEEvDpOT_
	.weak_definition	__ZNSt3__16vectorIiNS_9allocatorIiEEE12emplace_backIJiEEEvDpOT_
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEE12emplace_backIJiEEEvDpOT_: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEE12emplace_backIJiEEEvDpOT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x9, [x29, #-8]
	str	x9, [sp]                        ; 8-byte Folded Spill
	ldr	x8, [x9, #8]
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x9, [x9, #16]
	subs	x8, x8, x9
	b.hs	LBB78_2
	b	LBB78_1
LBB78_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x1, [sp, #16]
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE22__construct_one_at_endB8ne200100IJiEEEvDpOT_
	ldr	x8, [sp, #8]
	add	x8, x8, #4
	str	x8, [sp, #8]
	b	LBB78_3
LBB78_2:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x1, [sp, #16]
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE24__emplace_back_slow_pathIJiEEEPiDpOT_
	str	x0, [sp, #8]
	b	LBB78_3
LBB78_3:
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #8]
	str	x8, [x9, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEE22__construct_one_at_endB8ne200100IJiEEEvDpOT_ ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE22__construct_one_at_endB8ne200100IJiEEEvDpOT_
	.weak_definition	__ZNSt3__16vectorIiNS_9allocatorIiEEE22__construct_one_at_endB8ne200100IJiEEEvDpOT_
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEE22__construct_one_at_endB8ne200100IJiEEEvDpOT_: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEE22__construct_one_at_endB8ne200100IJiEEEvDpOT_
Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception5
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x1, [x29, #-8]
	str	x1, [sp]                        ; 8-byte Folded Spill
	add	x0, sp, #24
	mov	x2, #1                          ; =0x1
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC1B8ne200100ERS3_m
	ldr	x0, [sp, #32]
	bl	__ZNSt3__112__to_addressB8ne200100IiEEPT_S2_
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	mov	x1, x0
	ldur	x2, [x29, #-16]
Ltmp240:
	add	x0, x8, #16
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIiEEE9constructB8ne200100IiJiELi0EEEvRS2_PT_DpOT0_
Ltmp241:
	b	LBB79_1
LBB79_1:
	add	x0, sp, #24
	ldr	x8, [sp, #32]
	add	x8, x8, #4
	str	x8, [sp, #32]
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD1B8ne200100Ev
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB79_2:
Ltmp242:
	str	x0, [sp, #16]
	mov	x8, x1
	str	w8, [sp, #12]
	add	x0, sp, #24
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD1B8ne200100Ev
	b	LBB79_3
LBB79_3:
	ldr	x0, [sp, #16]
	bl	__Unwind_Resume
Lfunc_end5:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table79:
Lexception5:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end5-Lcst_begin5
Lcst_begin5:
	.uleb128 Lfunc_begin5-Lfunc_begin5      ; >> Call Site 1 <<
	.uleb128 Ltmp240-Lfunc_begin5           ;   Call between Lfunc_begin5 and Ltmp240
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp240-Lfunc_begin5           ; >> Call Site 2 <<
	.uleb128 Ltmp241-Ltmp240                ;   Call between Ltmp240 and Ltmp241
	.uleb128 Ltmp242-Lfunc_begin5           ;     jumps to Ltmp242
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp241-Lfunc_begin5           ; >> Call Site 3 <<
	.uleb128 Lfunc_end5-Ltmp241             ;   Call between Ltmp241 and Lfunc_end5
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end5:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEE24__emplace_back_slow_pathIJiEEEPiDpOT_ ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE24__emplace_back_slow_pathIJiEEEPiDpOT_
	.weak_definition	__ZNSt3__16vectorIiNS_9allocatorIiEEE24__emplace_back_slow_pathIJiEEEPiDpOT_
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEE24__emplace_back_slow_pathIJiEEEPiDpOT_: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEE24__emplace_back_slow_pathIJiEEEPiDpOT_
Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception6
; %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeB8ne200100Ev
	mov	x8, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	add	x1, x8, #1
	bl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE11__recommendB8ne200100Em
	mov	x1, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	str	x1, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeB8ne200100Ev
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	mov	x2, x0
	add	x0, sp, #40
	add	x3, x8, #16
	bl	__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEEC1EmmS3_
	ldr	x0, [sp, #56]
	bl	__ZNSt3__112__to_addressB8ne200100IiEEPT_S2_
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	mov	x1, x0
	ldur	x2, [x29, #-16]
Ltmp243:
	add	x0, x8, #16
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIiEEE9constructB8ne200100IiJiELi0EEEvRS2_PT_DpOT0_
Ltmp244:
	b	LBB80_1
LBB80_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	add	x1, sp, #40
	ldr	x8, [sp, #56]
	add	x8, x8, #4
	str	x8, [sp, #56]
Ltmp245:
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE26__swap_out_circular_bufferERNS_14__split_bufferIiRS2_EE
Ltmp246:
	b	LBB80_2
LBB80_2:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x8, [x8, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	add	x0, sp, #40
	bl	__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEED1Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB80_3:
Ltmp247:
	str	x0, [sp, #32]
	mov	x8, x1
	str	w8, [sp, #28]
	add	x0, sp, #40
	bl	__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEED1Ev
	b	LBB80_4
LBB80_4:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
Lfunc_end6:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table80:
Lexception6:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end6-Lcst_begin6
Lcst_begin6:
	.uleb128 Lfunc_begin6-Lfunc_begin6      ; >> Call Site 1 <<
	.uleb128 Ltmp243-Lfunc_begin6           ;   Call between Lfunc_begin6 and Ltmp243
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp243-Lfunc_begin6           ; >> Call Site 2 <<
	.uleb128 Ltmp246-Ltmp243                ;   Call between Ltmp243 and Ltmp246
	.uleb128 Ltmp247-Lfunc_begin6           ;     jumps to Ltmp247
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp246-Lfunc_begin6           ; >> Call Site 3 <<
	.uleb128 Lfunc_end6-Ltmp246             ;   Call between Ltmp246 and Lfunc_end6
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end6:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC1B8ne200100ERS3_m ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC1B8ne200100ERS3_m
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC1B8ne200100ERS3_m
	.weak_def_can_be_hidden	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC1B8ne200100ERS3_m
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC1B8ne200100ERS3_m: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC1B8ne200100ERS3_m
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC2B8ne200100ERS3_m
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIiEEE9constructB8ne200100IiJiELi0EEEvRS2_PT_DpOT0_ ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIiEEE9constructB8ne200100IiJiELi0EEEvRS2_PT_DpOT0_
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIiEEE9constructB8ne200100IiJiELi0EEEvRS2_PT_DpOT0_
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIiEEE9constructB8ne200100IiJiELi0EEEvRS2_PT_DpOT0_: ; @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE9constructB8ne200100IiJiELi0EEEvRS2_PT_DpOT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__19allocatorIiE9constructB8ne200100IiJiEEEvPT_DpOT0_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD1B8ne200100Ev ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD1B8ne200100Ev
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD1B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD1B8ne200100Ev
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD1B8ne200100Ev: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD1B8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD2B8ne200100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC2B8ne200100ERS3_m ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC2B8ne200100ERS3_m
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC2B8ne200100ERS3_m
	.weak_def_can_be_hidden	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC2B8ne200100ERS3_m
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC2B8ne200100ERS3_m: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC2B8ne200100ERS3_m
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #24]
	ldr	x8, [sp, #16]
	str	x8, [x0]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	str	x8, [x0, #8]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	ldr	x9, [sp, #8]
	add	x8, x8, x9, lsl #2
	str	x8, [x0, #16]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__19allocatorIiE9constructB8ne200100IiJiEEEvPT_DpOT0_ ; -- Begin function _ZNSt3__19allocatorIiE9constructB8ne200100IiJiEEEvPT_DpOT0_
	.weak_definition	__ZNSt3__19allocatorIiE9constructB8ne200100IiJiEEEvPT_DpOT0_
	.p2align	2
__ZNSt3__19allocatorIiE9constructB8ne200100IiJiEEEvPT_DpOT0_: ; @_ZNSt3__19allocatorIiE9constructB8ne200100IiJiEEEvPT_DpOT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x9, [sp, #16]
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	str	w8, [x9]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD2B8ne200100Ev ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD2B8ne200100Ev
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD2B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD2B8ne200100Ev
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD2B8ne200100Ev: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD2B8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x8, [x0, #8]
	ldr	x9, [x0]
	str	x8, [x9, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIiNS_9allocatorIiEEE11__recommendB8ne200100Em ; -- Begin function _ZNKSt3__16vectorIiNS_9allocatorIiEEE11__recommendB8ne200100Em
	.globl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE11__recommendB8ne200100Em
	.weak_definition	__ZNKSt3__16vectorIiNS_9allocatorIiEEE11__recommendB8ne200100Em
	.p2align	2
__ZNKSt3__16vectorIiNS_9allocatorIiEEE11__recommendB8ne200100Em: ; @_ZNKSt3__16vectorIiNS_9allocatorIiEEE11__recommendB8ne200100Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	ldur	x0, [x29, #-16]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE8max_sizeB8ne200100Ev
	str	x0, [sp, #32]
	ldur	x8, [x29, #-24]
	ldr	x9, [sp, #32]
	subs	x8, x8, x9
	b.ls	LBB87_2
	b	LBB87_1
LBB87_1:
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8ne200100Ev
LBB87_2:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE8capacityB8ne200100Ev
	str	x0, [sp, #24]
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #32]
	mov	x10, #2                         ; =0x2
	udiv	x9, x9, x10
	subs	x8, x8, x9
	b.lo	LBB87_4
	b	LBB87_3
LBB87_3:
	ldr	x8, [sp, #32]
	stur	x8, [x29, #-8]
	b	LBB87_5
LBB87_4:
	ldr	x9, [sp, #24]
	mov	x8, #2                          ; =0x2
	mul	x8, x8, x9
	add	x0, sp, #16
	str	x8, [sp, #16]
	sub	x1, x29, #24
	bl	__ZNSt3__13maxB8ne200100ImEERKT_S3_S3_
	ldr	x8, [x0]
	stur	x8, [x29, #-8]
	b	LBB87_5
LBB87_5:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEEC1EmmS3_ ; -- Begin function _ZNSt3__114__split_bufferIiRNS_9allocatorIiEEEC1EmmS3_
	.globl	__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEEC1EmmS3_
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEEC1EmmS3_
	.p2align	2
__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEEC1EmmS3_: ; @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEEC1EmmS3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	str	x3, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x1, [x29, #-16]
	ldr	x2, [sp, #24]
	ldr	x3, [sp, #16]
	bl	__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEEC2EmmS3_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIiNS_9allocatorIiEEE26__swap_out_circular_bufferERNS_14__split_bufferIiRS2_EE ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE26__swap_out_circular_bufferERNS_14__split_bufferIiRS2_EE
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEE26__swap_out_circular_bufferERNS_14__split_bufferIiRS2_EE
	.weak_definition	__ZNSt3__16vectorIiNS_9allocatorIiEEE26__swap_out_circular_bufferERNS_14__split_bufferIiRS2_EE
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEE26__swap_out_circular_bufferERNS_14__split_bufferIiRS2_EE: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEE26__swap_out_circular_bufferERNS_14__split_bufferIiRS2_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE17__annotate_deleteB8ne200100Ev
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #8]
	ldr	x10, [x8, #8]
	ldr	x11, [x8]
	subs	x10, x10, x11
	mov	x11, #4                         ; =0x4
	sdiv	x11, x10, x11
	mov	x10, #0                         ; =0x0
	subs	x10, x10, x11
	add	x9, x9, x10, lsl #2
	str	x9, [sp, #24]
	ldr	x0, [x8]
	bl	__ZNSt3__112__to_addressB8ne200100IiEEPT_S2_
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [x8, #8]
	bl	__ZNSt3__112__to_addressB8ne200100IiEEPT_S2_
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x0, [sp, #24]
	bl	__ZNSt3__112__to_addressB8ne200100IiEEPT_S2_
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	ldr	x2, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	mov	x3, x0
	add	x0, x8, #16
	bl	__ZNSt3__134__uninitialized_allocator_relocateB8ne200100INS_9allocatorIiEEPiEEvRT_T0_S6_S6_
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #24]
	ldur	x9, [x29, #-16]
	str	x8, [x9, #8]
	ldr	x8, [x0]
	str	x8, [x0, #8]
	ldur	x8, [x29, #-16]
	add	x1, x8, #8
	bl	__ZNSt3__14swapB8ne200100IPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	add	x0, x9, #8
	add	x1, x8, #16
	bl	__ZNSt3__14swapB8ne200100IPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	add	x0, x9, #16
	add	x1, x8, #24
	bl	__ZNSt3__14swapB8ne200100IPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	ldur	x9, [x29, #-16]
	str	x8, [x9]
	bl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeB8ne200100Ev
	mov	x1, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE14__annotate_newB8ne200100Em
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEED1Ev ; -- Begin function _ZNSt3__114__split_bufferIiRNS_9allocatorIiEEED1Ev
	.globl	__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEED1Ev
	.p2align	2
__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEED1Ev: ; @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEED1Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEED2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIiNS_9allocatorIiEEE8max_sizeB8ne200100Ev ; -- Begin function _ZNKSt3__16vectorIiNS_9allocatorIiEEE8max_sizeB8ne200100Ev
	.globl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE8max_sizeB8ne200100Ev
	.weak_definition	__ZNKSt3__16vectorIiNS_9allocatorIiEEE8max_sizeB8ne200100Ev
	.p2align	2
__ZNKSt3__16vectorIiNS_9allocatorIiEEE8max_sizeB8ne200100Ev: ; @_ZNKSt3__16vectorIiNS_9allocatorIiEEE8max_sizeB8ne200100Ev
Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception7
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	add	x0, x8, #16
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIiEEE8max_sizeB8ne200100IS2_Li0EEEmRKS2_
	sub	x8, x29, #16
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	stur	x0, [x29, #-16]
	bl	__ZNSt3__114numeric_limitsIlE3maxB8ne200100Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	add	x1, sp, #24
	str	x8, [sp, #24]
Ltmp251:
	bl	__ZNSt3__13minB8ne200100ImEERKT_S3_S3_
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp252:
	b	LBB91_1
LBB91_1:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB91_2:
Ltmp253:
	bl	___clang_call_terminate
Lfunc_end7:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table91:
Lexception7:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase2-Lttbaseref2
Lttbaseref2:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end7-Lcst_begin7
Lcst_begin7:
	.uleb128 Ltmp251-Lfunc_begin7           ; >> Call Site 1 <<
	.uleb128 Ltmp252-Ltmp251                ;   Call between Ltmp251 and Ltmp252
	.uleb128 Ltmp253-Lfunc_begin7           ;     jumps to Ltmp253
	.byte	1                               ;   On action: 1
Lcst_end7:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase2:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8ne200100Ev ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8ne200100Ev
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8ne200100Ev
	.weak_definition	__ZNSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8ne200100Ev
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8ne200100Ev: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8ne200100Ev
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x0, l_.str.32@PAGE
	add	x0, x0, l_.str.32@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB8ne200100EPKc
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__13maxB8ne200100ImEERKT_S3_S3_ ; -- Begin function _ZNSt3__13maxB8ne200100ImEERKT_S3_S3_
	.globl	__ZNSt3__13maxB8ne200100ImEERKT_S3_S3_
	.weak_definition	__ZNSt3__13maxB8ne200100ImEERKT_S3_S3_
	.p2align	2
__ZNSt3__13maxB8ne200100ImEERKT_S3_S3_: ; @_ZNSt3__13maxB8ne200100ImEERKT_S3_S3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	bl	__ZNSt3__13maxB8ne200100ImNS_6__lessIvvEEEERKT_S5_S5_T0_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__13minB8ne200100ImEERKT_S3_S3_ ; -- Begin function _ZNSt3__13minB8ne200100ImEERKT_S3_S3_
	.globl	__ZNSt3__13minB8ne200100ImEERKT_S3_S3_
	.weak_definition	__ZNSt3__13minB8ne200100ImEERKT_S3_S3_
	.p2align	2
__ZNSt3__13minB8ne200100ImEERKT_S3_S3_: ; @_ZNSt3__13minB8ne200100ImEERKT_S3_S3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	bl	__ZNSt3__13minB8ne200100ImNS_6__lessIvvEEEERKT_S5_S5_T0_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIiEEE8max_sizeB8ne200100IS2_Li0EEEmRKS2_ ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIiEEE8max_sizeB8ne200100IS2_Li0EEEmRKS2_
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIiEEE8max_sizeB8ne200100IS2_Li0EEEmRKS2_
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIiEEE8max_sizeB8ne200100IS2_Li0EEEmRKS2_: ; @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE8max_sizeB8ne200100IS2_Li0EEEmRKS2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__19allocatorIiE8max_sizeB8ne200100Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114numeric_limitsIlE3maxB8ne200100Ev ; -- Begin function _ZNSt3__114numeric_limitsIlE3maxB8ne200100Ev
	.globl	__ZNSt3__114numeric_limitsIlE3maxB8ne200100Ev
	.weak_definition	__ZNSt3__114numeric_limitsIlE3maxB8ne200100Ev
	.p2align	2
__ZNSt3__114numeric_limitsIlE3maxB8ne200100Ev: ; @_ZNSt3__114numeric_limitsIlE3maxB8ne200100Ev
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	__ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB8ne200100Ev
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__13minB8ne200100ImNS_6__lessIvvEEEERKT_S5_S5_T0_ ; -- Begin function _ZNSt3__13minB8ne200100ImNS_6__lessIvvEEEERKT_S5_S5_T0_
	.globl	__ZNSt3__13minB8ne200100ImNS_6__lessIvvEEEERKT_S5_S5_T0_
	.weak_definition	__ZNSt3__13minB8ne200100ImNS_6__lessIvvEEEERKT_S5_S5_T0_
	.p2align	2
__ZNSt3__13minB8ne200100ImNS_6__lessIvvEEEERKT_S5_S5_T0_: ; @_ZNSt3__13minB8ne200100ImNS_6__lessIvvEEEERKT_S5_S5_T0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x1, [sp, #8]
	ldr	x2, [sp, #16]
	sub	x0, x29, #1
	bl	__ZNKSt3__16__lessIvvEclB8ne200100ImmEEbRKT_RKT0_
	tbz	w0, #0, LBB97_2
	b	LBB97_1
LBB97_1:
	ldr	x8, [sp, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB97_3
LBB97_2:
	ldr	x8, [sp, #16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB97_3
LBB97_3:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16__lessIvvEclB8ne200100ImmEEbRKT_RKT0_ ; -- Begin function _ZNKSt3__16__lessIvvEclB8ne200100ImmEEbRKT_RKT0_
	.globl	__ZNKSt3__16__lessIvvEclB8ne200100ImmEEbRKT_RKT0_
	.weak_definition	__ZNKSt3__16__lessIvvEclB8ne200100ImmEEbRKT_RKT0_
	.p2align	2
__ZNKSt3__16__lessIvvEclB8ne200100ImmEEbRKT_RKT0_: ; @_ZNKSt3__16__lessIvvEclB8ne200100ImmEEbRKT_RKT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	x9, [sp, #8]
	ldr	x9, [x9]
	subs	x8, x8, x9
	cset	w0, lo
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__19allocatorIiE8max_sizeB8ne200100Ev ; -- Begin function _ZNKSt3__19allocatorIiE8max_sizeB8ne200100Ev
	.globl	__ZNKSt3__19allocatorIiE8max_sizeB8ne200100Ev
	.weak_definition	__ZNKSt3__19allocatorIiE8max_sizeB8ne200100Ev
	.p2align	2
__ZNKSt3__19allocatorIiE8max_sizeB8ne200100Ev: ; @_ZNKSt3__19allocatorIiE8max_sizeB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	mov	x0, #4611686018427387903        ; =0x3fffffffffffffff
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB8ne200100Ev ; -- Begin function _ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB8ne200100Ev
	.globl	__ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB8ne200100Ev
	.weak_definition	__ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB8ne200100Ev
	.p2align	2
__ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB8ne200100Ev: ; @_ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB8ne200100Ev
	.cfi_startproc
; %bb.0:
	mov	x0, #9223372036854775807        ; =0x7fffffffffffffff
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__120__throw_length_errorB8ne200100EPKc ; -- Begin function _ZNSt3__120__throw_length_errorB8ne200100EPKc
	.globl	__ZNSt3__120__throw_length_errorB8ne200100EPKc
	.weak_definition	__ZNSt3__120__throw_length_errorB8ne200100EPKc
	.p2align	2
__ZNSt3__120__throw_length_errorB8ne200100EPKc: ; @_ZNSt3__120__throw_length_errorB8ne200100EPKc
Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception8
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	mov	x0, #16                         ; =0x10
	bl	___cxa_allocate_exception
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldur	x1, [x29, #-8]
Ltmp256:
	bl	__ZNSt12length_errorC1B8ne200100EPKc
Ltmp257:
	b	LBB101_1
LBB101_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	adrp	x1, __ZTISt12length_error@GOTPAGE
	ldr	x1, [x1, __ZTISt12length_error@GOTPAGEOFF]
	adrp	x2, __ZNSt12length_errorD1Ev@GOTPAGE
	ldr	x2, [x2, __ZNSt12length_errorD1Ev@GOTPAGEOFF]
	bl	___cxa_throw
LBB101_2:
Ltmp258:
	mov	x8, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	str	x8, [sp, #16]
	mov	x8, x1
	str	w8, [sp, #12]
	bl	___cxa_free_exception
	b	LBB101_3
LBB101_3:
	ldr	x0, [sp, #16]
	bl	__Unwind_Resume
Lfunc_end8:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table101:
Lexception8:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end8-Lcst_begin8
Lcst_begin8:
	.uleb128 Lfunc_begin8-Lfunc_begin8      ; >> Call Site 1 <<
	.uleb128 Ltmp256-Lfunc_begin8           ;   Call between Lfunc_begin8 and Ltmp256
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp256-Lfunc_begin8           ; >> Call Site 2 <<
	.uleb128 Ltmp257-Ltmp256                ;   Call between Ltmp256 and Ltmp257
	.uleb128 Ltmp258-Lfunc_begin8           ;     jumps to Ltmp258
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp257-Lfunc_begin8           ; >> Call Site 3 <<
	.uleb128 Lfunc_end8-Ltmp257             ;   Call between Ltmp257 and Lfunc_end8
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end8:
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
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt12length_errorC2B8ne200100EPKc
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt12length_errorC2B8ne200100EPKc ; -- Begin function _ZNSt12length_errorC2B8ne200100EPKc
	.globl	__ZNSt12length_errorC2B8ne200100EPKc
	.weak_def_can_be_hidden	__ZNSt12length_errorC2B8ne200100EPKc
	.p2align	2
__ZNSt12length_errorC2B8ne200100EPKc:   ; @_ZNSt12length_errorC2B8ne200100EPKc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt11logic_errorC2EPKc
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	adrp	x8, __ZTVSt12length_error@GOTPAGE
	ldr	x8, [x8, __ZTVSt12length_error@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__13maxB8ne200100ImNS_6__lessIvvEEEERKT_S5_S5_T0_ ; -- Begin function _ZNSt3__13maxB8ne200100ImNS_6__lessIvvEEEERKT_S5_S5_T0_
	.globl	__ZNSt3__13maxB8ne200100ImNS_6__lessIvvEEEERKT_S5_S5_T0_
	.weak_definition	__ZNSt3__13maxB8ne200100ImNS_6__lessIvvEEEERKT_S5_S5_T0_
	.p2align	2
__ZNSt3__13maxB8ne200100ImNS_6__lessIvvEEEERKT_S5_S5_T0_: ; @_ZNSt3__13maxB8ne200100ImNS_6__lessIvvEEEERKT_S5_S5_T0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	sub	x0, x29, #1
	bl	__ZNKSt3__16__lessIvvEclB8ne200100ImmEEbRKT_RKT0_
	tbz	w0, #0, LBB104_2
	b	LBB104_1
LBB104_1:
	ldr	x8, [sp, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB104_3
LBB104_2:
	ldr	x8, [sp, #16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB104_3
LBB104_3:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEEC2EmmS3_ ; -- Begin function _ZNSt3__114__split_bufferIiRNS_9allocatorIiEEEC2EmmS3_
	.globl	__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEEC2EmmS3_
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEEC2EmmS3_
	.p2align	2
__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEEC2EmmS3_: ; @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEEC2EmmS3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	str	x2, [sp, #32]
	str	x3, [sp, #24]
	ldur	x9, [x29, #-16]
	str	x9, [sp]                        ; 8-byte Folded Spill
	mov	x8, x9
	stur	x8, [x29, #-8]
                                        ; kill: def $x8 killed $xzr
	str	xzr, [x9, #24]
	ldr	x8, [sp, #24]
	str	x8, [x9, #32]
	ldur	x8, [x29, #-24]
	cbnz	x8, LBB105_2
	b	LBB105_1
LBB105_1:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8]
	b	LBB105_3
LBB105_2:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldr	x0, [x8, #32]
	ldur	x1, [x29, #-24]
	bl	__ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIiEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	str	x0, [sp, #8]
	str	x1, [sp, #16]
	ldr	x8, [sp, #8]
	str	x8, [x9]
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-24]
	b	LBB105_3
LBB105_3:
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [x9]
	ldr	x10, [sp, #32]
	add	x8, x8, x10, lsl #2
	str	x8, [x9, #16]
	str	x8, [x9, #8]
	ldr	x8, [x9]
	ldur	x10, [x29, #-24]
	add	x8, x8, x10, lsl #2
	str	x8, [x9, #24]
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIiEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m ; -- Begin function _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIiEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m
	.globl	__ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIiEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m
	.weak_definition	__ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIiEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m
	.p2align	2
__ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIiEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m: ; @_ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIiEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNSt3__19allocatorIiE8allocateB8ne200100Em
	str	x0, [sp, #16]
	ldr	x8, [sp]
	str	x8, [sp, #24]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIiE8allocateB8ne200100Em ; -- Begin function _ZNSt3__19allocatorIiE8allocateB8ne200100Em
	.globl	__ZNSt3__19allocatorIiE8allocateB8ne200100Em
	.weak_definition	__ZNSt3__19allocatorIiE8allocateB8ne200100Em
	.p2align	2
__ZNSt3__19allocatorIiE8allocateB8ne200100Em: ; @_ZNSt3__19allocatorIiE8allocateB8ne200100Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIiEEE8max_sizeB8ne200100IS2_Li0EEEmRKS2_
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	subs	x8, x8, x0
	b.ls	LBB107_2
	b	LBB107_1
LBB107_1:
	bl	__ZSt28__throw_bad_array_new_lengthB8ne200100v
LBB107_2:
	ldr	x0, [sp, #16]
	mov	x1, #4                          ; =0x4
	bl	__ZNSt3__117__libcpp_allocateB8ne200100IiEEPT_NS_15__element_countEm
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZSt28__throw_bad_array_new_lengthB8ne200100v ; -- Begin function _ZSt28__throw_bad_array_new_lengthB8ne200100v
	.globl	__ZSt28__throw_bad_array_new_lengthB8ne200100v
	.weak_definition	__ZSt28__throw_bad_array_new_lengthB8ne200100v
	.p2align	2
__ZSt28__throw_bad_array_new_lengthB8ne200100v: ; @_ZSt28__throw_bad_array_new_lengthB8ne200100v
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x0, #8                          ; =0x8
	bl	___cxa_allocate_exception
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt20bad_array_new_lengthC1Ev
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	adrp	x1, __ZTISt20bad_array_new_length@GOTPAGE
	ldr	x1, [x1, __ZTISt20bad_array_new_length@GOTPAGEOFF]
	adrp	x2, __ZNSt20bad_array_new_lengthD1Ev@GOTPAGE
	ldr	x2, [x2, __ZNSt20bad_array_new_lengthD1Ev@GOTPAGEOFF]
	bl	___cxa_throw
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__117__libcpp_allocateB8ne200100IiEEPT_NS_15__element_countEm ; -- Begin function _ZNSt3__117__libcpp_allocateB8ne200100IiEEPT_NS_15__element_countEm
	.globl	__ZNSt3__117__libcpp_allocateB8ne200100IiEEPT_NS_15__element_countEm
	.weak_definition	__ZNSt3__117__libcpp_allocateB8ne200100IiEEPT_NS_15__element_countEm
	.p2align	2
__ZNSt3__117__libcpp_allocateB8ne200100IiEEPT_NS_15__element_countEm: ; @_ZNSt3__117__libcpp_allocateB8ne200100IiEEPT_NS_15__element_countEm
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	lsl	x8, x8, #2
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__121__libcpp_operator_newB8ne200100IiEEPvm
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__121__libcpp_operator_newB8ne200100IiEEPvm ; -- Begin function _ZNSt3__121__libcpp_operator_newB8ne200100IiEEPvm
	.globl	__ZNSt3__121__libcpp_operator_newB8ne200100IiEEPvm
	.weak_definition	__ZNSt3__121__libcpp_operator_newB8ne200100IiEEPvm
	.p2align	2
__ZNSt3__121__libcpp_operator_newB8ne200100IiEEPvm: ; @_ZNSt3__121__libcpp_operator_newB8ne200100IiEEPvm
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__Znwm
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__134__uninitialized_allocator_relocateB8ne200100INS_9allocatorIiEEPiEEvRT_T0_S6_S6_ ; -- Begin function _ZNSt3__134__uninitialized_allocator_relocateB8ne200100INS_9allocatorIiEEPiEEvRT_T0_S6_S6_
	.globl	__ZNSt3__134__uninitialized_allocator_relocateB8ne200100INS_9allocatorIiEEPiEEvRT_T0_S6_S6_
	.weak_definition	__ZNSt3__134__uninitialized_allocator_relocateB8ne200100INS_9allocatorIiEEPiEEvRT_T0_S6_S6_
	.p2align	2
__ZNSt3__134__uninitialized_allocator_relocateB8ne200100INS_9allocatorIiEEPiEEvRT_T0_S6_S6_: ; @_ZNSt3__134__uninitialized_allocator_relocateB8ne200100INS_9allocatorIiEEPiEEvRT_T0_S6_S6_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	str	x3, [sp, #16]
	ldr	x0, [sp, #16]
	bl	__ZNSt3__112__to_addressB8ne200100IiEEPT_S2_
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	__ZNSt3__112__to_addressB8ne200100IiEEPT_S2_
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [sp, #24]
	ldur	x9, [x29, #-16]
	subs	x9, x8, x9
	mov	x8, #4                          ; =0x4
	sdiv	x9, x9, x8
	mul	x2, x8, x9
	bl	_memcpy
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__14swapB8ne200100IPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_ ; -- Begin function _ZNSt3__14swapB8ne200100IPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_
	.globl	__ZNSt3__14swapB8ne200100IPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_
	.weak_definition	__ZNSt3__14swapB8ne200100IPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_
	.p2align	2
__ZNSt3__14swapB8ne200100IPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_: ; @_ZNSt3__14swapB8ne200100IPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x8, [x8]
	str	x8, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	x9, [sp, #24]
	str	x8, [x9]
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #16]
	str	x8, [x9]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIiNS_9allocatorIiEEE14__annotate_newB8ne200100Em ; -- Begin function _ZNKSt3__16vectorIiNS_9allocatorIiEEE14__annotate_newB8ne200100Em
	.globl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE14__annotate_newB8ne200100Em
	.weak_definition	__ZNKSt3__16vectorIiNS_9allocatorIiEEE14__annotate_newB8ne200100Em
	.p2align	2
__ZNKSt3__16vectorIiNS_9allocatorIiEEE14__annotate_newB8ne200100Em: ; @_ZNKSt3__16vectorIiNS_9allocatorIiEEE14__annotate_newB8ne200100Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEED2Ev ; -- Begin function _ZNSt3__114__split_bufferIiRNS_9allocatorIiEEED2Ev
	.globl	__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEED2Ev
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEED2Ev
	.p2align	2
__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEED2Ev: ; @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEED2Ev
Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception9
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	ldur	x0, [x29, #-16]
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	mov	x8, x0
	stur	x8, [x29, #-8]
	bl	__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE5clearB8ne200100Ev
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x8, [x8]
	cbz	x8, LBB114_3
	b	LBB114_1
LBB114_1:
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x8, [x0, #32]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x8, [x0]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
Ltmp261:
	bl	__ZNKSt3__114__split_bufferIiRNS_9allocatorIiEEE8capacityB8ne200100Ev
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp262:
	b	LBB114_2
LBB114_2:
	ldr	x2, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIiEEE10deallocateB8ne200100ERS2_Pim
	b	LBB114_3
LBB114_3:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB114_4:
Ltmp263:
	bl	___clang_call_terminate
Lfunc_end9:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table114:
Lexception9:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase3-Lttbaseref3
Lttbaseref3:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end9-Lcst_begin9
Lcst_begin9:
	.uleb128 Ltmp261-Lfunc_begin9           ; >> Call Site 1 <<
	.uleb128 Ltmp262-Ltmp261                ;   Call between Ltmp261 and Ltmp262
	.uleb128 Ltmp263-Lfunc_begin9           ;     jumps to Ltmp263
	.byte	1                               ;   On action: 1
Lcst_end9:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase3:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE5clearB8ne200100Ev ; -- Begin function _ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE5clearB8ne200100Ev
	.globl	__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE5clearB8ne200100Ev
	.weak_definition	__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE5clearB8ne200100Ev
	.p2align	2
__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE5clearB8ne200100Ev: ; @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE5clearB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x1, [x0, #8]
	bl	__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE17__destruct_at_endB8ne200100EPi
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__114__split_bufferIiRNS_9allocatorIiEEE8capacityB8ne200100Ev ; -- Begin function _ZNKSt3__114__split_bufferIiRNS_9allocatorIiEEE8capacityB8ne200100Ev
	.globl	__ZNKSt3__114__split_bufferIiRNS_9allocatorIiEEE8capacityB8ne200100Ev
	.weak_definition	__ZNKSt3__114__split_bufferIiRNS_9allocatorIiEEE8capacityB8ne200100Ev
	.p2align	2
__ZNKSt3__114__split_bufferIiRNS_9allocatorIiEEE8capacityB8ne200100Ev: ; @_ZNKSt3__114__split_bufferIiRNS_9allocatorIiEEE8capacityB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	ldr	x8, [x9, #24]
	ldr	x9, [x9]
	subs	x8, x8, x9
	mov	x9, #4                          ; =0x4
	sdiv	x0, x8, x9
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE17__destruct_at_endB8ne200100EPi ; -- Begin function _ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE17__destruct_at_endB8ne200100EPi
	.globl	__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE17__destruct_at_endB8ne200100EPi
	.weak_definition	__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE17__destruct_at_endB8ne200100EPi
	.p2align	2
__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE17__destruct_at_endB8ne200100EPi: ; @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE17__destruct_at_endB8ne200100EPi
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	bl	__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE17__destruct_at_endB8ne200100EPiNS_17integral_constantIbLb0EEE
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE17__destruct_at_endB8ne200100EPiNS_17integral_constantIbLb0EEE ; -- Begin function _ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE17__destruct_at_endB8ne200100EPiNS_17integral_constantIbLb0EEE
	.globl	__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE17__destruct_at_endB8ne200100EPiNS_17integral_constantIbLb0EEE
	.weak_definition	__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE17__destruct_at_endB8ne200100EPiNS_17integral_constantIbLb0EEE
	.p2align	2
__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE17__destruct_at_endB8ne200100EPiNS_17integral_constantIbLb0EEE: ; @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE17__destruct_at_endB8ne200100EPiNS_17integral_constantIbLb0EEE
Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception10
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	b	LBB118_1
LBB118_1:                               ; =>This Inner Loop Header: Depth=1
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #24]
	ldr	x9, [x9, #16]
	subs	x8, x8, x9
	b.eq	LBB118_4
	b	LBB118_2
LBB118_2:                               ;   in Loop: Header=BB118_1 Depth=1
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x9, [x8, #32]
	str	x9, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x9, [x8, #16]
	subs	x0, x9, #4
	str	x0, [x8, #16]
	bl	__ZNSt3__112__to_addressB8ne200100IiEEPT_S2_
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
Ltmp265:
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIiEEE7destroyB8ne200100IiLi0EEEvRS2_PT_
Ltmp266:
	b	LBB118_3
LBB118_3:                               ;   in Loop: Header=BB118_1 Depth=1
	b	LBB118_1
LBB118_4:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB118_5:
Ltmp267:
	bl	___clang_call_terminate
Lfunc_end10:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table118:
Lexception10:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase4-Lttbaseref4
Lttbaseref4:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end10-Lcst_begin10
Lcst_begin10:
	.uleb128 Ltmp265-Lfunc_begin10          ; >> Call Site 1 <<
	.uleb128 Ltmp266-Ltmp265                ;   Call between Ltmp265 and Ltmp266
	.uleb128 Ltmp267-Lfunc_begin10          ;     jumps to Ltmp267
	.byte	1                               ;   On action: 1
Lcst_end10:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase4:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEE6assignB8ne200100IPKiLi0EEEvT_S7_ ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE6assignB8ne200100IPKiLi0EEEvT_S7_
	.weak_definition	__ZNSt3__16vectorIiNS_9allocatorIiEEE6assignB8ne200100IPKiLi0EEEvT_S7_
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEE6assignB8ne200100IPKiLi0EEEvT_S7_: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEE6assignB8ne200100IPKiLi0EEEvT_S7_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x8, [sp, #24]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #24]
	bl	__ZNSt3__18distanceB8ne200100IPKiEENS_15iterator_traitsIT_E15difference_typeES4_S4_
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	ldr	x2, [sp, #8]                    ; 8-byte Folded Reload
	mov	x3, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE18__assign_with_sizeB8ne200100IPKiS6_EEvT_T0_l
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt16initializer_listIiE5beginB8ne200100Ev ; -- Begin function _ZNKSt16initializer_listIiE5beginB8ne200100Ev
	.globl	__ZNKSt16initializer_listIiE5beginB8ne200100Ev
	.weak_definition	__ZNKSt16initializer_listIiE5beginB8ne200100Ev
	.p2align	2
__ZNKSt16initializer_listIiE5beginB8ne200100Ev: ; @_ZNKSt16initializer_listIiE5beginB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt16initializer_listIiE3endB8ne200100Ev ; -- Begin function _ZNKSt16initializer_listIiE3endB8ne200100Ev
	.globl	__ZNKSt16initializer_listIiE3endB8ne200100Ev
	.weak_definition	__ZNKSt16initializer_listIiE3endB8ne200100Ev
	.p2align	2
__ZNKSt16initializer_listIiE3endB8ne200100Ev: ; @_ZNKSt16initializer_listIiE3endB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	ldr	x8, [x9]
	ldr	x9, [x9, #8]
	add	x0, x8, x9, lsl #2
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEE18__assign_with_sizeB8ne200100IPKiS6_EEvT_T0_l ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE18__assign_with_sizeB8ne200100IPKiS6_EEvT_T0_l
	.weak_definition	__ZNSt3__16vectorIiNS_9allocatorIiEEE18__assign_with_sizeB8ne200100IPKiS6_EEvT_T0_l
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEE18__assign_with_sizeB8ne200100IPKiS6_EEvT_T0_l: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEE18__assign_with_sizeB8ne200100IPKiS6_EEvT_T0_l
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #144
	stp	x29, x30, [sp, #128]            ; 16-byte Folded Spill
	add	x29, sp, #128
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	x3, [x29, #-32]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #40]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-32]
	stur	x8, [x29, #-40]
	ldur	x8, [x29, #-40]
	str	x8, [sp, #48]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE8capacityB8ne200100Ev
	ldr	x8, [sp, #48]                   ; 8-byte Folded Reload
	subs	x8, x8, x0
	b.hi	LBB122_5
	b	LBB122_1
LBB122_1:
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-40]
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeB8ne200100Ev
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	subs	x8, x8, x0
	b.ls	LBB122_3
	b	LBB122_2
LBB122_2:
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeB8ne200100Ev
	mov	x1, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZNSt3__14nextB8ne200100IPKiLi0EEET_S3_NS_15iterator_traitsIS3_E15difference_typeE
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	stur	x0, [x29, #-48]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-48]
	ldr	x2, [x8]
	bl	__ZNSt3__14copyB8ne200100IPKiPiEET0_T_S5_S4_
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-48]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-24]
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-40]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeB8ne200100Ev
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x1, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x2, [sp, #24]                   ; 8-byte Folded Reload
	mov	x9, x0
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	subs	x3, x8, x9
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endIPKiS6_EEvT_T0_m
	b	LBB122_4
LBB122_3:
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	ldr	x2, [x8]
	bl	__ZNSt3__16__copyB8ne200100IPKiS2_PiEENS_4pairIT_T1_EES5_T0_S6_
	mov	x8, x0
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	str	x8, [sp, #56]
	str	x1, [sp, #64]
	ldr	x8, [sp, #64]
	stur	x8, [x29, #-56]
	ldur	x1, [x29, #-56]
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE17__destruct_at_endB8ne200100EPi
	b	LBB122_4
LBB122_4:
	b	LBB122_6
LBB122_5:
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE13__vdeallocateEv
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	ldur	x1, [x29, #-40]
	bl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE11__recommendB8ne200100Em
	mov	x1, x0
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE11__vallocateB8ne200100Em
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	ldur	x3, [x29, #-40]
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endIPKiS6_EEvT_T0_m
	b	LBB122_6
LBB122_6:
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18distanceB8ne200100IPKiEENS_15iterator_traitsIT_E15difference_typeES4_S4_ ; -- Begin function _ZNSt3__18distanceB8ne200100IPKiEENS_15iterator_traitsIT_E15difference_typeES4_S4_
	.globl	__ZNSt3__18distanceB8ne200100IPKiEENS_15iterator_traitsIT_E15difference_typeES4_S4_
	.weak_definition	__ZNSt3__18distanceB8ne200100IPKiEENS_15iterator_traitsIT_E15difference_typeES4_S4_
	.p2align	2
__ZNSt3__18distanceB8ne200100IPKiEENS_15iterator_traitsIT_E15difference_typeES4_S4_: ; @_ZNSt3__18distanceB8ne200100IPKiEENS_15iterator_traitsIT_E15difference_typeES4_S4_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	bl	__ZNSt3__110__distanceB8ne200100IPKiEENS_15iterator_traitsIT_E15difference_typeES4_S4_NS_26random_access_iterator_tagE
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__14nextB8ne200100IPKiLi0EEET_S3_NS_15iterator_traitsIS3_E15difference_typeE ; -- Begin function _ZNSt3__14nextB8ne200100IPKiLi0EEET_S3_NS_15iterator_traitsIS3_E15difference_typeE
	.globl	__ZNSt3__14nextB8ne200100IPKiLi0EEET_S3_NS_15iterator_traitsIS3_E15difference_typeE
	.weak_definition	__ZNSt3__14nextB8ne200100IPKiLi0EEET_S3_NS_15iterator_traitsIS3_E15difference_typeE
	.p2align	2
__ZNSt3__14nextB8ne200100IPKiLi0EEET_S3_NS_15iterator_traitsIS3_E15difference_typeE: ; @_ZNSt3__14nextB8ne200100IPKiLi0EEET_S3_NS_15iterator_traitsIS3_E15difference_typeE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x8, x0
	add	x0, sp, #8
	str	x8, [sp, #8]
	str	x1, [sp]
	ldr	x1, [sp]
	bl	__ZNSt3__17advanceB8ne200100IPKillLi0EEEvRT_T0_
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__14copyB8ne200100IPKiPiEET0_T_S5_S4_ ; -- Begin function _ZNSt3__14copyB8ne200100IPKiPiEET0_T_S5_S4_
	.globl	__ZNSt3__14copyB8ne200100IPKiPiEET0_T_S5_S4_
	.weak_definition	__ZNSt3__14copyB8ne200100IPKiPiEET0_T_S5_S4_
	.p2align	2
__ZNSt3__14copyB8ne200100IPKiPiEET0_T_S5_S4_: ; @_ZNSt3__14copyB8ne200100IPKiPiEET0_T_S5_S4_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldr	x2, [sp, #24]
	bl	__ZNSt3__16__copyB8ne200100IPKiS2_PiEENS_4pairIT_T1_EES5_T0_S6_
	str	x0, [sp, #8]
	str	x1, [sp, #16]
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endIPKiS6_EEvT_T0_m ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endIPKiS6_EEvT_T0_m
	.weak_definition	__ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endIPKiS6_EEvT_T0_m
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endIPKiS6_EEvT_T0_m: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endIPKiS6_EEvT_T0_m
Lfunc_begin11:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception11
; %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	x3, [x29, #-32]
	ldur	x1, [x29, #-8]
	str	x1, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x2, [x29, #-32]
	add	x0, sp, #40
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC1B8ne200100ERS3_m
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	ldr	x3, [sp, #48]
Ltmp270:
	add	x0, x8, #16
	bl	__ZNSt3__130__uninitialized_allocator_copyB8ne200100INS_9allocatorIiEEPKiS4_PiEET2_RT_T0_T1_S6_
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp271:
	b	LBB126_1
LBB126_1:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	add	x0, sp, #40
	str	x8, [sp, #48]
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD1B8ne200100Ev
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB126_2:
Ltmp272:
	str	x0, [sp, #32]
	mov	x8, x1
	str	w8, [sp, #28]
	add	x0, sp, #40
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD1B8ne200100Ev
	b	LBB126_3
LBB126_3:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
Lfunc_end11:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table126:
Lexception11:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end11-Lcst_begin11
Lcst_begin11:
	.uleb128 Lfunc_begin11-Lfunc_begin11    ; >> Call Site 1 <<
	.uleb128 Ltmp270-Lfunc_begin11          ;   Call between Lfunc_begin11 and Ltmp270
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp270-Lfunc_begin11          ; >> Call Site 2 <<
	.uleb128 Ltmp271-Ltmp270                ;   Call between Ltmp270 and Ltmp271
	.uleb128 Ltmp272-Lfunc_begin11          ;     jumps to Ltmp272
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp271-Lfunc_begin11          ; >> Call Site 3 <<
	.uleb128 Lfunc_end11-Ltmp271            ;   Call between Ltmp271 and Lfunc_end11
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end11:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__16__copyB8ne200100IPKiS2_PiEENS_4pairIT_T1_EES5_T0_S6_ ; -- Begin function _ZNSt3__16__copyB8ne200100IPKiS2_PiEENS_4pairIT_T1_EES5_T0_S6_
	.globl	__ZNSt3__16__copyB8ne200100IPKiS2_PiEENS_4pairIT_T1_EES5_T0_S6_
	.weak_definition	__ZNSt3__16__copyB8ne200100IPKiS2_PiEENS_4pairIT_T1_EES5_T0_S6_
	.p2align	2
__ZNSt3__16__copyB8ne200100IPKiS2_PiEENS_4pairIT_T1_EES5_T0_S6_: ; @_ZNSt3__16__copyB8ne200100IPKiS2_PiEENS_4pairIT_T1_EES5_T0_S6_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #24]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__124__copy_move_unwrap_itersB8ne200100INS_11__copy_implEPKiS3_PiLi0EEENS_4pairIT0_T2_EES6_T1_S7_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIiNS_9allocatorIiEEE17__destruct_at_endB8ne200100EPi ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE17__destruct_at_endB8ne200100EPi
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEE17__destruct_at_endB8ne200100EPi
	.weak_definition	__ZNSt3__16vectorIiNS_9allocatorIiEEE17__destruct_at_endB8ne200100EPi
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEE17__destruct_at_endB8ne200100EPi: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEE17__destruct_at_endB8ne200100EPi
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeB8ne200100Ev
	mov	x8, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	str	x8, [sp, #8]
	ldr	x1, [sp, #16]
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE22__base_destruct_at_endB8ne200100EPi
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x1, [sp, #8]
	bl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE17__annotate_shrinkB8ne200100Em
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIiNS_9allocatorIiEEE13__vdeallocateEv ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE13__vdeallocateEv
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEE13__vdeallocateEv
	.weak_definition	__ZNSt3__16vectorIiNS_9allocatorIiEEE13__vdeallocateEv
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEE13__vdeallocateEv: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEE13__vdeallocateEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldr	x8, [x8]
	cbz	x8, LBB129_2
	b	LBB129_1
LBB129_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE5clearB8ne200100Ev
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE17__annotate_deleteB8ne200100Ev
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	add	x8, x0, #16
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x8, [x0]
	str	x8, [sp]                        ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE8capacityB8ne200100Ev
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	mov	x2, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIiEEE10deallocateB8ne200100ERS2_Pim
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8, #16]
	str	xzr, [x8, #8]
	str	xzr, [x8]
	b	LBB129_2
LBB129_2:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIiNS_9allocatorIiEEE11__vallocateB8ne200100Em ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE11__vallocateB8ne200100Em
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEE11__vallocateB8ne200100Em
	.weak_definition	__ZNSt3__16vectorIiNS_9allocatorIiEEE11__vallocateB8ne200100Em
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEE11__vallocateB8ne200100Em: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEE11__vallocateB8ne200100Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE8max_sizeB8ne200100Ev
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	subs	x8, x8, x0
	b.ls	LBB130_2
	b	LBB130_1
LBB130_1:
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8ne200100Ev
LBB130_2:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	add	x0, x8, #16
	ldur	x1, [x29, #-16]
	bl	__ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIiEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m
	mov	x8, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	str	x8, [sp, #16]
	str	x1, [sp, #24]
	ldr	x8, [sp, #16]
	str	x8, [x0]
	ldr	x8, [sp, #16]
	str	x8, [x0, #8]
	ldr	x8, [x0]
	ldr	x9, [sp, #24]
	add	x8, x8, x9, lsl #2
	str	x8, [x0, #16]
	mov	x1, #0                          ; =0x0
	bl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE14__annotate_newB8ne200100Em
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__17advanceB8ne200100IPKillLi0EEEvRT_T0_ ; -- Begin function _ZNSt3__17advanceB8ne200100IPKillLi0EEEvRT_T0_
	.globl	__ZNSt3__17advanceB8ne200100IPKillLi0EEEvRT_T0_
	.weak_definition	__ZNSt3__17advanceB8ne200100IPKillLi0EEEvRT_T0_
	.p2align	2
__ZNSt3__17advanceB8ne200100IPKillLi0EEEvRT_T0_: ; @_ZNSt3__17advanceB8ne200100IPKillLi0EEEvRT_T0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldr	x0, [sp, #16]
	bl	__ZNSt3__121__convert_to_integralB8ne200100El
	str	x0, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #8]
	bl	__ZNSt3__19__advanceB8ne200100IPKiEEvRT_NS_15iterator_traitsIS3_E15difference_typeENS_26random_access_iterator_tagE
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__121__convert_to_integralB8ne200100El ; -- Begin function _ZNSt3__121__convert_to_integralB8ne200100El
	.globl	__ZNSt3__121__convert_to_integralB8ne200100El
	.weak_definition	__ZNSt3__121__convert_to_integralB8ne200100El
	.p2align	2
__ZNSt3__121__convert_to_integralB8ne200100El: ; @_ZNSt3__121__convert_to_integralB8ne200100El
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19__advanceB8ne200100IPKiEEvRT_NS_15iterator_traitsIS3_E15difference_typeENS_26random_access_iterator_tagE ; -- Begin function _ZNSt3__19__advanceB8ne200100IPKiEEvRT_NS_15iterator_traitsIS3_E15difference_typeENS_26random_access_iterator_tagE
	.globl	__ZNSt3__19__advanceB8ne200100IPKiEEvRT_NS_15iterator_traitsIS3_E15difference_typeENS_26random_access_iterator_tagE
	.weak_definition	__ZNSt3__19__advanceB8ne200100IPKiEEvRT_NS_15iterator_traitsIS3_E15difference_typeENS_26random_access_iterator_tagE
	.p2align	2
__ZNSt3__19__advanceB8ne200100IPKiEEvRT_NS_15iterator_traitsIS3_E15difference_typeENS_26random_access_iterator_tagE: ; @_ZNSt3__19__advanceB8ne200100IPKiEEvRT_NS_15iterator_traitsIS3_E15difference_typeENS_26random_access_iterator_tagE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x10, [sp, #8]
	ldr	x9, [sp, #16]
	ldr	x8, [x9]
	add	x8, x8, x10, lsl #2
	str	x8, [x9]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__130__uninitialized_allocator_copyB8ne200100INS_9allocatorIiEEPKiS4_PiEET2_RT_T0_T1_S6_ ; -- Begin function _ZNSt3__130__uninitialized_allocator_copyB8ne200100INS_9allocatorIiEEPKiS4_PiEET2_RT_T0_T1_S6_
	.globl	__ZNSt3__130__uninitialized_allocator_copyB8ne200100INS_9allocatorIiEEPKiS4_PiEET2_RT_T0_T1_S6_
	.weak_definition	__ZNSt3__130__uninitialized_allocator_copyB8ne200100INS_9allocatorIiEEPKiS4_PiEET2_RT_T0_T1_S6_
	.p2align	2
__ZNSt3__130__uninitialized_allocator_copyB8ne200100INS_9allocatorIiEEPKiS4_PiEET2_RT_T0_T1_S6_: ; @_ZNSt3__130__uninitialized_allocator_copyB8ne200100INS_9allocatorIiEEPKiS4_PiEET2_RT_T0_T1_S6_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	x3, [x29, #-32]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	bl	__ZNSt3__114__unwrap_rangeB8ne200100IPKiS2_EENS_4pairIT0_S4_EET_S6_
	str	x0, [sp, #32]
	str	x1, [sp, #40]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldr	x8, [sp, #32]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x8, [sp, #40]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x0, [x29, #-32]
	bl	__ZNSt3__113__unwrap_iterB8ne200100IPiNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	ldr	x2, [sp, #8]                    ; 8-byte Folded Reload
	mov	x3, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__135__uninitialized_allocator_copy_implB8ne200100INS_9allocatorIiEEPKiS4_PiEET2_RT_T0_T1_S6_
	str	x0, [sp, #24]
	ldur	x0, [x29, #-32]
	ldr	x1, [sp, #24]
	bl	__ZNSt3__113__rewrap_iterB8ne200100IPiS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__unwrap_rangeB8ne200100IPKiS2_EENS_4pairIT0_S4_EET_S6_ ; -- Begin function _ZNSt3__114__unwrap_rangeB8ne200100IPKiS2_EENS_4pairIT0_S4_EET_S6_
	.globl	__ZNSt3__114__unwrap_rangeB8ne200100IPKiS2_EENS_4pairIT0_S4_EET_S6_
	.weak_definition	__ZNSt3__114__unwrap_rangeB8ne200100IPKiS2_EENS_4pairIT0_S4_EET_S6_
	.p2align	2
__ZNSt3__114__unwrap_rangeB8ne200100IPKiS2_EENS_4pairIT0_S4_EET_S6_: ; @_ZNSt3__114__unwrap_rangeB8ne200100IPKiS2_EENS_4pairIT0_S4_EET_S6_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-24]
	str	x1, [sp, #32]
	ldur	x0, [x29, #-24]
	bl	__ZNSt3__113__unwrap_iterB8ne200100IPKiNS_18__unwrap_iter_implIS2_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES6_
	add	x8, sp, #24
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	str	x0, [sp, #24]
	ldr	x0, [sp, #32]
	bl	__ZNSt3__113__unwrap_iterB8ne200100IPKiNS_18__unwrap_iter_implIS2_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES6_
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	add	x1, sp, #16
	str	x8, [sp, #16]
	bl	__ZNSt3__19make_pairB8ne200100IPKiS2_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS4_Iu7__decayIT0_EE4typeEEEOS5_OS9_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__135__uninitialized_allocator_copy_implB8ne200100INS_9allocatorIiEEPKiS4_PiEET2_RT_T0_T1_S6_ ; -- Begin function _ZNSt3__135__uninitialized_allocator_copy_implB8ne200100INS_9allocatorIiEEPKiS4_PiEET2_RT_T0_T1_S6_
	.globl	__ZNSt3__135__uninitialized_allocator_copy_implB8ne200100INS_9allocatorIiEEPKiS4_PiEET2_RT_T0_T1_S6_
	.weak_definition	__ZNSt3__135__uninitialized_allocator_copy_implB8ne200100INS_9allocatorIiEEPKiS4_PiEET2_RT_T0_T1_S6_
	.p2align	2
__ZNSt3__135__uninitialized_allocator_copy_implB8ne200100INS_9allocatorIiEEPKiS4_PiEET2_RT_T0_T1_S6_: ; @_ZNSt3__135__uninitialized_allocator_copy_implB8ne200100INS_9allocatorIiEEPKiS4_PiEET2_RT_T0_T1_S6_
Lfunc_begin12:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception12
; %bb.0:
	sub	sp, sp, #160
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x8, x3
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	sub	x3, x29, #32
	stur	x8, [x29, #-32]
	ldur	x8, [x29, #-32]
	sub	x2, x29, #40
	stur	x8, [x29, #-40]
	ldur	x1, [x29, #-8]
	add	x0, sp, #48
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	bl	__ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIiEEPiEC1B8ne200100ERS2_RS3_S6_
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	add	x8, sp, #72
	bl	__ZNSt3__122__make_exception_guardB8ne200100INS_29_AllocatorDestroyRangeReverseINS_9allocatorIiEEPiEEEENS_28__exception_guard_exceptionsIT_EES7_
	b	LBB136_1
LBB136_1:                               ; =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-16]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	b.eq	LBB136_5
	b	LBB136_2
LBB136_2:                               ;   in Loop: Header=BB136_1 Depth=1
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-32]
	bl	__ZNSt3__112__to_addressB8ne200100IiEEPT_S2_
	mov	x1, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x2, [x29, #-16]
Ltmp275:
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIiEEE9constructB8ne200100IiJRKiELi0EEEvRS2_PT_DpOT0_
Ltmp276:
	b	LBB136_3
LBB136_3:                               ;   in Loop: Header=BB136_1 Depth=1
	ldur	x8, [x29, #-16]
	add	x8, x8, #4
	stur	x8, [x29, #-16]
	ldur	x8, [x29, #-32]
	add	x8, x8, #4
	stur	x8, [x29, #-32]
	b	LBB136_1
LBB136_4:
Ltmp277:
	str	x0, [sp, #40]
	mov	x8, x1
	str	w8, [sp, #36]
	add	x0, sp, #72
	bl	__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIiEEPiEEED1B8ne200100Ev
	b	LBB136_6
LBB136_5:
	add	x0, sp, #72
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIiEEPiEEE10__completeB8ne200100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldur	x8, [x29, #-32]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIiEEPiEEED1B8ne200100Ev
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
LBB136_6:
	ldr	x0, [sp, #40]
	bl	__Unwind_Resume
Lfunc_end12:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table136:
Lexception12:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end12-Lcst_begin12
Lcst_begin12:
	.uleb128 Lfunc_begin12-Lfunc_begin12    ; >> Call Site 1 <<
	.uleb128 Ltmp275-Lfunc_begin12          ;   Call between Lfunc_begin12 and Ltmp275
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp275-Lfunc_begin12          ; >> Call Site 2 <<
	.uleb128 Ltmp276-Ltmp275                ;   Call between Ltmp275 and Ltmp276
	.uleb128 Ltmp277-Lfunc_begin12          ;     jumps to Ltmp277
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp276-Lfunc_begin12          ; >> Call Site 3 <<
	.uleb128 Lfunc_end12-Ltmp276            ;   Call between Ltmp276 and Lfunc_end12
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end12:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__113__unwrap_iterB8ne200100IPiNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_ ; -- Begin function _ZNSt3__113__unwrap_iterB8ne200100IPiNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_
	.globl	__ZNSt3__113__unwrap_iterB8ne200100IPiNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_
	.weak_definition	__ZNSt3__113__unwrap_iterB8ne200100IPiNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_
	.p2align	2
__ZNSt3__113__unwrap_iterB8ne200100IPiNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_: ; @_ZNSt3__113__unwrap_iterB8ne200100IPiNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__118__unwrap_iter_implIPiLb1EE8__unwrapB8ne200100ES1_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__113__rewrap_iterB8ne200100IPiS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_ ; -- Begin function _ZNSt3__113__rewrap_iterB8ne200100IPiS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_
	.globl	__ZNSt3__113__rewrap_iterB8ne200100IPiS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_
	.weak_definition	__ZNSt3__113__rewrap_iterB8ne200100IPiS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_
	.p2align	2
__ZNSt3__113__rewrap_iterB8ne200100IPiS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_: ; @_ZNSt3__113__rewrap_iterB8ne200100IPiS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_
Lfunc_begin13:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception13
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
Ltmp278:
	bl	__ZNSt3__118__unwrap_iter_implIPiLb1EE8__rewrapB8ne200100ES1_S1_
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp279:
	b	LBB138_1
LBB138_1:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB138_2:
Ltmp280:
	bl	___clang_call_terminate
Lfunc_end13:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table138:
Lexception13:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase5-Lttbaseref5
Lttbaseref5:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end13-Lcst_begin13
Lcst_begin13:
	.uleb128 Ltmp278-Lfunc_begin13          ; >> Call Site 1 <<
	.uleb128 Ltmp279-Ltmp278                ;   Call between Ltmp278 and Ltmp279
	.uleb128 Ltmp280-Lfunc_begin13          ;     jumps to Ltmp280
	.byte	1                               ;   On action: 1
Lcst_end13:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase5:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__19make_pairB8ne200100IPKiS2_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS4_Iu7__decayIT0_EE4typeEEEOS5_OS9_ ; -- Begin function _ZNSt3__19make_pairB8ne200100IPKiS2_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS4_Iu7__decayIT0_EE4typeEEEOS5_OS9_
	.globl	__ZNSt3__19make_pairB8ne200100IPKiS2_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS4_Iu7__decayIT0_EE4typeEEEOS5_OS9_
	.weak_definition	__ZNSt3__19make_pairB8ne200100IPKiS2_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS4_Iu7__decayIT0_EE4typeEEEOS5_OS9_
	.p2align	2
__ZNSt3__19make_pairB8ne200100IPKiS2_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS4_Iu7__decayIT0_EE4typeEEEOS5_OS9_: ; @_ZNSt3__19make_pairB8ne200100IPKiS2_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS4_Iu7__decayIT0_EE4typeEEEOS5_OS9_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x1, [sp, #8]
	ldr	x2, [sp]
	add	x0, sp, #16
	bl	__ZNSt3__14pairIPKiS2_EC1B8ne200100IS2_S2_Li0EEEOT_OT0_
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__113__unwrap_iterB8ne200100IPKiNS_18__unwrap_iter_implIS2_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES6_ ; -- Begin function _ZNSt3__113__unwrap_iterB8ne200100IPKiNS_18__unwrap_iter_implIS2_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES6_
	.globl	__ZNSt3__113__unwrap_iterB8ne200100IPKiNS_18__unwrap_iter_implIS2_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES6_
	.weak_definition	__ZNSt3__113__unwrap_iterB8ne200100IPKiNS_18__unwrap_iter_implIS2_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES6_
	.p2align	2
__ZNSt3__113__unwrap_iterB8ne200100IPKiNS_18__unwrap_iter_implIS2_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES6_: ; @_ZNSt3__113__unwrap_iterB8ne200100IPKiNS_18__unwrap_iter_implIS2_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES6_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__118__unwrap_iter_implIPKiLb1EE8__unwrapB8ne200100ES2_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__14pairIPKiS2_EC1B8ne200100IS2_S2_Li0EEEOT_OT0_ ; -- Begin function _ZNSt3__14pairIPKiS2_EC1B8ne200100IS2_S2_Li0EEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__14pairIPKiS2_EC1B8ne200100IS2_S2_Li0EEEOT_OT0_
	.p2align	2
__ZNSt3__14pairIPKiS2_EC1B8ne200100IS2_S2_Li0EEEOT_OT0_: ; @_ZNSt3__14pairIPKiS2_EC1B8ne200100IS2_S2_Li0EEEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__14pairIPKiS2_EC2B8ne200100IS2_S2_Li0EEEOT_OT0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__14pairIPKiS2_EC2B8ne200100IS2_S2_Li0EEEOT_OT0_ ; -- Begin function _ZNSt3__14pairIPKiS2_EC2B8ne200100IS2_S2_Li0EEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__14pairIPKiS2_EC2B8ne200100IS2_S2_Li0EEEOT_OT0_
	.p2align	2
__ZNSt3__14pairIPKiS2_EC2B8ne200100IS2_S2_Li0EEEOT_OT0_: ; @_ZNSt3__14pairIPKiS2_EC2B8ne200100IS2_S2_Li0EEEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #24]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	str	x8, [x0]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	str	x8, [x0, #8]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__118__unwrap_iter_implIPKiLb1EE8__unwrapB8ne200100ES2_ ; -- Begin function _ZNSt3__118__unwrap_iter_implIPKiLb1EE8__unwrapB8ne200100ES2_
	.globl	__ZNSt3__118__unwrap_iter_implIPKiLb1EE8__unwrapB8ne200100ES2_
	.weak_definition	__ZNSt3__118__unwrap_iter_implIPKiLb1EE8__unwrapB8ne200100ES2_
	.p2align	2
__ZNSt3__118__unwrap_iter_implIPKiLb1EE8__unwrapB8ne200100ES2_: ; @_ZNSt3__118__unwrap_iter_implIPKiLb1EE8__unwrapB8ne200100ES2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__112__to_addressB8ne200100IKiEEPT_S3_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112__to_addressB8ne200100IKiEEPT_S3_ ; -- Begin function _ZNSt3__112__to_addressB8ne200100IKiEEPT_S3_
	.globl	__ZNSt3__112__to_addressB8ne200100IKiEEPT_S3_
	.weak_definition	__ZNSt3__112__to_addressB8ne200100IKiEEPT_S3_
	.p2align	2
__ZNSt3__112__to_addressB8ne200100IKiEEPT_S3_: ; @_ZNSt3__112__to_addressB8ne200100IKiEEPT_S3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__122__make_exception_guardB8ne200100INS_29_AllocatorDestroyRangeReverseINS_9allocatorIiEEPiEEEENS_28__exception_guard_exceptionsIT_EES7_ ; -- Begin function _ZNSt3__122__make_exception_guardB8ne200100INS_29_AllocatorDestroyRangeReverseINS_9allocatorIiEEPiEEEENS_28__exception_guard_exceptionsIT_EES7_
	.globl	__ZNSt3__122__make_exception_guardB8ne200100INS_29_AllocatorDestroyRangeReverseINS_9allocatorIiEEPiEEEENS_28__exception_guard_exceptionsIT_EES7_
	.weak_definition	__ZNSt3__122__make_exception_guardB8ne200100INS_29_AllocatorDestroyRangeReverseINS_9allocatorIiEEPiEEEENS_28__exception_guard_exceptionsIT_EES7_
	.p2align	2
__ZNSt3__122__make_exception_guardB8ne200100INS_29_AllocatorDestroyRangeReverseINS_9allocatorIiEEPiEEEENS_28__exception_guard_exceptionsIT_EES7_: ; @_ZNSt3__122__make_exception_guardB8ne200100INS_29_AllocatorDestroyRangeReverseINS_9allocatorIiEEPiEEEENS_28__exception_guard_exceptionsIT_EES7_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	mov	x9, x0
	stur	x9, [x29, #-8]
	mov	x9, x8
	stur	x9, [x29, #-16]
	ldr	q0, [x8]
	add	x1, sp, #16
	str	q0, [sp, #16]
	ldr	x8, [x8, #16]
	str	x8, [sp, #32]
	bl	__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIiEEPiEEEC1B8ne200100ES5_
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIiEEPiEC1B8ne200100ERS2_RS3_S6_ ; -- Begin function _ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIiEEPiEC1B8ne200100ERS2_RS3_S6_
	.globl	__ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIiEEPiEC1B8ne200100ERS2_RS3_S6_
	.weak_def_can_be_hidden	__ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIiEEPiEC1B8ne200100ERS2_RS3_S6_
	.p2align	2
__ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIiEEPiEC1B8ne200100ERS2_RS3_S6_: ; @_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIiEEPiEC1B8ne200100ERS2_RS3_S6_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	str	x3, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x1, [x29, #-16]
	ldr	x2, [sp, #24]
	ldr	x3, [sp, #16]
	bl	__ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIiEEPiEC2B8ne200100ERS2_RS3_S6_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIiEEE9constructB8ne200100IiJRKiELi0EEEvRS2_PT_DpOT0_ ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIiEEE9constructB8ne200100IiJRKiELi0EEEvRS2_PT_DpOT0_
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIiEEE9constructB8ne200100IiJRKiELi0EEEvRS2_PT_DpOT0_
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIiEEE9constructB8ne200100IiJRKiELi0EEEvRS2_PT_DpOT0_: ; @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE9constructB8ne200100IiJRKiELi0EEEvRS2_PT_DpOT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__19allocatorIiE9constructB8ne200100IiJRKiEEEvPT_DpOT0_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIiEEPiEEE10__completeB8ne200100Ev ; -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIiEEPiEEE10__completeB8ne200100Ev
	.globl	__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIiEEPiEEE10__completeB8ne200100Ev
	.weak_definition	__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIiEEPiEEE10__completeB8ne200100Ev
	.p2align	2
__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIiEEPiEEE10__completeB8ne200100Ev: ; @_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIiEEPiEEE10__completeB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	mov	w8, #1                          ; =0x1
	strb	w8, [x9, #24]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIiEEPiEEED1B8ne200100Ev ; -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIiEEPiEEED1B8ne200100Ev
	.globl	__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIiEEPiEEED1B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIiEEPiEEED1B8ne200100Ev
	.p2align	2
__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIiEEPiEEED1B8ne200100Ev: ; @_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIiEEPiEEED1B8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIiEEPiEEED2B8ne200100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIiEEPiEEEC1B8ne200100ES5_ ; -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIiEEPiEEEC1B8ne200100ES5_
	.globl	__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIiEEPiEEEC1B8ne200100ES5_
	.weak_def_can_be_hidden	__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIiEEPiEEEC1B8ne200100ES5_
	.p2align	2
__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIiEEPiEEEC1B8ne200100ES5_: ; @_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIiEEPiEEEC1B8ne200100ES5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	mov	x8, x1
	str	x8, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIiEEPiEEEC2B8ne200100ES5_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIiEEPiEEEC2B8ne200100ES5_ ; -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIiEEPiEEEC2B8ne200100ES5_
	.globl	__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIiEEPiEEEC2B8ne200100ES5_
	.weak_def_can_be_hidden	__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIiEEPiEEEC2B8ne200100ES5_
	.p2align	2
__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIiEEPiEEEC2B8ne200100ES5_: ; @_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIiEEPiEEEC2B8ne200100ES5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	mov	x8, x1
	str	x8, [sp]
	ldr	x0, [sp, #8]
	ldr	q0, [x1]
	str	q0, [x0]
	ldr	x8, [x1, #16]
	str	x8, [x0, #16]
	strb	wzr, [x0, #24]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIiEEPiEC2B8ne200100ERS2_RS3_S6_ ; -- Begin function _ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIiEEPiEC2B8ne200100ERS2_RS3_S6_
	.globl	__ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIiEEPiEC2B8ne200100ERS2_RS3_S6_
	.weak_def_can_be_hidden	__ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIiEEPiEC2B8ne200100ERS2_RS3_S6_
	.p2align	2
__ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIiEEPiEC2B8ne200100ERS2_RS3_S6_: ; @_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIiEEPiEC2B8ne200100ERS2_RS3_S6_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	str	x3, [sp]
	ldr	x0, [sp, #24]
	ldr	x8, [sp, #16]
	str	x8, [x0]
	ldr	x8, [sp, #8]
	str	x8, [x0, #8]
	ldr	x8, [sp]
	str	x8, [x0, #16]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__19allocatorIiE9constructB8ne200100IiJRKiEEEvPT_DpOT0_ ; -- Begin function _ZNSt3__19allocatorIiE9constructB8ne200100IiJRKiEEEvPT_DpOT0_
	.weak_definition	__ZNSt3__19allocatorIiE9constructB8ne200100IiJRKiEEEvPT_DpOT0_
	.p2align	2
__ZNSt3__19allocatorIiE9constructB8ne200100IiJRKiEEEvPT_DpOT0_: ; @_ZNSt3__19allocatorIiE9constructB8ne200100IiJRKiEEEvPT_DpOT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x9, [sp, #16]
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	str	w8, [x9]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIiEEPiEEED2B8ne200100Ev ; -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIiEEPiEEED2B8ne200100Ev
	.globl	__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIiEEPiEEED2B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIiEEPiEEED2B8ne200100Ev
	.p2align	2
__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIiEEPiEEED2B8ne200100Ev: ; @_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIiEEPiEEED2B8ne200100Ev
Lfunc_begin14:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception14
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	mov	x9, x8
	stur	x9, [x29, #-8]
	ldrb	w8, [x8, #24]
	tbnz	w8, #0, LBB154_3
	b	LBB154_1
LBB154_1:
Ltmp287:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIiEEPiEclB8ne200100Ev
Ltmp288:
	b	LBB154_2
LBB154_2:
	b	LBB154_3
LBB154_3:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB154_4:
Ltmp289:
	bl	___clang_call_terminate
Lfunc_end14:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table154:
Lexception14:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase6-Lttbaseref6
Lttbaseref6:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end14-Lcst_begin14
Lcst_begin14:
	.uleb128 Ltmp287-Lfunc_begin14          ; >> Call Site 1 <<
	.uleb128 Ltmp288-Ltmp287                ;   Call between Ltmp287 and Ltmp288
	.uleb128 Ltmp289-Lfunc_begin14          ;     jumps to Ltmp289
	.byte	1                               ;   On action: 1
Lcst_end14:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase6:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIiEEPiEclB8ne200100Ev ; -- Begin function _ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIiEEPiEclB8ne200100Ev
	.globl	__ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIiEEPiEclB8ne200100Ev
	.weak_definition	__ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIiEEPiEclB8ne200100Ev
	.p2align	2
__ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIiEEPiEclB8ne200100Ev: ; @_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIiEEPiEclB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x9, [x8]
	str	x9, [sp, #16]                   ; 8-byte Folded Spill
	ldr	x8, [x8, #16]
	ldr	x1, [x8]
	sub	x0, x29, #24
	bl	__ZNSt3__116reverse_iteratorIPiEC1B8ne200100ES1_
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [x8, #8]
	ldr	x1, [x8]
	add	x0, sp, #24
	bl	__ZNSt3__116reverse_iteratorIPiEC1B8ne200100ES1_
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x1, [x29, #-24]
	ldur	x2, [x29, #-16]
	ldr	x3, [sp, #24]
	ldr	x4, [sp, #32]
	bl	__ZNSt3__119__allocator_destroyB8ne200100INS_9allocatorIiEENS_16reverse_iteratorIPiEES5_EEvRT_T0_T1_
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__allocator_destroyB8ne200100INS_9allocatorIiEENS_16reverse_iteratorIPiEES5_EEvRT_T0_T1_ ; -- Begin function _ZNSt3__119__allocator_destroyB8ne200100INS_9allocatorIiEENS_16reverse_iteratorIPiEES5_EEvRT_T0_T1_
	.globl	__ZNSt3__119__allocator_destroyB8ne200100INS_9allocatorIiEENS_16reverse_iteratorIPiEES5_EEvRT_T0_T1_
	.weak_definition	__ZNSt3__119__allocator_destroyB8ne200100INS_9allocatorIiEENS_16reverse_iteratorIPiEES5_EEvRT_T0_T1_
	.p2align	2
__ZNSt3__119__allocator_destroyB8ne200100INS_9allocatorIiEENS_16reverse_iteratorIPiEES5_EEvRT_T0_T1_: ; @_ZNSt3__119__allocator_destroyB8ne200100INS_9allocatorIiEENS_16reverse_iteratorIPiEES5_EEvRT_T0_T1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-8]
	str	x3, [sp, #16]
	str	x4, [sp, #24]
	str	x0, [sp, #8]
	b	LBB156_1
LBB156_1:                               ; =>This Inner Loop Header: Depth=1
	sub	x0, x29, #16
	add	x1, sp, #16
	bl	__ZNSt3__1neB8ne200100IPiS1_EEbRKNS_16reverse_iteratorIT_EERKNS2_IT0_EE
	tbz	w0, #0, LBB156_4
	b	LBB156_2
LBB156_2:                               ;   in Loop: Header=BB156_1 Depth=1
	ldr	x8, [sp, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	sub	x0, x29, #16
	bl	__ZNSt3__112__to_addressB8ne200100INS_16reverse_iteratorIPiEELi0EEEu7__decayIDTclsr19__to_address_helperIT_EE6__callclsr3stdE7declvalIRKS4_EEEEES6_
	mov	x1, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIiEEE7destroyB8ne200100IiLi0EEEvRS2_PT_
	b	LBB156_3
LBB156_3:                               ;   in Loop: Header=BB156_1 Depth=1
	sub	x0, x29, #16
	bl	__ZNSt3__116reverse_iteratorIPiEppB8ne200100Ev
	b	LBB156_1
LBB156_4:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116reverse_iteratorIPiEC1B8ne200100ES1_ ; -- Begin function _ZNSt3__116reverse_iteratorIPiEC1B8ne200100ES1_
	.globl	__ZNSt3__116reverse_iteratorIPiEC1B8ne200100ES1_
	.weak_def_can_be_hidden	__ZNSt3__116reverse_iteratorIPiEC1B8ne200100ES1_
	.p2align	2
__ZNSt3__116reverse_iteratorIPiEC1B8ne200100ES1_: ; @_ZNSt3__116reverse_iteratorIPiEC1B8ne200100ES1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__116reverse_iteratorIPiEC2B8ne200100ES1_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__1neB8ne200100IPiS1_EEbRKNS_16reverse_iteratorIT_EERKNS2_IT0_EE ; -- Begin function _ZNSt3__1neB8ne200100IPiS1_EEbRKNS_16reverse_iteratorIT_EERKNS2_IT0_EE
	.globl	__ZNSt3__1neB8ne200100IPiS1_EEbRKNS_16reverse_iteratorIT_EERKNS2_IT0_EE
	.weak_definition	__ZNSt3__1neB8ne200100IPiS1_EEbRKNS_16reverse_iteratorIT_EERKNS2_IT0_EE
	.p2align	2
__ZNSt3__1neB8ne200100IPiS1_EEbRKNS_16reverse_iteratorIT_EERKNS2_IT0_EE: ; @_ZNSt3__1neB8ne200100IPiS1_EEbRKNS_16reverse_iteratorIT_EERKNS2_IT0_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	bl	__ZNKSt3__116reverse_iteratorIPiE4baseB8ne200100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	__ZNKSt3__116reverse_iteratorIPiE4baseB8ne200100Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	subs	x8, x0, x8
	cset	w0, ne
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112__to_addressB8ne200100INS_16reverse_iteratorIPiEELi0EEEu7__decayIDTclsr19__to_address_helperIT_EE6__callclsr3stdE7declvalIRKS4_EEEEES6_ ; -- Begin function _ZNSt3__112__to_addressB8ne200100INS_16reverse_iteratorIPiEELi0EEEu7__decayIDTclsr19__to_address_helperIT_EE6__callclsr3stdE7declvalIRKS4_EEEEES6_
	.globl	__ZNSt3__112__to_addressB8ne200100INS_16reverse_iteratorIPiEELi0EEEu7__decayIDTclsr19__to_address_helperIT_EE6__callclsr3stdE7declvalIRKS4_EEEEES6_
	.weak_definition	__ZNSt3__112__to_addressB8ne200100INS_16reverse_iteratorIPiEELi0EEEu7__decayIDTclsr19__to_address_helperIT_EE6__callclsr3stdE7declvalIRKS4_EEEEES6_
	.p2align	2
__ZNSt3__112__to_addressB8ne200100INS_16reverse_iteratorIPiEELi0EEEu7__decayIDTclsr19__to_address_helperIT_EE6__callclsr3stdE7declvalIRKS4_EEEEES6_: ; @_ZNSt3__112__to_addressB8ne200100INS_16reverse_iteratorIPiEELi0EEEu7__decayIDTclsr19__to_address_helperIT_EE6__callclsr3stdE7declvalIRKS4_EEEEES6_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__119__to_address_helperINS_16reverse_iteratorIPiEEvE6__callB8ne200100ERKS3_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116reverse_iteratorIPiEppB8ne200100Ev ; -- Begin function _ZNSt3__116reverse_iteratorIPiEppB8ne200100Ev
	.globl	__ZNSt3__116reverse_iteratorIPiEppB8ne200100Ev
	.weak_definition	__ZNSt3__116reverse_iteratorIPiEppB8ne200100Ev
	.p2align	2
__ZNSt3__116reverse_iteratorIPiEppB8ne200100Ev: ; @_ZNSt3__116reverse_iteratorIPiEppB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x8, [x0, #8]
	subs	x8, x8, #4
	str	x8, [x0, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__116reverse_iteratorIPiE4baseB8ne200100Ev ; -- Begin function _ZNKSt3__116reverse_iteratorIPiE4baseB8ne200100Ev
	.globl	__ZNKSt3__116reverse_iteratorIPiE4baseB8ne200100Ev
	.weak_definition	__ZNKSt3__116reverse_iteratorIPiE4baseB8ne200100Ev
	.p2align	2
__ZNKSt3__116reverse_iteratorIPiE4baseB8ne200100Ev: ; @_ZNKSt3__116reverse_iteratorIPiE4baseB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__to_address_helperINS_16reverse_iteratorIPiEEvE6__callB8ne200100ERKS3_ ; -- Begin function _ZNSt3__119__to_address_helperINS_16reverse_iteratorIPiEEvE6__callB8ne200100ERKS3_
	.globl	__ZNSt3__119__to_address_helperINS_16reverse_iteratorIPiEEvE6__callB8ne200100ERKS3_
	.weak_definition	__ZNSt3__119__to_address_helperINS_16reverse_iteratorIPiEEvE6__callB8ne200100ERKS3_
	.p2align	2
__ZNSt3__119__to_address_helperINS_16reverse_iteratorIPiEEvE6__callB8ne200100ERKS3_: ; @_ZNSt3__119__to_address_helperINS_16reverse_iteratorIPiEEvE6__callB8ne200100ERKS3_
Lfunc_begin15:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception15
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
Ltmp292:
	bl	__ZNKSt3__116reverse_iteratorIPiEptB8ne200100Ev
	str	x0, [sp]                        ; 8-byte Folded Spill
Ltmp293:
	b	LBB162_1
LBB162_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZNSt3__112__to_addressB8ne200100IiEEPT_S2_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
LBB162_2:
Ltmp294:
	bl	___clang_call_terminate
Lfunc_end15:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table162:
Lexception15:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase7-Lttbaseref7
Lttbaseref7:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end15-Lcst_begin15
Lcst_begin15:
	.uleb128 Ltmp292-Lfunc_begin15          ; >> Call Site 1 <<
	.uleb128 Ltmp293-Ltmp292                ;   Call between Ltmp292 and Ltmp293
	.uleb128 Ltmp294-Lfunc_begin15          ;     jumps to Ltmp294
	.byte	1                               ;   On action: 1
Lcst_end15:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase7:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNKSt3__116reverse_iteratorIPiEptB8ne200100Ev ; -- Begin function _ZNKSt3__116reverse_iteratorIPiEptB8ne200100Ev
	.globl	__ZNKSt3__116reverse_iteratorIPiEptB8ne200100Ev
	.weak_definition	__ZNKSt3__116reverse_iteratorIPiEptB8ne200100Ev
	.p2align	2
__ZNKSt3__116reverse_iteratorIPiEptB8ne200100Ev: ; @_ZNKSt3__116reverse_iteratorIPiEptB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__116reverse_iteratorIPiEdeB8ne200100Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__116reverse_iteratorIPiEdeB8ne200100Ev ; -- Begin function _ZNKSt3__116reverse_iteratorIPiEdeB8ne200100Ev
	.globl	__ZNKSt3__116reverse_iteratorIPiEdeB8ne200100Ev
	.weak_definition	__ZNKSt3__116reverse_iteratorIPiEdeB8ne200100Ev
	.p2align	2
__ZNKSt3__116reverse_iteratorIPiEdeB8ne200100Ev: ; @_ZNKSt3__116reverse_iteratorIPiEdeB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	str	x8, [sp]
	ldr	x8, [sp]
	subs	x0, x8, #4
	str	x0, [sp]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116reverse_iteratorIPiEC2B8ne200100ES1_ ; -- Begin function _ZNSt3__116reverse_iteratorIPiEC2B8ne200100ES1_
	.globl	__ZNSt3__116reverse_iteratorIPiEC2B8ne200100ES1_
	.weak_def_can_be_hidden	__ZNSt3__116reverse_iteratorIPiEC2B8ne200100ES1_
	.p2align	2
__ZNSt3__116reverse_iteratorIPiEC2B8ne200100ES1_: ; @_ZNSt3__116reverse_iteratorIPiEC2B8ne200100ES1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x8, [sp]
	str	x8, [x0]
	ldr	x8, [sp]
	str	x8, [x0, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__118__unwrap_iter_implIPiLb1EE8__unwrapB8ne200100ES1_ ; -- Begin function _ZNSt3__118__unwrap_iter_implIPiLb1EE8__unwrapB8ne200100ES1_
	.globl	__ZNSt3__118__unwrap_iter_implIPiLb1EE8__unwrapB8ne200100ES1_
	.weak_definition	__ZNSt3__118__unwrap_iter_implIPiLb1EE8__unwrapB8ne200100ES1_
	.p2align	2
__ZNSt3__118__unwrap_iter_implIPiLb1EE8__unwrapB8ne200100ES1_: ; @_ZNSt3__118__unwrap_iter_implIPiLb1EE8__unwrapB8ne200100ES1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__112__to_addressB8ne200100IiEEPT_S2_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__118__unwrap_iter_implIPiLb1EE8__rewrapB8ne200100ES1_S1_ ; -- Begin function _ZNSt3__118__unwrap_iter_implIPiLb1EE8__rewrapB8ne200100ES1_S1_
	.globl	__ZNSt3__118__unwrap_iter_implIPiLb1EE8__rewrapB8ne200100ES1_S1_
	.weak_definition	__ZNSt3__118__unwrap_iter_implIPiLb1EE8__rewrapB8ne200100ES1_S1_
	.p2align	2
__ZNSt3__118__unwrap_iter_implIPiLb1EE8__rewrapB8ne200100ES1_S1_: ; @_ZNSt3__118__unwrap_iter_implIPiLb1EE8__rewrapB8ne200100ES1_S1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x8, [sp, #16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldur	x0, [x29, #-8]
	bl	__ZNSt3__112__to_addressB8ne200100IiEEPT_S2_
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	subs	x9, x9, x0
	mov	x10, #4                         ; =0x4
	sdiv	x9, x9, x10
	add	x0, x8, x9, lsl #2
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__124__copy_move_unwrap_itersB8ne200100INS_11__copy_implEPKiS3_PiLi0EEENS_4pairIT0_T2_EES6_T1_S7_ ; -- Begin function _ZNSt3__124__copy_move_unwrap_itersB8ne200100INS_11__copy_implEPKiS3_PiLi0EEENS_4pairIT0_T2_EES6_T1_S7_
	.globl	__ZNSt3__124__copy_move_unwrap_itersB8ne200100INS_11__copy_implEPKiS3_PiLi0EEENS_4pairIT0_T2_EES6_T1_S7_
	.weak_definition	__ZNSt3__124__copy_move_unwrap_itersB8ne200100INS_11__copy_implEPKiS3_PiLi0EEENS_4pairIT0_T2_EES6_T1_S7_
	.p2align	2
__ZNSt3__124__copy_move_unwrap_itersB8ne200100INS_11__copy_implEPKiS3_PiLi0EEENS_4pairIT0_T2_EES6_T1_S7_: ; @_ZNSt3__124__copy_move_unwrap_itersB8ne200100INS_11__copy_implEPKiS3_PiLi0EEENS_4pairIT0_T2_EES6_T1_S7_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #144
	stp	x29, x30, [sp, #128]            ; 16-byte Folded Spill
	add	x29, sp, #128
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-24]
	stur	x1, [x29, #-32]
	stur	x2, [x29, #-40]
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-32]
	bl	__ZNSt3__114__unwrap_rangeB8ne200100IPKiS2_EENS_4pairIT0_S4_EET_S6_
	stur	x0, [x29, #-56]
	stur	x1, [x29, #-48]
	ldur	x8, [x29, #-56]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x8, [x29, #-48]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-40]
	bl	__ZNSt3__113__unwrap_iterB8ne200100IPiNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x2, [sp, #16]                   ; 8-byte Folded Reload
	mov	x3, x0
	add	x0, sp, #55
	bl	__ZNKSt3__111__copy_implclB8ne200100IKiiLi0EEENS_4pairIPT_PT0_EES5_S5_S7_
	str	x0, [sp, #56]
	str	x1, [sp, #64]
	ldur	x0, [x29, #-24]
	ldr	x1, [sp, #56]
	bl	__ZNSt3__114__rewrap_rangeB8ne200100IPKiS2_EET_S3_T0_
	add	x8, sp, #40
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	str	x0, [sp, #40]
	ldur	x0, [x29, #-40]
	ldr	x1, [sp, #64]
	bl	__ZNSt3__113__rewrap_iterB8ne200100IPiS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	add	x1, sp, #32
	str	x8, [sp, #32]
	bl	__ZNSt3__19make_pairB8ne200100IPKiPiEENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS5_Iu7__decayIT0_EE4typeEEEOS6_OSA_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__111__copy_implclB8ne200100IKiiLi0EEENS_4pairIPT_PT0_EES5_S5_S7_ ; -- Begin function _ZNKSt3__111__copy_implclB8ne200100IKiiLi0EEENS_4pairIPT_PT0_EES5_S5_S7_
	.globl	__ZNKSt3__111__copy_implclB8ne200100IKiiLi0EEENS_4pairIPT_PT0_EES5_S5_S7_
	.weak_definition	__ZNKSt3__111__copy_implclB8ne200100IKiiLi0EEENS_4pairIPT_PT0_EES5_S5_S7_
	.p2align	2
__ZNKSt3__111__copy_implclB8ne200100IKiiLi0EEENS_4pairIPT_PT0_EES5_S5_S7_: ; @_ZNKSt3__111__copy_implclB8ne200100IKiiLi0EEENS_4pairIPT_PT0_EES5_S5_S7_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	str	x3, [sp]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	ldr	x2, [sp]
	bl	__ZNSt3__119__copy_trivial_implB8ne200100IKiiEENS_4pairIPT_PT0_EES4_S4_S6_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19make_pairB8ne200100IPKiPiEENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS5_Iu7__decayIT0_EE4typeEEEOS6_OSA_ ; -- Begin function _ZNSt3__19make_pairB8ne200100IPKiPiEENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS5_Iu7__decayIT0_EE4typeEEEOS6_OSA_
	.globl	__ZNSt3__19make_pairB8ne200100IPKiPiEENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS5_Iu7__decayIT0_EE4typeEEEOS6_OSA_
	.weak_definition	__ZNSt3__19make_pairB8ne200100IPKiPiEENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS5_Iu7__decayIT0_EE4typeEEEOS6_OSA_
	.p2align	2
__ZNSt3__19make_pairB8ne200100IPKiPiEENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS5_Iu7__decayIT0_EE4typeEEEOS6_OSA_: ; @_ZNSt3__19make_pairB8ne200100IPKiPiEENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS5_Iu7__decayIT0_EE4typeEEEOS6_OSA_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x1, [sp, #8]
	ldr	x2, [sp]
	add	x0, sp, #16
	bl	__ZNSt3__14pairIPKiPiEC1B8ne200100IS2_S3_Li0EEEOT_OT0_
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__rewrap_rangeB8ne200100IPKiS2_EET_S3_T0_ ; -- Begin function _ZNSt3__114__rewrap_rangeB8ne200100IPKiS2_EET_S3_T0_
	.globl	__ZNSt3__114__rewrap_rangeB8ne200100IPKiS2_EET_S3_T0_
	.weak_definition	__ZNSt3__114__rewrap_rangeB8ne200100IPKiS2_EET_S3_T0_
	.p2align	2
__ZNSt3__114__rewrap_rangeB8ne200100IPKiS2_EET_S3_T0_: ; @_ZNSt3__114__rewrap_rangeB8ne200100IPKiS2_EET_S3_T0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNSt3__113__rewrap_iterB8ne200100IPKiS2_NS_18__unwrap_iter_implIS2_Lb1EEEEET_S5_T0_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__copy_trivial_implB8ne200100IKiiEENS_4pairIPT_PT0_EES4_S4_S6_ ; -- Begin function _ZNSt3__119__copy_trivial_implB8ne200100IKiiEENS_4pairIPT_PT0_EES4_S4_S6_
	.globl	__ZNSt3__119__copy_trivial_implB8ne200100IKiiEENS_4pairIPT_PT0_EES4_S4_S6_
	.weak_definition	__ZNSt3__119__copy_trivial_implB8ne200100IKiiEENS_4pairIPT_PT0_EES4_S4_S6_
	.p2align	2
__ZNSt3__119__copy_trivial_implB8ne200100IKiiEENS_4pairIPT_PT0_EES4_S4_S6_: ; @_ZNSt3__119__copy_trivial_implB8ne200100IKiiEENS_4pairIPT_PT0_EES4_S4_S6_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-24]
	add	x8, sp, #32
	str	x8, [sp]                        ; 8-byte Folded Spill
	str	x1, [sp, #32]
	str	x2, [sp, #24]
	ldr	x8, [sp, #32]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	mov	x9, #4                          ; =0x4
	sdiv	x8, x8, x9
	str	x8, [sp, #16]
	ldr	x0, [sp, #24]
	ldur	x1, [x29, #-24]
	ldr	x2, [sp, #16]
	bl	__ZNSt3__119__constexpr_memmoveB8ne200100IiKiLi0EEEPT_S3_PT0_NS_15__element_countE
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #16]
	add	x8, x8, x9, lsl #2
	add	x1, sp, #8
	str	x8, [sp, #8]
	bl	__ZNSt3__19make_pairB8ne200100IRPKiPiEENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS6_Iu7__decayIT0_EE4typeEEEOS7_OSB_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__constexpr_memmoveB8ne200100IiKiLi0EEEPT_S3_PT0_NS_15__element_countE ; -- Begin function _ZNSt3__119__constexpr_memmoveB8ne200100IiKiLi0EEEPT_S3_PT0_NS_15__element_countE
	.globl	__ZNSt3__119__constexpr_memmoveB8ne200100IiKiLi0EEEPT_S3_PT0_NS_15__element_countE
	.weak_definition	__ZNSt3__119__constexpr_memmoveB8ne200100IiKiLi0EEEPT_S3_PT0_NS_15__element_countE
	.p2align	2
__ZNSt3__119__constexpr_memmoveB8ne200100IiKiLi0EEEPT_S3_PT0_NS_15__element_countE: ; @_ZNSt3__119__constexpr_memmoveB8ne200100IiKiLi0EEEPT_S3_PT0_NS_15__element_countE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x8, [sp, #8]
	str	x8, [sp]
	ldr	x8, [sp]
	subs	x8, x8, #0
	b.ls	LBB173_2
	b	LBB173_1
LBB173_1:
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x8, [sp]
	subs	x8, x8, #1
	lsl	x8, x8, #2
	add	x2, x8, #4
	bl	_memmove
	b	LBB173_2
LBB173_2:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19make_pairB8ne200100IRPKiPiEENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS6_Iu7__decayIT0_EE4typeEEEOS7_OSB_ ; -- Begin function _ZNSt3__19make_pairB8ne200100IRPKiPiEENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS6_Iu7__decayIT0_EE4typeEEEOS7_OSB_
	.globl	__ZNSt3__19make_pairB8ne200100IRPKiPiEENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS6_Iu7__decayIT0_EE4typeEEEOS7_OSB_
	.weak_definition	__ZNSt3__19make_pairB8ne200100IRPKiPiEENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS6_Iu7__decayIT0_EE4typeEEEOS7_OSB_
	.p2align	2
__ZNSt3__19make_pairB8ne200100IRPKiPiEENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS6_Iu7__decayIT0_EE4typeEEEOS7_OSB_: ; @_ZNSt3__19make_pairB8ne200100IRPKiPiEENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS6_Iu7__decayIT0_EE4typeEEEOS7_OSB_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x1, [sp, #8]
	ldr	x2, [sp]
	add	x0, sp, #16
	bl	__ZNSt3__14pairIPKiPiEC1B8ne200100IRS2_S3_Li0EEEOT_OT0_
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__14pairIPKiPiEC1B8ne200100IRS2_S3_Li0EEEOT_OT0_ ; -- Begin function _ZNSt3__14pairIPKiPiEC1B8ne200100IRS2_S3_Li0EEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__14pairIPKiPiEC1B8ne200100IRS2_S3_Li0EEEOT_OT0_
	.p2align	2
__ZNSt3__14pairIPKiPiEC1B8ne200100IRS2_S3_Li0EEEOT_OT0_: ; @_ZNSt3__14pairIPKiPiEC1B8ne200100IRS2_S3_Li0EEEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__14pairIPKiPiEC2B8ne200100IRS2_S3_Li0EEEOT_OT0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__14pairIPKiPiEC2B8ne200100IRS2_S3_Li0EEEOT_OT0_ ; -- Begin function _ZNSt3__14pairIPKiPiEC2B8ne200100IRS2_S3_Li0EEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__14pairIPKiPiEC2B8ne200100IRS2_S3_Li0EEEOT_OT0_
	.p2align	2
__ZNSt3__14pairIPKiPiEC2B8ne200100IRS2_S3_Li0EEEOT_OT0_: ; @_ZNSt3__14pairIPKiPiEC2B8ne200100IRS2_S3_Li0EEEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #24]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	str	x8, [x0]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	str	x8, [x0, #8]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__14pairIPKiPiEC1B8ne200100IS2_S3_Li0EEEOT_OT0_ ; -- Begin function _ZNSt3__14pairIPKiPiEC1B8ne200100IS2_S3_Li0EEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__14pairIPKiPiEC1B8ne200100IS2_S3_Li0EEEOT_OT0_
	.p2align	2
__ZNSt3__14pairIPKiPiEC1B8ne200100IS2_S3_Li0EEEOT_OT0_: ; @_ZNSt3__14pairIPKiPiEC1B8ne200100IS2_S3_Li0EEEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__14pairIPKiPiEC2B8ne200100IS2_S3_Li0EEEOT_OT0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__14pairIPKiPiEC2B8ne200100IS2_S3_Li0EEEOT_OT0_ ; -- Begin function _ZNSt3__14pairIPKiPiEC2B8ne200100IS2_S3_Li0EEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__14pairIPKiPiEC2B8ne200100IS2_S3_Li0EEEOT_OT0_
	.p2align	2
__ZNSt3__14pairIPKiPiEC2B8ne200100IS2_S3_Li0EEEOT_OT0_: ; @_ZNSt3__14pairIPKiPiEC2B8ne200100IS2_S3_Li0EEEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #24]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	str	x8, [x0]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	str	x8, [x0, #8]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__113__rewrap_iterB8ne200100IPKiS2_NS_18__unwrap_iter_implIS2_Lb1EEEEET_S5_T0_ ; -- Begin function _ZNSt3__113__rewrap_iterB8ne200100IPKiS2_NS_18__unwrap_iter_implIS2_Lb1EEEEET_S5_T0_
	.globl	__ZNSt3__113__rewrap_iterB8ne200100IPKiS2_NS_18__unwrap_iter_implIS2_Lb1EEEEET_S5_T0_
	.weak_definition	__ZNSt3__113__rewrap_iterB8ne200100IPKiS2_NS_18__unwrap_iter_implIS2_Lb1EEEEET_S5_T0_
	.p2align	2
__ZNSt3__113__rewrap_iterB8ne200100IPKiS2_NS_18__unwrap_iter_implIS2_Lb1EEEEET_S5_T0_: ; @_ZNSt3__113__rewrap_iterB8ne200100IPKiS2_NS_18__unwrap_iter_implIS2_Lb1EEEEET_S5_T0_
Lfunc_begin16:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception16
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
Ltmp299:
	bl	__ZNSt3__118__unwrap_iter_implIPKiLb1EE8__rewrapB8ne200100ES2_S2_
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp300:
	b	LBB179_1
LBB179_1:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB179_2:
Ltmp301:
	bl	___clang_call_terminate
Lfunc_end16:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table179:
Lexception16:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase8-Lttbaseref8
Lttbaseref8:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end16-Lcst_begin16
Lcst_begin16:
	.uleb128 Ltmp299-Lfunc_begin16          ; >> Call Site 1 <<
	.uleb128 Ltmp300-Ltmp299                ;   Call between Ltmp299 and Ltmp300
	.uleb128 Ltmp301-Lfunc_begin16          ;     jumps to Ltmp301
	.byte	1                               ;   On action: 1
Lcst_end16:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase8:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__118__unwrap_iter_implIPKiLb1EE8__rewrapB8ne200100ES2_S2_ ; -- Begin function _ZNSt3__118__unwrap_iter_implIPKiLb1EE8__rewrapB8ne200100ES2_S2_
	.globl	__ZNSt3__118__unwrap_iter_implIPKiLb1EE8__rewrapB8ne200100ES2_S2_
	.weak_definition	__ZNSt3__118__unwrap_iter_implIPKiLb1EE8__rewrapB8ne200100ES2_S2_
	.p2align	2
__ZNSt3__118__unwrap_iter_implIPKiLb1EE8__rewrapB8ne200100ES2_S2_: ; @_ZNSt3__118__unwrap_iter_implIPKiLb1EE8__rewrapB8ne200100ES2_S2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x8, [sp, #16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldur	x0, [x29, #-8]
	bl	__ZNSt3__112__to_addressB8ne200100IKiEEPT_S3_
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	subs	x9, x9, x0
	mov	x10, #4                         ; =0x4
	sdiv	x9, x9, x10
	add	x0, x8, x9, lsl #2
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__110__distanceB8ne200100IPKiEENS_15iterator_traitsIT_E15difference_typeES4_S4_NS_26random_access_iterator_tagE ; -- Begin function _ZNSt3__110__distanceB8ne200100IPKiEENS_15iterator_traitsIT_E15difference_typeES4_S4_NS_26random_access_iterator_tagE
	.globl	__ZNSt3__110__distanceB8ne200100IPKiEENS_15iterator_traitsIT_E15difference_typeES4_S4_NS_26random_access_iterator_tagE
	.weak_definition	__ZNSt3__110__distanceB8ne200100IPKiEENS_15iterator_traitsIT_E15difference_typeES4_S4_NS_26random_access_iterator_tagE
	.p2align	2
__ZNSt3__110__distanceB8ne200100IPKiEENS_15iterator_traitsIT_E15difference_typeES4_S4_NS_26random_access_iterator_tagE: ; @_ZNSt3__110__distanceB8ne200100IPKiEENS_15iterator_traitsIT_E15difference_typeES4_S4_NS_26random_access_iterator_tagE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #16]
	subs	x8, x8, x9
	mov	x9, #4                          ; =0x4
	sdiv	x0, x8, x9
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEC2B8ne200100Ej ; -- Begin function _ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEC2B8ne200100Ej
	.globl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEC2B8ne200100Ej
	.weak_def_can_be_hidden	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEC2B8ne200100Ej
	.p2align	2
__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEC2B8ne200100Ej: ; @_ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEC2B8ne200100Ej
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	w1, [x29, #-12]
	bl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE4seedEj
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE4seedEj ; -- Begin function _ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE4seedEj
	.globl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE4seedEj
	.weak_definition	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE4seedEj
	.p2align	2
__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE4seedEj: ; @_ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE4seedEj
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	ldur	x9, [x29, #-8]
	str	x9, [sp, #16]                   ; 8-byte Folded Spill
	ldur	w8, [x29, #-12]
	mov	w10, #-1                        ; =0xffffffff
	and	w8, w8, w10
	str	w8, [x9]
	mov	x8, #1                          ; =0x1
	str	x8, [sp, #24]
	b	LBB183_1
LBB183_1:                               ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #24]
	subs	x8, x8, #624
	b.hs	LBB183_4
	b	LBB183_2
LBB183_2:                               ;   in Loop: Header=BB183_1 Depth=1
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x9, [sp, #24]
	subs	x9, x9, #1
	ldr	w9, [x8, x9, lsl #2]
	str	w9, [sp, #12]                   ; 4-byte Folded Spill
	ldr	x9, [sp, #24]
	subs	x9, x9, #1
	ldr	w0, [x8, x9, lsl #2]
	bl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB8ne200100ILm30ELi0EEEjj
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	eor	w10, w8, w0
	mov	w8, #35173                      ; =0x8965
	movk	w8, #27655, lsl #16
	mul	w8, w8, w10
	mov	w8, w8
                                        ; kill: def $x8 killed $w8
	ldr	x10, [sp, #24]
	add	x8, x8, x10
                                        ; kill: def $w8 killed $w8 killed $x8
	mov	w8, w8
                                        ; kill: def $x8 killed $w8
	ldr	x10, [sp, #24]
                                        ; kill: def $w8 killed $w8 killed $x8
	str	w8, [x9, x10, lsl #2]
	b	LBB183_3
LBB183_3:                               ;   in Loop: Header=BB183_1 Depth=1
	ldr	x8, [sp, #24]
	add	x8, x8, #1
	str	x8, [sp, #24]
	b	LBB183_1
LBB183_4:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	str	xzr, [x8, #2496]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB8ne200100ILm30ELi0EEEjj ; -- Begin function _ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB8ne200100ILm30ELi0EEEjj
	.weak_definition	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB8ne200100ILm30ELi0EEEjj
	.p2align	2
__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB8ne200100ILm30ELi0EEEjj: ; @_ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB8ne200100ILm30ELi0EEEjj
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, #12]
	ldr	w8, [sp, #12]
	lsr	w0, w8, #30
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne200100Ev ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne200100Ev
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne200100Ev
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne200100Ev: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	str	xzr, [x0]
	str	xzr, [x0, #8]
	str	xzr, [x0, #16]
	bl	__ZNSt3__19allocatorIcEC1B8ne200100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	mov	x1, #0                          ; =0x0
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB8ne200100Em
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB8ne200100Em ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB8ne200100Em
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB8ne200100Em
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB8ne200100Em
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB8ne200100Em: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB8ne200100Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2B8ne200100Ev ; -- Begin function _ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2B8ne200100Ev
	.globl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2B8ne200100Ev
	.p2align	2
__ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2B8ne200100Ev: ; @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2B8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__18ios_baseC2B8ne200100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	adrp	x8, __ZTVNSt3__19basic_iosIcNS_11char_traitsIcEEEE@GOTPAGE
	ldr	x8, [x8, __ZTVNSt3__19basic_iosIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2B8ne200100EPNS_15basic_streambufIcS2_EE ; -- Begin function _ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2B8ne200100EPNS_15basic_streambufIcS2_EE
	.globl	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2B8ne200100EPNS_15basic_streambufIcS2_EE
	.weak_def_can_be_hidden	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2B8ne200100EPNS_15basic_streambufIcS2_EE
	.p2align	2
__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2B8ne200100EPNS_15basic_streambufIcS2_EE: ; @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2B8ne200100EPNS_15basic_streambufIcS2_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x8, [x29, #-8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x9, [sp, #16]
	ldr	x10, [x9]
	str	x10, [x8]
	ldr	x9, [x9, #8]
	ldr	x10, [x8]
	ldur	x10, [x10, #-24]
	str	x9, [x8, x10]
	str	xzr, [x8, #8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	ldr	x1, [sp, #8]
	add	x0, x8, x9
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB8ne200100EPNS_15basic_streambufIcS2_EE
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne200100Ej ; -- Begin function _ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne200100Ej
	.globl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne200100Ej
	.weak_definition	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne200100Ej
	.p2align	2
__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne200100Ej: ; @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne200100Ej
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	x0, [sp, #8]
	ldr	w1, [sp, #4]
	bl	__ZNSt3__18ios_base8setstateB8ne200100Ej
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18ios_baseC2B8ne200100Ev ; -- Begin function _ZNSt3__18ios_baseC2B8ne200100Ev
	.globl	__ZNSt3__18ios_baseC2B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__18ios_baseC2B8ne200100Ev
	.p2align	2
__ZNSt3__18ios_baseC2B8ne200100Ev:      ; @_ZNSt3__18ios_baseC2B8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	adrp	x8, __ZTVNSt3__18ios_baseE@GOTPAGE
	ldr	x8, [x8, __ZTVNSt3__18ios_baseE@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
                                        ; kill: def $x8 killed $xzr
	str	xzr, [x0, #48]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB8ne200100EPNS_15basic_streambufIcS2_EE ; -- Begin function _ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB8ne200100EPNS_15basic_streambufIcS2_EE
	.globl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB8ne200100EPNS_15basic_streambufIcS2_EE
	.weak_definition	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB8ne200100EPNS_15basic_streambufIcS2_EE
	.p2align	2
__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB8ne200100EPNS_15basic_streambufIcS2_EE: ; @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB8ne200100EPNS_15basic_streambufIcS2_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__18ios_base4initEPv
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8, #136]
	add	x0, x8, #144
	bl	__ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEE6__initB8ne200100Ev
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEE6__initB8ne200100Ev ; -- Begin function _ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEE6__initB8ne200100Ev
	.globl	__ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEE6__initB8ne200100Ev
	.weak_definition	__ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEE6__initB8ne200100Ev
	.p2align	2
__ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEE6__initB8ne200100Ev: ; @_ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEE6__initB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__111char_traitsIcE3eofB8ne200100Ev
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	str	w0, [x8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__111char_traitsIcE3eofB8ne200100Ev ; -- Begin function _ZNSt3__111char_traitsIcE3eofB8ne200100Ev
	.globl	__ZNSt3__111char_traitsIcE3eofB8ne200100Ev
	.weak_definition	__ZNSt3__111char_traitsIcE3eofB8ne200100Ev
	.p2align	2
__ZNSt3__111char_traitsIcE3eofB8ne200100Ev: ; @_ZNSt3__111char_traitsIcE3eofB8ne200100Ev
	.cfi_startproc
; %bb.0:
	mov	w0, #-1                         ; =0xffffffff
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18ios_base8setstateB8ne200100Ej ; -- Begin function _ZNSt3__18ios_base8setstateB8ne200100Ej
	.globl	__ZNSt3__18ios_base8setstateB8ne200100Ej
	.weak_definition	__ZNSt3__18ios_base8setstateB8ne200100Ej
	.p2align	2
__ZNSt3__18ios_base8setstateB8ne200100Ej: ; @_ZNSt3__18ios_base8setstateB8ne200100Ej
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	x0, [sp, #8]
	ldr	w8, [x0, #32]
	ldr	w9, [sp, #4]
	orr	w1, w8, w9
	bl	__ZNSt3__18ios_base5clearEj
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_ ; -- Begin function _ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
	.globl	__ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
	.weak_definition	__ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
	.p2align	2
__ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_: ; @_ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
Lfunc_begin17:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception17
; %bb.0:
	sub	sp, sp, #128
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	sturb	w2, [x29, #-17]
	stur	wzr, [x29, #-24]
	ldur	x1, [x29, #-8]
	sub	x0, x29, #25
	str	x0, [sp, #40]                   ; 8-byte Folded Spill
	mov	w8, #1                          ; =0x1
	and	w2, w8, #0x1
	bl	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE6sentryC1ERS3_b
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__113basic_istreamIcNS_11char_traitsIcEEE6sentrycvbB8ne200100Ev
	tbz	w0, #0, LBB195_25
	b	LBB195_1
LBB195_1:
	ldur	x0, [x29, #-16]
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5clearB8ne200100Ev
	stur	xzr, [x29, #-40]
	b	LBB195_2
LBB195_2:                               ; =>This Inner Loop Header: Depth=1
	b	LBB195_3
LBB195_3:                               ;   in Loop: Header=BB195_2 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp306:
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne200100Ev
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
Ltmp307:
	b	LBB195_4
LBB195_4:                               ;   in Loop: Header=BB195_2 Depth=1
Ltmp308:
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6sbumpcB8ne200100Ev
	str	w0, [sp, #28]                   ; 4-byte Folded Spill
Ltmp309:
	b	LBB195_5
LBB195_5:                               ;   in Loop: Header=BB195_2 Depth=1
	ldr	w8, [sp, #28]                   ; 4-byte Folded Reload
	stur	w8, [x29, #-44]
	ldur	w8, [x29, #-44]
	str	w8, [sp, #24]                   ; 4-byte Folded Spill
	bl	__ZNSt3__111char_traitsIcE3eofB8ne200100Ev
	mov	x1, x0
	ldr	w0, [sp, #24]                   ; 4-byte Folded Reload
	bl	__ZNSt3__111char_traitsIcE11eq_int_typeB8ne200100Eii
	tbz	w0, #0, LBB195_12
	b	LBB195_6
LBB195_6:
	ldur	w8, [x29, #-24]
	orr	w8, w8, #0x2
	stur	w8, [x29, #-24]
	b	LBB195_18
LBB195_7:
Ltmp312:
	str	x0, [sp, #56]
	mov	x8, x1
	str	w8, [sp, #52]
	b	LBB195_8
LBB195_8:
	ldr	x0, [sp, #56]
	bl	___cxa_begin_catch
	ldur	w8, [x29, #-24]
	orr	w8, w8, #0x1
	stur	w8, [x29, #-24]
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
	ldur	w1, [x29, #-24]
Ltmp313:
	bl	__ZNSt3__18ios_base18__setstate_nothrowB8ne200100Ej
Ltmp314:
	b	LBB195_9
LBB195_9:
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp315:
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE10exceptionsB8ne200100Ev
	str	w0, [sp, #20]                   ; 4-byte Folded Spill
Ltmp316:
	b	LBB195_10
LBB195_10:
	ldr	w8, [sp, #20]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB195_22
	b	LBB195_11
LBB195_11:
Ltmp317:
	bl	___cxa_rethrow
Ltmp318:
	b	LBB195_28
LBB195_12:                              ;   in Loop: Header=BB195_2 Depth=1
	ldur	x8, [x29, #-40]
	add	x8, x8, #1
	stur	x8, [x29, #-40]
	ldur	w0, [x29, #-44]
	bl	__ZNSt3__111char_traitsIcE12to_char_typeB8ne200100Ei
	strb	w0, [sp, #51]
	ldrsb	w0, [sp, #51]
	ldursb	w1, [x29, #-17]
	bl	__ZNSt3__111char_traitsIcE2eqEcc
	tbz	w0, #0, LBB195_14
	b	LBB195_13
LBB195_13:
	b	LBB195_18
LBB195_14:                              ;   in Loop: Header=BB195_2 Depth=1
	ldur	x0, [x29, #-16]
	ldrsb	w1, [sp, #51]
Ltmp310:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc
Ltmp311:
	b	LBB195_15
LBB195_15:                              ;   in Loop: Header=BB195_2 Depth=1
	ldur	x0, [x29, #-16]
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB8ne200100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8max_sizeB8ne200100Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	subs	x8, x0, x8
	b.ne	LBB195_17
	b	LBB195_16
LBB195_16:
	ldur	w8, [x29, #-24]
	orr	w8, w8, #0x4
	stur	w8, [x29, #-24]
	b	LBB195_18
LBB195_17:                              ;   in Loop: Header=BB195_2 Depth=1
	b	LBB195_2
LBB195_18:
	ldur	x8, [x29, #-40]
	cbnz	x8, LBB195_20
	b	LBB195_19
LBB195_19:
	ldur	w8, [x29, #-24]
	orr	w8, w8, #0x4
	stur	w8, [x29, #-24]
	b	LBB195_20
LBB195_20:
	b	LBB195_23
LBB195_21:
Ltmp319:
	str	x0, [sp, #56]
	mov	x8, x1
	str	w8, [sp, #52]
Ltmp320:
	bl	___cxa_end_catch
Ltmp321:
	b	LBB195_24
LBB195_22:
	bl	___cxa_end_catch
	b	LBB195_23
LBB195_23:
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
	ldur	w1, [x29, #-24]
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne200100Ej
	b	LBB195_25
LBB195_24:
	b	LBB195_26
LBB195_25:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
LBB195_26:
	ldr	x0, [sp, #56]
	bl	__Unwind_Resume
LBB195_27:
Ltmp322:
	bl	___clang_call_terminate
LBB195_28:
	brk	#0x1
Lfunc_end17:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table195:
Lexception17:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase9-Lttbaseref9
Lttbaseref9:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end17-Lcst_begin17
Lcst_begin17:
	.uleb128 Lfunc_begin17-Lfunc_begin17    ; >> Call Site 1 <<
	.uleb128 Ltmp306-Lfunc_begin17          ;   Call between Lfunc_begin17 and Ltmp306
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp306-Lfunc_begin17          ; >> Call Site 2 <<
	.uleb128 Ltmp309-Ltmp306                ;   Call between Ltmp306 and Ltmp309
	.uleb128 Ltmp312-Lfunc_begin17          ;     jumps to Ltmp312
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp309-Lfunc_begin17          ; >> Call Site 3 <<
	.uleb128 Ltmp313-Ltmp309                ;   Call between Ltmp309 and Ltmp313
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp313-Lfunc_begin17          ; >> Call Site 4 <<
	.uleb128 Ltmp318-Ltmp313                ;   Call between Ltmp313 and Ltmp318
	.uleb128 Ltmp319-Lfunc_begin17          ;     jumps to Ltmp319
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp310-Lfunc_begin17          ; >> Call Site 5 <<
	.uleb128 Ltmp311-Ltmp310                ;   Call between Ltmp310 and Ltmp311
	.uleb128 Ltmp312-Lfunc_begin17          ;     jumps to Ltmp312
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp320-Lfunc_begin17          ; >> Call Site 6 <<
	.uleb128 Ltmp321-Ltmp320                ;   Call between Ltmp320 and Ltmp321
	.uleb128 Ltmp322-Lfunc_begin17          ;     jumps to Ltmp322
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp321-Lfunc_begin17          ; >> Call Site 7 <<
	.uleb128 Lfunc_end17-Ltmp321            ;   Call between Ltmp321 and Lfunc_end17
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end17:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase9:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne200100Ec ; -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne200100Ec
	.globl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne200100Ec
	.weak_definition	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne200100Ec
	.p2align	2
__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne200100Ec: ; @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne200100Ec
Lfunc_begin18:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception18
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	sturb	w1, [x29, #-9]
	ldur	x0, [x29, #-8]
	sub	x8, x29, #24
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__18ios_base6getlocEv
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
Ltmp323:
	bl	__ZNSt3__19use_facetB8ne200100INS_5ctypeIcEEEERKT_RKNS_6localeE
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp324:
	b	LBB196_1
LBB196_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldursb	w1, [x29, #-9]
Ltmp325:
	bl	__ZNKSt3__15ctypeIcE5widenB8ne200100Ec
	str	w0, [sp, #4]                    ; 4-byte Folded Spill
Ltmp326:
	b	LBB196_2
LBB196_2:
	sub	x0, x29, #24
	bl	__ZNSt3__16localeD1Ev
	ldr	w0, [sp, #4]                    ; 4-byte Folded Reload
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB196_3:
Ltmp327:
	str	x0, [sp, #32]
	mov	x8, x1
	str	w8, [sp, #28]
	sub	x0, x29, #24
	bl	__ZNSt3__16localeD1Ev
	b	LBB196_4
LBB196_4:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
Lfunc_end18:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table196:
Lexception18:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end18-Lcst_begin18
Lcst_begin18:
	.uleb128 Lfunc_begin18-Lfunc_begin18    ; >> Call Site 1 <<
	.uleb128 Ltmp323-Lfunc_begin18          ;   Call between Lfunc_begin18 and Ltmp323
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp323-Lfunc_begin18          ; >> Call Site 2 <<
	.uleb128 Ltmp326-Ltmp323                ;   Call between Ltmp323 and Ltmp326
	.uleb128 Ltmp327-Lfunc_begin18          ;     jumps to Ltmp327
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp326-Lfunc_begin18          ; >> Call Site 3 <<
	.uleb128 Lfunc_end18-Ltmp326            ;   Call between Ltmp326 and Lfunc_end18
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end18:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNKSt3__113basic_istreamIcNS_11char_traitsIcEEE6sentrycvbB8ne200100Ev ; -- Begin function _ZNKSt3__113basic_istreamIcNS_11char_traitsIcEEE6sentrycvbB8ne200100Ev
	.globl	__ZNKSt3__113basic_istreamIcNS_11char_traitsIcEEE6sentrycvbB8ne200100Ev
	.weak_definition	__ZNKSt3__113basic_istreamIcNS_11char_traitsIcEEE6sentrycvbB8ne200100Ev
	.p2align	2
__ZNKSt3__113basic_istreamIcNS_11char_traitsIcEEE6sentrycvbB8ne200100Ev: ; @_ZNKSt3__113basic_istreamIcNS_11char_traitsIcEEE6sentrycvbB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldrb	w8, [x8]
	and	w0, w8, #0x1
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5clearB8ne200100Ev ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5clearB8ne200100Ev
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5clearB8ne200100Ev
	.weak_definition	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5clearB8ne200100Ev
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5clearB8ne200100Ev: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5clearB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB8ne200100Ev
	mov	x8, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	str	x8, [sp, #16]
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne200100Ev
	tbz	w0, #0, LBB198_2
	b	LBB198_1
LBB198_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne200100Ev
	add	x1, sp, #15
	strb	wzr, [sp, #15]
	bl	__ZNSt3__111char_traitsIcE6assignB8ne200100ERcRKc
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	mov	x1, #0                          ; =0x0
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeB8ne200100Em
	b	LBB198_3
LBB198_2:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne200100Ev
	add	x1, sp, #14
	strb	wzr, [sp, #14]
	bl	__ZNSt3__111char_traitsIcE6assignB8ne200100ERcRKc
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	mov	x1, #0                          ; =0x0
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeB8ne200100Em
	b	LBB198_3
LBB198_3:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x1, [sp, #16]
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_shrinkB8ne200100Em
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne200100Ev ; -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne200100Ev
	.globl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne200100Ev
	.weak_definition	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne200100Ev
	.p2align	2
__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne200100Ev: ; @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__18ios_base5rdbufB8ne200100Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6sbumpcB8ne200100Ev ; -- Begin function _ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6sbumpcB8ne200100Ev
	.globl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6sbumpcB8ne200100Ev
	.weak_definition	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6sbumpcB8ne200100Ev
	.p2align	2
__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6sbumpcB8ne200100Ev: ; @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6sbumpcB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	ldr	x9, [sp, #16]
	str	x9, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x8, [x9, #24]
	ldr	x9, [x9, #32]
	subs	x8, x8, x9
	b.ne	LBB200_2
	b	LBB200_1
LBB200_1:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [x0]
	ldr	x8, [x8, #80]
	blr	x8
	stur	w0, [x29, #-4]
	b	LBB200_3
LBB200_2:
	ldr	x10, [sp, #8]                   ; 8-byte Folded Reload
	ldr	x8, [x10, #24]
	add	x9, x8, #1
	str	x9, [x10, #24]
	ldrsb	w0, [x8]
	bl	__ZNSt3__111char_traitsIcE11to_int_typeB8ne200100Ec
	stur	w0, [x29, #-4]
	b	LBB200_3
LBB200_3:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__111char_traitsIcE11eq_int_typeB8ne200100Eii ; -- Begin function _ZNSt3__111char_traitsIcE11eq_int_typeB8ne200100Eii
	.globl	__ZNSt3__111char_traitsIcE11eq_int_typeB8ne200100Eii
	.weak_definition	__ZNSt3__111char_traitsIcE11eq_int_typeB8ne200100Eii
	.p2align	2
__ZNSt3__111char_traitsIcE11eq_int_typeB8ne200100Eii: ; @_ZNSt3__111char_traitsIcE11eq_int_typeB8ne200100Eii
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, #12]
	str	w1, [sp, #8]
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #8]
	subs	w8, w8, w9
	cset	w0, eq
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__111char_traitsIcE12to_char_typeB8ne200100Ei ; -- Begin function _ZNSt3__111char_traitsIcE12to_char_typeB8ne200100Ei
	.globl	__ZNSt3__111char_traitsIcE12to_char_typeB8ne200100Ei
	.weak_definition	__ZNSt3__111char_traitsIcE12to_char_typeB8ne200100Ei
	.p2align	2
__ZNSt3__111char_traitsIcE12to_char_typeB8ne200100Ei: ; @_ZNSt3__111char_traitsIcE12to_char_typeB8ne200100Ei
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, #12]
	ldr	w8, [sp, #12]
	sxtb	w0, w8
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__111char_traitsIcE2eqEcc ; -- Begin function _ZNSt3__111char_traitsIcE2eqEcc
	.globl	__ZNSt3__111char_traitsIcE2eqEcc
	.weak_definition	__ZNSt3__111char_traitsIcE2eqEcc
	.p2align	2
__ZNSt3__111char_traitsIcE2eqEcc:       ; @_ZNSt3__111char_traitsIcE2eqEcc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	strb	w0, [sp, #15]
	strb	w1, [sp, #14]
	ldrsb	w8, [sp, #15]
	ldrsb	w9, [sp, #14]
	subs	w8, w8, w9
	cset	w0, eq
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB8ne200100Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB8ne200100Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB8ne200100Ev
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB8ne200100Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB8ne200100Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne200100Ev
	tbz	w0, #0, LBB204_2
	b	LBB204_1
LBB204_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeB8ne200100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB204_3
LBB204_2:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB8ne200100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB204_3
LBB204_3:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8max_sizeB8ne200100Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8max_sizeB8ne200100Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8max_sizeB8ne200100Ev
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8max_sizeB8ne200100Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8max_sizeB8ne200100Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8max_sizeB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	ldur	x0, [x29, #-16]
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIcEEE8max_sizeB8ne200100IS2_Li0EEEmRKS2_
	str	x0, [sp, #24]
	ldr	x8, [sp, #24]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__114numeric_limitsImE3maxB8ne200100Ev
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	mov	x9, #2                          ; =0x2
	udiv	x9, x0, x9
	subs	x8, x8, x9
	b.hi	LBB205_2
	b	LBB205_1
LBB205_1:
	ldr	x8, [sp, #24]
	subs	x8, x8, #8
	stur	x8, [x29, #-8]
	b	LBB205_6
LBB205_2:
	strb	wzr, [sp, #23]
	ldrb	w8, [sp, #23]
	tbz	w8, #0, LBB205_4
	b	LBB205_3
LBB205_3:
	ldr	x8, [sp, #24]
	subs	x8, x8, #8
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB205_5
LBB205_4:
	ldr	x8, [sp, #24]
	mov	x9, #2                          ; =0x2
	udiv	x8, x8, x9
	subs	x8, x8, #8
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB205_5
LBB205_5:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	stur	x8, [x29, #-8]
	b	LBB205_6
LBB205_6:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18ios_base18__setstate_nothrowB8ne200100Ej ; -- Begin function _ZNSt3__18ios_base18__setstate_nothrowB8ne200100Ej
	.globl	__ZNSt3__18ios_base18__setstate_nothrowB8ne200100Ej
	.weak_definition	__ZNSt3__18ios_base18__setstate_nothrowB8ne200100Ej
	.p2align	2
__ZNSt3__18ios_base18__setstate_nothrowB8ne200100Ej: ; @_ZNSt3__18ios_base18__setstate_nothrowB8ne200100Ej
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	w1, [sp, #20]
	ldr	x8, [sp, #24]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x8, [x8, #40]
	cbz	x8, LBB206_2
	b	LBB206_1
LBB206_1:
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	ldr	w10, [sp, #20]
	ldr	w8, [x9, #32]
	orr	w8, w8, w10
	str	w8, [x9, #32]
	b	LBB206_3
LBB206_2:
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	ldr	w8, [sp, #20]
	orr	w10, w8, #0x1
	ldr	w8, [x9, #32]
	orr	w8, w8, w10
	str	w8, [x9, #32]
	b	LBB206_3
LBB206_3:
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE10exceptionsB8ne200100Ev ; -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE10exceptionsB8ne200100Ev
	.globl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE10exceptionsB8ne200100Ev
	.weak_definition	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE10exceptionsB8ne200100Ev
	.p2align	2
__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE10exceptionsB8ne200100Ev: ; @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE10exceptionsB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__18ios_base10exceptionsB8ne200100Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne200100Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne200100Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne200100Ev
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne200100Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne200100Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldrb	w8, [x8, #23]
	lsr	w8, w8, #7
	subs	w8, w8, #0
	cset	w0, ne
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__111char_traitsIcE6assignB8ne200100ERcRKc ; -- Begin function _ZNSt3__111char_traitsIcE6assignB8ne200100ERcRKc
	.globl	__ZNSt3__111char_traitsIcE6assignB8ne200100ERcRKc
	.weak_definition	__ZNSt3__111char_traitsIcE6assignB8ne200100ERcRKc
	.p2align	2
__ZNSt3__111char_traitsIcE6assignB8ne200100ERcRKc: ; @_ZNSt3__111char_traitsIcE6assignB8ne200100ERcRKc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x8, [sp]
	ldrb	w8, [x8]
	ldr	x9, [sp, #8]
	strb	w8, [x9]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne200100Ev ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne200100Ev
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne200100Ev
	.weak_definition	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne200100Ev
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne200100Ev: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeB8ne200100Em ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeB8ne200100Em
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeB8ne200100Em
	.weak_definition	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeB8ne200100Em
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeB8ne200100Em: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeB8ne200100Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x9, [sp, #8]
	ldr	x8, [sp]
	str	x8, [x9, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne200100Ev ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne200100Ev
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne200100Ev
	.weak_definition	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne200100Ev
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne200100Ev: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__114pointer_traitsIPcE10pointer_toB8ne200100ERc
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeB8ne200100Em ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeB8ne200100Em
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeB8ne200100Em
	.weak_definition	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeB8ne200100Em
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeB8ne200100Em: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeB8ne200100Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x9, [sp, #8]
	ldr	x10, [sp]
	ldrb	w8, [x9, #23]
	mov	x11, x10
	mov	w10, #127                       ; =0x7f
	and	w11, w11, #0x7f
	and	w8, w8, #0xffffff80
	orr	w8, w8, w11
	strb	w8, [x9, #23]
	ldrb	w8, [x9, #23]
	and	w8, w8, w10
	mov	w10, #0                         ; =0x0
	orr	w8, w8, w10
	strb	w8, [x9, #23]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_shrinkB8ne200100Em ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_shrinkB8ne200100Em
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_shrinkB8ne200100Em
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_shrinkB8ne200100Em
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_shrinkB8ne200100Em: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_shrinkB8ne200100Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114pointer_traitsIPcE10pointer_toB8ne200100ERc ; -- Begin function _ZNSt3__114pointer_traitsIPcE10pointer_toB8ne200100ERc
	.globl	__ZNSt3__114pointer_traitsIPcE10pointer_toB8ne200100ERc
	.weak_definition	__ZNSt3__114pointer_traitsIPcE10pointer_toB8ne200100ERc
	.p2align	2
__ZNSt3__114pointer_traitsIPcE10pointer_toB8ne200100ERc: ; @_ZNSt3__114pointer_traitsIPcE10pointer_toB8ne200100ERc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__18ios_base5rdbufB8ne200100Ev ; -- Begin function _ZNKSt3__18ios_base5rdbufB8ne200100Ev
	.globl	__ZNKSt3__18ios_base5rdbufB8ne200100Ev
	.weak_definition	__ZNKSt3__18ios_base5rdbufB8ne200100Ev
	.p2align	2
__ZNKSt3__18ios_base5rdbufB8ne200100Ev: ; @_ZNKSt3__18ios_base5rdbufB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #40]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__111char_traitsIcE11to_int_typeB8ne200100Ec ; -- Begin function _ZNSt3__111char_traitsIcE11to_int_typeB8ne200100Ec
	.globl	__ZNSt3__111char_traitsIcE11to_int_typeB8ne200100Ec
	.weak_definition	__ZNSt3__111char_traitsIcE11to_int_typeB8ne200100Ec
	.p2align	2
__ZNSt3__111char_traitsIcE11to_int_typeB8ne200100Ec: ; @_ZNSt3__111char_traitsIcE11to_int_typeB8ne200100Ec
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	strb	w0, [sp, #15]
	ldrb	w0, [sp, #15]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeB8ne200100Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeB8ne200100Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeB8ne200100Ev
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeB8ne200100Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeB8ne200100Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB8ne200100Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB8ne200100Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB8ne200100Ev
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB8ne200100Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB8ne200100Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldrb	w8, [x8, #23]
	and	w9, w8, #0x7f
                                        ; implicit-def: $x8
	mov	x8, x9
	and	x0, x8, #0xff
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIcEEE8max_sizeB8ne200100IS2_Li0EEEmRKS2_ ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIcEEE8max_sizeB8ne200100IS2_Li0EEEmRKS2_
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIcEEE8max_sizeB8ne200100IS2_Li0EEEmRKS2_
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIcEEE8max_sizeB8ne200100IS2_Li0EEEmRKS2_: ; @_ZNSt3__116allocator_traitsINS_9allocatorIcEEE8max_sizeB8ne200100IS2_Li0EEEmRKS2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__19allocatorIcE8max_sizeB8ne200100Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114numeric_limitsImE3maxB8ne200100Ev ; -- Begin function _ZNSt3__114numeric_limitsImE3maxB8ne200100Ev
	.globl	__ZNSt3__114numeric_limitsImE3maxB8ne200100Ev
	.weak_definition	__ZNSt3__114numeric_limitsImE3maxB8ne200100Ev
	.p2align	2
__ZNSt3__114numeric_limitsImE3maxB8ne200100Ev: ; @_ZNSt3__114numeric_limitsImE3maxB8ne200100Ev
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	__ZNSt3__123__libcpp_numeric_limitsImLb1EE3maxB8ne200100Ev
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__19allocatorIcE8max_sizeB8ne200100Ev ; -- Begin function _ZNKSt3__19allocatorIcE8max_sizeB8ne200100Ev
	.globl	__ZNKSt3__19allocatorIcE8max_sizeB8ne200100Ev
	.weak_definition	__ZNKSt3__19allocatorIcE8max_sizeB8ne200100Ev
	.p2align	2
__ZNKSt3__19allocatorIcE8max_sizeB8ne200100Ev: ; @_ZNKSt3__19allocatorIcE8max_sizeB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	mov	x0, #-1                         ; =0xffffffffffffffff
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__123__libcpp_numeric_limitsImLb1EE3maxB8ne200100Ev ; -- Begin function _ZNSt3__123__libcpp_numeric_limitsImLb1EE3maxB8ne200100Ev
	.globl	__ZNSt3__123__libcpp_numeric_limitsImLb1EE3maxB8ne200100Ev
	.weak_definition	__ZNSt3__123__libcpp_numeric_limitsImLb1EE3maxB8ne200100Ev
	.p2align	2
__ZNSt3__123__libcpp_numeric_limitsImLb1EE3maxB8ne200100Ev: ; @_ZNSt3__123__libcpp_numeric_limitsImLb1EE3maxB8ne200100Ev
	.cfi_startproc
; %bb.0:
	mov	x0, #-1                         ; =0xffffffffffffffff
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__18ios_base10exceptionsB8ne200100Ev ; -- Begin function _ZNKSt3__18ios_base10exceptionsB8ne200100Ev
	.globl	__ZNKSt3__18ios_base10exceptionsB8ne200100Ev
	.weak_definition	__ZNKSt3__18ios_base10exceptionsB8ne200100Ev
	.p2align	2
__ZNKSt3__18ios_base10exceptionsB8ne200100Ev: ; @_ZNKSt3__18ios_base10exceptionsB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w0, [x8, #36]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19use_facetB8ne200100INS_5ctypeIcEEEERKT_RKNS_6localeE ; -- Begin function _ZNSt3__19use_facetB8ne200100INS_5ctypeIcEEEERKT_RKNS_6localeE
	.globl	__ZNSt3__19use_facetB8ne200100INS_5ctypeIcEEEERKT_RKNS_6localeE
	.weak_definition	__ZNSt3__19use_facetB8ne200100INS_5ctypeIcEEEERKT_RKNS_6localeE
	.p2align	2
__ZNSt3__19use_facetB8ne200100INS_5ctypeIcEEEERKT_RKNS_6localeE: ; @_ZNSt3__19use_facetB8ne200100INS_5ctypeIcEEEERKT_RKNS_6localeE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__15ctypeIcE5widenB8ne200100Ec ; -- Begin function _ZNKSt3__15ctypeIcE5widenB8ne200100Ec
	.globl	__ZNKSt3__15ctypeIcE5widenB8ne200100Ec
	.weak_definition	__ZNKSt3__15ctypeIcE5widenB8ne200100Ec
	.p2align	2
__ZNKSt3__15ctypeIcE5widenB8ne200100Ec: ; @_ZNKSt3__15ctypeIcE5widenB8ne200100Ec
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	strb	w1, [sp, #7]
	ldr	x0, [sp, #8]
	ldrsb	w1, [sp, #7]
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
	blr	x8
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4failB8ne200100Ev ; -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4failB8ne200100Ev
	.globl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4failB8ne200100Ev
	.weak_definition	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4failB8ne200100Ev
	.p2align	2
__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4failB8ne200100Ev: ; @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4failB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__18ios_base4failB8ne200100Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__18ios_base4failB8ne200100Ev ; -- Begin function _ZNKSt3__18ios_base4failB8ne200100Ev
	.globl	__ZNKSt3__18ios_base4failB8ne200100Ev
	.weak_definition	__ZNKSt3__18ios_base4failB8ne200100Ev
	.p2align	2
__ZNKSt3__18ios_base4failB8ne200100Ev:  ; @_ZNKSt3__18ios_base4failB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #32]
	mov	w9, #5                          ; =0x5
	ands	w8, w8, w9
	cset	w0, ne
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__110__str_findB8ne200100IcmNS_11char_traitsIcEELm18446744073709551615EEET0_PKT_S3_S6_S3_S3_ ; -- Begin function _ZNSt3__110__str_findB8ne200100IcmNS_11char_traitsIcEELm18446744073709551615EEET0_PKT_S3_S6_S3_S3_
	.globl	__ZNSt3__110__str_findB8ne200100IcmNS_11char_traitsIcEELm18446744073709551615EEET0_PKT_S3_S6_S3_S3_
	.weak_definition	__ZNSt3__110__str_findB8ne200100IcmNS_11char_traitsIcEELm18446744073709551615EEET0_PKT_S3_S6_S3_S3_
	.p2align	2
__ZNSt3__110__str_findB8ne200100IcmNS_11char_traitsIcEELm18446744073709551615EEET0_PKT_S3_S6_S3_S3_: ; @_ZNSt3__110__str_findB8ne200100IcmNS_11char_traitsIcEELm18446744073709551615EEET0_PKT_S3_S6_S3_S3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	str	x2, [sp, #32]
	str	x3, [sp, #24]
	str	x4, [sp, #16]
	ldr	x8, [sp, #24]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	b.ls	LBB229_2
	b	LBB229_1
LBB229_1:
	mov	x8, #-1                         ; =0xffffffffffffffff
	stur	x8, [x29, #-8]
	b	LBB229_7
LBB229_2:
	ldr	x8, [sp, #16]
	cbnz	x8, LBB229_4
	b	LBB229_3
LBB229_3:
	ldr	x8, [sp, #24]
	stur	x8, [x29, #-8]
	b	LBB229_7
LBB229_4:
	ldur	x8, [x29, #-16]
	ldr	x9, [sp, #24]
	add	x0, x8, x9
	ldur	x8, [x29, #-16]
	ldur	x9, [x29, #-24]
	add	x1, x8, x9
	ldr	x2, [sp, #32]
	ldr	x8, [sp, #32]
	ldr	x9, [sp, #16]
	add	x3, x8, x9
	bl	__ZNSt3__118__search_substringB8ne200100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldur	x9, [x29, #-16]
	ldur	x10, [x29, #-24]
	add	x9, x9, x10
	subs	x8, x8, x9
	b.ne	LBB229_6
	b	LBB229_5
LBB229_5:
	mov	x8, #-1                         ; =0xffffffffffffffff
	stur	x8, [x29, #-8]
	b	LBB229_7
LBB229_6:
	ldr	x8, [sp, #8]
	ldur	x9, [x29, #-16]
	subs	x8, x8, x9
	stur	x8, [x29, #-8]
	b	LBB229_7
LBB229_7:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne200100Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne200100Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne200100Ev
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne200100Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne200100Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne200100Ev
	bl	__ZNSt3__112__to_addressB8ne200100IKcEEPT_S3_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__118__search_substringB8ne200100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_ ; -- Begin function _ZNSt3__118__search_substringB8ne200100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_
	.globl	__ZNSt3__118__search_substringB8ne200100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_
	.weak_definition	__ZNSt3__118__search_substringB8ne200100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_
	.p2align	2
__ZNSt3__118__search_substringB8ne200100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_: ; @_ZNSt3__118__search_substringB8ne200100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	str	x2, [sp, #32]
	str	x3, [sp, #24]
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #32]
	subs	x8, x8, x9
	str	x8, [sp, #16]
	ldr	x8, [sp, #16]
	cbnz	x8, LBB231_2
	b	LBB231_1
LBB231_1:
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB231_13
LBB231_2:
	ldur	x8, [x29, #-24]
	ldur	x9, [x29, #-16]
	subs	x8, x8, x9
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #16]
	subs	x8, x8, x9
	b.ge	LBB231_4
	b	LBB231_3
LBB231_3:
	ldur	x8, [x29, #-24]
	stur	x8, [x29, #-8]
	b	LBB231_13
LBB231_4:
	ldr	x8, [sp, #32]
	ldrb	w8, [x8]
	strb	w8, [sp, #7]
	b	LBB231_5
LBB231_5:                               ; =>This Inner Loop Header: Depth=1
	b	LBB231_6
LBB231_6:                               ;   in Loop: Header=BB231_5 Depth=1
	ldur	x8, [x29, #-24]
	ldur	x9, [x29, #-16]
	subs	x8, x8, x9
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #16]
	subs	x8, x8, x9
	b.ge	LBB231_8
	b	LBB231_7
LBB231_7:
	ldur	x8, [x29, #-24]
	stur	x8, [x29, #-8]
	b	LBB231_13
LBB231_8:                               ;   in Loop: Header=BB231_5 Depth=1
	ldur	x0, [x29, #-16]
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #16]
	subs	x8, x8, x9
	add	x1, x8, #1
	add	x2, sp, #7
	bl	__ZNSt3__111char_traitsIcE4findB8ne200100EPKcmRS2_
	stur	x0, [x29, #-16]
	ldur	x8, [x29, #-16]
	cbnz	x8, LBB231_10
	b	LBB231_9
LBB231_9:
	ldur	x8, [x29, #-24]
	stur	x8, [x29, #-8]
	b	LBB231_13
LBB231_10:                              ;   in Loop: Header=BB231_5 Depth=1
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #32]
	ldr	x2, [sp, #16]
	bl	__ZNSt3__111char_traitsIcE7compareB8ne200100EPKcS3_m
	cbnz	w0, LBB231_12
	b	LBB231_11
LBB231_11:
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB231_13
LBB231_12:                              ;   in Loop: Header=BB231_5 Depth=1
	ldur	x8, [x29, #-16]
	add	x8, x8, #1
	stur	x8, [x29, #-16]
	b	LBB231_5
LBB231_13:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__111char_traitsIcE4findB8ne200100EPKcmRS2_ ; -- Begin function _ZNSt3__111char_traitsIcE4findB8ne200100EPKcmRS2_
	.globl	__ZNSt3__111char_traitsIcE4findB8ne200100EPKcmRS2_
	.weak_definition	__ZNSt3__111char_traitsIcE4findB8ne200100EPKcmRS2_
	.p2align	2
__ZNSt3__111char_traitsIcE4findB8ne200100EPKcmRS2_: ; @_ZNSt3__111char_traitsIcE4findB8ne200100EPKcmRS2_
Lfunc_begin19:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception19
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	str	x2, [sp, #16]
	ldr	x8, [sp, #24]
	cbnz	x8, LBB232_2
	b	LBB232_1
LBB232_1:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	LBB232_4
LBB232_2:
	ldur	x0, [x29, #-16]
	ldr	x8, [sp, #16]
	ldrsb	w1, [x8]
	ldr	x2, [sp, #24]
Ltmp347:
	bl	__ZNSt3__118__constexpr_memchrB8ne200100IKccEEPT_S3_T0_m
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp348:
	b	LBB232_3
LBB232_3:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	stur	x8, [x29, #-8]
	b	LBB232_4
LBB232_4:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB232_5:
Ltmp349:
	bl	___clang_call_terminate
Lfunc_end19:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table232:
Lexception19:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase10-Lttbaseref10
Lttbaseref10:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end19-Lcst_begin19
Lcst_begin19:
	.uleb128 Ltmp347-Lfunc_begin19          ; >> Call Site 1 <<
	.uleb128 Ltmp348-Ltmp347                ;   Call between Ltmp347 and Ltmp348
	.uleb128 Ltmp349-Lfunc_begin19          ;     jumps to Ltmp349
	.byte	1                               ;   On action: 1
Lcst_end19:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase10:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__111char_traitsIcE7compareB8ne200100EPKcS3_m ; -- Begin function _ZNSt3__111char_traitsIcE7compareB8ne200100EPKcS3_m
	.globl	__ZNSt3__111char_traitsIcE7compareB8ne200100EPKcS3_m
	.weak_definition	__ZNSt3__111char_traitsIcE7compareB8ne200100EPKcS3_m
	.p2align	2
__ZNSt3__111char_traitsIcE7compareB8ne200100EPKcS3_m: ; @_ZNSt3__111char_traitsIcE7compareB8ne200100EPKcS3_m
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	_memcmp
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__118__constexpr_memchrB8ne200100IKccEEPT_S3_T0_m ; -- Begin function _ZNSt3__118__constexpr_memchrB8ne200100IKccEEPT_S3_T0_m
	.globl	__ZNSt3__118__constexpr_memchrB8ne200100IKccEEPT_S3_T0_m
	.weak_definition	__ZNSt3__118__constexpr_memchrB8ne200100IKccEEPT_S3_T0_m
	.p2align	2
__ZNSt3__118__constexpr_memchrB8ne200100IKccEEPT_S3_T0_m: ; @_ZNSt3__118__constexpr_memchrB8ne200100IKccEEPT_S3_T0_m
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	sturb	w1, [x29, #-9]
	str	x2, [sp, #8]
	strb	wzr, [sp, #7]
	ldurb	w8, [x29, #-9]
	strb	w8, [sp, #7]
	ldur	x0, [x29, #-8]
	ldrsb	w1, [sp, #7]
	ldr	x2, [sp, #8]
	bl	_memchr
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112__to_addressB8ne200100IKcEEPT_S3_ ; -- Begin function _ZNSt3__112__to_addressB8ne200100IKcEEPT_S3_
	.globl	__ZNSt3__112__to_addressB8ne200100IKcEEPT_S3_
	.weak_definition	__ZNSt3__112__to_addressB8ne200100IKcEEPT_S3_
	.p2align	2
__ZNSt3__112__to_addressB8ne200100IKcEEPT_S3_: ; @_ZNSt3__112__to_addressB8ne200100IKcEEPT_S3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne200100Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne200100Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne200100Ev
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne200100Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne200100Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne200100Ev
	tbz	w0, #0, LBB236_2
	b	LBB236_1
LBB236_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne200100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB236_3
LBB236_2:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne200100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB236_3
LBB236_3:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne200100Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne200100Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne200100Ev
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne200100Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne200100Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne200100Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne200100Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne200100Ev
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne200100Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne200100Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__114pointer_traitsIPKcE10pointer_toB8ne200100ERS1_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114pointer_traitsIPKcE10pointer_toB8ne200100ERS1_ ; -- Begin function _ZNSt3__114pointer_traitsIPKcE10pointer_toB8ne200100ERS1_
	.globl	__ZNSt3__114pointer_traitsIPKcE10pointer_toB8ne200100ERS1_
	.weak_definition	__ZNSt3__114pointer_traitsIPKcE10pointer_toB8ne200100ERS1_
	.p2align	2
__ZNSt3__114pointer_traitsIPKcE10pointer_toB8ne200100ERS1_: ; @_ZNSt3__114pointer_traitsIPKcE10pointer_toB8ne200100ERS1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__move_assignB8ne200100ERS5_NS_17integral_constantIbLb1EEE ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__move_assignB8ne200100ERS5_NS_17integral_constantIbLb1EEE
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__move_assignB8ne200100ERS5_NS_17integral_constantIbLb1EEE
	.weak_definition	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__move_assignB8ne200100ERS5_NS_17integral_constantIbLb1EEE
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__move_assignB8ne200100ERS5_NS_17integral_constantIbLb1EEE: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__move_assignB8ne200100ERS5_NS_17integral_constantIbLb1EEE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	ldur	x0, [x29, #-16]
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_deleteB8ne200100Ev
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne200100Ev
	tbz	w0, #0, LBB240_2
	b	LBB240_1
LBB240_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne200100Ev
	mov	x1, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	str	x1, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capB8ne200100Ev
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	mov	x2, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIcEEE10deallocateB8ne200100ERS2_Pcm
	b	LBB240_2
LBB240_2:
	ldur	x0, [x29, #-24]
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB8ne200100Ev
	str	x0, [sp, #32]
	ldur	x0, [x29, #-24]
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne200100Ev
	mov	x8, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	mov	w9, #1                          ; =0x1
	eor	w8, w8, #0x1
	and	w8, w8, w9
	strb	w8, [sp, #31]
	ldur	x1, [x29, #-24]
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocB8ne200100ERS5_
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-24]
	ldr	q0, [x8]
	str	q0, [x9]
	ldr	x8, [x8, #16]
	str	x8, [x9, #16]
	ldur	x0, [x29, #-24]
	mov	x1, #0                          ; =0x0
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeB8ne200100Em
	ldur	x0, [x29, #-24]
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne200100Ev
	add	x1, sp, #30
	strb	wzr, [sp, #30]
	bl	__ZNSt3__111char_traitsIcE6assignB8ne200100ERcRKc
	ldrb	w8, [sp, #31]
	tbz	w8, #0, LBB240_5
	b	LBB240_3
LBB240_3:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	b.eq	LBB240_5
	b	LBB240_4
LBB240_4:
	ldur	x0, [x29, #-24]
	ldr	x1, [sp, #32]
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_shrinkB8ne200100Em
	b	LBB240_6
LBB240_5:
	ldur	x0, [x29, #-24]
	mov	x1, #0                          ; =0x0
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB8ne200100Em
	b	LBB240_6
LBB240_6:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne200100Ev
	tbnz	w0, #0, LBB240_9
	b	LBB240_7
LBB240_7:
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-24]
	subs	x8, x8, x9
	b.eq	LBB240_9
	b	LBB240_8
LBB240_8:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB8ne200100Ev
	mov	x1, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB8ne200100Em
	b	LBB240_9
LBB240_9:
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_deleteB8ne200100Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_deleteB8ne200100Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_deleteB8ne200100Ev
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_deleteB8ne200100Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_deleteB8ne200100Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_deleteB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116allocator_traitsINS_9allocatorIcEEE10deallocateB8ne200100ERS2_Pcm ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIcEEE10deallocateB8ne200100ERS2_Pcm
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIcEEE10deallocateB8ne200100ERS2_Pcm
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIcEEE10deallocateB8ne200100ERS2_Pcm
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIcEEE10deallocateB8ne200100ERS2_Pcm: ; @_ZNSt3__116allocator_traitsINS_9allocatorIcEEE10deallocateB8ne200100ERS2_Pcm
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__19allocatorIcE10deallocateB8ne200100EPcm
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capB8ne200100Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capB8ne200100Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capB8ne200100Ev
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capB8ne200100Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capB8ne200100Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #16]
	and	x8, x8, #0x7fffffffffffffff
	lsr	x0, x8, #0
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocB8ne200100ERS5_ ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocB8ne200100ERS5_
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocB8ne200100ERS5_
	.weak_definition	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocB8ne200100ERS5_
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocB8ne200100ERS5_: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocB8ne200100ERS5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocB8ne200100ERS5_NS_17integral_constantIbLb1EEE
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIcE10deallocateB8ne200100EPcm ; -- Begin function _ZNSt3__19allocatorIcE10deallocateB8ne200100EPcm
	.globl	__ZNSt3__19allocatorIcE10deallocateB8ne200100EPcm
	.weak_definition	__ZNSt3__19allocatorIcE10deallocateB8ne200100EPcm
	.p2align	2
__ZNSt3__19allocatorIcE10deallocateB8ne200100EPcm: ; @_ZNSt3__19allocatorIcE10deallocateB8ne200100EPcm
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	mov	x2, #1                          ; =0x1
	bl	__ZNSt3__119__libcpp_deallocateB8ne200100IcEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__libcpp_deallocateB8ne200100IcEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm ; -- Begin function _ZNSt3__119__libcpp_deallocateB8ne200100IcEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm
	.globl	__ZNSt3__119__libcpp_deallocateB8ne200100IcEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm
	.weak_definition	__ZNSt3__119__libcpp_deallocateB8ne200100IcEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm
	.p2align	2
__ZNSt3__119__libcpp_deallocateB8ne200100IcEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm: ; @_ZNSt3__119__libcpp_deallocateB8ne200100IcEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x8, [sp, #16]
	lsr	x8, x8, #0
	str	x8, [sp]
	ldur	x0, [x29, #-8]
	bl	__ZNSt3__124__libcpp_operator_deleteB8ne200100IJPcEEEvDpT_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__124__libcpp_operator_deleteB8ne200100IJPcEEEvDpT_ ; -- Begin function _ZNSt3__124__libcpp_operator_deleteB8ne200100IJPcEEEvDpT_
	.globl	__ZNSt3__124__libcpp_operator_deleteB8ne200100IJPcEEEvDpT_
	.weak_definition	__ZNSt3__124__libcpp_operator_deleteB8ne200100IJPcEEEvDpT_
	.p2align	2
__ZNSt3__124__libcpp_operator_deleteB8ne200100IJPcEEEvDpT_: ; @_ZNSt3__124__libcpp_operator_deleteB8ne200100IJPcEEEvDpT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZdlPv
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocB8ne200100ERS5_NS_17integral_constantIbLb1EEE ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocB8ne200100ERS5_NS_17integral_constantIbLb1EEE
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocB8ne200100ERS5_NS_17integral_constantIbLb1EEE
	.weak_definition	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocB8ne200100ERS5_NS_17integral_constantIbLb1EEE
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocB8ne200100ERS5_NS_17integral_constantIbLb1EEE: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocB8ne200100ERS5_NS_17integral_constantIbLb1EEE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne200100Ev ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne200100Ev
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne200100Ev
	.weak_definition	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne200100Ev
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne200100Ev: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne200100Ev
	tbz	w0, #0, LBB249_2
	b	LBB249_1
LBB249_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne200100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB249_3
LBB249_2:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne200100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB249_3
LBB249_3:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__erase_to_endB8ne200100Em ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__erase_to_endB8ne200100Em
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__erase_to_endB8ne200100Em
	.weak_definition	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__erase_to_endB8ne200100Em
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__erase_to_endB8ne200100Em: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__erase_to_endB8ne200100Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne200100Ev
	bl	__ZNSt3__112__to_addressB8ne200100IcEEPT_S2_
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x2, [sp, #16]
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__null_terminate_atB8ne200100EPcm
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__null_terminate_atB8ne200100EPcm ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__null_terminate_atB8ne200100EPcm
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__null_terminate_atB8ne200100EPcm
	.weak_definition	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__null_terminate_atB8ne200100EPcm
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__null_terminate_atB8ne200100EPcm: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__null_terminate_atB8ne200100EPcm
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB8ne200100Ev
	str	x0, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #16]
	subs	x8, x8, x9
	b.ls	LBB251_2
	b	LBB251_1
LBB251_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #16]
	subs	x1, x8, x9
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__annotate_increaseB8ne200100Em
	b	LBB251_2
LBB251_2:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x1, [sp, #24]
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__set_sizeB8ne200100Em
	ldur	x8, [x29, #-16]
	ldr	x9, [sp, #24]
	add	x0, x8, x9
	add	x1, sp, #15
	strb	wzr, [sp, #15]
	bl	__ZNSt3__111char_traitsIcE6assignB8ne200100ERcRKc
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #24]
	subs	x8, x8, x9
	b.ls	LBB251_4
	b	LBB251_3
LBB251_3:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x1, [sp, #16]
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_shrinkB8ne200100Em
	b	LBB251_4
LBB251_4:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112__to_addressB8ne200100IcEEPT_S2_ ; -- Begin function _ZNSt3__112__to_addressB8ne200100IcEEPT_S2_
	.globl	__ZNSt3__112__to_addressB8ne200100IcEEPT_S2_
	.weak_definition	__ZNSt3__112__to_addressB8ne200100IcEEPT_S2_
	.p2align	2
__ZNSt3__112__to_addressB8ne200100IcEEPT_S2_: ; @_ZNSt3__112__to_addressB8ne200100IcEEPT_S2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__annotate_increaseB8ne200100Em ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__annotate_increaseB8ne200100Em
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__annotate_increaseB8ne200100Em
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__annotate_increaseB8ne200100Em
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__annotate_increaseB8ne200100Em: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__annotate_increaseB8ne200100Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__set_sizeB8ne200100Em ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__set_sizeB8ne200100Em
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__set_sizeB8ne200100Em
	.weak_definition	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__set_sizeB8ne200100Em
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__set_sizeB8ne200100Em: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__set_sizeB8ne200100Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne200100Ev
	tbz	w0, #0, LBB254_2
	b	LBB254_1
LBB254_1:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x1, [sp, #16]
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeB8ne200100Em
	b	LBB254_3
LBB254_2:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x1, [sp, #16]
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeB8ne200100Em
	b	LBB254_3
LBB254_3:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18ios_base9precisionB8ne200100El ; -- Begin function _ZNSt3__18ios_base9precisionB8ne200100El
	.globl	__ZNSt3__18ios_base9precisionB8ne200100El
	.weak_definition	__ZNSt3__18ios_base9precisionB8ne200100El
	.p2align	2
__ZNSt3__18ios_base9precisionB8ne200100El: ; @_ZNSt3__18ios_base9precisionB8ne200100El
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x9, [sp, #24]
	ldr	x8, [x9, #16]
	str	x8, [sp, #8]
	ldr	x8, [sp, #16]
	str	x8, [x9, #16]
	ldr	x0, [sp, #8]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m ; -- Begin function _ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.globl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_definition	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.p2align	2
__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ; @_ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lfunc_begin20:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception20
; %bb.0:
	sub	sp, sp, #160
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	ldur	x1, [x29, #-8]
Ltmp359:
	sub	x0, x29, #40
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp360:
	b	LBB256_1
LBB256_1:
Ltmp362:
	sub	x0, x29, #40
	bl	__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB8ne200100Ev
	str	w0, [sp, #68]                   ; 4-byte Folded Spill
Ltmp363:
	b	LBB256_2
LBB256_2:
	ldr	w8, [sp, #68]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB256_18
	b	LBB256_3
LBB256_3:
	ldur	x1, [x29, #-8]
	add	x0, sp, #72
	bl	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B8ne200100ERNS_13basic_ostreamIcS2_EE
	ldur	x8, [x29, #-16]
	str	x8, [sp, #56]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp364:
	bl	__ZNKSt3__18ios_base5flagsB8ne200100Ev
	str	w0, [sp, #64]                   ; 4-byte Folded Spill
Ltmp365:
	b	LBB256_4
LBB256_4:
	ldr	w8, [sp, #64]                   ; 4-byte Folded Reload
	mov	w9, #176                        ; =0xb0
	and	w8, w8, w9
	subs	w8, w8, #32
	b.ne	LBB256_6
	b	LBB256_5
LBB256_5:
	ldur	x8, [x29, #-16]
	ldur	x9, [x29, #-24]
	add	x8, x8, x9
	str	x8, [sp, #48]                   ; 8-byte Folded Spill
	b	LBB256_7
LBB256_6:
	ldur	x8, [x29, #-16]
	str	x8, [sp, #48]                   ; 8-byte Folded Spill
	b	LBB256_7
LBB256_7:
	ldr	x8, [sp, #48]                   ; 8-byte Folded Reload
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldur	x9, [x29, #-24]
	add	x8, x8, x9
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x8, x8, x9
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp366:
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne200100Ev
	str	w0, [sp, #44]                   ; 4-byte Folded Spill
Ltmp367:
	b	LBB256_8
LBB256_8:
	ldr	w5, [sp, #44]                   ; 4-byte Folded Reload
	ldr	x4, [sp, #32]                   ; 8-byte Folded Reload
	ldr	x3, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x2, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #56]                   ; 8-byte Folded Reload
	ldr	x0, [sp, #72]
Ltmp368:
	bl	__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp369:
	b	LBB256_9
LBB256_9:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	sub	x0, x29, #64
	stur	x8, [x29, #-64]
	bl	__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB8ne200100Ev
	tbz	w0, #0, LBB256_17
	b	LBB256_10
LBB256_10:
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp370:
	mov	w1, #5                          ; =0x5
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne200100Ej
Ltmp371:
	b	LBB256_11
LBB256_11:
	b	LBB256_17
LBB256_12:
Ltmp361:
	stur	x0, [x29, #-48]
	mov	x8, x1
	stur	w8, [x29, #-52]
	b	LBB256_14
LBB256_13:
Ltmp372:
	stur	x0, [x29, #-48]
	mov	x8, x1
	stur	w8, [x29, #-52]
	sub	x0, x29, #40
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB256_14
LBB256_14:
	ldur	x0, [x29, #-48]
	bl	___cxa_begin_catch
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp373:
	bl	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp374:
	b	LBB256_15
LBB256_15:
	bl	___cxa_end_catch
	b	LBB256_16
LBB256_16:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
LBB256_17:
	b	LBB256_18
LBB256_18:
	sub	x0, x29, #40
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB256_16
LBB256_19:
Ltmp375:
	stur	x0, [x29, #-48]
	mov	x8, x1
	stur	w8, [x29, #-52]
Ltmp376:
	bl	___cxa_end_catch
Ltmp377:
	b	LBB256_20
LBB256_20:
	b	LBB256_21
LBB256_21:
	ldur	x0, [x29, #-48]
	bl	__Unwind_Resume
LBB256_22:
Ltmp378:
	bl	___clang_call_terminate
Lfunc_end20:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table256:
Lexception20:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase11-Lttbaseref11
Lttbaseref11:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end20-Lcst_begin20
Lcst_begin20:
	.uleb128 Ltmp359-Lfunc_begin20          ; >> Call Site 1 <<
	.uleb128 Ltmp360-Ltmp359                ;   Call between Ltmp359 and Ltmp360
	.uleb128 Ltmp361-Lfunc_begin20          ;     jumps to Ltmp361
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp362-Lfunc_begin20          ; >> Call Site 2 <<
	.uleb128 Ltmp371-Ltmp362                ;   Call between Ltmp362 and Ltmp371
	.uleb128 Ltmp372-Lfunc_begin20          ;     jumps to Ltmp372
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp371-Lfunc_begin20          ; >> Call Site 3 <<
	.uleb128 Ltmp373-Ltmp371                ;   Call between Ltmp371 and Ltmp373
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp373-Lfunc_begin20          ; >> Call Site 4 <<
	.uleb128 Ltmp374-Ltmp373                ;   Call between Ltmp373 and Ltmp374
	.uleb128 Ltmp375-Lfunc_begin20          ;     jumps to Ltmp375
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp374-Lfunc_begin20          ; >> Call Site 5 <<
	.uleb128 Ltmp376-Ltmp374                ;   Call between Ltmp374 and Ltmp376
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp376-Lfunc_begin20          ; >> Call Site 6 <<
	.uleb128 Ltmp377-Ltmp376                ;   Call between Ltmp376 and Ltmp377
	.uleb128 Ltmp378-Lfunc_begin20          ;     jumps to Ltmp378
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp377-Lfunc_begin20          ; >> Call Site 7 <<
	.uleb128 Lfunc_end20-Ltmp377            ;   Call between Ltmp377 and Lfunc_end20
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end20:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase11:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB8ne200100Ev ; -- Begin function _ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB8ne200100Ev
	.globl	__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB8ne200100Ev
	.weak_definition	__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB8ne200100Ev
	.p2align	2
__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB8ne200100Ev: ; @_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldrb	w8, [x8]
	and	w0, w8, #0x1
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ ; -- Begin function _ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.globl	__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.weak_definition	__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.p2align	2
__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_: ; @_ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Lfunc_begin21:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception21
; %bb.0:
	sub	sp, sp, #160
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	stur	x3, [x29, #-40]
	stur	x4, [x29, #-48]
	sturb	w5, [x29, #-49]
	ldur	x8, [x29, #-16]
	cbnz	x8, LBB258_2
	b	LBB258_1
LBB258_1:
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB258_23
LBB258_2:
	ldur	x8, [x29, #-40]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	stur	x8, [x29, #-64]
	ldur	x0, [x29, #-48]
	bl	__ZNKSt3__18ios_base5widthB8ne200100Ev
	str	x0, [sp, #72]
	ldr	x8, [sp, #72]
	ldur	x9, [x29, #-64]
	subs	x8, x8, x9
	b.le	LBB258_4
	b	LBB258_3
LBB258_3:
	ldur	x9, [x29, #-64]
	ldr	x8, [sp, #72]
	subs	x8, x8, x9
	str	x8, [sp, #72]
	b	LBB258_5
LBB258_4:
	str	xzr, [sp, #72]
	b	LBB258_5
LBB258_5:
	ldur	x8, [x29, #-32]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	str	x8, [sp, #64]
	ldr	x8, [sp, #64]
	subs	x8, x8, #0
	b.le	LBB258_9
	b	LBB258_6
LBB258_6:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	ldr	x2, [sp, #64]
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne200100EPKcl
	ldr	x8, [sp, #64]
	subs	x8, x0, x8
	b.eq	LBB258_8
	b	LBB258_7
LBB258_7:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB258_23
LBB258_8:
	b	LBB258_9
LBB258_9:
	ldr	x8, [sp, #72]
	subs	x8, x8, #0
	b.le	LBB258_18
	b	LBB258_10
LBB258_10:
	ldr	x1, [sp, #72]
	ldursb	w2, [x29, #-49]
	add	x0, sp, #40
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100Emc
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne200100Ev
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x2, [sp, #72]
Ltmp380:
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne200100EPKcl
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp381:
	b	LBB258_11
LBB258_11:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x9, [sp, #72]
	subs	x8, x8, x9
	b.eq	LBB258_14
	b	LBB258_12
LBB258_12:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	mov	w8, #1                          ; =0x1
	str	w8, [sp, #24]
	b	LBB258_15
LBB258_13:
Ltmp382:
	str	x0, [sp, #32]
	mov	x8, x1
	str	w8, [sp, #28]
	add	x0, sp, #40
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	b	LBB258_24
LBB258_14:
	str	wzr, [sp, #24]
	b	LBB258_15
LBB258_15:
	add	x0, sp, #40
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	ldr	w8, [sp, #24]
	cbz	w8, LBB258_17
	b	LBB258_16
LBB258_16:
	b	LBB258_23
LBB258_17:
	b	LBB258_18
LBB258_18:
	ldur	x8, [x29, #-40]
	ldur	x9, [x29, #-32]
	subs	x8, x8, x9
	str	x8, [sp, #64]
	ldr	x8, [sp, #64]
	subs	x8, x8, #0
	b.le	LBB258_22
	b	LBB258_19
LBB258_19:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-32]
	ldr	x2, [sp, #64]
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne200100EPKcl
	ldr	x8, [sp, #64]
	subs	x8, x0, x8
	b.eq	LBB258_21
	b	LBB258_20
LBB258_20:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB258_23
LBB258_21:
	b	LBB258_22
LBB258_22:
	ldur	x0, [x29, #-48]
	mov	x1, #0                          ; =0x0
	bl	__ZNSt3__18ios_base5widthB8ne200100El
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB258_23
LBB258_23:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
LBB258_24:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
; %bb.25:
Lfunc_end21:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table258:
Lexception21:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end21-Lcst_begin21
Lcst_begin21:
	.uleb128 Lfunc_begin21-Lfunc_begin21    ; >> Call Site 1 <<
	.uleb128 Ltmp380-Lfunc_begin21          ;   Call between Lfunc_begin21 and Ltmp380
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp380-Lfunc_begin21          ; >> Call Site 2 <<
	.uleb128 Ltmp381-Ltmp380                ;   Call between Ltmp380 and Ltmp381
	.uleb128 Ltmp382-Lfunc_begin21          ;     jumps to Ltmp382
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp381-Lfunc_begin21          ; >> Call Site 3 <<
	.uleb128 Lfunc_end21-Ltmp381            ;   Call between Ltmp381 and Lfunc_end21
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end21:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B8ne200100ERNS_13basic_ostreamIcS2_EE ; -- Begin function _ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B8ne200100ERNS_13basic_ostreamIcS2_EE
	.globl	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B8ne200100ERNS_13basic_ostreamIcS2_EE
	.weak_def_can_be_hidden	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B8ne200100ERNS_13basic_ostreamIcS2_EE
	.p2align	2
__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B8ne200100ERNS_13basic_ostreamIcS2_EE: ; @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B8ne200100ERNS_13basic_ostreamIcS2_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne200100ERNS_13basic_ostreamIcS2_EE
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__18ios_base5flagsB8ne200100Ev ; -- Begin function _ZNKSt3__18ios_base5flagsB8ne200100Ev
	.globl	__ZNKSt3__18ios_base5flagsB8ne200100Ev
	.weak_definition	__ZNKSt3__18ios_base5flagsB8ne200100Ev
	.p2align	2
__ZNKSt3__18ios_base5flagsB8ne200100Ev: ; @_ZNKSt3__18ios_base5flagsB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w0, [x8, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne200100Ev ; -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne200100Ev
	.globl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne200100Ev
	.weak_definition	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne200100Ev
	.p2align	2
__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne200100Ev: ; @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	add	x0, x8, #144
	bl	__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB8ne200100Ev
	tbnz	w0, #0, LBB261_2
	b	LBB261_1
LBB261_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	mov	w1, #32                         ; =0x20
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne200100Ec
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	mov	x1, x0
	add	x0, x8, #144
	bl	__ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB8ne200100Ei
	b	LBB261_2
LBB261_2:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	add	x0, x8, #144
	bl	__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB8ne200100Ev
	sxtb	w0, w0
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB8ne200100Ev ; -- Begin function _ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB8ne200100Ev
	.globl	__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB8ne200100Ev
	.weak_definition	__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB8ne200100Ev
	.p2align	2
__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB8ne200100Ev: ; @_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	subs	x8, x8, #0
	cset	w0, eq
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__18ios_base5widthB8ne200100Ev ; -- Begin function _ZNKSt3__18ios_base5widthB8ne200100Ev
	.globl	__ZNKSt3__18ios_base5widthB8ne200100Ev
	.weak_definition	__ZNKSt3__18ios_base5widthB8ne200100Ev
	.p2align	2
__ZNKSt3__18ios_base5widthB8ne200100Ev: ; @_ZNKSt3__18ios_base5widthB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #24]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne200100EPKcl ; -- Begin function _ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne200100EPKcl
	.globl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne200100EPKcl
	.weak_definition	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne200100EPKcl
	.p2align	2
__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne200100EPKcl: ; @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne200100EPKcl
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	ldr	x8, [x0]
	ldr	x8, [x8, #96]
	blr	x8
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100Emc ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100Emc
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100Emc
	.weak_def_can_be_hidden	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100Emc
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100Emc: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100Emc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	strb	w2, [sp, #15]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldrsb	w2, [sp, #15]
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne200100Emc
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18ios_base5widthB8ne200100El ; -- Begin function _ZNSt3__18ios_base5widthB8ne200100El
	.globl	__ZNSt3__18ios_base5widthB8ne200100El
	.weak_definition	__ZNSt3__18ios_base5widthB8ne200100El
	.p2align	2
__ZNSt3__18ios_base5widthB8ne200100El:  ; @_ZNSt3__18ios_base5widthB8ne200100El
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x9, [sp, #24]
	ldr	x8, [x9, #24]
	str	x8, [sp, #8]
	ldr	x8, [sp, #16]
	str	x8, [x9, #24]
	ldr	x0, [sp, #8]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne200100Emc ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne200100Emc
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne200100Emc
	.weak_def_can_be_hidden	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne200100Emc
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne200100Emc: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne200100Emc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	strb	w2, [sp, #15]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__19allocatorIcEC1B8ne200100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x1, [sp, #16]
	ldrsb	w2, [sp, #15]
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne200100ERNS_13basic_ostreamIcS2_EE ; -- Begin function _ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne200100ERNS_13basic_ostreamIcS2_EE
	.globl	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne200100ERNS_13basic_ostreamIcS2_EE
	.weak_def_can_be_hidden	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne200100ERNS_13basic_ostreamIcS2_EE
	.p2align	2
__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne200100ERNS_13basic_ostreamIcS2_EE: ; @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne200100ERNS_13basic_ostreamIcS2_EE
Lfunc_begin22:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception22
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x8, [sp, #16]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
Ltmp387:
	add	x0, x8, x9
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne200100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp388:
	b	LBB268_1
LBB268_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	str	x8, [x0]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB268_2:
Ltmp389:
	bl	___clang_call_terminate
Lfunc_end22:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table268:
Lexception22:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase12-Lttbaseref12
Lttbaseref12:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end22-Lcst_begin22
Lcst_begin22:
	.uleb128 Ltmp387-Lfunc_begin22          ; >> Call Site 1 <<
	.uleb128 Ltmp388-Ltmp387                ;   Call between Ltmp387 and Ltmp388
	.uleb128 Ltmp389-Lfunc_begin22          ;     jumps to Ltmp389
	.byte	1                               ;   On action: 1
Lcst_end22:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase12:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB8ne200100Ev ; -- Begin function _ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB8ne200100Ev
	.globl	__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB8ne200100Ev
	.weak_definition	__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB8ne200100Ev
	.p2align	2
__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB8ne200100Ev: ; @_ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	bl	__ZNSt3__111char_traitsIcE3eofB8ne200100Ev
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	subs	w8, w8, w0
	cset	w0, ne
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB8ne200100Ei ; -- Begin function _ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB8ne200100Ei
	.globl	__ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB8ne200100Ei
	.weak_definition	__ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB8ne200100Ei
	.p2align	2
__ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB8ne200100Ei: ; @_ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB8ne200100Ei
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	x0, [sp, #8]
	ldr	w8, [sp, #4]
	str	w8, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB8ne200100Ev ; -- Begin function _ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB8ne200100Ev
	.globl	__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB8ne200100Ev
	.weak_definition	__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB8ne200100Ev
	.p2align	2
__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB8ne200100Ev: ; @_ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2B8ne200100EPNS_15basic_streambufIcS2_EE ; -- Begin function _ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2B8ne200100EPNS_15basic_streambufIcS2_EE
	.globl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2B8ne200100EPNS_15basic_streambufIcS2_EE
	.weak_def_can_be_hidden	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2B8ne200100EPNS_15basic_streambufIcS2_EE
	.p2align	2
__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2B8ne200100EPNS_15basic_streambufIcS2_EE: ; @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2B8ne200100EPNS_15basic_streambufIcS2_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x8, [x29, #-8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x9, [sp, #16]
	ldr	x10, [x9]
	str	x10, [x8]
	ldr	x9, [x9, #8]
	ldr	x10, [x8]
	ldur	x10, [x10, #-24]
	str	x9, [x8, x10]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	ldr	x1, [sp, #8]
	add	x0, x8, x9
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB8ne200100EPNS_15basic_streambufIcS2_EE
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIiNS_9allocatorIiEEEC2B8ne200100Em ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEEC2B8ne200100Em
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEEC2B8ne200100Em
	.weak_def_can_be_hidden	__ZNSt3__16vectorIiNS_9allocatorIiEEEC2B8ne200100Em
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEEC2B8ne200100Em: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEEC2B8ne200100Em
Lfunc_begin23:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception23
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	mov	x9, x8
	stur	x9, [x29, #-8]
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8]
	str	xzr, [x8, #8]
	str	xzr, [x8, #16]
	add	x0, x8, #16
	bl	__ZNSt3__19allocatorIiEC1B8ne200100Ev
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	add	x0, sp, #32
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE16__destroy_vectorC1B8ne200100ERS3_
	ldr	x0, [sp, #32]
	add	x8, sp, #40
	bl	__ZNSt3__122__make_exception_guardB8ne200100INS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES7_
	ldur	x8, [x29, #-24]
	subs	x8, x8, #0
	b.ls	LBB273_5
	b	LBB273_1
LBB273_1:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldur	x1, [x29, #-24]
Ltmp392:
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE11__vallocateB8ne200100Em
Ltmp393:
	b	LBB273_2
LBB273_2:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldur	x1, [x29, #-24]
Ltmp394:
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm
Ltmp395:
	b	LBB273_3
LBB273_3:
	b	LBB273_5
LBB273_4:
Ltmp396:
	str	x0, [sp, #24]
	mov	x8, x1
	str	w8, [sp, #20]
	add	x0, sp, #40
	bl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEED1B8ne200100Ev
	b	LBB273_6
LBB273_5:
	add	x0, sp, #40
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEE10__completeB8ne200100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEED1B8ne200100Ev
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
LBB273_6:
	ldr	x0, [sp, #24]
	bl	__Unwind_Resume
Lfunc_end23:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table273:
Lexception23:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end23-Lcst_begin23
Lcst_begin23:
	.uleb128 Lfunc_begin23-Lfunc_begin23    ; >> Call Site 1 <<
	.uleb128 Ltmp392-Lfunc_begin23          ;   Call between Lfunc_begin23 and Ltmp392
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp392-Lfunc_begin23          ; >> Call Site 2 <<
	.uleb128 Ltmp395-Ltmp392                ;   Call between Ltmp392 and Ltmp395
	.uleb128 Ltmp396-Lfunc_begin23          ;     jumps to Ltmp396
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp395-Lfunc_begin23          ; >> Call Site 3 <<
	.uleb128 Lfunc_end23-Ltmp395            ;   Call between Ltmp395 and Lfunc_end23
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end23:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__122__make_exception_guardB8ne200100INS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES7_ ; -- Begin function _ZNSt3__122__make_exception_guardB8ne200100INS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES7_
	.globl	__ZNSt3__122__make_exception_guardB8ne200100INS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES7_
	.weak_definition	__ZNSt3__122__make_exception_guardB8ne200100INS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES7_
	.p2align	2
__ZNSt3__122__make_exception_guardB8ne200100INS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES7_: ; @_ZNSt3__122__make_exception_guardB8ne200100INS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES7_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x8, [sp]                        ; 8-byte Folded Spill
	mov	x8, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	mov	x9, x0
	stur	x9, [x29, #-8]
	str	x8, [sp, #16]
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]
	ldr	x1, [sp, #8]
	bl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEEC1B8ne200100ES5_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm
	.weak_definition	__ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm
Lfunc_begin24:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception24
; %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x1, [x29, #-8]
	str	x1, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x2, [x29, #-16]
	sub	x0, x29, #40
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC1B8ne200100ERS3_m
	ldur	x8, [x29, #-24]
	str	x8, [sp, #48]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #40]
	b	LBB275_1
LBB275_1:                               ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #40]
	ldr	x9, [sp, #48]
	subs	x8, x8, x9
	b.eq	LBB275_6
	b	LBB275_2
LBB275_2:                               ;   in Loop: Header=BB275_1 Depth=1
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	add	x8, x8, #16
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x0, [sp, #40]
	bl	__ZNSt3__112__to_addressB8ne200100IiEEPT_S2_
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
Ltmp397:
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIiEEE9constructB8ne200100IiJELi0EEEvRS2_PT_DpOT0_
Ltmp398:
	b	LBB275_3
LBB275_3:                               ;   in Loop: Header=BB275_1 Depth=1
	b	LBB275_4
LBB275_4:                               ;   in Loop: Header=BB275_1 Depth=1
	ldr	x8, [sp, #40]
	add	x8, x8, #4
	mov	x9, x8
	str	x9, [sp, #40]
	stur	x8, [x29, #-32]
	b	LBB275_1
LBB275_5:
Ltmp399:
	str	x0, [sp, #32]
	mov	x8, x1
	str	w8, [sp, #28]
	sub	x0, x29, #40
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD1B8ne200100Ev
	b	LBB275_7
LBB275_6:
	sub	x0, x29, #40
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD1B8ne200100Ev
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB275_7:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
Lfunc_end24:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table275:
Lexception24:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end24-Lcst_begin24
Lcst_begin24:
	.uleb128 Lfunc_begin24-Lfunc_begin24    ; >> Call Site 1 <<
	.uleb128 Ltmp397-Lfunc_begin24          ;   Call between Lfunc_begin24 and Ltmp397
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp397-Lfunc_begin24          ; >> Call Site 2 <<
	.uleb128 Ltmp398-Ltmp397                ;   Call between Ltmp397 and Ltmp398
	.uleb128 Ltmp399-Lfunc_begin24          ;     jumps to Ltmp399
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp398-Lfunc_begin24          ; >> Call Site 3 <<
	.uleb128 Lfunc_end24-Ltmp398            ;   Call between Ltmp398 and Lfunc_end24
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end24:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEE10__completeB8ne200100Ev ; -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEE10__completeB8ne200100Ev
	.globl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEE10__completeB8ne200100Ev
	.weak_definition	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEE10__completeB8ne200100Ev
	.p2align	2
__ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEE10__completeB8ne200100Ev: ; @_ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEE10__completeB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	mov	w8, #1                          ; =0x1
	strb	w8, [x9, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEED1B8ne200100Ev ; -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEED1B8ne200100Ev
	.globl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEED1B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEED1B8ne200100Ev
	.p2align	2
__ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEED1B8ne200100Ev: ; @_ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEED1B8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEED2B8ne200100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEEC1B8ne200100ES5_ ; -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEEC1B8ne200100ES5_
	.globl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEEC1B8ne200100ES5_
	.weak_def_can_be_hidden	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEEC1B8ne200100ES5_
	.p2align	2
__ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEEC1B8ne200100ES5_: ; @_ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEEC1B8ne200100ES5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x1, [x29, #-8]
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x1, [x29, #-8]
	bl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEEC2B8ne200100ES5_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEEC2B8ne200100ES5_ ; -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEEC2B8ne200100ES5_
	.globl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEEC2B8ne200100ES5_
	.weak_def_can_be_hidden	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEEC2B8ne200100ES5_
	.p2align	2
__ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEEC2B8ne200100ES5_: ; @_ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEEC2B8ne200100ES5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x1, [sp, #8]
	str	x0, [sp]
	ldr	x0, [sp]
	ldr	x8, [sp, #8]
	str	x8, [x0]
	strb	wzr, [x0, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIiEEE9constructB8ne200100IiJELi0EEEvRS2_PT_DpOT0_ ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIiEEE9constructB8ne200100IiJELi0EEEvRS2_PT_DpOT0_
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIiEEE9constructB8ne200100IiJELi0EEEvRS2_PT_DpOT0_
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIiEEE9constructB8ne200100IiJELi0EEEvRS2_PT_DpOT0_: ; @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE9constructB8ne200100IiJELi0EEEvRS2_PT_DpOT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNSt3__19allocatorIiE9constructB8ne200100IiJEEEvPT_DpOT0_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__19allocatorIiE9constructB8ne200100IiJEEEvPT_DpOT0_ ; -- Begin function _ZNSt3__19allocatorIiE9constructB8ne200100IiJEEEvPT_DpOT0_
	.weak_definition	__ZNSt3__19allocatorIiE9constructB8ne200100IiJEEEvPT_DpOT0_
	.p2align	2
__ZNSt3__19allocatorIiE9constructB8ne200100IiJEEEvPT_DpOT0_: ; @_ZNSt3__19allocatorIiE9constructB8ne200100IiJEEEvPT_DpOT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x8, [sp]
	str	wzr, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEED2B8ne200100Ev ; -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEED2B8ne200100Ev
	.globl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEED2B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEED2B8ne200100Ev
	.p2align	2
__ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEED2B8ne200100Ev: ; @_ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEED2B8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	mov	x9, x8
	stur	x9, [x29, #-8]
	ldrb	w8, [x8, #8]
	tbnz	w8, #0, LBB282_2
	b	LBB282_1
LBB282_1:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE16__destroy_vectorclB8ne200100Ev
	b	LBB282_2
LBB282_2:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__124uniform_int_distributionIiEC2B8ne200100Eii ; -- Begin function _ZNSt3__124uniform_int_distributionIiEC2B8ne200100Eii
	.globl	__ZNSt3__124uniform_int_distributionIiEC2B8ne200100Eii
	.weak_def_can_be_hidden	__ZNSt3__124uniform_int_distributionIiEC2B8ne200100Eii
	.p2align	2
__ZNSt3__124uniform_int_distributionIiEC2B8ne200100Eii: ; @_ZNSt3__124uniform_int_distributionIiEC2B8ne200100Eii
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	str	w2, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	w1, [x29, #-12]
	ldr	w2, [sp, #16]
	bl	__ZNSt3__124uniform_int_distributionIiE10param_typeC1B8ne200100Eii
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__124uniform_int_distributionIiE10param_typeC1B8ne200100Eii ; -- Begin function _ZNSt3__124uniform_int_distributionIiE10param_typeC1B8ne200100Eii
	.globl	__ZNSt3__124uniform_int_distributionIiE10param_typeC1B8ne200100Eii
	.weak_def_can_be_hidden	__ZNSt3__124uniform_int_distributionIiE10param_typeC1B8ne200100Eii
	.p2align	2
__ZNSt3__124uniform_int_distributionIiE10param_typeC1B8ne200100Eii: ; @_ZNSt3__124uniform_int_distributionIiE10param_typeC1B8ne200100Eii
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	str	w2, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	w1, [x29, #-12]
	ldr	w2, [sp, #16]
	bl	__ZNSt3__124uniform_int_distributionIiE10param_typeC2B8ne200100Eii
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__124uniform_int_distributionIiE10param_typeC2B8ne200100Eii ; -- Begin function _ZNSt3__124uniform_int_distributionIiE10param_typeC2B8ne200100Eii
	.globl	__ZNSt3__124uniform_int_distributionIiE10param_typeC2B8ne200100Eii
	.weak_def_can_be_hidden	__ZNSt3__124uniform_int_distributionIiE10param_typeC2B8ne200100Eii
	.p2align	2
__ZNSt3__124uniform_int_distributionIiE10param_typeC2B8ne200100Eii: ; @_ZNSt3__124uniform_int_distributionIiE10param_typeC2B8ne200100Eii
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	str	w2, [sp]
	ldr	x0, [sp, #8]
	ldr	w8, [sp, #4]
	str	w8, [x0]
	ldr	w8, [sp]
	str	w8, [x0, #4]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIiNS_9allocatorIiEEE11__make_iterB8ne200100EPi ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE11__make_iterB8ne200100EPi
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEE11__make_iterB8ne200100EPi
	.weak_definition	__ZNSt3__16vectorIiNS_9allocatorIiEEE11__make_iterB8ne200100EPi
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEE11__make_iterB8ne200100EPi: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEE11__make_iterB8ne200100EPi
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x1, [sp, #8]
	sub	x0, x29, #8
	bl	__ZNSt3__111__wrap_iterIPiEC1B8ne200100ES1_
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEE26__add_alignment_assumptionB8ne200100IPiLi0EEES5_T_ ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE26__add_alignment_assumptionB8ne200100IPiLi0EEES5_T_
	.weak_definition	__ZNSt3__16vectorIiNS_9allocatorIiEEE26__add_alignment_assumptionB8ne200100IPiLi0EEES5_T_
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEE26__add_alignment_assumptionB8ne200100IPiLi0EEES5_T_: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEE26__add_alignment_assumptionB8ne200100IPiLi0EEES5_T_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__111__wrap_iterIPiEC1B8ne200100ES1_ ; -- Begin function _ZNSt3__111__wrap_iterIPiEC1B8ne200100ES1_
	.globl	__ZNSt3__111__wrap_iterIPiEC1B8ne200100ES1_
	.weak_def_can_be_hidden	__ZNSt3__111__wrap_iterIPiEC1B8ne200100ES1_
	.p2align	2
__ZNSt3__111__wrap_iterIPiEC1B8ne200100ES1_: ; @_ZNSt3__111__wrap_iterIPiEC1B8ne200100ES1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__111__wrap_iterIPiEC2B8ne200100ES1_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__111__wrap_iterIPiEC2B8ne200100ES1_ ; -- Begin function _ZNSt3__111__wrap_iterIPiEC2B8ne200100ES1_
	.globl	__ZNSt3__111__wrap_iterIPiEC2B8ne200100ES1_
	.weak_def_can_be_hidden	__ZNSt3__111__wrap_iterIPiEC2B8ne200100ES1_
	.p2align	2
__ZNSt3__111__wrap_iterIPiEC2B8ne200100ES1_: ; @_ZNSt3__111__wrap_iterIPiEC2B8ne200100ES1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x8, [sp]
	str	x8, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__124uniform_int_distributionIiEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEiRT_RKNS1_10param_typeE ; -- Begin function _ZNSt3__124uniform_int_distributionIiEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEiRT_RKNS1_10param_typeE
	.weak_definition	__ZNSt3__124uniform_int_distributionIiEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEiRT_RKNS1_10param_typeE
	.p2align	2
__ZNSt3__124uniform_int_distributionIiEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEiRT_RKNS1_10param_typeE: ; @_ZNSt3__124uniform_int_distributionIiEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEiRT_RKNS1_10param_typeE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #240
	stp	x29, x30, [sp, #224]            ; 16-byte Folded Spill
	add	x29, sp, #224
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	sub	x8, x29, #32
	str	x8, [sp, #40]                   ; 8-byte Folded Spill
	str	x0, [x8, #16]
	str	x1, [x8, #8]
	str	x2, [x8]
	ldr	x0, [x8]
	bl	__ZNKSt3__124uniform_int_distributionIiE10param_type1bB8ne200100Ev
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	str	w0, [sp, #48]                   ; 4-byte Folded Spill
	ldr	x0, [x8]
	bl	__ZNKSt3__124uniform_int_distributionIiE10param_type1aB8ne200100Ev
	mov	x8, x0
	ldr	w0, [sp, #48]                   ; 4-byte Folded Reload
	subs	w8, w0, w8
	add	w8, w8, #1
	stur	w8, [x29, #-36]
	ldur	w8, [x29, #-36]
	subs	w8, w8, #1
	b.ne	LBB290_2
	b	LBB290_1
LBB290_1:
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	bl	__ZNKSt3__124uniform_int_distributionIiE10param_type1aB8ne200100Ev
	stur	w0, [x29, #-4]
	b	LBB290_10
LBB290_2:
	mov	x8, #32                         ; =0x20
	stur	x8, [x29, #-48]
	ldur	w8, [x29, #-36]
	cbnz	w8, LBB290_4
	b	LBB290_3
LBB290_3:
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	ldr	x1, [x8, #8]
	sub	x0, x29, #104
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
	mov	x2, #32                         ; =0x20
	bl	__ZNSt3__125__independent_bits_engineINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEjEC1ERS2_m
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	bl	__ZNSt3__125__independent_bits_engineINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEjEclB8ne200100Ev
	stur	w0, [x29, #-4]
	b	LBB290_10
LBB290_4:
	ldur	w0, [x29, #-36]
	bl	__ZNSt3__113__countl_zeroB8ne200100IjEEiT_
	mov	x8, #32                         ; =0x20
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	subs	x8, x8, w0, sxtw
	subs	x8, x8, #1
	str	x8, [sp, #112]
	ldur	w8, [x29, #-36]
	str	w8, [sp, #28]                   ; 4-byte Folded Spill
	bl	__ZNSt3__114numeric_limitsIjE3maxB8ne200100Ev
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldr	w8, [sp, #28]                   ; 4-byte Folded Reload
	ldr	x10, [sp, #112]
	subs	x9, x9, x10
                                        ; kill: def $w9 killed $w9 killed $x9
	lsr	w9, w0, w9
	and	w8, w8, w9
	cbz	w8, LBB290_6
	b	LBB290_5
LBB290_5:
	ldr	x8, [sp, #112]
	add	x8, x8, #1
	str	x8, [sp, #112]
	b	LBB290_6
LBB290_6:
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	ldr	x1, [x8, #8]
	ldr	x2, [sp, #112]
	add	x0, sp, #56
	bl	__ZNSt3__125__independent_bits_engineINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEjEC1ERS2_m
	b	LBB290_7
LBB290_7:                               ; =>This Inner Loop Header: Depth=1
	add	x0, sp, #56
	bl	__ZNSt3__125__independent_bits_engineINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEjEclB8ne200100Ev
	str	w0, [sp, #52]
	b	LBB290_8
LBB290_8:                               ;   in Loop: Header=BB290_7 Depth=1
	ldr	w8, [sp, #52]
	ldur	w9, [x29, #-36]
	subs	w8, w8, w9
	b.hs	LBB290_7
	b	LBB290_9
LBB290_9:
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	ldr	w9, [sp, #52]
	str	w9, [sp, #12]                   ; 4-byte Folded Spill
	ldr	x0, [x8]
	bl	__ZNKSt3__124uniform_int_distributionIiE10param_type1aB8ne200100Ev
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	add	w8, w8, w0
	stur	w8, [x29, #-4]
	b	LBB290_10
LBB290_10:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #224]            ; 16-byte Folded Reload
	add	sp, sp, #240
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__124uniform_int_distributionIiE10param_type1bB8ne200100Ev ; -- Begin function _ZNKSt3__124uniform_int_distributionIiE10param_type1bB8ne200100Ev
	.globl	__ZNKSt3__124uniform_int_distributionIiE10param_type1bB8ne200100Ev
	.weak_definition	__ZNKSt3__124uniform_int_distributionIiE10param_type1bB8ne200100Ev
	.p2align	2
__ZNKSt3__124uniform_int_distributionIiE10param_type1bB8ne200100Ev: ; @_ZNKSt3__124uniform_int_distributionIiE10param_type1bB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w0, [x8, #4]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__124uniform_int_distributionIiE10param_type1aB8ne200100Ev ; -- Begin function _ZNKSt3__124uniform_int_distributionIiE10param_type1aB8ne200100Ev
	.globl	__ZNKSt3__124uniform_int_distributionIiE10param_type1aB8ne200100Ev
	.weak_definition	__ZNKSt3__124uniform_int_distributionIiE10param_type1aB8ne200100Ev
	.p2align	2
__ZNKSt3__124uniform_int_distributionIiE10param_type1aB8ne200100Ev: ; @_ZNKSt3__124uniform_int_distributionIiE10param_type1aB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__125__independent_bits_engineINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEjEC1ERS2_m ; -- Begin function _ZNSt3__125__independent_bits_engineINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEjEC1ERS2_m
	.globl	__ZNSt3__125__independent_bits_engineINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEjEC1ERS2_m
	.weak_def_can_be_hidden	__ZNSt3__125__independent_bits_engineINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEjEC1ERS2_m
	.p2align	2
__ZNSt3__125__independent_bits_engineINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEjEC1ERS2_m: ; @_ZNSt3__125__independent_bits_engineINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEjEC1ERS2_m
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__125__independent_bits_engineINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEjEC2ERS2_m
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__125__independent_bits_engineINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEjEclB8ne200100Ev ; -- Begin function _ZNSt3__125__independent_bits_engineINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEjEclB8ne200100Ev
	.globl	__ZNSt3__125__independent_bits_engineINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEjEclB8ne200100Ev
	.weak_definition	__ZNSt3__125__independent_bits_engineINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEjEclB8ne200100Ev
	.p2align	2
__ZNSt3__125__independent_bits_engineINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEjEclB8ne200100Ev: ; @_ZNSt3__125__independent_bits_engineINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEjEclB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__125__independent_bits_engineINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEjE6__evalENS_17integral_constantIbLb0EEE
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__113__countl_zeroB8ne200100IjEEiT_ ; -- Begin function _ZNSt3__113__countl_zeroB8ne200100IjEEiT_
	.globl	__ZNSt3__113__countl_zeroB8ne200100IjEEiT_
	.weak_definition	__ZNSt3__113__countl_zeroB8ne200100IjEEiT_
	.p2align	2
__ZNSt3__113__countl_zeroB8ne200100IjEEiT_: ; @_ZNSt3__113__countl_zeroB8ne200100IjEEiT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, #12]
	ldr	w10, [sp, #12]
	clz	w9, w10
	mov	w8, #32                         ; =0x20
	subs	w10, w10, #0
	csel	w0, w8, w9, eq
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114numeric_limitsIjE3maxB8ne200100Ev ; -- Begin function _ZNSt3__114numeric_limitsIjE3maxB8ne200100Ev
	.globl	__ZNSt3__114numeric_limitsIjE3maxB8ne200100Ev
	.weak_definition	__ZNSt3__114numeric_limitsIjE3maxB8ne200100Ev
	.p2align	2
__ZNSt3__114numeric_limitsIjE3maxB8ne200100Ev: ; @_ZNSt3__114numeric_limitsIjE3maxB8ne200100Ev
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	__ZNSt3__123__libcpp_numeric_limitsIjLb1EE3maxB8ne200100Ev
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__125__independent_bits_engineINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEjEC2ERS2_m ; -- Begin function _ZNSt3__125__independent_bits_engineINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEjEC2ERS2_m
	.globl	__ZNSt3__125__independent_bits_engineINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEjEC2ERS2_m
	.weak_def_can_be_hidden	__ZNSt3__125__independent_bits_engineINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEjEC2ERS2_m
	.p2align	2
__ZNSt3__125__independent_bits_engineINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEjEC2ERS2_m: ; @_ZNSt3__125__independent_bits_engineINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEjEC2ERS2_m
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, #32]
	str	x1, [sp, #24]
	str	x2, [sp, #16]
	ldr	x10, [sp, #32]
	str	x10, [sp, #8]                   ; 8-byte Folded Spill
	mov	x8, x10
	str	x8, [sp, #40]
	ldr	x8, [sp, #24]
	str	x8, [x10]
	ldr	x8, [sp, #16]
	str	x8, [x10, #8]
	ldr	x8, [x10, #8]
	mov	x12, #32                        ; =0x20
	udiv	x8, x8, x12
	ldr	x9, [x10, #8]
	udiv	x11, x9, x12
	mul	x11, x11, x12
	subs	x9, x9, x11
	subs	x9, x9, #0
	cset	w11, ne
                                        ; implicit-def: $x9
	mov	x9, x11
	and	x9, x9, #0x1
	add	x8, x8, x9
	str	x8, [x10, #24]
	ldr	x8, [x10, #8]
	ldr	x9, [x10, #24]
	udiv	x8, x8, x9
	str	x8, [x10, #16]
	mov	w8, #0                          ; =0x0
	str	wzr, [x10, #40]
	ldr	w9, [x10, #40]
	subs	w8, w8, w9
	mov	w8, w8
                                        ; kill: def $x8 killed $w8
	ldr	w9, [x10, #40]
                                        ; kill: def $x9 killed $w9
	ldr	x10, [x10, #24]
	udiv	x9, x9, x10
	subs	x8, x8, x9
	b.ls	LBB297_5
	b	LBB297_1
LBB297_1:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x9, [x8, #24]
	add	x9, x9, #1
	str	x9, [x8, #24]
	ldr	x9, [x8, #8]
	ldr	x10, [x8, #24]
	udiv	x9, x9, x10
	str	x9, [x8, #16]
	ldr	x8, [x8, #16]
	subs	x8, x8, #32
	b.hs	LBB297_3
	b	LBB297_2
LBB297_2:
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [x9, #16]
	mov	x10, x8
	mov	w8, #0                          ; =0x0
	lsr	w8, w8, w10
	ldr	x10, [x9, #16]
                                        ; kill: def $w10 killed $w10 killed $x10
	lsl	w8, w8, w10
	str	w8, [x9, #40]
	b	LBB297_4
LBB297_3:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	str	wzr, [x8, #40]
	b	LBB297_4
LBB297_4:
	b	LBB297_5
LBB297_5:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x9, [x8, #24]
	ldr	x10, [x8, #8]
	ldr	x12, [x8, #24]
	udiv	x11, x10, x12
	mul	x11, x11, x12
	subs	x10, x10, x11
	subs	x9, x9, x10
	str	x9, [x8, #32]
	ldr	x8, [x8, #16]
	subs	x8, x8, #31
	b.hs	LBB297_7
	b	LBB297_6
LBB297_6:
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [x9, #16]
	add	x8, x8, #1
	mov	x10, x8
	mov	w8, #0                          ; =0x0
	lsr	w8, w8, w10
	ldr	x10, [x9, #16]
	add	x10, x10, #1
                                        ; kill: def $w10 killed $w10 killed $x10
	lsl	w8, w8, w10
	str	w8, [x9, #44]
	b	LBB297_8
LBB297_7:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	str	wzr, [x8, #44]
	b	LBB297_8
LBB297_8:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [x8, #16]
	subs	x8, x8, #0
	b.ls	LBB297_10
	b	LBB297_9
LBB297_9:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x9, [x8, #16]
	mov	x8, #32                         ; =0x20
	subs	x8, x8, x9
	mov	x9, x8
	mov	w8, #-1                         ; =0xffffffff
	lsr	w8, w8, w9
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	b	LBB297_11
LBB297_10:
	mov	w8, #0                          ; =0x0
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	b	LBB297_11
LBB297_11:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	w9, [sp, #4]                    ; 4-byte Folded Reload
	str	w9, [x8, #48]
	ldr	x8, [x8, #16]
	subs	x8, x8, #31
	b.hs	LBB297_13
	b	LBB297_12
LBB297_12:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [x8, #16]
	add	x9, x8, #1
	mov	x8, #32                         ; =0x20
	subs	x8, x8, x9
	mov	x9, x8
	mov	w8, #-1                         ; =0xffffffff
	lsr	w8, w8, w9
	str	w8, [sp]                        ; 4-byte Folded Spill
	b	LBB297_14
LBB297_13:
	mov	w8, #-1                         ; =0xffffffff
	str	w8, [sp]                        ; 4-byte Folded Spill
	b	LBB297_14
LBB297_14:
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	ldr	w8, [sp]                        ; 4-byte Folded Reload
	str	w8, [x9, #52]
	ldr	x0, [sp, #40]
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__125__independent_bits_engineINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEjE6__evalENS_17integral_constantIbLb0EEE ; -- Begin function _ZNSt3__125__independent_bits_engineINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEjE6__evalENS_17integral_constantIbLb0EEE
	.globl	__ZNSt3__125__independent_bits_engineINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEjE6__evalENS_17integral_constantIbLb0EEE
	.weak_definition	__ZNSt3__125__independent_bits_engineINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEjE6__evalENS_17integral_constantIbLb0EEE
	.p2align	2
__ZNSt3__125__independent_bits_engineINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEjE6__evalENS_17integral_constantIbLb0EEE: ; @_ZNSt3__125__independent_bits_engineINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEjE6__evalENS_17integral_constantIbLb0EEE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x0, [x8]
	bl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEclEv
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	w8, [x8, #48]
	and	w0, w0, w8
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEclEv ; -- Begin function _ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEclEv
	.globl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEclEv
	.weak_definition	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEclEv
	.p2align	2
__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEclEv: ; @_ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEclEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldr	x9, [x8, #2496]
	add	x9, x9, #1
	mov	x11, #624                       ; =0x270
	udiv	x10, x9, x11
	mul	x10, x10, x11
	subs	x9, x9, x10
	stur	x9, [x29, #-16]
	mov	w9, #2147483647                 ; =0x7fffffff
	stur	w9, [x29, #-20]
	ldr	x9, [x8, #2496]
	ldr	w9, [x8, x9, lsl #2]
	and	w9, w9, #0x80000000
	ldur	x10, [x29, #-16]
	ldr	w10, [x8, x10, lsl #2]
	and	w10, w10, #0x7fffffff
	orr	w9, w9, w10
	stur	w9, [x29, #-24]
	ldr	x9, [x8, #2496]
	add	x9, x9, #397
	udiv	x10, x9, x11
	mul	x10, x10, x11
	subs	x9, x9, x10
	str	x9, [sp, #32]
	ldr	x9, [sp, #32]
	ldr	w8, [x8, x9, lsl #2]
	str	w8, [sp, #8]                    ; 4-byte Folded Spill
	ldur	w0, [x29, #-24]
	bl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB8ne200100ILm1ELi0EEEjj
	ldr	w9, [sp, #8]                    ; 4-byte Folded Reload
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	eor	w9, w9, w0
	ldur	w10, [x29, #-24]
	and	w11, w10, #0x1
	mov	w10, #45279                     ; =0xb0df
	movk	w10, #39176, lsl #16
	mul	w10, w10, w11
	eor	w9, w9, w10
	ldr	x10, [x8, #2496]
	str	w9, [x8, x10, lsl #2]
	ldr	x9, [x8, #2496]
	ldr	w9, [x8, x9, lsl #2]
	str	w9, [sp, #12]                   ; 4-byte Folded Spill
	ldr	x9, [x8, #2496]
	ldr	w0, [x8, x9, lsl #2]
	bl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB8ne200100ILm11ELi0EEEjj
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	mov	w10, #-1                        ; =0xffffffff
	and	w10, w0, w10
	eor	w8, w8, w10
	str	w8, [sp, #28]
	ldur	x8, [x29, #-16]
	str	x8, [x9, #2496]
	ldr	w0, [sp, #28]
	bl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__lshiftB8ne200100ILm7ELi0EEEjj
	mov	w8, #22144                      ; =0x5680
	movk	w8, #40236, lsl #16
	and	w9, w0, w8
	ldr	w8, [sp, #28]
	eor	w8, w8, w9
	str	w8, [sp, #28]
	ldr	w0, [sp, #28]
	bl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__lshiftB8ne200100ILm15ELi0EEEjj
	mov	w8, #-272236544                 ; =0xefc60000
	and	w9, w0, w8
	ldr	w8, [sp, #28]
	eor	w8, w8, w9
	str	w8, [sp, #28]
	ldr	w8, [sp, #28]
	str	w8, [sp, #24]                   ; 4-byte Folded Spill
	ldr	w0, [sp, #28]
	bl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB8ne200100ILm18ELi0EEEjj
	ldr	w8, [sp, #24]                   ; 4-byte Folded Reload
	eor	w0, w8, w0
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB8ne200100ILm1ELi0EEEjj ; -- Begin function _ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB8ne200100ILm1ELi0EEEjj
	.weak_definition	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB8ne200100ILm1ELi0EEEjj
	.p2align	2
__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB8ne200100ILm1ELi0EEEjj: ; @_ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB8ne200100ILm1ELi0EEEjj
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, #12]
	ldr	w8, [sp, #12]
	lsr	w0, w8, #1
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB8ne200100ILm11ELi0EEEjj ; -- Begin function _ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB8ne200100ILm11ELi0EEEjj
	.weak_definition	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB8ne200100ILm11ELi0EEEjj
	.p2align	2
__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB8ne200100ILm11ELi0EEEjj: ; @_ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB8ne200100ILm11ELi0EEEjj
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, #12]
	ldr	w8, [sp, #12]
	lsr	w0, w8, #11
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__lshiftB8ne200100ILm7ELi0EEEjj ; -- Begin function _ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__lshiftB8ne200100ILm7ELi0EEEjj
	.weak_definition	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__lshiftB8ne200100ILm7ELi0EEEjj
	.p2align	2
__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__lshiftB8ne200100ILm7ELi0EEEjj: ; @_ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__lshiftB8ne200100ILm7ELi0EEEjj
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, #12]
	ldr	w9, [sp, #12]
	mov	w8, #-1                         ; =0xffffffff
	and	w0, w8, w9, lsl #7
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__lshiftB8ne200100ILm15ELi0EEEjj ; -- Begin function _ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__lshiftB8ne200100ILm15ELi0EEEjj
	.weak_definition	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__lshiftB8ne200100ILm15ELi0EEEjj
	.p2align	2
__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__lshiftB8ne200100ILm15ELi0EEEjj: ; @_ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__lshiftB8ne200100ILm15ELi0EEEjj
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, #12]
	ldr	w9, [sp, #12]
	mov	w8, #-1                         ; =0xffffffff
	and	w0, w8, w9, lsl #15
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB8ne200100ILm18ELi0EEEjj ; -- Begin function _ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB8ne200100ILm18ELi0EEEjj
	.weak_definition	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB8ne200100ILm18ELi0EEEjj
	.p2align	2
__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB8ne200100ILm18ELi0EEEjj: ; @_ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB8ne200100ILm18ELi0EEEjj
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, #12]
	ldr	w8, [sp, #12]
	lsr	w0, w8, #18
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__123__libcpp_numeric_limitsIjLb1EE3maxB8ne200100Ev ; -- Begin function _ZNSt3__123__libcpp_numeric_limitsIjLb1EE3maxB8ne200100Ev
	.globl	__ZNSt3__123__libcpp_numeric_limitsIjLb1EE3maxB8ne200100Ev
	.weak_definition	__ZNSt3__123__libcpp_numeric_limitsIjLb1EE3maxB8ne200100Ev
	.p2align	2
__ZNSt3__123__libcpp_numeric_limitsIjLb1EE3maxB8ne200100Ev: ; @_ZNSt3__123__libcpp_numeric_limitsIjLb1EE3maxB8ne200100Ev
	.cfi_startproc
; %bb.0:
	mov	w0, #-1                         ; =0xffffffff
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZZ4mainENK3$_0clEv
__ZZ4mainENK3$_0clEv:                   ; @"_ZZ4mainENK3$_0clEv"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	ldr	x1, [x8, #8]
	ldr	x2, [x8, #16]
	ldr	x8, [x8, #24]
	ldr	w3, [x8]
	bl	__ZL16classic_poly_addRKNSt3__16vectorIiNS_9allocatorIiEEEES5_RS3_i
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16chronomiB8ne200100INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE ; -- Begin function _ZNSt3__16chronomiB8ne200100INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.globl	__ZNSt3__16chronomiB8ne200100INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.weak_definition	__ZNSt3__16chronomiB8ne200100INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.p2align	2
__ZNSt3__16chronomiB8ne200100INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE: ; @_ZNSt3__16chronomiB8ne200100INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	ldur	x0, [x29, #-16]
	bl	__ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochB8ne200100Ev
	add	x8, sp, #16
	str	x8, [sp]                        ; 8-byte Folded Spill
	str	x0, [sp, #16]
	ldr	x0, [sp, #24]
	bl	__ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochB8ne200100Ev
	mov	x8, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	add	x1, sp, #8
	str	x8, [sp, #8]
	bl	__ZNSt3__16chronomiB8ne200100IxNS_5ratioILl1ELl1000000000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B8ne200100IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE ; -- Begin function _ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B8ne200100IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE
	.weak_def_can_be_hidden	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B8ne200100IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE
	.p2align	2
__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B8ne200100IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE: ; @_ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B8ne200100IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2B8ne200100IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEE5countB8ne200100Ev ; -- Begin function _ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEE5countB8ne200100Ev
	.globl	__ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEE5countB8ne200100Ev
	.weak_definition	__ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEE5countB8ne200100Ev
	.p2align	2
__ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEE5countB8ne200100Ev: ; @_ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEE5countB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	d0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZL16classic_poly_addRKNSt3__16vectorIiNS_9allocatorIiEEEES5_RS3_i
__ZL16classic_poly_addRKNSt3__16vectorIiNS_9allocatorIiEEEES5_RS3_i: ; @_ZL16classic_poly_addRKNSt3__16vectorIiNS_9allocatorIiEEEES5_RS3_i
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	str	w3, [sp, #20]
	ldur	x0, [x29, #-8]
	bl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeB8ne200100Ev
	mov	x8, x0
	str	w8, [sp, #16]
	str	wzr, [sp, #12]
	b	LBB310_1
LBB310_1:                               ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #16]
	subs	w8, w8, w9
	b.ge	LBB310_4
	b	LBB310_2
LBB310_2:                               ;   in Loop: Header=BB310_1 Depth=1
	ldur	x0, [x29, #-8]
	ldrsw	x1, [sp, #12]
	bl	__ZNKSt3__16vectorIiNS_9allocatorIiEEEixB8ne200100Em
	ldr	w8, [x0]
	str	w8, [sp]                        ; 4-byte Folded Spill
	ldur	x0, [x29, #-16]
	ldrsw	x1, [sp, #12]
	bl	__ZNKSt3__16vectorIiNS_9allocatorIiEEEixB8ne200100Em
	ldr	w8, [sp]                        ; 4-byte Folded Reload
	ldr	w9, [x0]
	add	w8, w8, w9
	str	w8, [sp, #8]
	ldr	w8, [sp, #8]
	ldr	w10, [sp, #20]
	sdiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w8, w8, w9
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	ldr	x0, [sp, #24]
	ldrsw	x1, [sp, #12]
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEEixB8ne200100Em
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	str	w8, [x0]
	b	LBB310_3
LBB310_3:                               ;   in Loop: Header=BB310_1 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	LBB310_1
LBB310_4:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIiNS_9allocatorIiEEEixB8ne200100Em ; -- Begin function _ZNKSt3__16vectorIiNS_9allocatorIiEEEixB8ne200100Em
	.globl	__ZNKSt3__16vectorIiNS_9allocatorIiEEEixB8ne200100Em
	.weak_definition	__ZNKSt3__16vectorIiNS_9allocatorIiEEEixB8ne200100Em
	.p2align	2
__ZNKSt3__16vectorIiNS_9allocatorIiEEEixB8ne200100Em: ; @_ZNKSt3__16vectorIiNS_9allocatorIiEEEixB8ne200100Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x9, [sp]
	add	x0, x8, x9, lsl #2
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16chronomiB8ne200100IxNS_5ratioILl1ELl1000000000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_ ; -- Begin function _ZNSt3__16chronomiB8ne200100IxNS_5ratioILl1ELl1000000000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_
	.globl	__ZNSt3__16chronomiB8ne200100IxNS_5ratioILl1ELl1000000000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_
	.weak_definition	__ZNSt3__16chronomiB8ne200100IxNS_5ratioILl1ELl1000000000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_
	.p2align	2
__ZNSt3__16chronomiB8ne200100IxNS_5ratioILl1ELl1000000000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_: ; @_ZNSt3__16chronomiB8ne200100IxNS_5ratioILl1ELl1000000000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	add	x0, sp, #24
	str	x8, [sp, #24]
	bl	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB8ne200100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	add	x0, sp, #16
	str	x8, [sp, #16]
	bl	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB8ne200100Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	subs	x8, x0, x8
	add	x1, sp, #32
	str	x8, [sp, #32]
	sub	x0, x29, #8
	bl	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1B8ne200100IxLi0EEERKT_
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochB8ne200100Ev ; -- Begin function _ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochB8ne200100Ev
	.globl	__ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochB8ne200100Ev
	.weak_definition	__ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochB8ne200100Ev
	.p2align	2
__ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochB8ne200100Ev: ; @_ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp]
	ldr	x8, [sp]
	ldr	x8, [x8]
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB8ne200100Ev ; -- Begin function _ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB8ne200100Ev
	.globl	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB8ne200100Ev
	.weak_definition	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB8ne200100Ev
	.p2align	2
__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB8ne200100Ev: ; @_ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1B8ne200100IxLi0EEERKT_ ; -- Begin function _ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1B8ne200100IxLi0EEERKT_
	.weak_def_can_be_hidden	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1B8ne200100IxLi0EEERKT_
	.p2align	2
__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1B8ne200100IxLi0EEERKT_: ; @_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1B8ne200100IxLi0EEERKT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2B8ne200100IxLi0EEERKT_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2B8ne200100IxLi0EEERKT_ ; -- Begin function _ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2B8ne200100IxLi0EEERKT_
	.weak_def_can_be_hidden	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2B8ne200100IxLi0EEERKT_
	.p2align	2
__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2B8ne200100IxLi0EEERKT_: ; @_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2B8ne200100IxLi0EEERKT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x8, [sp]
	ldr	x8, [x8]
	str	x8, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2B8ne200100IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE ; -- Begin function _ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2B8ne200100IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE
	.weak_def_can_be_hidden	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2B8ne200100IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE
	.p2align	2
__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2B8ne200100IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE: ; @_ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2B8ne200100IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	__ZNSt3__16chrono13duration_castB8ne200100INS0_8durationIdNS_5ratioILl1ELl1EEEEExNS3_ILl1ELl1000000000EEELi0EEET_RKNS2_IT0_T1_EE
	add	x0, sp, #8
	str	d0, [sp, #8]
	bl	__ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEE5countB8ne200100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	str	d0, [x0]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16chrono13duration_castB8ne200100INS0_8durationIdNS_5ratioILl1ELl1EEEEExNS3_ILl1ELl1000000000EEELi0EEET_RKNS2_IT0_T1_EE ; -- Begin function _ZNSt3__16chrono13duration_castB8ne200100INS0_8durationIdNS_5ratioILl1ELl1EEEEExNS3_ILl1ELl1000000000EEELi0EEET_RKNS2_IT0_T1_EE
	.globl	__ZNSt3__16chrono13duration_castB8ne200100INS0_8durationIdNS_5ratioILl1ELl1EEEEExNS3_ILl1ELl1000000000EEELi0EEET_RKNS2_IT0_T1_EE
	.weak_definition	__ZNSt3__16chrono13duration_castB8ne200100INS0_8durationIdNS_5ratioILl1ELl1EEEEExNS3_ILl1ELl1000000000EEELi0EEET_RKNS2_IT0_T1_EE
	.p2align	2
__ZNSt3__16chrono13duration_castB8ne200100INS0_8durationIdNS_5ratioILl1ELl1EEEEExNS3_ILl1ELl1000000000EEELi0EEET_RKNS2_IT0_T1_EE: ; @_ZNSt3__16chrono13duration_castB8ne200100INS0_8durationIdNS_5ratioILl1ELl1EEEEExNS3_ILl1ELl1000000000EEELi0EEET_RKNS2_IT0_T1_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	ldr	x1, [sp, #16]
	add	x0, sp, #15
	bl	__ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IdNS3_ILl1ELl1EEEEES4_Lb1ELb0EEclB8ne200100ERKS5_
	stur	d0, [x29, #-8]
	ldur	d0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IdNS3_ILl1ELl1EEEEES4_Lb1ELb0EEclB8ne200100ERKS5_ ; -- Begin function _ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IdNS3_ILl1ELl1EEEEES4_Lb1ELb0EEclB8ne200100ERKS5_
	.globl	__ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IdNS3_ILl1ELl1EEEEES4_Lb1ELb0EEclB8ne200100ERKS5_
	.weak_definition	__ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IdNS3_ILl1ELl1EEEEES4_Lb1ELb0EEclB8ne200100ERKS5_
	.p2align	2
__ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IdNS3_ILl1ELl1EEEEES4_Lb1ELb0EEclB8ne200100ERKS5_: ; @_ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IdNS3_ILl1ELl1EEEEES4_Lb1ELb0EEclB8ne200100ERKS5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB8ne200100Ev
	scvtf	d0, x0
	mov	x8, #225833675390976            ; =0xcd6500000000
	movk	x8, #16845, lsl #48
	fmov	d1, x8
	fdiv	d0, d0, d1
	mov	x1, sp
	str	d0, [sp]
	sub	x0, x29, #8
	bl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B8ne200100IdLi0EEERKT_
	ldur	d0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B8ne200100IdLi0EEERKT_ ; -- Begin function _ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B8ne200100IdLi0EEERKT_
	.weak_def_can_be_hidden	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B8ne200100IdLi0EEERKT_
	.p2align	2
__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B8ne200100IdLi0EEERKT_: ; @_ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B8ne200100IdLi0EEERKT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2B8ne200100IdLi0EEERKT_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2B8ne200100IdLi0EEERKT_ ; -- Begin function _ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2B8ne200100IdLi0EEERKT_
	.weak_def_can_be_hidden	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2B8ne200100IdLi0EEERKT_
	.p2align	2
__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2B8ne200100IdLi0EEERKT_: ; @_ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2B8ne200100IdLi0EEERKT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x8, [sp]
	ldr	d0, [x8]
	str	d0, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZZ4mainENK3$_1clEv
__ZZ4mainENK3$_1clEv:                   ; @"_ZZ4mainENK3$_1clEv"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	ldr	x1, [x8, #8]
	ldr	x2, [x8, #16]
	ldr	x8, [x8, #24]
	ldr	w3, [x8]
	bl	__ZL14reist_poly_addRKNSt3__16vectorIiNS_9allocatorIiEEEES5_RS3_i
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZL14reist_poly_addRKNSt3__16vectorIiNS_9allocatorIiEEEES5_RS3_i
__ZL14reist_poly_addRKNSt3__16vectorIiNS_9allocatorIiEEEES5_RS3_i: ; @_ZL14reist_poly_addRKNSt3__16vectorIiNS_9allocatorIiEEEES5_RS3_i
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	w3, [x29, #-28]
	ldur	x0, [x29, #-8]
	bl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeB8ne200100Ev
	mov	x8, x0
	str	w8, [sp, #32]
	ldur	w8, [x29, #-28]
	mov	w9, #2                          ; =0x2
	sdiv	w8, w8, w9
	str	w8, [sp, #28]
	ldr	w9, [sp, #28]
	mov	w8, #0                          ; =0x0
	subs	w8, w8, w9
	str	w8, [sp, #24]
	str	wzr, [sp, #20]
	b	LBB323_1
LBB323_1:                               ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #20]
	ldr	w9, [sp, #32]
	subs	w8, w8, w9
	b.ge	LBB323_4
	b	LBB323_2
LBB323_2:                               ;   in Loop: Header=BB323_1 Depth=1
	ldur	x0, [x29, #-8]
	ldrsw	x1, [sp, #20]
	bl	__ZNKSt3__16vectorIiNS_9allocatorIiEEEixB8ne200100Em
	ldr	w8, [x0]
	str	w8, [sp]                        ; 4-byte Folded Spill
	ldur	x0, [x29, #-16]
	ldrsw	x1, [sp, #20]
	bl	__ZNKSt3__16vectorIiNS_9allocatorIiEEEixB8ne200100Em
	ldr	w8, [sp]                        ; 4-byte Folded Reload
	ldr	w9, [x0]
	add	w8, w8, w9
	str	w8, [sp, #16]
	ldr	w8, [sp, #16]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, gt
	str	w8, [sp, #12]
	ldr	w8, [sp, #16]
	ldr	w9, [sp, #24]
	subs	w8, w8, w9
	cset	w8, le
	str	w8, [sp, #8]
	ldr	w8, [sp, #12]
	ldur	w9, [x29, #-28]
	mul	w9, w8, w9
	ldr	w8, [sp, #16]
	subs	w8, w8, w9
	str	w8, [sp, #16]
	ldr	w8, [sp, #8]
	ldur	w9, [x29, #-28]
	mul	w9, w8, w9
	ldr	w8, [sp, #16]
	add	w8, w8, w9
	str	w8, [sp, #16]
	ldr	w8, [sp, #16]
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	ldur	x0, [x29, #-24]
	ldrsw	x1, [sp, #20]
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEEixB8ne200100Em
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	str	w8, [x0]
	b	LBB323_3
LBB323_3:                               ;   in Loop: Header=BB323_1 Depth=1
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	LBB323_1
LBB323_4:
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"/proc/cpuinfo"

l_.str.1:                               ; @.str.1
	.asciz	"model name"

l_.str.2:                               ; @.str.2
	.asciz	":"

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
	.asciz	"vector"

.subsections_via_symbols
