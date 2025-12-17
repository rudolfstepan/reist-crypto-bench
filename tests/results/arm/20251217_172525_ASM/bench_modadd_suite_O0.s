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
	sub	sp, sp, #3376
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	str	wzr, [sp, #1212]
	str	w0, [sp, #1208]
	str	x1, [sp, #1200]
	mov	x8, #61568                      ; =0xf080
	movk	x8, #762, lsl #16
	str	x8, [sp, #1192]
	ldr	w8, [sp, #1208]
	subs	w8, w8, #2
	b.lt	LBB0_5
	b	LBB0_1
LBB0_1:
	ldr	x8, [sp, #1200]
	ldr	x1, [x8, #8]
Ltmp0:
	add	x0, sp, #1168
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100ILi0EEEPKc
Ltmp1:
	b	LBB0_2
LBB0_2:
Ltmp2:
	add	x0, sp, #1168
	mov	x1, #0                          ; =0x0
	mov	w2, #10                         ; =0xa
	bl	__ZNSt3__15stollERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPmi
	str	x0, [sp, #536]                  ; 8-byte Folded Spill
Ltmp3:
	b	LBB0_3
LBB0_3:
	ldr	x8, [sp, #536]                  ; 8-byte Folded Reload
	str	x8, [sp, #1192]
	add	x0, sp, #1168
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	b	LBB0_5
LBB0_4:
Ltmp4:
	str	x0, [sp, #1160]
	mov	x8, x1
	str	w8, [sp, #1156]
	add	x0, sp, #1168
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	b	LBB0_153
LBB0_5:
	ldr	x8, [sp, #1192]
	subs	x8, x8, #0
	b.gt	LBB0_8
	b	LBB0_6
LBB0_6:
Ltmp196:
	adrp	x0, __ZNSt3__14cerrE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14cerrE@GOTPAGEOFF]
	adrp	x1, l_.str@PAGE
	add	x1, x1, l_.str@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp197:
	b	LBB0_7
LBB0_7:
	mov	w8, #1                          ; =0x1
	str	w8, [sp, #1212]
	b	LBB0_150
LBB0_8:
	add	x0, sp, #1128
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEEC1B8ne200100Ev
	ldr	w8, [sp, #1208]
	subs	w8, w8, #3
	b.lt	LBB0_15
	b	LBB0_9
LBB0_9:
	ldr	x8, [sp, #1200]
	ldr	x1, [x8, #16]
Ltmp7:
	add	x0, sp, #1096
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100ILi0EEEPKc
Ltmp8:
	b	LBB0_10
LBB0_10:
Ltmp10:
	add	x0, sp, #1096
	mov	x1, #0                          ; =0x0
	mov	w2, #10                         ; =0xa
	bl	__ZNSt3__15stollERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPmi
	str	x0, [sp, #528]                  ; 8-byte Folded Spill
Ltmp11:
	b	LBB0_11
LBB0_11:
	ldr	x8, [sp, #528]                  ; 8-byte Folded Reload
	add	x1, sp, #1120
	str	x8, [sp, #1120]
Ltmp12:
	add	x0, sp, #1128
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE9push_backB8ne200100EOx
Ltmp13:
	b	LBB0_12
LBB0_12:
	add	x0, sp, #1096
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	b	LBB0_17
LBB0_13:
Ltmp9:
	str	x0, [sp, #1160]
	mov	x8, x1
	str	w8, [sp, #1156]
	b	LBB0_149
LBB0_14:
Ltmp14:
	str	x0, [sp, #1160]
	mov	x8, x1
	str	w8, [sp, #1156]
	add	x0, sp, #1096
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	b	LBB0_149
LBB0_15:
	sub	x0, x29, #72
	str	x0, [sp, #520]                  ; 8-byte Folded Spill
	mov	x2, #48                         ; =0x30
	adrp	x1, l_constinit@PAGE
	add	x1, x1, l_constinit@PAGEOFF
	bl	_memcpy
	ldr	x8, [sp, #520]                  ; 8-byte Folded Reload
	str	x8, [sp, #1080]
	mov	x8, #6                          ; =0x6
	str	x8, [sp, #1088]
	ldr	x1, [sp, #1080]
	ldr	x2, [sp, #1088]
Ltmp5:
	add	x0, sp, #1128
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEEaSB8ne200100ESt16initializer_listIxE
Ltmp6:
	b	LBB0_16
LBB0_16:
	b	LBB0_17
LBB0_17:
	mov	x8, #3                          ; =0x3
	str	x8, [sp, #1072]
	add	x0, sp, #1048
	str	x0, [sp, #512]                  ; 8-byte Folded Spill
	bl	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEEC1B8ne200100Ev
	add	x0, sp, #1128
	bl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE4sizeB8ne200100Ev
	mov	x8, x0
	ldr	x0, [sp, #512]                  ; 8-byte Folded Reload
	lsl	x1, x8, #1
Ltmp15:
	bl	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE7reserveEm
Ltmp16:
	b	LBB0_18
LBB0_18:
	add	x0, sp, #1024
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100Ev
	add	x0, sp, #1000
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100Ev
	add	x0, sp, #976
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100Ev
	add	x0, sp, #952
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100Ev
	add	x0, sp, #928
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100Ev
Ltmp18:
	add	x0, sp, #2744
	adrp	x1, l_.str.1@PAGE
	add	x1, x1, l_.str.1@PAGEOFF
	mov	w2, #8                          ; =0x8
	bl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEC1EPKcj
Ltmp19:
	b	LBB0_19
LBB0_19:
	add	x0, sp, #904
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100Ev
	b	LBB0_20
LBB0_20:                                ; =>This Inner Loop Header: Depth=1
Ltmp20:
	add	x0, sp, #2744
	add	x1, sp, #904
	bl	__ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EE
	str	x0, [sp, #504]                  ; 8-byte Folded Spill
Ltmp21:
	b	LBB0_21
LBB0_21:                                ;   in Loop: Header=BB0_20 Depth=1
	ldr	x8, [sp, #504]                  ; 8-byte Folded Reload
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp22:
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEEcvbB8ne200100Ev
	str	w0, [sp, #500]                  ; 4-byte Folded Spill
Ltmp23:
	b	LBB0_22
LBB0_22:                                ;   in Loop: Header=BB0_20 Depth=1
	ldr	w8, [sp, #500]                  ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_33
	b	LBB0_23
LBB0_23:                                ;   in Loop: Header=BB0_20 Depth=1
	add	x0, sp, #904
	adrp	x1, l_.str.2@PAGE
	add	x1, x1, l_.str.2@PAGEOFF
	mov	x2, #0                          ; =0x0
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findB8ne200100EPKcm
	adds	x8, x0, #1
	b.eq	LBB0_29
	b	LBB0_24
LBB0_24:                                ;   in Loop: Header=BB0_20 Depth=1
	add	x0, sp, #904
	str	x0, [sp, #488]                  ; 8-byte Folded Spill
	adrp	x1, l_.str.3@PAGE
	add	x1, x1, l_.str.3@PAGEOFF
	mov	x2, #0                          ; =0x0
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findB8ne200100EPKcm
	mov	x8, x0
	ldr	x0, [sp, #488]                  ; 8-byte Folded Reload
	add	x1, x8, #2
Ltmp191:
	add	x8, sp, #880
	mov	x2, #-1                         ; =0xffffffffffffffff
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6substrB8ne200100Emm
Ltmp192:
	b	LBB0_25
LBB0_25:                                ;   in Loop: Header=BB0_20 Depth=1
	add	x0, sp, #1024
	add	x1, sp, #880
	str	x1, [sp, #480]                  ; 8-byte Folded Spill
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne200100EOS5_
	ldr	x0, [sp, #480]                  ; 8-byte Folded Reload
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	b	LBB0_29
LBB0_26:
Ltmp17:
	str	x0, [sp, #1160]
	mov	x8, x1
	str	w8, [sp, #1156]
	b	LBB0_148
LBB0_27:
Ltmp190:
	str	x0, [sp, #1160]
	mov	x8, x1
	str	w8, [sp, #1156]
	b	LBB0_147
LBB0_28:
Ltmp195:
	str	x0, [sp, #1160]
	mov	x8, x1
	str	w8, [sp, #1156]
	add	x0, sp, #904
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	add	x0, sp, #2744
	bl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
	b	LBB0_147
LBB0_29:                                ;   in Loop: Header=BB0_20 Depth=1
	add	x0, sp, #904
	adrp	x1, l_.str.4@PAGE
	add	x1, x1, l_.str.4@PAGEOFF
	mov	x2, #0                          ; =0x0
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findB8ne200100EPKcm
	adds	x8, x0, #1
	b.eq	LBB0_32
	b	LBB0_30
LBB0_30:                                ;   in Loop: Header=BB0_20 Depth=1
	add	x0, sp, #904
	str	x0, [sp, #472]                  ; 8-byte Folded Spill
	adrp	x1, l_.str.3@PAGE
	add	x1, x1, l_.str.3@PAGEOFF
	mov	x2, #0                          ; =0x0
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findB8ne200100EPKcm
	mov	x8, x0
	ldr	x0, [sp, #472]                  ; 8-byte Folded Reload
	add	x1, x8, #2
Ltmp193:
	add	x8, sp, #856
	mov	x2, #-1                         ; =0xffffffffffffffff
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6substrB8ne200100Emm
Ltmp194:
	b	LBB0_31
LBB0_31:                                ;   in Loop: Header=BB0_20 Depth=1
	add	x0, sp, #1000
	add	x1, sp, #856
	str	x1, [sp, #464]                  ; 8-byte Folded Spill
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne200100EOS5_
	ldr	x0, [sp, #464]                  ; 8-byte Folded Reload
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	b	LBB0_32
LBB0_32:                                ;   in Loop: Header=BB0_20 Depth=1
	b	LBB0_20
LBB0_33:
	add	x0, sp, #904
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	add	x0, sp, #2744
	bl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
Ltmp24:
	add	x0, sp, #2168
	adrp	x1, l_.str.5@PAGE
	add	x1, x1, l_.str.5@PAGEOFF
	mov	w2, #8                          ; =0x8
	bl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEC1EPKcj
Ltmp25:
	b	LBB0_34
LBB0_34:
	add	x0, sp, #832
	str	x0, [sp, #448]                  ; 8-byte Folded Spill
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100Ev
	ldr	x1, [sp, #448]                  ; 8-byte Folded Reload
Ltmp26:
	add	x0, sp, #2168
	bl	__ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EE
	str	x0, [sp, #456]                  ; 8-byte Folded Spill
Ltmp27:
	b	LBB0_35
LBB0_35:
	ldr	x8, [sp, #456]                  ; 8-byte Folded Reload
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp28:
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEEcvbB8ne200100Ev
	str	w0, [sp, #444]                  ; 4-byte Folded Spill
Ltmp29:
	b	LBB0_36
LBB0_36:
	ldr	w8, [sp, #444]                  ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_42
	b	LBB0_37
LBB0_37:
	add	x0, sp, #832
	adrp	x1, l_.str.6@PAGE
	add	x1, x1, l_.str.6@PAGEOFF
	mov	x2, #0                          ; =0x0
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findB8ne200100EPKcm
	adds	x8, x0, #1
	b.eq	LBB0_41
	b	LBB0_38
LBB0_38:
	add	x0, sp, #832
	str	x0, [sp, #432]                  ; 8-byte Folded Spill
	adrp	x1, l_.str.3@PAGE
	add	x1, x1, l_.str.3@PAGEOFF
	mov	x2, #0                          ; =0x0
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findB8ne200100EPKcm
	mov	x8, x0
	ldr	x0, [sp, #432]                  ; 8-byte Folded Reload
	add	x1, x8, #2
Ltmp30:
	add	x8, sp, #808
	mov	x2, #-1                         ; =0xffffffffffffffff
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6substrB8ne200100Emm
Ltmp31:
	b	LBB0_39
LBB0_39:
	add	x0, sp, #976
	add	x1, sp, #808
	str	x1, [sp, #424]                  ; 8-byte Folded Spill
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne200100EOS5_
	ldr	x0, [sp, #424]                  ; 8-byte Folded Reload
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	b	LBB0_41
LBB0_40:
Ltmp32:
	str	x0, [sp, #1160]
	mov	x8, x1
	str	w8, [sp, #1156]
	add	x0, sp, #832
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	add	x0, sp, #2168
	bl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
	b	LBB0_147
LBB0_41:
	b	LBB0_42
LBB0_42:
	add	x0, sp, #832
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	add	x0, sp, #2168
	bl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
Ltmp33:
	add	x0, sp, #1912
	mov	x1, #256                        ; =0x100
	bl	_gethostname
	str	w0, [sp, #420]                  ; 4-byte Folded Spill
Ltmp34:
	b	LBB0_43
LBB0_43:
	ldr	w8, [sp, #420]                  ; 4-byte Folded Reload
	cbnz	w8, LBB0_46
	b	LBB0_44
LBB0_44:
Ltmp35:
	add	x0, sp, #952
	add	x1, sp, #1912
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne200100EPKc
Ltmp36:
	b	LBB0_45
LBB0_45:
	b	LBB0_46
LBB0_46:
Ltmp37:
	adrp	x0, l_.str.7@PAGE
	add	x0, x0, l_.str.7@PAGEOFF
	adrp	x1, l_.str.8@PAGE
	add	x1, x1, l_.str.8@PAGEOFF
	bl	_popen
	str	x0, [sp, #408]                  ; 8-byte Folded Spill
Ltmp38:
	b	LBB0_47
LBB0_47:
	ldr	x8, [sp, #408]                  ; 8-byte Folded Reload
	str	x8, [sp, #800]
	ldr	x8, [sp, #800]
	cbz	x8, LBB0_58
	b	LBB0_48
LBB0_48:
	ldr	x2, [sp, #800]
Ltmp39:
	add	x0, sp, #1784
	mov	w1, #128                        ; =0x80
	bl	_fgets
	str	x0, [sp, #400]                  ; 8-byte Folded Spill
Ltmp40:
	b	LBB0_49
LBB0_49:
	ldr	x8, [sp, #400]                  ; 8-byte Folded Reload
	cbz	x8, LBB0_56
	b	LBB0_50
LBB0_50:
Ltmp41:
	add	x0, sp, #776
	add	x1, sp, #1784
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100ILi0EEEPKc
Ltmp42:
	b	LBB0_51
LBB0_51:
	add	x0, sp, #928
	str	x0, [sp, #392]                  ; 8-byte Folded Spill
	add	x1, sp, #776
	str	x1, [sp, #384]                  ; 8-byte Folded Spill
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne200100EOS5_
	ldr	x0, [sp, #384]                  ; 8-byte Folded Reload
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	ldr	x0, [sp, #392]                  ; 8-byte Folded Reload
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5emptyB8ne200100Ev
	tbnz	w0, #0, LBB0_55
	b	LBB0_52
LBB0_52:
	add	x0, sp, #928
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4backB8ne200100Ev
	ldrsb	w8, [x0]
	subs	w8, w8, #10
	b.ne	LBB0_55
	b	LBB0_53
LBB0_53:
Ltmp43:
	add	x0, sp, #928
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8pop_backB8ne200100Ev
Ltmp44:
	b	LBB0_54
LBB0_54:
	b	LBB0_55
LBB0_55:
	b	LBB0_56
LBB0_56:
	ldr	x0, [sp, #800]
Ltmp45:
	bl	_pclose
Ltmp46:
	b	LBB0_57
LBB0_57:
	b	LBB0_58
LBB0_58:
Ltmp47:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, __ZNSt3__15fixedB8ne200100ERNS_8ios_baseE@PAGE
	add	x1, x1, __ZNSt3__15fixedB8ne200100ERNS_8ios_baseE@PAGEOFF
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne200100EPFRNS_8ios_baseES5_E
	str	x0, [sp, #376]                  ; 8-byte Folded Spill
Ltmp48:
	b	LBB0_59
LBB0_59:
Ltmp49:
	mov	w0, #6                          ; =0x6
	bl	__ZNSt3__112setprecisionB8ne200100Ei
	str	w0, [sp, #372]                  ; 4-byte Folded Spill
Ltmp50:
	b	LBB0_60
LBB0_60:
	ldr	x0, [sp, #376]                  ; 8-byte Folded Reload
	ldr	w8, [sp, #372]                  ; 4-byte Folded Reload
	add	x1, sp, #772
	str	w8, [sp, #772]
Ltmp51:
	bl	__ZNSt3__1lsB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_8__iom_t5E
Ltmp52:
	b	LBB0_61
LBB0_61:
Ltmp53:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.9@PAGE
	add	x1, x1, l_.str.9@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp54:
	b	LBB0_62
LBB0_62:
Ltmp55:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.10@PAGE
	add	x1, x1, l_.str.10@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp56:
	b	LBB0_63
LBB0_63:
Ltmp57:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.9@PAGE
	add	x1, x1, l_.str.9@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp58:
	b	LBB0_64
LBB0_64:
Ltmp59:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.11@PAGE
	add	x1, x1, l_.str.11@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp60:
	b	LBB0_65
LBB0_65:
Ltmp61:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.12@PAGE
	add	x1, x1, l_.str.12@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #360]                  ; 8-byte Folded Spill
Ltmp62:
	b	LBB0_66
LBB0_66:
Ltmp63:
	ldr	x0, [sp, #360]                  ; 8-byte Folded Reload
	add	x1, sp, #952
	bl	__ZNSt3__1lsB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
	str	x0, [sp, #352]                  ; 8-byte Folded Spill
Ltmp64:
	b	LBB0_67
LBB0_67:
Ltmp65:
	ldr	x0, [sp, #352]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.13@PAGE
	add	x1, x1, l_.str.13@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp66:
	b	LBB0_68
LBB0_68:
Ltmp67:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.14@PAGE
	add	x1, x1, l_.str.14@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #344]                  ; 8-byte Folded Spill
Ltmp68:
	b	LBB0_69
LBB0_69:
Ltmp69:
	ldr	x0, [sp, #344]                  ; 8-byte Folded Reload
	add	x1, sp, #928
	bl	__ZNSt3__1lsB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
	str	x0, [sp, #336]                  ; 8-byte Folded Spill
Ltmp70:
	b	LBB0_70
LBB0_70:
Ltmp71:
	ldr	x0, [sp, #336]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.13@PAGE
	add	x1, x1, l_.str.13@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp72:
	b	LBB0_71
LBB0_71:
Ltmp73:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.15@PAGE
	add	x1, x1, l_.str.15@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #328]                  ; 8-byte Folded Spill
Ltmp74:
	b	LBB0_72
LBB0_72:
Ltmp75:
	ldr	x0, [sp, #328]                  ; 8-byte Folded Reload
	add	x1, sp, #1024
	bl	__ZNSt3__1lsB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
	str	x0, [sp, #320]                  ; 8-byte Folded Spill
Ltmp76:
	b	LBB0_73
LBB0_73:
Ltmp77:
	ldr	x0, [sp, #320]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.13@PAGE
	add	x1, x1, l_.str.13@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp78:
	b	LBB0_74
LBB0_74:
Ltmp79:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.16@PAGE
	add	x1, x1, l_.str.16@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #312]                  ; 8-byte Folded Spill
Ltmp80:
	b	LBB0_75
LBB0_75:
Ltmp81:
	ldr	x0, [sp, #312]                  ; 8-byte Folded Reload
	add	x1, sp, #1000
	bl	__ZNSt3__1lsB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
	str	x0, [sp, #304]                  ; 8-byte Folded Spill
Ltmp82:
	b	LBB0_76
LBB0_76:
Ltmp83:
	ldr	x0, [sp, #304]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.13@PAGE
	add	x1, x1, l_.str.13@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp84:
	b	LBB0_77
LBB0_77:
Ltmp85:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.17@PAGE
	add	x1, x1, l_.str.17@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #296]                  ; 8-byte Folded Spill
Ltmp86:
	b	LBB0_78
LBB0_78:
Ltmp87:
	ldr	x0, [sp, #296]                  ; 8-byte Folded Reload
	add	x1, sp, #976
	bl	__ZNSt3__1lsB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
	str	x0, [sp, #288]                  ; 8-byte Folded Spill
Ltmp88:
	b	LBB0_79
LBB0_79:
Ltmp89:
	ldr	x0, [sp, #288]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.13@PAGE
	add	x1, x1, l_.str.13@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp90:
	b	LBB0_80
LBB0_80:
Ltmp91:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.18@PAGE
	add	x1, x1, l_.str.18@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp92:
	b	LBB0_81
LBB0_81:
Ltmp93:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.19@PAGE
	add	x1, x1, l_.str.19@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #280]                  ; 8-byte Folded Spill
Ltmp94:
	b	LBB0_82
LBB0_82:
	ldr	x0, [sp, #280]                  ; 8-byte Folded Reload
	ldr	x1, [sp, #1192]
Ltmp95:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
	str	x0, [sp, #272]                  ; 8-byte Folded Spill
Ltmp96:
	b	LBB0_83
LBB0_83:
Ltmp97:
	ldr	x0, [sp, #272]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.13@PAGE
	add	x1, x1, l_.str.13@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp98:
	b	LBB0_84
LBB0_84:
Ltmp99:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.20@PAGE
	add	x1, x1, l_.str.20@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #264]                  ; 8-byte Folded Spill
Ltmp100:
	b	LBB0_85
LBB0_85:
	ldr	x0, [sp, #264]                  ; 8-byte Folded Reload
	ldr	x1, [sp, #1072]
Ltmp101:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
	str	x0, [sp, #256]                  ; 8-byte Folded Spill
Ltmp102:
	b	LBB0_86
LBB0_86:
Ltmp103:
	ldr	x0, [sp, #256]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.21@PAGE
	add	x1, x1, l_.str.21@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp104:
	b	LBB0_87
LBB0_87:
Ltmp105:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.22@PAGE
	add	x1, x1, l_.str.22@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp106:
	b	LBB0_88
LBB0_88:
	add	x8, sp, #1128
	str	x8, [sp, #760]
	ldr	x0, [sp, #760]
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE5beginB8ne200100Ev
	str	x0, [sp, #752]
	ldr	x0, [sp, #760]
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE3endB8ne200100Ev
	str	x0, [sp, #744]
	b	LBB0_89
LBB0_89:                                ; =>This Inner Loop Header: Depth=1
	add	x0, sp, #752
	add	x1, sp, #744
	bl	__ZNSt3__1neB8ne200100IPxEEbRKNS_11__wrap_iterIT_EES6_
	tbz	w0, #0, LBB0_115
	b	LBB0_90
LBB0_90:                                ;   in Loop: Header=BB0_89 Depth=1
	add	x0, sp, #752
	bl	__ZNKSt3__111__wrap_iterIPxEdeB8ne200100Ev
	ldr	x8, [x0]
	str	x8, [sp, #736]
Ltmp148:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.23@PAGE
	add	x1, x1, l_.str.23@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #248]                  ; 8-byte Folded Spill
Ltmp149:
	b	LBB0_91
LBB0_91:                                ;   in Loop: Header=BB0_89 Depth=1
	ldr	x0, [sp, #248]                  ; 8-byte Folded Reload
	ldr	x1, [sp, #736]
Ltmp150:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
	str	x0, [sp, #240]                  ; 8-byte Folded Spill
Ltmp151:
	b	LBB0_92
LBB0_92:                                ;   in Loop: Header=BB0_89 Depth=1
Ltmp152:
	ldr	x0, [sp, #240]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.13@PAGE
	add	x1, x1, l_.str.13@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp153:
	b	LBB0_93
LBB0_93:                                ;   in Loop: Header=BB0_89 Depth=1
	add	x8, sp, #728
	str	xzr, [sp, #728]
	add	x0, sp, #696
	str	x8, [sp, #696]
	add	x8, sp, #736
	str	x8, [sp, #704]
	add	x8, sp, #1072
	str	x8, [sp, #712]
	ldr	x1, [sp, #1192]
Ltmp154:
	bl	__Z9time_loopIZ4mainE3$_0EdOT_x
	str	d0, [sp, #232]                  ; 8-byte Folded Spill
Ltmp155:
	b	LBB0_94
LBB0_94:                                ;   in Loop: Header=BB0_89 Depth=1
	ldr	d0, [sp, #232]                  ; 8-byte Folded Reload
	str	d0, [sp, #720]
	ldr	x8, [sp, #736]
	add	x1, sp, #664
	str	x8, [sp, #664]
	ldr	x8, [sp, #1192]
	str	x8, [sp, #672]
	adrp	x8, l_.str.24@PAGE
	add	x8, x8, l_.str.24@PAGEOFF
	str	x8, [sp, #680]
	ldr	d0, [sp, #720]
	str	d0, [sp, #688]
Ltmp156:
	add	x0, sp, #1048
	bl	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE9push_backB8ne200100EOS1_
Ltmp157:
	b	LBB0_95
LBB0_95:                                ;   in Loop: Header=BB0_89 Depth=1
	add	x8, sp, #656
	str	xzr, [sp, #656]
	add	x0, sp, #624
	str	x8, [sp, #624]
	add	x8, sp, #736
	str	x8, [sp, #632]
	add	x8, sp, #1072
	str	x8, [sp, #640]
	ldr	x1, [sp, #1192]
Ltmp158:
	bl	__Z9time_loopIZ4mainE3$_1EdOT_x
	str	d0, [sp, #224]                  ; 8-byte Folded Spill
Ltmp159:
	b	LBB0_96
LBB0_96:                                ;   in Loop: Header=BB0_89 Depth=1
	ldr	d0, [sp, #224]                  ; 8-byte Folded Reload
	str	d0, [sp, #648]
	ldr	x8, [sp, #736]
	add	x1, sp, #592
	str	x8, [sp, #592]
	ldr	x8, [sp, #1192]
	str	x8, [sp, #600]
	adrp	x8, l_.str.25@PAGE
	add	x8, x8, l_.str.25@PAGEOFF
	str	x8, [sp, #608]
	ldr	d0, [sp, #648]
	str	d0, [sp, #616]
Ltmp160:
	add	x0, sp, #1048
	bl	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE9push_backB8ne200100EOS1_
Ltmp161:
	b	LBB0_97
LBB0_97:                                ;   in Loop: Header=BB0_89 Depth=1
Ltmp162:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.26@PAGE
	add	x1, x1, l_.str.26@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #216]                  ; 8-byte Folded Spill
Ltmp163:
	b	LBB0_98
LBB0_98:                                ;   in Loop: Header=BB0_89 Depth=1
	ldr	x0, [sp, #216]                  ; 8-byte Folded Reload
	ldr	d0, [sp, #720]
Ltmp164:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	str	x0, [sp, #208]                  ; 8-byte Folded Spill
Ltmp165:
	b	LBB0_99
LBB0_99:                                ;   in Loop: Header=BB0_89 Depth=1
Ltmp166:
	ldr	x0, [sp, #208]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.27@PAGE
	add	x1, x1, l_.str.27@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp167:
	b	LBB0_100
LBB0_100:                               ;   in Loop: Header=BB0_89 Depth=1
Ltmp168:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.28@PAGE
	add	x1, x1, l_.str.28@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #200]                  ; 8-byte Folded Spill
Ltmp169:
	b	LBB0_101
LBB0_101:                               ;   in Loop: Header=BB0_89 Depth=1
	ldr	x0, [sp, #200]                  ; 8-byte Folded Reload
	ldr	d0, [sp, #648]
Ltmp170:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	str	x0, [sp, #192]                  ; 8-byte Folded Spill
Ltmp171:
	b	LBB0_102
LBB0_102:                               ;   in Loop: Header=BB0_89 Depth=1
Ltmp172:
	ldr	x0, [sp, #192]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.27@PAGE
	add	x1, x1, l_.str.27@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp173:
	b	LBB0_103
LBB0_103:                               ;   in Loop: Header=BB0_89 Depth=1
	ldr	d0, [sp, #648]
	fcmp	d0, #0.0
	b.le	LBB0_108
	b	LBB0_104
LBB0_104:                               ;   in Loop: Header=BB0_89 Depth=1
Ltmp174:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.29@PAGE
	add	x1, x1, l_.str.29@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #184]                  ; 8-byte Folded Spill
Ltmp175:
	b	LBB0_105
LBB0_105:                               ;   in Loop: Header=BB0_89 Depth=1
	ldr	x0, [sp, #184]                  ; 8-byte Folded Reload
	ldr	d0, [sp, #720]
	ldr	d1, [sp, #648]
	fdiv	d0, d0, d1
Ltmp176:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	str	x0, [sp, #176]                  ; 8-byte Folded Spill
Ltmp177:
	b	LBB0_106
LBB0_106:                               ;   in Loop: Header=BB0_89 Depth=1
Ltmp178:
	ldr	x0, [sp, #176]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.30@PAGE
	add	x1, x1, l_.str.30@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp179:
	b	LBB0_107
LBB0_107:                               ;   in Loop: Header=BB0_89 Depth=1
	b	LBB0_108
LBB0_108:                               ;   in Loop: Header=BB0_89 Depth=1
Ltmp180:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.31@PAGE
	add	x1, x1, l_.str.31@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #168]                  ; 8-byte Folded Spill
Ltmp181:
	b	LBB0_109
LBB0_109:                               ;   in Loop: Header=BB0_89 Depth=1
	ldr	x0, [sp, #168]                  ; 8-byte Folded Reload
	ldr	x1, [sp, #728]
Ltmp182:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEy
	str	x0, [sp, #160]                  ; 8-byte Folded Spill
Ltmp183:
	b	LBB0_110
LBB0_110:                               ;   in Loop: Header=BB0_89 Depth=1
Ltmp184:
	ldr	x0, [sp, #160]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.32@PAGE
	add	x1, x1, l_.str.32@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #152]                  ; 8-byte Folded Spill
Ltmp185:
	b	LBB0_111
LBB0_111:                               ;   in Loop: Header=BB0_89 Depth=1
	ldr	x0, [sp, #152]                  ; 8-byte Folded Reload
	ldr	x1, [sp, #656]
Ltmp186:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
	str	x0, [sp, #144]                  ; 8-byte Folded Spill
Ltmp187:
	b	LBB0_112
LBB0_112:                               ;   in Loop: Header=BB0_89 Depth=1
Ltmp188:
	ldr	x0, [sp, #144]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.21@PAGE
	add	x1, x1, l_.str.21@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp189:
	b	LBB0_113
LBB0_113:                               ;   in Loop: Header=BB0_89 Depth=1
	b	LBB0_114
LBB0_114:                               ;   in Loop: Header=BB0_89 Depth=1
	add	x0, sp, #752
	bl	__ZNSt3__111__wrap_iterIPxEppB8ne200100Ev
	b	LBB0_89
LBB0_115:
	adrp	x8, l_.str.33@PAGE
	add	x8, x8, l_.str.33@PAGEOFF
	str	x8, [sp, #584]
	ldr	x1, [sp, #584]
Ltmp107:
	add	x0, sp, #1216
	mov	w2, #16                         ; =0x10
	bl	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEC1EPKcj
Ltmp108:
	b	LBB0_116
LBB0_116:
	add	x8, sp, #1216
	ldr	x9, [sp, #1216]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp109:
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEEcvbB8ne200100Ev
	str	w0, [sp, #140]                  ; 4-byte Folded Spill
Ltmp110:
	b	LBB0_117
LBB0_117:
	ldr	w8, [sp, #140]                  ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_142
	b	LBB0_118
LBB0_118:
Ltmp117:
	add	x0, sp, #1216
	adrp	x1, l_.str.34@PAGE
	add	x1, x1, l_.str.34@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp118:
	b	LBB0_119
LBB0_119:
	add	x8, sp, #1048
	str	x8, [sp, #576]
	ldr	x0, [sp, #576]
	bl	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE5beginB8ne200100Ev
	str	x0, [sp, #568]
	ldr	x0, [sp, #576]
	bl	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE3endB8ne200100Ev
	str	x0, [sp, #560]
	b	LBB0_120
LBB0_120:                               ; =>This Inner Loop Header: Depth=1
	add	x0, sp, #568
	add	x1, sp, #560
	bl	__ZNSt3__1neB8ne200100IP6ResultEEbRKNS_11__wrap_iterIT_EES7_
	tbz	w0, #0, LBB0_137
	b	LBB0_121
LBB0_121:                               ;   in Loop: Header=BB0_120 Depth=1
	add	x0, sp, #568
	bl	__ZNKSt3__111__wrap_iterIP6ResultEdeB8ne200100Ev
	str	x0, [sp, #552]
	ldr	x8, [sp, #552]
	ldr	d0, [x8, #24]
	fcmp	d0, #0.0
	b.le	LBB0_123
	b	LBB0_122
LBB0_122:                               ;   in Loop: Header=BB0_120 Depth=1
	ldr	x8, [sp, #552]
	ldr	d0, [x8, #8]
	scvtf	d0, d0
	ldr	x8, [sp, #552]
	ldr	d1, [x8, #24]
	fdiv	d0, d0, d1
	str	d0, [sp, #128]                  ; 8-byte Folded Spill
	b	LBB0_124
LBB0_123:                               ;   in Loop: Header=BB0_120 Depth=1
	movi	d0, #0000000000000000
	str	d0, [sp, #128]                  ; 8-byte Folded Spill
	b	LBB0_124
LBB0_124:                               ;   in Loop: Header=BB0_120 Depth=1
	ldr	d0, [sp, #128]                  ; 8-byte Folded Reload
	str	d0, [sp, #544]
	ldr	x8, [sp, #552]
	ldr	x1, [x8]
Ltmp127:
	add	x0, sp, #1216
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
	str	x0, [sp, #120]                  ; 8-byte Folded Spill
Ltmp128:
	b	LBB0_125
LBB0_125:                               ;   in Loop: Header=BB0_120 Depth=1
Ltmp129:
	ldr	x0, [sp, #120]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.35@PAGE
	add	x1, x1, l_.str.35@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #112]                  ; 8-byte Folded Spill
Ltmp130:
	b	LBB0_126
LBB0_126:                               ;   in Loop: Header=BB0_120 Depth=1
	ldr	x0, [sp, #112]                  ; 8-byte Folded Reload
	ldr	x8, [sp, #552]
	ldr	x1, [x8, #8]
Ltmp131:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
	str	x0, [sp, #104]                  ; 8-byte Folded Spill
Ltmp132:
	b	LBB0_127
LBB0_127:                               ;   in Loop: Header=BB0_120 Depth=1
Ltmp133:
	ldr	x0, [sp, #104]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.35@PAGE
	add	x1, x1, l_.str.35@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #96]                   ; 8-byte Folded Spill
Ltmp134:
	b	LBB0_128
LBB0_128:                               ;   in Loop: Header=BB0_120 Depth=1
	ldr	x0, [sp, #96]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #552]
	ldr	x1, [x8, #16]
Ltmp135:
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #88]                   ; 8-byte Folded Spill
Ltmp136:
	b	LBB0_129
LBB0_129:                               ;   in Loop: Header=BB0_120 Depth=1
Ltmp137:
	ldr	x0, [sp, #88]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.35@PAGE
	add	x1, x1, l_.str.35@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #80]                   ; 8-byte Folded Spill
Ltmp138:
	b	LBB0_130
LBB0_130:                               ;   in Loop: Header=BB0_120 Depth=1
	ldr	x0, [sp, #80]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #552]
	ldr	d0, [x8, #24]
Ltmp139:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	str	x0, [sp, #72]                   ; 8-byte Folded Spill
Ltmp140:
	b	LBB0_131
LBB0_131:                               ;   in Loop: Header=BB0_120 Depth=1
Ltmp141:
	ldr	x0, [sp, #72]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.35@PAGE
	add	x1, x1, l_.str.35@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #64]                   ; 8-byte Folded Spill
Ltmp142:
	b	LBB0_132
LBB0_132:                               ;   in Loop: Header=BB0_120 Depth=1
	ldr	x0, [sp, #64]                   ; 8-byte Folded Reload
	ldr	d0, [sp, #544]
Ltmp143:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	str	x0, [sp, #56]                   ; 8-byte Folded Spill
Ltmp144:
	b	LBB0_133
LBB0_133:                               ;   in Loop: Header=BB0_120 Depth=1
Ltmp145:
	ldr	x0, [sp, #56]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.13@PAGE
	add	x1, x1, l_.str.13@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp146:
	b	LBB0_134
LBB0_134:                               ;   in Loop: Header=BB0_120 Depth=1
	b	LBB0_135
LBB0_135:                               ;   in Loop: Header=BB0_120 Depth=1
	add	x0, sp, #568
	bl	__ZNSt3__111__wrap_iterIP6ResultEppB8ne200100Ev
	b	LBB0_120
LBB0_136:
Ltmp147:
	str	x0, [sp, #1160]
	mov	x8, x1
	str	w8, [sp, #1156]
	add	x0, sp, #1216
	bl	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev
	b	LBB0_147
LBB0_137:
Ltmp119:
	add	x0, sp, #1216
	bl	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEE5closeEv
Ltmp120:
	b	LBB0_138
LBB0_138:
Ltmp121:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.36@PAGE
	add	x1, x1, l_.str.36@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #48]                   ; 8-byte Folded Spill
Ltmp122:
	b	LBB0_139
LBB0_139:
	ldr	x0, [sp, #48]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #584]
Ltmp123:
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #40]                   ; 8-byte Folded Spill
Ltmp124:
	b	LBB0_140
LBB0_140:
Ltmp125:
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.13@PAGE
	add	x1, x1, l_.str.13@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp126:
	b	LBB0_141
LBB0_141:
	b	LBB0_146
LBB0_142:
Ltmp111:
	adrp	x0, __ZNSt3__14cerrE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14cerrE@GOTPAGEOFF]
	adrp	x1, l_.str.37@PAGE
	add	x1, x1, l_.str.37@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
Ltmp112:
	b	LBB0_143
LBB0_143:
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #584]
Ltmp113:
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
Ltmp114:
	b	LBB0_144
LBB0_144:
Ltmp115:
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.13@PAGE
	add	x1, x1, l_.str.13@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp116:
	b	LBB0_145
LBB0_145:
	b	LBB0_146
LBB0_146:
	str	wzr, [sp, #1212]
	add	x0, sp, #1216
	bl	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev
	add	x0, sp, #928
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	add	x0, sp, #952
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	add	x0, sp, #976
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	add	x0, sp, #1000
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	add	x0, sp, #1024
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	add	x0, sp, #1048
	bl	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEED1B8ne200100Ev
	add	x0, sp, #1128
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEED1B8ne200100Ev
	b	LBB0_150
LBB0_147:
	add	x0, sp, #928
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	add	x0, sp, #952
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	add	x0, sp, #976
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	add	x0, sp, #1000
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	add	x0, sp, #1024
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	b	LBB0_148
LBB0_148:
	add	x0, sp, #1048
	bl	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEED1B8ne200100Ev
	b	LBB0_149
LBB0_149:
	add	x0, sp, #1128
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEED1B8ne200100Ev
	b	LBB0_153
LBB0_150:
	ldr	w8, [sp, #1212]
	str	w8, [sp, #20]                   ; 4-byte Folded Spill
	ldur	x9, [x29, #-24]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	b.eq	LBB0_152
	b	LBB0_151
LBB0_151:
	bl	___stack_chk_fail
LBB0_152:
	ldr	w0, [sp, #20]                   ; 4-byte Folded Reload
	add	sp, sp, #3376
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #32             ; 16-byte Folded Reload
	ret
LBB0_153:
	ldr	x0, [sp, #1160]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB0_155
LBB0_154:
Ltmp198:
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB0_155
LBB0_155:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__Unwind_Resume
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
	.uleb128 Ltmp198-Lfunc_begin0           ;     jumps to Ltmp198
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp2-Lfunc_begin0             ; >> Call Site 2 <<
	.uleb128 Ltmp3-Ltmp2                    ;   Call between Ltmp2 and Ltmp3
	.uleb128 Ltmp4-Lfunc_begin0             ;     jumps to Ltmp4
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp196-Lfunc_begin0           ; >> Call Site 3 <<
	.uleb128 Ltmp197-Ltmp196                ;   Call between Ltmp196 and Ltmp197
	.uleb128 Ltmp198-Lfunc_begin0           ;     jumps to Ltmp198
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp7-Lfunc_begin0             ; >> Call Site 4 <<
	.uleb128 Ltmp8-Ltmp7                    ;   Call between Ltmp7 and Ltmp8
	.uleb128 Ltmp9-Lfunc_begin0             ;     jumps to Ltmp9
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp10-Lfunc_begin0            ; >> Call Site 5 <<
	.uleb128 Ltmp13-Ltmp10                  ;   Call between Ltmp10 and Ltmp13
	.uleb128 Ltmp14-Lfunc_begin0            ;     jumps to Ltmp14
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp13-Lfunc_begin0            ; >> Call Site 6 <<
	.uleb128 Ltmp5-Ltmp13                   ;   Call between Ltmp13 and Ltmp5
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp5-Lfunc_begin0             ; >> Call Site 7 <<
	.uleb128 Ltmp6-Ltmp5                    ;   Call between Ltmp5 and Ltmp6
	.uleb128 Ltmp9-Lfunc_begin0             ;     jumps to Ltmp9
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp15-Lfunc_begin0            ; >> Call Site 8 <<
	.uleb128 Ltmp16-Ltmp15                  ;   Call between Ltmp15 and Ltmp16
	.uleb128 Ltmp17-Lfunc_begin0            ;     jumps to Ltmp17
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp18-Lfunc_begin0            ; >> Call Site 9 <<
	.uleb128 Ltmp19-Ltmp18                  ;   Call between Ltmp18 and Ltmp19
	.uleb128 Ltmp190-Lfunc_begin0           ;     jumps to Ltmp190
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp20-Lfunc_begin0            ; >> Call Site 10 <<
	.uleb128 Ltmp194-Ltmp20                 ;   Call between Ltmp20 and Ltmp194
	.uleb128 Ltmp195-Lfunc_begin0           ;     jumps to Ltmp195
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp24-Lfunc_begin0            ; >> Call Site 11 <<
	.uleb128 Ltmp25-Ltmp24                  ;   Call between Ltmp24 and Ltmp25
	.uleb128 Ltmp190-Lfunc_begin0           ;     jumps to Ltmp190
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp26-Lfunc_begin0            ; >> Call Site 12 <<
	.uleb128 Ltmp31-Ltmp26                  ;   Call between Ltmp26 and Ltmp31
	.uleb128 Ltmp32-Lfunc_begin0            ;     jumps to Ltmp32
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp33-Lfunc_begin0            ; >> Call Site 13 <<
	.uleb128 Ltmp108-Ltmp33                 ;   Call between Ltmp33 and Ltmp108
	.uleb128 Ltmp190-Lfunc_begin0           ;     jumps to Ltmp190
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp109-Lfunc_begin0           ; >> Call Site 14 <<
	.uleb128 Ltmp116-Ltmp109                ;   Call between Ltmp109 and Ltmp116
	.uleb128 Ltmp147-Lfunc_begin0           ;     jumps to Ltmp147
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp116-Lfunc_begin0           ; >> Call Site 15 <<
	.uleb128 Lfunc_end0-Ltmp116             ;   Call between Ltmp116 and Lfunc_end0
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end0:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
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
	.private_extern	__ZNSt3__16vectorIxNS_9allocatorIxEEEC1B8ne200100Ev ; -- Begin function _ZNSt3__16vectorIxNS_9allocatorIxEEEC1B8ne200100Ev
	.globl	__ZNSt3__16vectorIxNS_9allocatorIxEEEC1B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIxNS_9allocatorIxEEEC1B8ne200100Ev
	.p2align	2
__ZNSt3__16vectorIxNS_9allocatorIxEEEC1B8ne200100Ev: ; @_ZNSt3__16vectorIxNS_9allocatorIxEEEC1B8ne200100Ev
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
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEEC2B8ne200100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIxNS_9allocatorIxEEE9push_backB8ne200100EOx ; -- Begin function _ZNSt3__16vectorIxNS_9allocatorIxEEE9push_backB8ne200100EOx
	.globl	__ZNSt3__16vectorIxNS_9allocatorIxEEE9push_backB8ne200100EOx
	.weak_definition	__ZNSt3__16vectorIxNS_9allocatorIxEEE9push_backB8ne200100EOx
	.p2align	2
__ZNSt3__16vectorIxNS_9allocatorIxEEE9push_backB8ne200100EOx: ; @_ZNSt3__16vectorIxNS_9allocatorIxEEE9push_backB8ne200100EOx
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
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE12emplace_backIJxEEEvDpOT_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIxNS_9allocatorIxEEEaSB8ne200100ESt16initializer_listIxE ; -- Begin function _ZNSt3__16vectorIxNS_9allocatorIxEEEaSB8ne200100ESt16initializer_listIxE
	.globl	__ZNSt3__16vectorIxNS_9allocatorIxEEEaSB8ne200100ESt16initializer_listIxE
	.weak_definition	__ZNSt3__16vectorIxNS_9allocatorIxEEEaSB8ne200100ESt16initializer_listIxE
	.p2align	2
__ZNSt3__16vectorIxNS_9allocatorIxEEEaSB8ne200100ESt16initializer_listIxE: ; @_ZNSt3__16vectorIxNS_9allocatorIxEEEaSB8ne200100ESt16initializer_listIxE
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
	bl	__ZNKSt16initializer_listIxE5beginB8ne200100Ev
	mov	x1, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	str	x1, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt16initializer_listIxE3endB8ne200100Ev
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	mov	x2, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE6assignB8ne200100IPKxLi0EEEvT_S7_
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEEC1B8ne200100Ev ; -- Begin function _ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEEC1B8ne200100Ev
	.globl	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEEC1B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEEC1B8ne200100Ev
	.p2align	2
__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEEC1B8ne200100Ev: ; @_ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEEC1B8ne200100Ev
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
	bl	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEEC2B8ne200100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE7reserveEm ; -- Begin function _ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE7reserveEm
	.globl	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE7reserveEm
	.weak_definition	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE7reserveEm
	.p2align	2
__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE7reserveEm: ; @_ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE7reserveEm
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception1
; %bb.0:
	sub	sp, sp, #128
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorI6ResultNS_9allocatorIS1_EEE8capacityB8ne200100Ev
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	subs	x8, x8, x0
	b.ls	LBB7_6
	b	LBB7_1
LBB7_1:
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorI6ResultNS_9allocatorIS1_EEE8max_sizeB8ne200100Ev
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	subs	x8, x8, x0
	b.ls	LBB7_3
	b	LBB7_2
LBB7_2:
	bl	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev
LBB7_3:
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorI6ResultNS_9allocatorIS1_EEE4sizeB8ne200100Ev
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	mov	x2, x0
	add	x3, x8, #16
	add	x0, sp, #56
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__114__split_bufferI6ResultRNS_9allocatorIS1_EEEC1EmmS4_
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
Ltmp199:
	bl	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS1_RS3_EE
Ltmp200:
	b	LBB7_4
LBB7_4:
	add	x0, sp, #56
	bl	__ZNSt3__114__split_bufferI6ResultRNS_9allocatorIS1_EEED1Ev
	b	LBB7_6
LBB7_5:
Ltmp201:
	str	x0, [sp, #48]
	mov	x8, x1
	str	w8, [sp, #44]
	add	x0, sp, #56
	bl	__ZNSt3__114__split_bufferI6ResultRNS_9allocatorIS1_EEED1Ev
	b	LBB7_7
LBB7_6:
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
LBB7_7:
	ldr	x0, [sp, #48]
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
	.uleb128 Ltmp199-Lfunc_begin1           ;   Call between Lfunc_begin1 and Ltmp199
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp199-Lfunc_begin1           ; >> Call Site 2 <<
	.uleb128 Ltmp200-Ltmp199                ;   Call between Ltmp199 and Ltmp200
	.uleb128 Ltmp201-Lfunc_begin1           ;     jumps to Ltmp201
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp200-Lfunc_begin1           ; >> Call Site 3 <<
	.uleb128 Lfunc_end1-Ltmp200             ;   Call between Ltmp200 and Lfunc_end1
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end1:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNKSt3__16vectorIxNS_9allocatorIxEEE4sizeB8ne200100Ev ; -- Begin function _ZNKSt3__16vectorIxNS_9allocatorIxEEE4sizeB8ne200100Ev
	.globl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE4sizeB8ne200100Ev
	.weak_definition	__ZNKSt3__16vectorIxNS_9allocatorIxEEE4sizeB8ne200100Ev
	.p2align	2
__ZNKSt3__16vectorIxNS_9allocatorIxEEE4sizeB8ne200100Ev: ; @_ZNKSt3__16vectorIxNS_9allocatorIxEEE4sizeB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	ldr	x8, [x9, #8]
	ldr	x9, [x9]
	subs	x8, x8, x9
	mov	x9, #8                          ; =0x8
	sdiv	x0, x8, x9
	add	sp, sp, #16
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
	add	x0, x8, #424
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2B8ne200100Ev
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	adrp	x9, __ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGE
	ldr	x9, [x9, __ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	add	x10, x9, #24
	str	x10, [x8]
	add	x9, x9, #64
	str	x9, [x8, #424]
Ltmp203:
	mov	x0, x8
	adrp	x9, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGE
	ldr	x9, [x9, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	add	x1, x9, #8
	add	x2, x8, #16
	bl	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2B8ne200100EPNS_15basic_streambufIcS2_EE
Ltmp204:
	b	LBB10_1
LBB10_1:
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	adrp	x9, __ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGE
	ldr	x9, [x9, __ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	add	x10, x9, #24
	str	x10, [x8]
	add	x9, x9, #64
	str	x9, [x8, #424]
	add	x0, x8, #16
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp206:
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC1Ev
Ltmp207:
	b	LBB10_2
LBB10_2:
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	add	x0, x8, #16
	ldur	x1, [x29, #-24]
	ldur	w8, [x29, #-28]
	orr	w2, w8, #0x8
Ltmp209:
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4openEPKcj
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp210:
	b	LBB10_3
LBB10_3:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	cbnz	x8, LBB10_9
	b	LBB10_4
LBB10_4:
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp211:
	mov	w1, #4                          ; =0x4
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne200100Ej
Ltmp212:
	b	LBB10_5
LBB10_5:
	b	LBB10_9
LBB10_6:
Ltmp205:
	str	x0, [sp, #40]
	mov	x8, x1
	str	w8, [sp, #36]
	b	LBB10_11
LBB10_7:
Ltmp208:
	str	x0, [sp, #40]
	mov	x8, x1
	str	w8, [sp, #36]
	b	LBB10_10
LBB10_8:
Ltmp213:
	mov	x8, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	str	x8, [sp, #40]
	mov	x8, x1
	str	w8, [sp, #36]
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
	b	LBB10_10
LBB10_9:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
LBB10_10:
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	adrp	x8, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGE
	ldr	x8, [x8, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	add	x1, x8, #8
	bl	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	b	LBB10_11
LBB10_11:
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	add	x0, x8, #424
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	b	LBB10_12
LBB10_12:
	ldr	x0, [sp, #40]
	bl	__Unwind_Resume
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table10:
Lexception2:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end2-Lcst_begin2
Lcst_begin2:
	.uleb128 Lfunc_begin2-Lfunc_begin2      ; >> Call Site 1 <<
	.uleb128 Ltmp203-Lfunc_begin2           ;   Call between Lfunc_begin2 and Ltmp203
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp203-Lfunc_begin2           ; >> Call Site 2 <<
	.uleb128 Ltmp204-Ltmp203                ;   Call between Ltmp203 and Ltmp204
	.uleb128 Ltmp205-Lfunc_begin2           ;     jumps to Ltmp205
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp206-Lfunc_begin2           ; >> Call Site 3 <<
	.uleb128 Ltmp207-Ltmp206                ;   Call between Ltmp206 and Ltmp207
	.uleb128 Ltmp208-Lfunc_begin2           ;     jumps to Ltmp208
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp209-Lfunc_begin2           ; >> Call Site 4 <<
	.uleb128 Ltmp212-Ltmp209                ;   Call between Ltmp209 and Ltmp212
	.uleb128 Ltmp213-Lfunc_begin2           ;     jumps to Ltmp213
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp212-Lfunc_begin2           ; >> Call Site 5 <<
	.uleb128 Lfunc_end2-Ltmp212             ;   Call between Ltmp212 and Lfunc_end2
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end2:
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
	.private_extern	__ZNSt3__16vectorIxNS_9allocatorIxEEE5beginB8ne200100Ev ; -- Begin function _ZNSt3__16vectorIxNS_9allocatorIxEEE5beginB8ne200100Ev
	.globl	__ZNSt3__16vectorIxNS_9allocatorIxEEE5beginB8ne200100Ev
	.weak_definition	__ZNSt3__16vectorIxNS_9allocatorIxEEE5beginB8ne200100Ev
	.p2align	2
__ZNSt3__16vectorIxNS_9allocatorIxEEE5beginB8ne200100Ev: ; @_ZNSt3__16vectorIxNS_9allocatorIxEEE5beginB8ne200100Ev
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
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE26__add_alignment_assumptionB8ne200100IPxLi0EEES5_T_
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE11__make_iterB8ne200100EPx
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIxNS_9allocatorIxEEE3endB8ne200100Ev ; -- Begin function _ZNSt3__16vectorIxNS_9allocatorIxEEE3endB8ne200100Ev
	.globl	__ZNSt3__16vectorIxNS_9allocatorIxEEE3endB8ne200100Ev
	.weak_definition	__ZNSt3__16vectorIxNS_9allocatorIxEEE3endB8ne200100Ev
	.p2align	2
__ZNSt3__16vectorIxNS_9allocatorIxEEE3endB8ne200100Ev: ; @_ZNSt3__16vectorIxNS_9allocatorIxEEE3endB8ne200100Ev
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
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE26__add_alignment_assumptionB8ne200100IPxLi0EEES5_T_
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE11__make_iterB8ne200100EPx
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__1neB8ne200100IPxEEbRKNS_11__wrap_iterIT_EES6_ ; -- Begin function _ZNSt3__1neB8ne200100IPxEEbRKNS_11__wrap_iterIT_EES6_
	.globl	__ZNSt3__1neB8ne200100IPxEEbRKNS_11__wrap_iterIT_EES6_
	.weak_definition	__ZNSt3__1neB8ne200100IPxEEbRKNS_11__wrap_iterIT_EES6_
	.p2align	2
__ZNSt3__1neB8ne200100IPxEEbRKNS_11__wrap_iterIT_EES6_: ; @_ZNSt3__1neB8ne200100IPxEEbRKNS_11__wrap_iterIT_EES6_
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
	bl	__ZNSt3__1eqB8ne200100IPxEEbRKNS_11__wrap_iterIT_EES6_
	eor	w0, w0, #0x1
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__111__wrap_iterIPxEdeB8ne200100Ev ; -- Begin function _ZNKSt3__111__wrap_iterIPxEdeB8ne200100Ev
	.globl	__ZNKSt3__111__wrap_iterIPxEdeB8ne200100Ev
	.weak_definition	__ZNKSt3__111__wrap_iterIPxEdeB8ne200100Ev
	.p2align	2
__ZNKSt3__111__wrap_iterIPxEdeB8ne200100Ev: ; @_ZNKSt3__111__wrap_iterIPxEdeB8ne200100Ev
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
	.p2align	2                               ; -- Begin function _Z9time_loopIZ4mainE3$_0EdOT_x
__Z9time_loopIZ4mainE3$_0EdOT_x:        ; @"_Z9time_loopIZ4mainE3$_0EdOT_x"
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
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	sub	x8, x29, #24
	str	x8, [sp]                        ; 8-byte Folded Spill
	stur	x0, [x29, #-24]
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	bl	__ZZ4mainENK3$_0clEx
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	mov	x8, x0
	add	x0, sp, #32
	str	x8, [sp, #32]
	bl	__ZNSt3__16chronomiB8ne200100INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	add	x1, sp, #16
	str	x0, [sp, #16]
	add	x0, sp, #24
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B8ne200100IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEE5countB8ne200100Ev
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE9push_backB8ne200100EOS1_ ; -- Begin function _ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE9push_backB8ne200100EOS1_
	.globl	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE9push_backB8ne200100EOS1_
	.weak_definition	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE9push_backB8ne200100EOS1_
	.p2align	2
__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE9push_backB8ne200100EOS1_: ; @_ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE9push_backB8ne200100EOS1_
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
	bl	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE12emplace_backIJS1_EEEvDpOT_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _Z9time_loopIZ4mainE3$_1EdOT_x
__Z9time_loopIZ4mainE3$_1EdOT_x:        ; @"_Z9time_loopIZ4mainE3$_1EdOT_x"
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
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	sub	x8, x29, #24
	str	x8, [sp]                        ; 8-byte Folded Spill
	stur	x0, [x29, #-24]
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	bl	__ZZ4mainENK3$_1clEx
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	mov	x8, x0
	add	x0, sp, #32
	str	x8, [sp, #32]
	bl	__ZNSt3__16chronomiB8ne200100INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	add	x1, sp, #16
	str	x0, [sp, #16]
	add	x0, sp, #24
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B8ne200100IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEE5countB8ne200100Ev
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__111__wrap_iterIPxEppB8ne200100Ev ; -- Begin function _ZNSt3__111__wrap_iterIPxEppB8ne200100Ev
	.globl	__ZNSt3__111__wrap_iterIPxEppB8ne200100Ev
	.weak_definition	__ZNSt3__111__wrap_iterIPxEppB8ne200100Ev
	.p2align	2
__ZNSt3__111__wrap_iterIPxEppB8ne200100Ev: ; @_ZNSt3__111__wrap_iterIPxEppB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x8, [x0]
	add	x8, x8, #8
	str	x8, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEC1EPKcj ; -- Begin function _ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEC1EPKcj
	.globl	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEC1EPKcj
	.weak_def_can_be_hidden	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEC1EPKcj
	.p2align	2
__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEC1EPKcj: ; @_ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEC1EPKcj
Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception3
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
Ltmp216:
	mov	x0, x8
	adrp	x9, __ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPAGE
	ldr	x9, [x9, __ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	add	x1, x9, #8
	add	x2, x8, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2B8ne200100EPNS_15basic_streambufIcS2_EE
Ltmp217:
	b	LBB34_1
LBB34_1:
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	adrp	x9, __ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPAGE
	ldr	x9, [x9, __ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	add	x10, x9, #24
	str	x10, [x8]
	add	x9, x9, #64
	str	x9, [x8, #416]
	add	x0, x8, #8
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp219:
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC1Ev
Ltmp220:
	b	LBB34_2
LBB34_2:
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	add	x0, x8, #8
	ldur	x1, [x29, #-24]
	ldur	w8, [x29, #-28]
	orr	w2, w8, #0x10
Ltmp222:
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4openEPKcj
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp223:
	b	LBB34_3
LBB34_3:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	cbnz	x8, LBB34_9
	b	LBB34_4
LBB34_4:
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp224:
	mov	w1, #4                          ; =0x4
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne200100Ej
Ltmp225:
	b	LBB34_5
LBB34_5:
	b	LBB34_9
LBB34_6:
Ltmp218:
	str	x0, [sp, #40]
	mov	x8, x1
	str	w8, [sp, #36]
	b	LBB34_11
LBB34_7:
Ltmp221:
	str	x0, [sp, #40]
	mov	x8, x1
	str	w8, [sp, #36]
	b	LBB34_10
LBB34_8:
Ltmp226:
	mov	x8, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	str	x8, [sp, #40]
	mov	x8, x1
	str	w8, [sp, #36]
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
	b	LBB34_10
LBB34_9:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
LBB34_10:
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	adrp	x8, __ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPAGE
	ldr	x8, [x8, __ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	add	x1, x8, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev
	b	LBB34_11
LBB34_11:
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	add	x0, x8, #416
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	b	LBB34_12
LBB34_12:
	ldr	x0, [sp, #40]
	bl	__Unwind_Resume
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table34:
Lexception3:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end3-Lcst_begin3
Lcst_begin3:
	.uleb128 Lfunc_begin3-Lfunc_begin3      ; >> Call Site 1 <<
	.uleb128 Ltmp216-Lfunc_begin3           ;   Call between Lfunc_begin3 and Ltmp216
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp216-Lfunc_begin3           ; >> Call Site 2 <<
	.uleb128 Ltmp217-Ltmp216                ;   Call between Ltmp216 and Ltmp217
	.uleb128 Ltmp218-Lfunc_begin3           ;     jumps to Ltmp218
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp219-Lfunc_begin3           ; >> Call Site 3 <<
	.uleb128 Ltmp220-Ltmp219                ;   Call between Ltmp219 and Ltmp220
	.uleb128 Ltmp221-Lfunc_begin3           ;     jumps to Ltmp221
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp222-Lfunc_begin3           ; >> Call Site 4 <<
	.uleb128 Ltmp225-Ltmp222                ;   Call between Ltmp222 and Ltmp225
	.uleb128 Ltmp226-Lfunc_begin3           ;     jumps to Ltmp226
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp225-Lfunc_begin3           ; >> Call Site 5 <<
	.uleb128 Lfunc_end3-Ltmp225             ;   Call between Ltmp225 and Lfunc_end3
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end3:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE5beginB8ne200100Ev ; -- Begin function _ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE5beginB8ne200100Ev
	.globl	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE5beginB8ne200100Ev
	.weak_definition	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE5beginB8ne200100Ev
	.p2align	2
__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE5beginB8ne200100Ev: ; @_ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE5beginB8ne200100Ev
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
	bl	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE26__add_alignment_assumptionB8ne200100IPS1_Li0EEES6_T_
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE11__make_iterB8ne200100EPS1_
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE3endB8ne200100Ev ; -- Begin function _ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE3endB8ne200100Ev
	.globl	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE3endB8ne200100Ev
	.weak_definition	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE3endB8ne200100Ev
	.p2align	2
__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE3endB8ne200100Ev: ; @_ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE3endB8ne200100Ev
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
	bl	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE26__add_alignment_assumptionB8ne200100IPS1_Li0EEES6_T_
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE11__make_iterB8ne200100EPS1_
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__1neB8ne200100IP6ResultEEbRKNS_11__wrap_iterIT_EES7_ ; -- Begin function _ZNSt3__1neB8ne200100IP6ResultEEbRKNS_11__wrap_iterIT_EES7_
	.globl	__ZNSt3__1neB8ne200100IP6ResultEEbRKNS_11__wrap_iterIT_EES7_
	.weak_definition	__ZNSt3__1neB8ne200100IP6ResultEEbRKNS_11__wrap_iterIT_EES7_
	.p2align	2
__ZNSt3__1neB8ne200100IP6ResultEEbRKNS_11__wrap_iterIT_EES7_: ; @_ZNSt3__1neB8ne200100IP6ResultEEbRKNS_11__wrap_iterIT_EES7_
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
	bl	__ZNSt3__1eqB8ne200100IP6ResultEEbRKNS_11__wrap_iterIT_EES7_
	eor	w0, w0, #0x1
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__111__wrap_iterIP6ResultEdeB8ne200100Ev ; -- Begin function _ZNKSt3__111__wrap_iterIP6ResultEdeB8ne200100Ev
	.globl	__ZNKSt3__111__wrap_iterIP6ResultEdeB8ne200100Ev
	.weak_definition	__ZNKSt3__111__wrap_iterIP6ResultEdeB8ne200100Ev
	.p2align	2
__ZNKSt3__111__wrap_iterIP6ResultEdeB8ne200100Ev: ; @_ZNKSt3__111__wrap_iterIP6ResultEdeB8ne200100Ev
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
	.private_extern	__ZNSt3__111__wrap_iterIP6ResultEppB8ne200100Ev ; -- Begin function _ZNSt3__111__wrap_iterIP6ResultEppB8ne200100Ev
	.globl	__ZNSt3__111__wrap_iterIP6ResultEppB8ne200100Ev
	.weak_definition	__ZNSt3__111__wrap_iterIP6ResultEppB8ne200100Ev
	.p2align	2
__ZNSt3__111__wrap_iterIP6ResultEppB8ne200100Ev: ; @_ZNSt3__111__wrap_iterIP6ResultEppB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x8, [x0]
	add	x8, x8, #32
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
	cbnz	x0, LBB40_2
	b	LBB40_1
LBB40_1:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
	mov	w1, #4                          ; =0x4
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne200100Ej
	b	LBB40_2
LBB40_2:
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
	.private_extern	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEED1B8ne200100Ev ; -- Begin function _ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEED1B8ne200100Ev
	.globl	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEED1B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEED1B8ne200100Ev
	.p2align	2
__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEED1B8ne200100Ev: ; @_ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEED1B8ne200100Ev
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
	bl	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEED2B8ne200100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIxNS_9allocatorIxEEED1B8ne200100Ev ; -- Begin function _ZNSt3__16vectorIxNS_9allocatorIxEEED1B8ne200100Ev
	.globl	__ZNSt3__16vectorIxNS_9allocatorIxEEED1B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIxNS_9allocatorIxEEED1B8ne200100Ev
	.p2align	2
__ZNSt3__16vectorIxNS_9allocatorIxEEED1B8ne200100Ev: ; @_ZNSt3__16vectorIxNS_9allocatorIxEEED1B8ne200100Ev
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
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEED2B8ne200100Ev
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
	.private_extern	__ZNSt3__1eqB8ne200100IPxEEbRKNS_11__wrap_iterIT_EES6_ ; -- Begin function _ZNSt3__1eqB8ne200100IPxEEbRKNS_11__wrap_iterIT_EES6_
	.globl	__ZNSt3__1eqB8ne200100IPxEEbRKNS_11__wrap_iterIT_EES6_
	.weak_definition	__ZNSt3__1eqB8ne200100IPxEEbRKNS_11__wrap_iterIT_EES6_
	.p2align	2
__ZNSt3__1eqB8ne200100IPxEEbRKNS_11__wrap_iterIT_EES6_: ; @_ZNSt3__1eqB8ne200100IPxEEbRKNS_11__wrap_iterIT_EES6_
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
	bl	__ZNKSt3__111__wrap_iterIPxE4baseB8ne200100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	__ZNKSt3__111__wrap_iterIPxE4baseB8ne200100Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	subs	x8, x0, x8
	cset	w0, eq
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__111__wrap_iterIPxE4baseB8ne200100Ev ; -- Begin function _ZNKSt3__111__wrap_iterIPxE4baseB8ne200100Ev
	.globl	__ZNKSt3__111__wrap_iterIPxE4baseB8ne200100Ev
	.weak_definition	__ZNKSt3__111__wrap_iterIPxE4baseB8ne200100Ev
	.p2align	2
__ZNKSt3__111__wrap_iterIPxE4baseB8ne200100Ev: ; @_ZNKSt3__111__wrap_iterIPxE4baseB8ne200100Ev
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
	.private_extern	__ZNSt3__1eqB8ne200100IP6ResultEEbRKNS_11__wrap_iterIT_EES7_ ; -- Begin function _ZNSt3__1eqB8ne200100IP6ResultEEbRKNS_11__wrap_iterIT_EES7_
	.globl	__ZNSt3__1eqB8ne200100IP6ResultEEbRKNS_11__wrap_iterIT_EES7_
	.weak_definition	__ZNSt3__1eqB8ne200100IP6ResultEEbRKNS_11__wrap_iterIT_EES7_
	.p2align	2
__ZNSt3__1eqB8ne200100IP6ResultEEbRKNS_11__wrap_iterIT_EES7_: ; @_ZNSt3__1eqB8ne200100IP6ResultEEbRKNS_11__wrap_iterIT_EES7_
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
	bl	__ZNKSt3__111__wrap_iterIP6ResultE4baseB8ne200100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	__ZNKSt3__111__wrap_iterIP6ResultE4baseB8ne200100Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	subs	x8, x0, x8
	cset	w0, eq
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__111__wrap_iterIP6ResultE4baseB8ne200100Ev ; -- Begin function _ZNKSt3__111__wrap_iterIP6ResultE4baseB8ne200100Ev
	.globl	__ZNKSt3__111__wrap_iterIP6ResultE4baseB8ne200100Ev
	.weak_definition	__ZNKSt3__111__wrap_iterIP6ResultE4baseB8ne200100Ev
	.p2align	2
__ZNKSt3__111__wrap_iterIP6ResultE4baseB8ne200100Ev: ; @_ZNKSt3__111__wrap_iterIP6ResultE4baseB8ne200100Ev
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
	.private_extern	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m ; -- Begin function _ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.globl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_definition	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.p2align	2
__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ; @_ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception4
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
Ltmp236:
	sub	x0, x29, #40
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp237:
	b	LBB62_1
LBB62_1:
Ltmp239:
	sub	x0, x29, #40
	bl	__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB8ne200100Ev
	str	w0, [sp, #68]                   ; 4-byte Folded Spill
Ltmp240:
	b	LBB62_2
LBB62_2:
	ldr	w8, [sp, #68]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB62_18
	b	LBB62_3
LBB62_3:
	ldur	x1, [x29, #-8]
	add	x0, sp, #72
	bl	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B8ne200100ERNS_13basic_ostreamIcS2_EE
	ldur	x8, [x29, #-16]
	str	x8, [sp, #56]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp241:
	bl	__ZNKSt3__18ios_base5flagsB8ne200100Ev
	str	w0, [sp, #64]                   ; 4-byte Folded Spill
Ltmp242:
	b	LBB62_4
LBB62_4:
	ldr	w8, [sp, #64]                   ; 4-byte Folded Reload
	mov	w9, #176                        ; =0xb0
	and	w8, w8, w9
	subs	w8, w8, #32
	b.ne	LBB62_6
	b	LBB62_5
LBB62_5:
	ldur	x8, [x29, #-16]
	ldur	x9, [x29, #-24]
	add	x8, x8, x9
	str	x8, [sp, #48]                   ; 8-byte Folded Spill
	b	LBB62_7
LBB62_6:
	ldur	x8, [x29, #-16]
	str	x8, [sp, #48]                   ; 8-byte Folded Spill
	b	LBB62_7
LBB62_7:
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
Ltmp243:
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne200100Ev
	str	w0, [sp, #44]                   ; 4-byte Folded Spill
Ltmp244:
	b	LBB62_8
LBB62_8:
	ldr	w5, [sp, #44]                   ; 4-byte Folded Reload
	ldr	x4, [sp, #32]                   ; 8-byte Folded Reload
	ldr	x3, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x2, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #56]                   ; 8-byte Folded Reload
	ldr	x0, [sp, #72]
Ltmp245:
	bl	__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp246:
	b	LBB62_9
LBB62_9:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	sub	x0, x29, #64
	stur	x8, [x29, #-64]
	bl	__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB8ne200100Ev
	tbz	w0, #0, LBB62_17
	b	LBB62_10
LBB62_10:
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp247:
	mov	w1, #5                          ; =0x5
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne200100Ej
Ltmp248:
	b	LBB62_11
LBB62_11:
	b	LBB62_17
LBB62_12:
Ltmp238:
	stur	x0, [x29, #-48]
	mov	x8, x1
	stur	w8, [x29, #-52]
	b	LBB62_14
LBB62_13:
Ltmp249:
	stur	x0, [x29, #-48]
	mov	x8, x1
	stur	w8, [x29, #-52]
	sub	x0, x29, #40
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB62_14
LBB62_14:
	ldur	x0, [x29, #-48]
	bl	___cxa_begin_catch
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp250:
	bl	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp251:
	b	LBB62_15
LBB62_15:
	bl	___cxa_end_catch
	b	LBB62_16
LBB62_16:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
LBB62_17:
	b	LBB62_18
LBB62_18:
	sub	x0, x29, #40
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB62_16
LBB62_19:
Ltmp252:
	stur	x0, [x29, #-48]
	mov	x8, x1
	stur	w8, [x29, #-52]
Ltmp253:
	bl	___cxa_end_catch
Ltmp254:
	b	LBB62_20
LBB62_20:
	b	LBB62_21
LBB62_21:
	ldur	x0, [x29, #-48]
	bl	__Unwind_Resume
LBB62_22:
Ltmp255:
	bl	___clang_call_terminate
Lfunc_end4:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table62:
Lexception4:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase0-Lttbaseref0
Lttbaseref0:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end4-Lcst_begin4
Lcst_begin4:
	.uleb128 Ltmp236-Lfunc_begin4           ; >> Call Site 1 <<
	.uleb128 Ltmp237-Ltmp236                ;   Call between Ltmp236 and Ltmp237
	.uleb128 Ltmp238-Lfunc_begin4           ;     jumps to Ltmp238
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp239-Lfunc_begin4           ; >> Call Site 2 <<
	.uleb128 Ltmp248-Ltmp239                ;   Call between Ltmp239 and Ltmp248
	.uleb128 Ltmp249-Lfunc_begin4           ;     jumps to Ltmp249
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp248-Lfunc_begin4           ; >> Call Site 3 <<
	.uleb128 Ltmp250-Ltmp248                ;   Call between Ltmp248 and Ltmp250
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp250-Lfunc_begin4           ; >> Call Site 4 <<
	.uleb128 Ltmp251-Ltmp250                ;   Call between Ltmp250 and Ltmp251
	.uleb128 Ltmp252-Lfunc_begin4           ;     jumps to Ltmp252
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp251-Lfunc_begin4           ; >> Call Site 5 <<
	.uleb128 Ltmp253-Ltmp251                ;   Call between Ltmp251 and Ltmp253
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp253-Lfunc_begin4           ; >> Call Site 6 <<
	.uleb128 Ltmp254-Ltmp253                ;   Call between Ltmp253 and Ltmp254
	.uleb128 Ltmp255-Lfunc_begin4           ;     jumps to Ltmp255
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp254-Lfunc_begin4           ; >> Call Site 7 <<
	.uleb128 Lfunc_end4-Ltmp254             ;   Call between Ltmp254 and Lfunc_end4
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
Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception5
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
	cbnz	x8, LBB64_2
	b	LBB64_1
LBB64_1:
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB64_23
LBB64_2:
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
	b.le	LBB64_4
	b	LBB64_3
LBB64_3:
	ldur	x9, [x29, #-64]
	ldr	x8, [sp, #72]
	subs	x8, x8, x9
	str	x8, [sp, #72]
	b	LBB64_5
LBB64_4:
	str	xzr, [sp, #72]
	b	LBB64_5
LBB64_5:
	ldur	x8, [x29, #-32]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	str	x8, [sp, #64]
	ldr	x8, [sp, #64]
	subs	x8, x8, #0
	b.le	LBB64_9
	b	LBB64_6
LBB64_6:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	ldr	x2, [sp, #64]
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne200100EPKcl
	ldr	x8, [sp, #64]
	subs	x8, x0, x8
	b.eq	LBB64_8
	b	LBB64_7
LBB64_7:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB64_23
LBB64_8:
	b	LBB64_9
LBB64_9:
	ldr	x8, [sp, #72]
	subs	x8, x8, #0
	b.le	LBB64_18
	b	LBB64_10
LBB64_10:
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
Ltmp257:
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne200100EPKcl
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp258:
	b	LBB64_11
LBB64_11:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x9, [sp, #72]
	subs	x8, x8, x9
	b.eq	LBB64_14
	b	LBB64_12
LBB64_12:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	mov	w8, #1                          ; =0x1
	str	w8, [sp, #24]
	b	LBB64_15
LBB64_13:
Ltmp259:
	str	x0, [sp, #32]
	mov	x8, x1
	str	w8, [sp, #28]
	add	x0, sp, #40
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	b	LBB64_24
LBB64_14:
	str	wzr, [sp, #24]
	b	LBB64_15
LBB64_15:
	add	x0, sp, #40
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	ldr	w8, [sp, #24]
	cbz	w8, LBB64_17
	b	LBB64_16
LBB64_16:
	b	LBB64_23
LBB64_17:
	b	LBB64_18
LBB64_18:
	ldur	x8, [x29, #-40]
	ldur	x9, [x29, #-32]
	subs	x8, x8, x9
	str	x8, [sp, #64]
	ldr	x8, [sp, #64]
	subs	x8, x8, #0
	b.le	LBB64_22
	b	LBB64_19
LBB64_19:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-32]
	ldr	x2, [sp, #64]
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne200100EPKcl
	ldr	x8, [sp, #64]
	subs	x8, x0, x8
	b.eq	LBB64_21
	b	LBB64_20
LBB64_20:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB64_23
LBB64_21:
	b	LBB64_22
LBB64_22:
	ldur	x0, [x29, #-48]
	mov	x1, #0                          ; =0x0
	bl	__ZNSt3__18ios_base5widthB8ne200100El
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB64_23
LBB64_23:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
LBB64_24:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
; %bb.25:
Lfunc_end5:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table64:
Lexception5:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end5-Lcst_begin5
Lcst_begin5:
	.uleb128 Lfunc_begin5-Lfunc_begin5      ; >> Call Site 1 <<
	.uleb128 Ltmp257-Lfunc_begin5           ;   Call between Lfunc_begin5 and Ltmp257
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp257-Lfunc_begin5           ; >> Call Site 2 <<
	.uleb128 Ltmp258-Ltmp257                ;   Call between Ltmp257 and Ltmp258
	.uleb128 Ltmp259-Lfunc_begin5           ;     jumps to Ltmp259
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp258-Lfunc_begin5           ; >> Call Site 3 <<
	.uleb128 Lfunc_end5-Ltmp258             ;   Call between Ltmp258 and Lfunc_end5
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end5:
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
	tbnz	w0, #0, LBB67_2
	b	LBB67_1
LBB67_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	mov	w1, #32                         ; =0x20
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne200100Ec
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	mov	x1, x0
	add	x0, x8, #144
	bl	__ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB8ne200100Ei
	b	LBB67_2
LBB67_2:
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
	tbz	w0, #0, LBB78_2
	b	LBB78_1
LBB78_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne200100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB78_3
LBB78_2:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne200100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB78_3
LBB78_3:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
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
	.private_extern	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne200100ERNS_13basic_ostreamIcS2_EE ; -- Begin function _ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne200100ERNS_13basic_ostreamIcS2_EE
	.globl	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne200100ERNS_13basic_ostreamIcS2_EE
	.weak_def_can_be_hidden	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne200100ERNS_13basic_ostreamIcS2_EE
	.p2align	2
__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne200100ERNS_13basic_ostreamIcS2_EE: ; @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne200100ERNS_13basic_ostreamIcS2_EE
Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception6
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
Ltmp268:
	add	x0, x8, x9
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne200100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp269:
	b	LBB83_1
LBB83_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	str	x8, [x0]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB83_2:
Ltmp270:
	bl	___clang_call_terminate
Lfunc_end6:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table83:
Lexception6:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase1-Lttbaseref1
Lttbaseref1:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end6-Lcst_begin6
Lcst_begin6:
	.uleb128 Ltmp268-Lfunc_begin6           ; >> Call Site 1 <<
	.uleb128 Ltmp269-Ltmp268                ;   Call between Ltmp268 and Ltmp269
	.uleb128 Ltmp270-Lfunc_begin6           ;     jumps to Ltmp270
	.byte	1                               ;   On action: 1
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
	.private_extern	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne200100Ec ; -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne200100Ec
	.globl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne200100Ec
	.weak_definition	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne200100Ec
	.p2align	2
__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne200100Ec: ; @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne200100Ec
Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception7
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
Ltmp272:
	bl	__ZNSt3__19use_facetB8ne200100INS_5ctypeIcEEEERKT_RKNS_6localeE
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp273:
	b	LBB87_1
LBB87_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldursb	w1, [x29, #-9]
Ltmp274:
	bl	__ZNKSt3__15ctypeIcE5widenB8ne200100Ec
	str	w0, [sp, #4]                    ; 4-byte Folded Spill
Ltmp275:
	b	LBB87_2
LBB87_2:
	sub	x0, x29, #24
	bl	__ZNSt3__16localeD1Ev
	ldr	w0, [sp, #4]                    ; 4-byte Folded Reload
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB87_3:
Ltmp276:
	str	x0, [sp, #32]
	mov	x8, x1
	str	w8, [sp, #28]
	sub	x0, x29, #24
	bl	__ZNSt3__16localeD1Ev
	b	LBB87_4
LBB87_4:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
Lfunc_end7:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table87:
Lexception7:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end7-Lcst_begin7
Lcst_begin7:
	.uleb128 Lfunc_begin7-Lfunc_begin7      ; >> Call Site 1 <<
	.uleb128 Ltmp272-Lfunc_begin7           ;   Call between Lfunc_begin7 and Ltmp272
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp272-Lfunc_begin7           ; >> Call Site 2 <<
	.uleb128 Ltmp275-Ltmp272                ;   Call between Ltmp272 and Ltmp275
	.uleb128 Ltmp276-Lfunc_begin7           ;     jumps to Ltmp276
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp275-Lfunc_begin7           ; >> Call Site 3 <<
	.uleb128 Lfunc_end7-Ltmp275             ;   Call between Ltmp275 and Lfunc_end7
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end7:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
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
	.private_extern	__ZNSt3__16vectorIxNS_9allocatorIxEEEC2B8ne200100Ev ; -- Begin function _ZNSt3__16vectorIxNS_9allocatorIxEEEC2B8ne200100Ev
	.globl	__ZNSt3__16vectorIxNS_9allocatorIxEEEC2B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIxNS_9allocatorIxEEEC2B8ne200100Ev
	.p2align	2
__ZNSt3__16vectorIxNS_9allocatorIxEEEC2B8ne200100Ev: ; @_ZNSt3__16vectorIxNS_9allocatorIxEEEC2B8ne200100Ev
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
	bl	__ZNSt3__19allocatorIxEC1B8ne200100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIxEC1B8ne200100Ev ; -- Begin function _ZNSt3__19allocatorIxEC1B8ne200100Ev
	.globl	__ZNSt3__19allocatorIxEC1B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__19allocatorIxEC1B8ne200100Ev
	.p2align	2
__ZNSt3__19allocatorIxEC1B8ne200100Ev:  ; @_ZNSt3__19allocatorIxEC1B8ne200100Ev
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
	bl	__ZNSt3__19allocatorIxEC2B8ne200100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIxEC2B8ne200100Ev ; -- Begin function _ZNSt3__19allocatorIxEC2B8ne200100Ev
	.globl	__ZNSt3__19allocatorIxEC2B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__19allocatorIxEC2B8ne200100Ev
	.p2align	2
__ZNSt3__19allocatorIxEC2B8ne200100Ev:  ; @_ZNSt3__19allocatorIxEC2B8ne200100Ev
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
	bl	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIxEEEC2B8ne200100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIxEEEC2B8ne200100Ev ; -- Begin function _ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIxEEEC2B8ne200100Ev
	.globl	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIxEEEC2B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIxEEEC2B8ne200100Ev
	.p2align	2
__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIxEEEC2B8ne200100Ev: ; @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIxEEEC2B8ne200100Ev
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
	.private_extern	__ZNSt3__16vectorIxNS_9allocatorIxEEED2B8ne200100Ev ; -- Begin function _ZNSt3__16vectorIxNS_9allocatorIxEEED2B8ne200100Ev
	.globl	__ZNSt3__16vectorIxNS_9allocatorIxEEED2B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIxNS_9allocatorIxEEED2B8ne200100Ev
	.p2align	2
__ZNSt3__16vectorIxNS_9allocatorIxEEED2B8ne200100Ev: ; @_ZNSt3__16vectorIxNS_9allocatorIxEEED2B8ne200100Ev
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
	ldur	x1, [x29, #-8]
	str	x1, [sp, #8]                    ; 8-byte Folded Spill
Ltmp280:
	add	x0, sp, #16
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE16__destroy_vectorC1B8ne200100ERS3_
Ltmp281:
	b	LBB98_1
LBB98_1:
Ltmp282:
	add	x0, sp, #16
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE16__destroy_vectorclB8ne200100Ev
Ltmp283:
	b	LBB98_2
LBB98_2:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB98_3:
Ltmp284:
	bl	___clang_call_terminate
Lfunc_end8:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table98:
Lexception8:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase2-Lttbaseref2
Lttbaseref2:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end8-Lcst_begin8
Lcst_begin8:
	.uleb128 Ltmp280-Lfunc_begin8           ; >> Call Site 1 <<
	.uleb128 Ltmp283-Ltmp280                ;   Call between Ltmp280 and Ltmp283
	.uleb128 Ltmp284-Lfunc_begin8           ;     jumps to Ltmp284
	.byte	1                               ;   On action: 1
Lcst_end8:
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
	.private_extern	__ZNSt3__16vectorIxNS_9allocatorIxEEE16__destroy_vectorC1B8ne200100ERS3_ ; -- Begin function _ZNSt3__16vectorIxNS_9allocatorIxEEE16__destroy_vectorC1B8ne200100ERS3_
	.globl	__ZNSt3__16vectorIxNS_9allocatorIxEEE16__destroy_vectorC1B8ne200100ERS3_
	.weak_def_can_be_hidden	__ZNSt3__16vectorIxNS_9allocatorIxEEE16__destroy_vectorC1B8ne200100ERS3_
	.p2align	2
__ZNSt3__16vectorIxNS_9allocatorIxEEE16__destroy_vectorC1B8ne200100ERS3_: ; @_ZNSt3__16vectorIxNS_9allocatorIxEEE16__destroy_vectorC1B8ne200100ERS3_
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
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE16__destroy_vectorC2B8ne200100ERS3_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIxNS_9allocatorIxEEE16__destroy_vectorclB8ne200100Ev ; -- Begin function _ZNSt3__16vectorIxNS_9allocatorIxEEE16__destroy_vectorclB8ne200100Ev
	.globl	__ZNSt3__16vectorIxNS_9allocatorIxEEE16__destroy_vectorclB8ne200100Ev
	.weak_definition	__ZNSt3__16vectorIxNS_9allocatorIxEEE16__destroy_vectorclB8ne200100Ev
	.p2align	2
__ZNSt3__16vectorIxNS_9allocatorIxEEE16__destroy_vectorclB8ne200100Ev: ; @_ZNSt3__16vectorIxNS_9allocatorIxEEE16__destroy_vectorclB8ne200100Ev
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
	cbz	x8, LBB100_2
	b	LBB100_1
LBB100_1:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE5clearB8ne200100Ev
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	bl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE17__annotate_deleteB8ne200100Ev
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x9, [x8]
	add	x9, x9, #16
	str	x9, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x9, [x8]
	ldr	x9, [x9]
	str	x9, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [x8]
	bl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE8capacityB8ne200100Ev
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	mov	x2, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIxEEE10deallocateB8ne200100ERS2_Pxm
	b	LBB100_2
LBB100_2:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIxNS_9allocatorIxEEE16__destroy_vectorC2B8ne200100ERS3_ ; -- Begin function _ZNSt3__16vectorIxNS_9allocatorIxEEE16__destroy_vectorC2B8ne200100ERS3_
	.globl	__ZNSt3__16vectorIxNS_9allocatorIxEEE16__destroy_vectorC2B8ne200100ERS3_
	.weak_def_can_be_hidden	__ZNSt3__16vectorIxNS_9allocatorIxEEE16__destroy_vectorC2B8ne200100ERS3_
	.p2align	2
__ZNSt3__16vectorIxNS_9allocatorIxEEE16__destroy_vectorC2B8ne200100ERS3_: ; @_ZNSt3__16vectorIxNS_9allocatorIxEEE16__destroy_vectorC2B8ne200100ERS3_
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
	.private_extern	__ZNSt3__16vectorIxNS_9allocatorIxEEE5clearB8ne200100Ev ; -- Begin function _ZNSt3__16vectorIxNS_9allocatorIxEEE5clearB8ne200100Ev
	.globl	__ZNSt3__16vectorIxNS_9allocatorIxEEE5clearB8ne200100Ev
	.weak_definition	__ZNSt3__16vectorIxNS_9allocatorIxEEE5clearB8ne200100Ev
	.p2align	2
__ZNSt3__16vectorIxNS_9allocatorIxEEE5clearB8ne200100Ev: ; @_ZNSt3__16vectorIxNS_9allocatorIxEEE5clearB8ne200100Ev
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
	bl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE4sizeB8ne200100Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	str	x8, [sp, #16]
	ldr	x1, [x0]
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE22__base_destruct_at_endB8ne200100EPx
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x1, [sp, #16]
	bl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE17__annotate_shrinkB8ne200100Em
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIxNS_9allocatorIxEEE17__annotate_deleteB8ne200100Ev ; -- Begin function _ZNKSt3__16vectorIxNS_9allocatorIxEEE17__annotate_deleteB8ne200100Ev
	.globl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE17__annotate_deleteB8ne200100Ev
	.weak_definition	__ZNKSt3__16vectorIxNS_9allocatorIxEEE17__annotate_deleteB8ne200100Ev
	.p2align	2
__ZNKSt3__16vectorIxNS_9allocatorIxEEE17__annotate_deleteB8ne200100Ev: ; @_ZNKSt3__16vectorIxNS_9allocatorIxEEE17__annotate_deleteB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116allocator_traitsINS_9allocatorIxEEE10deallocateB8ne200100ERS2_Pxm ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIxEEE10deallocateB8ne200100ERS2_Pxm
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIxEEE10deallocateB8ne200100ERS2_Pxm
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIxEEE10deallocateB8ne200100ERS2_Pxm
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIxEEE10deallocateB8ne200100ERS2_Pxm: ; @_ZNSt3__116allocator_traitsINS_9allocatorIxEEE10deallocateB8ne200100ERS2_Pxm
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
	bl	__ZNSt3__19allocatorIxE10deallocateB8ne200100EPxm
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIxNS_9allocatorIxEEE8capacityB8ne200100Ev ; -- Begin function _ZNKSt3__16vectorIxNS_9allocatorIxEEE8capacityB8ne200100Ev
	.globl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE8capacityB8ne200100Ev
	.weak_definition	__ZNKSt3__16vectorIxNS_9allocatorIxEEE8capacityB8ne200100Ev
	.p2align	2
__ZNKSt3__16vectorIxNS_9allocatorIxEEE8capacityB8ne200100Ev: ; @_ZNKSt3__16vectorIxNS_9allocatorIxEEE8capacityB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	ldr	x8, [x9, #16]
	ldr	x9, [x9]
	subs	x8, x8, x9
	mov	x9, #8                          ; =0x8
	sdiv	x0, x8, x9
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIxNS_9allocatorIxEEE22__base_destruct_at_endB8ne200100EPx ; -- Begin function _ZNSt3__16vectorIxNS_9allocatorIxEEE22__base_destruct_at_endB8ne200100EPx
	.globl	__ZNSt3__16vectorIxNS_9allocatorIxEEE22__base_destruct_at_endB8ne200100EPx
	.weak_definition	__ZNSt3__16vectorIxNS_9allocatorIxEEE22__base_destruct_at_endB8ne200100EPx
	.p2align	2
__ZNSt3__16vectorIxNS_9allocatorIxEEE22__base_destruct_at_endB8ne200100EPx: ; @_ZNSt3__16vectorIxNS_9allocatorIxEEE22__base_destruct_at_endB8ne200100EPx
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
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldr	x8, [x8, #8]
	str	x8, [sp, #24]
	b	LBB106_1
LBB106_1:                               ; =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-16]
	ldr	x9, [sp, #24]
	subs	x8, x8, x9
	b.eq	LBB106_4
	b	LBB106_2
LBB106_2:                               ;   in Loop: Header=BB106_1 Depth=1
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	add	x8, x8, #16
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x8, [sp, #24]
	subs	x0, x8, #8
	str	x0, [sp, #24]
	bl	__ZNSt3__112__to_addressB8ne200100IxEEPT_S2_
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
Ltmp288:
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIxEEE7destroyB8ne200100IxLi0EEEvRS2_PT_
Ltmp289:
	b	LBB106_3
LBB106_3:                               ;   in Loop: Header=BB106_1 Depth=1
	b	LBB106_1
LBB106_4:
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	str	x8, [x9, #8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB106_5:
Ltmp290:
	bl	___clang_call_terminate
Lfunc_end9:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table106:
Lexception9:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase3-Lttbaseref3
Lttbaseref3:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end9-Lcst_begin9
Lcst_begin9:
	.uleb128 Ltmp288-Lfunc_begin9           ; >> Call Site 1 <<
	.uleb128 Ltmp289-Ltmp288                ;   Call between Ltmp288 and Ltmp289
	.uleb128 Ltmp290-Lfunc_begin9           ;     jumps to Ltmp290
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
	.private_extern	__ZNKSt3__16vectorIxNS_9allocatorIxEEE17__annotate_shrinkB8ne200100Em ; -- Begin function _ZNKSt3__16vectorIxNS_9allocatorIxEEE17__annotate_shrinkB8ne200100Em
	.globl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE17__annotate_shrinkB8ne200100Em
	.weak_definition	__ZNKSt3__16vectorIxNS_9allocatorIxEEE17__annotate_shrinkB8ne200100Em
	.p2align	2
__ZNKSt3__16vectorIxNS_9allocatorIxEEE17__annotate_shrinkB8ne200100Em: ; @_ZNKSt3__16vectorIxNS_9allocatorIxEEE17__annotate_shrinkB8ne200100Em
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
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIxEEE7destroyB8ne200100IxLi0EEEvRS2_PT_ ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIxEEE7destroyB8ne200100IxLi0EEEvRS2_PT_
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIxEEE7destroyB8ne200100IxLi0EEEvRS2_PT_
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIxEEE7destroyB8ne200100IxLi0EEEvRS2_PT_: ; @_ZNSt3__116allocator_traitsINS_9allocatorIxEEE7destroyB8ne200100IxLi0EEEvRS2_PT_
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
	bl	__ZNSt3__19allocatorIxE7destroyB8ne200100EPx
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112__to_addressB8ne200100IxEEPT_S2_ ; -- Begin function _ZNSt3__112__to_addressB8ne200100IxEEPT_S2_
	.globl	__ZNSt3__112__to_addressB8ne200100IxEEPT_S2_
	.weak_definition	__ZNSt3__112__to_addressB8ne200100IxEEPT_S2_
	.p2align	2
__ZNSt3__112__to_addressB8ne200100IxEEPT_S2_: ; @_ZNSt3__112__to_addressB8ne200100IxEEPT_S2_
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
	.private_extern	__ZNSt3__19allocatorIxE7destroyB8ne200100EPx ; -- Begin function _ZNSt3__19allocatorIxE7destroyB8ne200100EPx
	.globl	__ZNSt3__19allocatorIxE7destroyB8ne200100EPx
	.weak_definition	__ZNSt3__19allocatorIxE7destroyB8ne200100EPx
	.p2align	2
__ZNSt3__19allocatorIxE7destroyB8ne200100EPx: ; @_ZNSt3__19allocatorIxE7destroyB8ne200100EPx
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
	.private_extern	__ZNSt3__19allocatorIxE10deallocateB8ne200100EPxm ; -- Begin function _ZNSt3__19allocatorIxE10deallocateB8ne200100EPxm
	.globl	__ZNSt3__19allocatorIxE10deallocateB8ne200100EPxm
	.weak_definition	__ZNSt3__19allocatorIxE10deallocateB8ne200100EPxm
	.p2align	2
__ZNSt3__19allocatorIxE10deallocateB8ne200100EPxm: ; @_ZNSt3__19allocatorIxE10deallocateB8ne200100EPxm
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
	mov	x2, #8                          ; =0x8
	bl	__ZNSt3__119__libcpp_deallocateB8ne200100IxEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__libcpp_deallocateB8ne200100IxEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm ; -- Begin function _ZNSt3__119__libcpp_deallocateB8ne200100IxEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm
	.globl	__ZNSt3__119__libcpp_deallocateB8ne200100IxEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm
	.weak_definition	__ZNSt3__119__libcpp_deallocateB8ne200100IxEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm
	.p2align	2
__ZNSt3__119__libcpp_deallocateB8ne200100IxEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm: ; @_ZNSt3__119__libcpp_deallocateB8ne200100IxEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm
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
	lsl	x8, x8, #3
	str	x8, [sp]
	ldur	x0, [x29, #-8]
	bl	__ZNSt3__124__libcpp_operator_deleteB8ne200100IJPxEEEvDpT_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__124__libcpp_operator_deleteB8ne200100IJPxEEEvDpT_ ; -- Begin function _ZNSt3__124__libcpp_operator_deleteB8ne200100IJPxEEEvDpT_
	.globl	__ZNSt3__124__libcpp_operator_deleteB8ne200100IJPxEEEvDpT_
	.weak_definition	__ZNSt3__124__libcpp_operator_deleteB8ne200100IJPxEEEvDpT_
	.p2align	2
__ZNSt3__124__libcpp_operator_deleteB8ne200100IJPxEEEvDpT_: ; @_ZNSt3__124__libcpp_operator_deleteB8ne200100IJPxEEEvDpT_
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
	.globl	__ZNSt3__16vectorIxNS_9allocatorIxEEE12emplace_backIJxEEEvDpOT_ ; -- Begin function _ZNSt3__16vectorIxNS_9allocatorIxEEE12emplace_backIJxEEEvDpOT_
	.weak_definition	__ZNSt3__16vectorIxNS_9allocatorIxEEE12emplace_backIJxEEEvDpOT_
	.p2align	2
__ZNSt3__16vectorIxNS_9allocatorIxEEE12emplace_backIJxEEEvDpOT_: ; @_ZNSt3__16vectorIxNS_9allocatorIxEEE12emplace_backIJxEEEvDpOT_
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
	b.hs	LBB114_2
	b	LBB114_1
LBB114_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x1, [sp, #16]
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE22__construct_one_at_endB8ne200100IJxEEEvDpOT_
	ldr	x8, [sp, #8]
	add	x8, x8, #8
	str	x8, [sp, #8]
	b	LBB114_3
LBB114_2:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x1, [sp, #16]
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE24__emplace_back_slow_pathIJxEEEPxDpOT_
	str	x0, [sp, #8]
	b	LBB114_3
LBB114_3:
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #8]
	str	x8, [x9, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16vectorIxNS_9allocatorIxEEE22__construct_one_at_endB8ne200100IJxEEEvDpOT_ ; -- Begin function _ZNSt3__16vectorIxNS_9allocatorIxEEE22__construct_one_at_endB8ne200100IJxEEEvDpOT_
	.weak_definition	__ZNSt3__16vectorIxNS_9allocatorIxEEE22__construct_one_at_endB8ne200100IJxEEEvDpOT_
	.p2align	2
__ZNSt3__16vectorIxNS_9allocatorIxEEE22__construct_one_at_endB8ne200100IJxEEEvDpOT_: ; @_ZNSt3__16vectorIxNS_9allocatorIxEEE22__construct_one_at_endB8ne200100IJxEEEvDpOT_
Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception10
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
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE21_ConstructTransactionC1B8ne200100ERS3_m
	ldr	x0, [sp, #32]
	bl	__ZNSt3__112__to_addressB8ne200100IxEEPT_S2_
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	mov	x1, x0
	ldur	x2, [x29, #-16]
Ltmp294:
	add	x0, x8, #16
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIxEEE9constructB8ne200100IxJxELi0EEEvRS2_PT_DpOT0_
Ltmp295:
	b	LBB115_1
LBB115_1:
	add	x0, sp, #24
	ldr	x8, [sp, #32]
	add	x8, x8, #8
	str	x8, [sp, #32]
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE21_ConstructTransactionD1B8ne200100Ev
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB115_2:
Ltmp296:
	str	x0, [sp, #16]
	mov	x8, x1
	str	w8, [sp, #12]
	add	x0, sp, #24
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE21_ConstructTransactionD1B8ne200100Ev
	b	LBB115_3
LBB115_3:
	ldr	x0, [sp, #16]
	bl	__Unwind_Resume
Lfunc_end10:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table115:
Lexception10:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end10-Lcst_begin10
Lcst_begin10:
	.uleb128 Lfunc_begin10-Lfunc_begin10    ; >> Call Site 1 <<
	.uleb128 Ltmp294-Lfunc_begin10          ;   Call between Lfunc_begin10 and Ltmp294
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp294-Lfunc_begin10          ; >> Call Site 2 <<
	.uleb128 Ltmp295-Ltmp294                ;   Call between Ltmp294 and Ltmp295
	.uleb128 Ltmp296-Lfunc_begin10          ;     jumps to Ltmp296
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp295-Lfunc_begin10          ; >> Call Site 3 <<
	.uleb128 Lfunc_end10-Ltmp295            ;   Call between Ltmp295 and Lfunc_end10
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end10:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__16vectorIxNS_9allocatorIxEEE24__emplace_back_slow_pathIJxEEEPxDpOT_ ; -- Begin function _ZNSt3__16vectorIxNS_9allocatorIxEEE24__emplace_back_slow_pathIJxEEEPxDpOT_
	.weak_definition	__ZNSt3__16vectorIxNS_9allocatorIxEEE24__emplace_back_slow_pathIJxEEEPxDpOT_
	.p2align	2
__ZNSt3__16vectorIxNS_9allocatorIxEEE24__emplace_back_slow_pathIJxEEEPxDpOT_: ; @_ZNSt3__16vectorIxNS_9allocatorIxEEE24__emplace_back_slow_pathIJxEEEPxDpOT_
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
	ldur	x0, [x29, #-8]
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE4sizeB8ne200100Ev
	mov	x8, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	add	x1, x8, #1
	bl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE11__recommendB8ne200100Em
	mov	x1, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	str	x1, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE4sizeB8ne200100Ev
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	mov	x2, x0
	add	x0, sp, #40
	add	x3, x8, #16
	bl	__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEEC1EmmS3_
	ldr	x0, [sp, #56]
	bl	__ZNSt3__112__to_addressB8ne200100IxEEPT_S2_
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	mov	x1, x0
	ldur	x2, [x29, #-16]
Ltmp297:
	add	x0, x8, #16
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIxEEE9constructB8ne200100IxJxELi0EEEvRS2_PT_DpOT0_
Ltmp298:
	b	LBB116_1
LBB116_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	add	x1, sp, #40
	ldr	x8, [sp, #56]
	add	x8, x8, #8
	str	x8, [sp, #56]
Ltmp299:
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE26__swap_out_circular_bufferERNS_14__split_bufferIxRS2_EE
Ltmp300:
	b	LBB116_2
LBB116_2:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x8, [x8, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	add	x0, sp, #40
	bl	__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEED1Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB116_3:
Ltmp301:
	str	x0, [sp, #32]
	mov	x8, x1
	str	w8, [sp, #28]
	add	x0, sp, #40
	bl	__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEED1Ev
	b	LBB116_4
LBB116_4:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
Lfunc_end11:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table116:
Lexception11:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end11-Lcst_begin11
Lcst_begin11:
	.uleb128 Lfunc_begin11-Lfunc_begin11    ; >> Call Site 1 <<
	.uleb128 Ltmp297-Lfunc_begin11          ;   Call between Lfunc_begin11 and Ltmp297
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp297-Lfunc_begin11          ; >> Call Site 2 <<
	.uleb128 Ltmp300-Ltmp297                ;   Call between Ltmp297 and Ltmp300
	.uleb128 Ltmp301-Lfunc_begin11          ;     jumps to Ltmp301
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp300-Lfunc_begin11          ; >> Call Site 3 <<
	.uleb128 Lfunc_end11-Ltmp300            ;   Call between Ltmp300 and Lfunc_end11
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end11:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__16vectorIxNS_9allocatorIxEEE21_ConstructTransactionC1B8ne200100ERS3_m ; -- Begin function _ZNSt3__16vectorIxNS_9allocatorIxEEE21_ConstructTransactionC1B8ne200100ERS3_m
	.globl	__ZNSt3__16vectorIxNS_9allocatorIxEEE21_ConstructTransactionC1B8ne200100ERS3_m
	.weak_def_can_be_hidden	__ZNSt3__16vectorIxNS_9allocatorIxEEE21_ConstructTransactionC1B8ne200100ERS3_m
	.p2align	2
__ZNSt3__16vectorIxNS_9allocatorIxEEE21_ConstructTransactionC1B8ne200100ERS3_m: ; @_ZNSt3__16vectorIxNS_9allocatorIxEEE21_ConstructTransactionC1B8ne200100ERS3_m
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
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE21_ConstructTransactionC2B8ne200100ERS3_m
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIxEEE9constructB8ne200100IxJxELi0EEEvRS2_PT_DpOT0_ ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIxEEE9constructB8ne200100IxJxELi0EEEvRS2_PT_DpOT0_
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIxEEE9constructB8ne200100IxJxELi0EEEvRS2_PT_DpOT0_
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIxEEE9constructB8ne200100IxJxELi0EEEvRS2_PT_DpOT0_: ; @_ZNSt3__116allocator_traitsINS_9allocatorIxEEE9constructB8ne200100IxJxELi0EEEvRS2_PT_DpOT0_
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
	bl	__ZNSt3__19allocatorIxE9constructB8ne200100IxJxEEEvPT_DpOT0_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIxNS_9allocatorIxEEE21_ConstructTransactionD1B8ne200100Ev ; -- Begin function _ZNSt3__16vectorIxNS_9allocatorIxEEE21_ConstructTransactionD1B8ne200100Ev
	.globl	__ZNSt3__16vectorIxNS_9allocatorIxEEE21_ConstructTransactionD1B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIxNS_9allocatorIxEEE21_ConstructTransactionD1B8ne200100Ev
	.p2align	2
__ZNSt3__16vectorIxNS_9allocatorIxEEE21_ConstructTransactionD1B8ne200100Ev: ; @_ZNSt3__16vectorIxNS_9allocatorIxEEE21_ConstructTransactionD1B8ne200100Ev
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
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE21_ConstructTransactionD2B8ne200100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIxNS_9allocatorIxEEE21_ConstructTransactionC2B8ne200100ERS3_m ; -- Begin function _ZNSt3__16vectorIxNS_9allocatorIxEEE21_ConstructTransactionC2B8ne200100ERS3_m
	.globl	__ZNSt3__16vectorIxNS_9allocatorIxEEE21_ConstructTransactionC2B8ne200100ERS3_m
	.weak_def_can_be_hidden	__ZNSt3__16vectorIxNS_9allocatorIxEEE21_ConstructTransactionC2B8ne200100ERS3_m
	.p2align	2
__ZNSt3__16vectorIxNS_9allocatorIxEEE21_ConstructTransactionC2B8ne200100ERS3_m: ; @_ZNSt3__16vectorIxNS_9allocatorIxEEE21_ConstructTransactionC2B8ne200100ERS3_m
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
	add	x8, x8, x9, lsl #3
	str	x8, [x0, #16]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__19allocatorIxE9constructB8ne200100IxJxEEEvPT_DpOT0_ ; -- Begin function _ZNSt3__19allocatorIxE9constructB8ne200100IxJxEEEvPT_DpOT0_
	.weak_definition	__ZNSt3__19allocatorIxE9constructB8ne200100IxJxEEEvPT_DpOT0_
	.p2align	2
__ZNSt3__19allocatorIxE9constructB8ne200100IxJxEEEvPT_DpOT0_: ; @_ZNSt3__19allocatorIxE9constructB8ne200100IxJxEEEvPT_DpOT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x9, [sp, #16]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	str	x8, [x9]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIxNS_9allocatorIxEEE21_ConstructTransactionD2B8ne200100Ev ; -- Begin function _ZNSt3__16vectorIxNS_9allocatorIxEEE21_ConstructTransactionD2B8ne200100Ev
	.globl	__ZNSt3__16vectorIxNS_9allocatorIxEEE21_ConstructTransactionD2B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIxNS_9allocatorIxEEE21_ConstructTransactionD2B8ne200100Ev
	.p2align	2
__ZNSt3__16vectorIxNS_9allocatorIxEEE21_ConstructTransactionD2B8ne200100Ev: ; @_ZNSt3__16vectorIxNS_9allocatorIxEEE21_ConstructTransactionD2B8ne200100Ev
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
	.private_extern	__ZNKSt3__16vectorIxNS_9allocatorIxEEE11__recommendB8ne200100Em ; -- Begin function _ZNKSt3__16vectorIxNS_9allocatorIxEEE11__recommendB8ne200100Em
	.globl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE11__recommendB8ne200100Em
	.weak_definition	__ZNKSt3__16vectorIxNS_9allocatorIxEEE11__recommendB8ne200100Em
	.p2align	2
__ZNKSt3__16vectorIxNS_9allocatorIxEEE11__recommendB8ne200100Em: ; @_ZNKSt3__16vectorIxNS_9allocatorIxEEE11__recommendB8ne200100Em
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
	bl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE8max_sizeB8ne200100Ev
	str	x0, [sp, #32]
	ldur	x8, [x29, #-24]
	ldr	x9, [sp, #32]
	subs	x8, x8, x9
	b.ls	LBB123_2
	b	LBB123_1
LBB123_1:
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE20__throw_length_errorB8ne200100Ev
LBB123_2:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE8capacityB8ne200100Ev
	str	x0, [sp, #24]
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #32]
	mov	x10, #2                         ; =0x2
	udiv	x9, x9, x10
	subs	x8, x8, x9
	b.lo	LBB123_4
	b	LBB123_3
LBB123_3:
	ldr	x8, [sp, #32]
	stur	x8, [x29, #-8]
	b	LBB123_5
LBB123_4:
	ldr	x9, [sp, #24]
	mov	x8, #2                          ; =0x2
	mul	x8, x8, x9
	add	x0, sp, #16
	str	x8, [sp, #16]
	sub	x1, x29, #24
	bl	__ZNSt3__13maxB8ne200100ImEERKT_S3_S3_
	ldr	x8, [x0]
	stur	x8, [x29, #-8]
	b	LBB123_5
LBB123_5:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEEC1EmmS3_ ; -- Begin function _ZNSt3__114__split_bufferIxRNS_9allocatorIxEEEC1EmmS3_
	.globl	__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEEC1EmmS3_
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEEC1EmmS3_
	.p2align	2
__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEEC1EmmS3_: ; @_ZNSt3__114__split_bufferIxRNS_9allocatorIxEEEC1EmmS3_
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
	bl	__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEEC2EmmS3_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIxNS_9allocatorIxEEE26__swap_out_circular_bufferERNS_14__split_bufferIxRS2_EE ; -- Begin function _ZNSt3__16vectorIxNS_9allocatorIxEEE26__swap_out_circular_bufferERNS_14__split_bufferIxRS2_EE
	.globl	__ZNSt3__16vectorIxNS_9allocatorIxEEE26__swap_out_circular_bufferERNS_14__split_bufferIxRS2_EE
	.weak_definition	__ZNSt3__16vectorIxNS_9allocatorIxEEE26__swap_out_circular_bufferERNS_14__split_bufferIxRS2_EE
	.p2align	2
__ZNSt3__16vectorIxNS_9allocatorIxEEE26__swap_out_circular_bufferERNS_14__split_bufferIxRS2_EE: ; @_ZNSt3__16vectorIxNS_9allocatorIxEEE26__swap_out_circular_bufferERNS_14__split_bufferIxRS2_EE
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
	bl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE17__annotate_deleteB8ne200100Ev
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #8]
	ldr	x10, [x8, #8]
	ldr	x11, [x8]
	subs	x10, x10, x11
	mov	x11, #8                         ; =0x8
	sdiv	x11, x10, x11
	mov	x10, #0                         ; =0x0
	subs	x10, x10, x11
	add	x9, x9, x10, lsl #3
	str	x9, [sp, #24]
	ldr	x0, [x8]
	bl	__ZNSt3__112__to_addressB8ne200100IxEEPT_S2_
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [x8, #8]
	bl	__ZNSt3__112__to_addressB8ne200100IxEEPT_S2_
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x0, [sp, #24]
	bl	__ZNSt3__112__to_addressB8ne200100IxEEPT_S2_
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	ldr	x2, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	mov	x3, x0
	add	x0, x8, #16
	bl	__ZNSt3__134__uninitialized_allocator_relocateB8ne200100INS_9allocatorIxEEPxEEvRT_T0_S6_S6_
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #24]
	ldur	x9, [x29, #-16]
	str	x8, [x9, #8]
	ldr	x8, [x0]
	str	x8, [x0, #8]
	ldur	x8, [x29, #-16]
	add	x1, x8, #8
	bl	__ZNSt3__14swapB8ne200100IPxEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	add	x0, x9, #8
	add	x1, x8, #16
	bl	__ZNSt3__14swapB8ne200100IPxEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	add	x0, x9, #16
	add	x1, x8, #24
	bl	__ZNSt3__14swapB8ne200100IPxEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	ldur	x9, [x29, #-16]
	str	x8, [x9]
	bl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE4sizeB8ne200100Ev
	mov	x1, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE14__annotate_newB8ne200100Em
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEED1Ev ; -- Begin function _ZNSt3__114__split_bufferIxRNS_9allocatorIxEEED1Ev
	.globl	__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEED1Ev
	.p2align	2
__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEED1Ev: ; @_ZNSt3__114__split_bufferIxRNS_9allocatorIxEEED1Ev
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
	bl	__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEED2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIxNS_9allocatorIxEEE8max_sizeB8ne200100Ev ; -- Begin function _ZNKSt3__16vectorIxNS_9allocatorIxEEE8max_sizeB8ne200100Ev
	.globl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE8max_sizeB8ne200100Ev
	.weak_definition	__ZNKSt3__16vectorIxNS_9allocatorIxEEE8max_sizeB8ne200100Ev
	.p2align	2
__ZNKSt3__16vectorIxNS_9allocatorIxEEE8max_sizeB8ne200100Ev: ; @_ZNKSt3__16vectorIxNS_9allocatorIxEEE8max_sizeB8ne200100Ev
Lfunc_begin12:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception12
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
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIxEEE8max_sizeB8ne200100IS2_Li0EEEmRKS2_
	sub	x8, x29, #16
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	stur	x0, [x29, #-16]
	bl	__ZNSt3__114numeric_limitsIlE3maxB8ne200100Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	add	x1, sp, #24
	str	x8, [sp, #24]
Ltmp305:
	bl	__ZNSt3__13minB8ne200100ImEERKT_S3_S3_
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp306:
	b	LBB127_1
LBB127_1:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB127_2:
Ltmp307:
	bl	___clang_call_terminate
Lfunc_end12:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table127:
Lexception12:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase4-Lttbaseref4
Lttbaseref4:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end12-Lcst_begin12
Lcst_begin12:
	.uleb128 Ltmp305-Lfunc_begin12          ; >> Call Site 1 <<
	.uleb128 Ltmp306-Ltmp305                ;   Call between Ltmp305 and Ltmp306
	.uleb128 Ltmp307-Lfunc_begin12          ;     jumps to Ltmp307
	.byte	1                               ;   On action: 1
Lcst_end12:
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
	.private_extern	__ZNSt3__16vectorIxNS_9allocatorIxEEE20__throw_length_errorB8ne200100Ev ; -- Begin function _ZNSt3__16vectorIxNS_9allocatorIxEEE20__throw_length_errorB8ne200100Ev
	.globl	__ZNSt3__16vectorIxNS_9allocatorIxEEE20__throw_length_errorB8ne200100Ev
	.weak_definition	__ZNSt3__16vectorIxNS_9allocatorIxEEE20__throw_length_errorB8ne200100Ev
	.p2align	2
__ZNSt3__16vectorIxNS_9allocatorIxEEE20__throw_length_errorB8ne200100Ev: ; @_ZNSt3__16vectorIxNS_9allocatorIxEEE20__throw_length_errorB8ne200100Ev
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x0, l_.str.38@PAGE
	add	x0, x0, l_.str.38@PAGEOFF
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
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIxEEE8max_sizeB8ne200100IS2_Li0EEEmRKS2_ ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIxEEE8max_sizeB8ne200100IS2_Li0EEEmRKS2_
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIxEEE8max_sizeB8ne200100IS2_Li0EEEmRKS2_
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIxEEE8max_sizeB8ne200100IS2_Li0EEEmRKS2_: ; @_ZNSt3__116allocator_traitsINS_9allocatorIxEEE8max_sizeB8ne200100IS2_Li0EEEmRKS2_
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
	bl	__ZNKSt3__19allocatorIxE8max_sizeB8ne200100Ev
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
	tbz	w0, #0, LBB133_2
	b	LBB133_1
LBB133_1:
	ldr	x8, [sp, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB133_3
LBB133_2:
	ldr	x8, [sp, #16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB133_3
LBB133_3:
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
	.private_extern	__ZNKSt3__19allocatorIxE8max_sizeB8ne200100Ev ; -- Begin function _ZNKSt3__19allocatorIxE8max_sizeB8ne200100Ev
	.globl	__ZNKSt3__19allocatorIxE8max_sizeB8ne200100Ev
	.weak_definition	__ZNKSt3__19allocatorIxE8max_sizeB8ne200100Ev
	.p2align	2
__ZNKSt3__19allocatorIxE8max_sizeB8ne200100Ev: ; @_ZNKSt3__19allocatorIxE8max_sizeB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	mov	x0, #2305843009213693951        ; =0x1fffffffffffffff
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
	mov	x0, #16                         ; =0x10
	bl	___cxa_allocate_exception
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldur	x1, [x29, #-8]
Ltmp310:
	bl	__ZNSt12length_errorC1B8ne200100EPKc
Ltmp311:
	b	LBB137_1
LBB137_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	adrp	x1, __ZTISt12length_error@GOTPAGE
	ldr	x1, [x1, __ZTISt12length_error@GOTPAGEOFF]
	adrp	x2, __ZNSt12length_errorD1Ev@GOTPAGE
	ldr	x2, [x2, __ZNSt12length_errorD1Ev@GOTPAGEOFF]
	bl	___cxa_throw
LBB137_2:
Ltmp312:
	mov	x8, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	str	x8, [sp, #16]
	mov	x8, x1
	str	w8, [sp, #12]
	bl	___cxa_free_exception
	b	LBB137_3
LBB137_3:
	ldr	x0, [sp, #16]
	bl	__Unwind_Resume
Lfunc_end13:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table137:
Lexception13:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end13-Lcst_begin13
Lcst_begin13:
	.uleb128 Lfunc_begin13-Lfunc_begin13    ; >> Call Site 1 <<
	.uleb128 Ltmp310-Lfunc_begin13          ;   Call between Lfunc_begin13 and Ltmp310
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp310-Lfunc_begin13          ; >> Call Site 2 <<
	.uleb128 Ltmp311-Ltmp310                ;   Call between Ltmp310 and Ltmp311
	.uleb128 Ltmp312-Lfunc_begin13          ;     jumps to Ltmp312
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp311-Lfunc_begin13          ; >> Call Site 3 <<
	.uleb128 Lfunc_end13-Ltmp311            ;   Call between Ltmp311 and Lfunc_end13
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end13:
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
	tbz	w0, #0, LBB140_2
	b	LBB140_1
LBB140_1:
	ldr	x8, [sp, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB140_3
LBB140_2:
	ldr	x8, [sp, #16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB140_3
LBB140_3:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEEC2EmmS3_ ; -- Begin function _ZNSt3__114__split_bufferIxRNS_9allocatorIxEEEC2EmmS3_
	.globl	__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEEC2EmmS3_
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEEC2EmmS3_
	.p2align	2
__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEEC2EmmS3_: ; @_ZNSt3__114__split_bufferIxRNS_9allocatorIxEEEC2EmmS3_
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
	cbnz	x8, LBB141_2
	b	LBB141_1
LBB141_1:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8]
	b	LBB141_3
LBB141_2:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldr	x0, [x8, #32]
	ldur	x1, [x29, #-24]
	bl	__ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIxEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	str	x0, [sp, #8]
	str	x1, [sp, #16]
	ldr	x8, [sp, #8]
	str	x8, [x9]
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-24]
	b	LBB141_3
LBB141_3:
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [x9]
	ldr	x10, [sp, #32]
	add	x8, x8, x10, lsl #3
	str	x8, [x9, #16]
	str	x8, [x9, #8]
	ldr	x8, [x9]
	ldur	x10, [x29, #-24]
	add	x8, x8, x10, lsl #3
	str	x8, [x9, #24]
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIxEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m ; -- Begin function _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIxEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m
	.globl	__ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIxEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m
	.weak_definition	__ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIxEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m
	.p2align	2
__ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIxEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m: ; @_ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIxEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m
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
	bl	__ZNSt3__19allocatorIxE8allocateB8ne200100Em
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
	.private_extern	__ZNSt3__19allocatorIxE8allocateB8ne200100Em ; -- Begin function _ZNSt3__19allocatorIxE8allocateB8ne200100Em
	.globl	__ZNSt3__19allocatorIxE8allocateB8ne200100Em
	.weak_definition	__ZNSt3__19allocatorIxE8allocateB8ne200100Em
	.p2align	2
__ZNSt3__19allocatorIxE8allocateB8ne200100Em: ; @_ZNSt3__19allocatorIxE8allocateB8ne200100Em
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
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIxEEE8max_sizeB8ne200100IS2_Li0EEEmRKS2_
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	subs	x8, x8, x0
	b.ls	LBB143_2
	b	LBB143_1
LBB143_1:
	bl	__ZSt28__throw_bad_array_new_lengthB8ne200100v
LBB143_2:
	ldr	x0, [sp, #16]
	mov	x1, #8                          ; =0x8
	bl	__ZNSt3__117__libcpp_allocateB8ne200100IxEEPT_NS_15__element_countEm
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
	.private_extern	__ZNSt3__117__libcpp_allocateB8ne200100IxEEPT_NS_15__element_countEm ; -- Begin function _ZNSt3__117__libcpp_allocateB8ne200100IxEEPT_NS_15__element_countEm
	.globl	__ZNSt3__117__libcpp_allocateB8ne200100IxEEPT_NS_15__element_countEm
	.weak_definition	__ZNSt3__117__libcpp_allocateB8ne200100IxEEPT_NS_15__element_countEm
	.p2align	2
__ZNSt3__117__libcpp_allocateB8ne200100IxEEPT_NS_15__element_countEm: ; @_ZNSt3__117__libcpp_allocateB8ne200100IxEEPT_NS_15__element_countEm
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
	lsl	x8, x8, #3
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__121__libcpp_operator_newB8ne200100IxEEPvm
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__121__libcpp_operator_newB8ne200100IxEEPvm ; -- Begin function _ZNSt3__121__libcpp_operator_newB8ne200100IxEEPvm
	.globl	__ZNSt3__121__libcpp_operator_newB8ne200100IxEEPvm
	.weak_definition	__ZNSt3__121__libcpp_operator_newB8ne200100IxEEPvm
	.p2align	2
__ZNSt3__121__libcpp_operator_newB8ne200100IxEEPvm: ; @_ZNSt3__121__libcpp_operator_newB8ne200100IxEEPvm
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
	.private_extern	__ZNSt3__134__uninitialized_allocator_relocateB8ne200100INS_9allocatorIxEEPxEEvRT_T0_S6_S6_ ; -- Begin function _ZNSt3__134__uninitialized_allocator_relocateB8ne200100INS_9allocatorIxEEPxEEvRT_T0_S6_S6_
	.globl	__ZNSt3__134__uninitialized_allocator_relocateB8ne200100INS_9allocatorIxEEPxEEvRT_T0_S6_S6_
	.weak_definition	__ZNSt3__134__uninitialized_allocator_relocateB8ne200100INS_9allocatorIxEEPxEEvRT_T0_S6_S6_
	.p2align	2
__ZNSt3__134__uninitialized_allocator_relocateB8ne200100INS_9allocatorIxEEPxEEvRT_T0_S6_S6_: ; @_ZNSt3__134__uninitialized_allocator_relocateB8ne200100INS_9allocatorIxEEPxEEvRT_T0_S6_S6_
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
	bl	__ZNSt3__112__to_addressB8ne200100IxEEPT_S2_
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	__ZNSt3__112__to_addressB8ne200100IxEEPT_S2_
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [sp, #24]
	ldur	x9, [x29, #-16]
	subs	x9, x8, x9
	mov	x8, #8                          ; =0x8
	sdiv	x9, x9, x8
	mul	x2, x8, x9
	bl	_memcpy
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__14swapB8ne200100IPxEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_ ; -- Begin function _ZNSt3__14swapB8ne200100IPxEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_
	.globl	__ZNSt3__14swapB8ne200100IPxEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_
	.weak_definition	__ZNSt3__14swapB8ne200100IPxEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_
	.p2align	2
__ZNSt3__14swapB8ne200100IPxEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_: ; @_ZNSt3__14swapB8ne200100IPxEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_
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
	.private_extern	__ZNKSt3__16vectorIxNS_9allocatorIxEEE14__annotate_newB8ne200100Em ; -- Begin function _ZNKSt3__16vectorIxNS_9allocatorIxEEE14__annotate_newB8ne200100Em
	.globl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE14__annotate_newB8ne200100Em
	.weak_definition	__ZNKSt3__16vectorIxNS_9allocatorIxEEE14__annotate_newB8ne200100Em
	.p2align	2
__ZNKSt3__16vectorIxNS_9allocatorIxEEE14__annotate_newB8ne200100Em: ; @_ZNKSt3__16vectorIxNS_9allocatorIxEEE14__annotate_newB8ne200100Em
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
	.private_extern	__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEED2Ev ; -- Begin function _ZNSt3__114__split_bufferIxRNS_9allocatorIxEEED2Ev
	.globl	__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEED2Ev
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEED2Ev
	.p2align	2
__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEED2Ev: ; @_ZNSt3__114__split_bufferIxRNS_9allocatorIxEEED2Ev
Lfunc_begin14:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception14
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
	bl	__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEE5clearB8ne200100Ev
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x8, [x8]
	cbz	x8, LBB150_3
	b	LBB150_1
LBB150_1:
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x8, [x0, #32]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x8, [x0]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
Ltmp315:
	bl	__ZNKSt3__114__split_bufferIxRNS_9allocatorIxEEE8capacityB8ne200100Ev
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp316:
	b	LBB150_2
LBB150_2:
	ldr	x2, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIxEEE10deallocateB8ne200100ERS2_Pxm
	b	LBB150_3
LBB150_3:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB150_4:
Ltmp317:
	bl	___clang_call_terminate
Lfunc_end14:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table150:
Lexception14:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase5-Lttbaseref5
Lttbaseref5:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end14-Lcst_begin14
Lcst_begin14:
	.uleb128 Ltmp315-Lfunc_begin14          ; >> Call Site 1 <<
	.uleb128 Ltmp316-Ltmp315                ;   Call between Ltmp315 and Ltmp316
	.uleb128 Ltmp317-Lfunc_begin14          ;     jumps to Ltmp317
	.byte	1                               ;   On action: 1
Lcst_end14:
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
	.private_extern	__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEE5clearB8ne200100Ev ; -- Begin function _ZNSt3__114__split_bufferIxRNS_9allocatorIxEEE5clearB8ne200100Ev
	.globl	__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEE5clearB8ne200100Ev
	.weak_definition	__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEE5clearB8ne200100Ev
	.p2align	2
__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEE5clearB8ne200100Ev: ; @_ZNSt3__114__split_bufferIxRNS_9allocatorIxEEE5clearB8ne200100Ev
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
	bl	__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEE17__destruct_at_endB8ne200100EPx
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__114__split_bufferIxRNS_9allocatorIxEEE8capacityB8ne200100Ev ; -- Begin function _ZNKSt3__114__split_bufferIxRNS_9allocatorIxEEE8capacityB8ne200100Ev
	.globl	__ZNKSt3__114__split_bufferIxRNS_9allocatorIxEEE8capacityB8ne200100Ev
	.weak_definition	__ZNKSt3__114__split_bufferIxRNS_9allocatorIxEEE8capacityB8ne200100Ev
	.p2align	2
__ZNKSt3__114__split_bufferIxRNS_9allocatorIxEEE8capacityB8ne200100Ev: ; @_ZNKSt3__114__split_bufferIxRNS_9allocatorIxEEE8capacityB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	ldr	x8, [x9, #24]
	ldr	x9, [x9]
	subs	x8, x8, x9
	mov	x9, #8                          ; =0x8
	sdiv	x0, x8, x9
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEE17__destruct_at_endB8ne200100EPx ; -- Begin function _ZNSt3__114__split_bufferIxRNS_9allocatorIxEEE17__destruct_at_endB8ne200100EPx
	.globl	__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEE17__destruct_at_endB8ne200100EPx
	.weak_definition	__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEE17__destruct_at_endB8ne200100EPx
	.p2align	2
__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEE17__destruct_at_endB8ne200100EPx: ; @_ZNSt3__114__split_bufferIxRNS_9allocatorIxEEE17__destruct_at_endB8ne200100EPx
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
	bl	__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEE17__destruct_at_endB8ne200100EPxNS_17integral_constantIbLb0EEE
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEE17__destruct_at_endB8ne200100EPxNS_17integral_constantIbLb0EEE ; -- Begin function _ZNSt3__114__split_bufferIxRNS_9allocatorIxEEE17__destruct_at_endB8ne200100EPxNS_17integral_constantIbLb0EEE
	.globl	__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEE17__destruct_at_endB8ne200100EPxNS_17integral_constantIbLb0EEE
	.weak_definition	__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEE17__destruct_at_endB8ne200100EPxNS_17integral_constantIbLb0EEE
	.p2align	2
__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEE17__destruct_at_endB8ne200100EPxNS_17integral_constantIbLb0EEE: ; @_ZNSt3__114__split_bufferIxRNS_9allocatorIxEEE17__destruct_at_endB8ne200100EPxNS_17integral_constantIbLb0EEE
Lfunc_begin15:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception15
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
	b	LBB154_1
LBB154_1:                               ; =>This Inner Loop Header: Depth=1
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #24]
	ldr	x9, [x9, #16]
	subs	x8, x8, x9
	b.eq	LBB154_4
	b	LBB154_2
LBB154_2:                               ;   in Loop: Header=BB154_1 Depth=1
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x9, [x8, #32]
	str	x9, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x9, [x8, #16]
	subs	x0, x9, #8
	str	x0, [x8, #16]
	bl	__ZNSt3__112__to_addressB8ne200100IxEEPT_S2_
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
Ltmp319:
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIxEEE7destroyB8ne200100IxLi0EEEvRS2_PT_
Ltmp320:
	b	LBB154_3
LBB154_3:                               ;   in Loop: Header=BB154_1 Depth=1
	b	LBB154_1
LBB154_4:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB154_5:
Ltmp321:
	bl	___clang_call_terminate
Lfunc_end15:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table154:
Lexception15:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase6-Lttbaseref6
Lttbaseref6:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end15-Lcst_begin15
Lcst_begin15:
	.uleb128 Ltmp319-Lfunc_begin15          ; >> Call Site 1 <<
	.uleb128 Ltmp320-Ltmp319                ;   Call between Ltmp319 and Ltmp320
	.uleb128 Ltmp321-Lfunc_begin15          ;     jumps to Ltmp321
	.byte	1                               ;   On action: 1
Lcst_end15:
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
	.globl	__ZNSt3__16vectorIxNS_9allocatorIxEEE6assignB8ne200100IPKxLi0EEEvT_S7_ ; -- Begin function _ZNSt3__16vectorIxNS_9allocatorIxEEE6assignB8ne200100IPKxLi0EEEvT_S7_
	.weak_definition	__ZNSt3__16vectorIxNS_9allocatorIxEEE6assignB8ne200100IPKxLi0EEEvT_S7_
	.p2align	2
__ZNSt3__16vectorIxNS_9allocatorIxEEE6assignB8ne200100IPKxLi0EEEvT_S7_: ; @_ZNSt3__16vectorIxNS_9allocatorIxEEE6assignB8ne200100IPKxLi0EEEvT_S7_
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
	bl	__ZNSt3__18distanceB8ne200100IPKxEENS_15iterator_traitsIT_E15difference_typeES4_S4_
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	ldr	x2, [sp, #8]                    ; 8-byte Folded Reload
	mov	x3, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE18__assign_with_sizeB8ne200100IPKxS6_EEvT_T0_l
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt16initializer_listIxE5beginB8ne200100Ev ; -- Begin function _ZNKSt16initializer_listIxE5beginB8ne200100Ev
	.globl	__ZNKSt16initializer_listIxE5beginB8ne200100Ev
	.weak_definition	__ZNKSt16initializer_listIxE5beginB8ne200100Ev
	.p2align	2
__ZNKSt16initializer_listIxE5beginB8ne200100Ev: ; @_ZNKSt16initializer_listIxE5beginB8ne200100Ev
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
	.private_extern	__ZNKSt16initializer_listIxE3endB8ne200100Ev ; -- Begin function _ZNKSt16initializer_listIxE3endB8ne200100Ev
	.globl	__ZNKSt16initializer_listIxE3endB8ne200100Ev
	.weak_definition	__ZNKSt16initializer_listIxE3endB8ne200100Ev
	.p2align	2
__ZNKSt16initializer_listIxE3endB8ne200100Ev: ; @_ZNKSt16initializer_listIxE3endB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	ldr	x8, [x9]
	ldr	x9, [x9, #8]
	add	x0, x8, x9, lsl #3
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16vectorIxNS_9allocatorIxEEE18__assign_with_sizeB8ne200100IPKxS6_EEvT_T0_l ; -- Begin function _ZNSt3__16vectorIxNS_9allocatorIxEEE18__assign_with_sizeB8ne200100IPKxS6_EEvT_T0_l
	.weak_definition	__ZNSt3__16vectorIxNS_9allocatorIxEEE18__assign_with_sizeB8ne200100IPKxS6_EEvT_T0_l
	.p2align	2
__ZNSt3__16vectorIxNS_9allocatorIxEEE18__assign_with_sizeB8ne200100IPKxS6_EEvT_T0_l: ; @_ZNSt3__16vectorIxNS_9allocatorIxEEE18__assign_with_sizeB8ne200100IPKxS6_EEvT_T0_l
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
	bl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE8capacityB8ne200100Ev
	ldr	x8, [sp, #48]                   ; 8-byte Folded Reload
	subs	x8, x8, x0
	b.hi	LBB158_5
	b	LBB158_1
LBB158_1:
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-40]
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE4sizeB8ne200100Ev
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	subs	x8, x8, x0
	b.ls	LBB158_3
	b	LBB158_2
LBB158_2:
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE4sizeB8ne200100Ev
	mov	x1, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZNSt3__14nextB8ne200100IPKxLi0EEET_S3_NS_15iterator_traitsIS3_E15difference_typeE
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	stur	x0, [x29, #-48]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-48]
	ldr	x2, [x8]
	bl	__ZNSt3__14copyB8ne200100IPKxPxEET0_T_S5_S4_
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-48]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-24]
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-40]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE4sizeB8ne200100Ev
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x1, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x2, [sp, #24]                   ; 8-byte Folded Reload
	mov	x9, x0
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	subs	x3, x8, x9
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE18__construct_at_endIPKxS6_EEvT_T0_m
	b	LBB158_4
LBB158_3:
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	ldr	x2, [x8]
	bl	__ZNSt3__16__copyB8ne200100IPKxS2_PxEENS_4pairIT_T1_EES5_T0_S6_
	mov	x8, x0
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	str	x8, [sp, #56]
	str	x1, [sp, #64]
	ldr	x8, [sp, #64]
	stur	x8, [x29, #-56]
	ldur	x1, [x29, #-56]
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE17__destruct_at_endB8ne200100EPx
	b	LBB158_4
LBB158_4:
	b	LBB158_6
LBB158_5:
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE13__vdeallocateEv
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	ldur	x1, [x29, #-40]
	bl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE11__recommendB8ne200100Em
	mov	x1, x0
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE11__vallocateB8ne200100Em
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	ldur	x3, [x29, #-40]
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE18__construct_at_endIPKxS6_EEvT_T0_m
	b	LBB158_6
LBB158_6:
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18distanceB8ne200100IPKxEENS_15iterator_traitsIT_E15difference_typeES4_S4_ ; -- Begin function _ZNSt3__18distanceB8ne200100IPKxEENS_15iterator_traitsIT_E15difference_typeES4_S4_
	.globl	__ZNSt3__18distanceB8ne200100IPKxEENS_15iterator_traitsIT_E15difference_typeES4_S4_
	.weak_definition	__ZNSt3__18distanceB8ne200100IPKxEENS_15iterator_traitsIT_E15difference_typeES4_S4_
	.p2align	2
__ZNSt3__18distanceB8ne200100IPKxEENS_15iterator_traitsIT_E15difference_typeES4_S4_: ; @_ZNSt3__18distanceB8ne200100IPKxEENS_15iterator_traitsIT_E15difference_typeES4_S4_
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
	bl	__ZNSt3__110__distanceB8ne200100IPKxEENS_15iterator_traitsIT_E15difference_typeES4_S4_NS_26random_access_iterator_tagE
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__14nextB8ne200100IPKxLi0EEET_S3_NS_15iterator_traitsIS3_E15difference_typeE ; -- Begin function _ZNSt3__14nextB8ne200100IPKxLi0EEET_S3_NS_15iterator_traitsIS3_E15difference_typeE
	.globl	__ZNSt3__14nextB8ne200100IPKxLi0EEET_S3_NS_15iterator_traitsIS3_E15difference_typeE
	.weak_definition	__ZNSt3__14nextB8ne200100IPKxLi0EEET_S3_NS_15iterator_traitsIS3_E15difference_typeE
	.p2align	2
__ZNSt3__14nextB8ne200100IPKxLi0EEET_S3_NS_15iterator_traitsIS3_E15difference_typeE: ; @_ZNSt3__14nextB8ne200100IPKxLi0EEET_S3_NS_15iterator_traitsIS3_E15difference_typeE
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
	bl	__ZNSt3__17advanceB8ne200100IPKxllLi0EEEvRT_T0_
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__14copyB8ne200100IPKxPxEET0_T_S5_S4_ ; -- Begin function _ZNSt3__14copyB8ne200100IPKxPxEET0_T_S5_S4_
	.globl	__ZNSt3__14copyB8ne200100IPKxPxEET0_T_S5_S4_
	.weak_definition	__ZNSt3__14copyB8ne200100IPKxPxEET0_T_S5_S4_
	.p2align	2
__ZNSt3__14copyB8ne200100IPKxPxEET0_T_S5_S4_: ; @_ZNSt3__14copyB8ne200100IPKxPxEET0_T_S5_S4_
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
	bl	__ZNSt3__16__copyB8ne200100IPKxS2_PxEENS_4pairIT_T1_EES5_T0_S6_
	str	x0, [sp, #8]
	str	x1, [sp, #16]
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16vectorIxNS_9allocatorIxEEE18__construct_at_endIPKxS6_EEvT_T0_m ; -- Begin function _ZNSt3__16vectorIxNS_9allocatorIxEEE18__construct_at_endIPKxS6_EEvT_T0_m
	.weak_definition	__ZNSt3__16vectorIxNS_9allocatorIxEEE18__construct_at_endIPKxS6_EEvT_T0_m
	.p2align	2
__ZNSt3__16vectorIxNS_9allocatorIxEEE18__construct_at_endIPKxS6_EEvT_T0_m: ; @_ZNSt3__16vectorIxNS_9allocatorIxEEE18__construct_at_endIPKxS6_EEvT_T0_m
Lfunc_begin16:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception16
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
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE21_ConstructTransactionC1B8ne200100ERS3_m
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	ldr	x3, [sp, #48]
Ltmp324:
	add	x0, x8, #16
	bl	__ZNSt3__130__uninitialized_allocator_copyB8ne200100INS_9allocatorIxEEPKxS4_PxEET2_RT_T0_T1_S6_
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp325:
	b	LBB162_1
LBB162_1:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	add	x0, sp, #40
	str	x8, [sp, #48]
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE21_ConstructTransactionD1B8ne200100Ev
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB162_2:
Ltmp326:
	str	x0, [sp, #32]
	mov	x8, x1
	str	w8, [sp, #28]
	add	x0, sp, #40
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE21_ConstructTransactionD1B8ne200100Ev
	b	LBB162_3
LBB162_3:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
Lfunc_end16:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table162:
Lexception16:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end16-Lcst_begin16
Lcst_begin16:
	.uleb128 Lfunc_begin16-Lfunc_begin16    ; >> Call Site 1 <<
	.uleb128 Ltmp324-Lfunc_begin16          ;   Call between Lfunc_begin16 and Ltmp324
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp324-Lfunc_begin16          ; >> Call Site 2 <<
	.uleb128 Ltmp325-Ltmp324                ;   Call between Ltmp324 and Ltmp325
	.uleb128 Ltmp326-Lfunc_begin16          ;     jumps to Ltmp326
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp325-Lfunc_begin16          ; >> Call Site 3 <<
	.uleb128 Lfunc_end16-Ltmp325            ;   Call between Ltmp325 and Lfunc_end16
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end16:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__16__copyB8ne200100IPKxS2_PxEENS_4pairIT_T1_EES5_T0_S6_ ; -- Begin function _ZNSt3__16__copyB8ne200100IPKxS2_PxEENS_4pairIT_T1_EES5_T0_S6_
	.globl	__ZNSt3__16__copyB8ne200100IPKxS2_PxEENS_4pairIT_T1_EES5_T0_S6_
	.weak_definition	__ZNSt3__16__copyB8ne200100IPKxS2_PxEENS_4pairIT_T1_EES5_T0_S6_
	.p2align	2
__ZNSt3__16__copyB8ne200100IPKxS2_PxEENS_4pairIT_T1_EES5_T0_S6_: ; @_ZNSt3__16__copyB8ne200100IPKxS2_PxEENS_4pairIT_T1_EES5_T0_S6_
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
	bl	__ZNSt3__124__copy_move_unwrap_itersB8ne200100INS_11__copy_implEPKxS3_PxLi0EEENS_4pairIT0_T2_EES6_T1_S7_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIxNS_9allocatorIxEEE17__destruct_at_endB8ne200100EPx ; -- Begin function _ZNSt3__16vectorIxNS_9allocatorIxEEE17__destruct_at_endB8ne200100EPx
	.globl	__ZNSt3__16vectorIxNS_9allocatorIxEEE17__destruct_at_endB8ne200100EPx
	.weak_definition	__ZNSt3__16vectorIxNS_9allocatorIxEEE17__destruct_at_endB8ne200100EPx
	.p2align	2
__ZNSt3__16vectorIxNS_9allocatorIxEEE17__destruct_at_endB8ne200100EPx: ; @_ZNSt3__16vectorIxNS_9allocatorIxEEE17__destruct_at_endB8ne200100EPx
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
	bl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE4sizeB8ne200100Ev
	mov	x8, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	str	x8, [sp, #8]
	ldr	x1, [sp, #16]
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE22__base_destruct_at_endB8ne200100EPx
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x1, [sp, #8]
	bl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE17__annotate_shrinkB8ne200100Em
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIxNS_9allocatorIxEEE13__vdeallocateEv ; -- Begin function _ZNSt3__16vectorIxNS_9allocatorIxEEE13__vdeallocateEv
	.globl	__ZNSt3__16vectorIxNS_9allocatorIxEEE13__vdeallocateEv
	.weak_definition	__ZNSt3__16vectorIxNS_9allocatorIxEEE13__vdeallocateEv
	.p2align	2
__ZNSt3__16vectorIxNS_9allocatorIxEEE13__vdeallocateEv: ; @_ZNSt3__16vectorIxNS_9allocatorIxEEE13__vdeallocateEv
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
	cbz	x8, LBB165_2
	b	LBB165_1
LBB165_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE5clearB8ne200100Ev
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE17__annotate_deleteB8ne200100Ev
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	add	x8, x0, #16
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x8, [x0]
	str	x8, [sp]                        ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE8capacityB8ne200100Ev
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	mov	x2, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIxEEE10deallocateB8ne200100ERS2_Pxm
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8, #16]
	str	xzr, [x8, #8]
	str	xzr, [x8]
	b	LBB165_2
LBB165_2:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIxNS_9allocatorIxEEE11__vallocateB8ne200100Em ; -- Begin function _ZNSt3__16vectorIxNS_9allocatorIxEEE11__vallocateB8ne200100Em
	.globl	__ZNSt3__16vectorIxNS_9allocatorIxEEE11__vallocateB8ne200100Em
	.weak_definition	__ZNSt3__16vectorIxNS_9allocatorIxEEE11__vallocateB8ne200100Em
	.p2align	2
__ZNSt3__16vectorIxNS_9allocatorIxEEE11__vallocateB8ne200100Em: ; @_ZNSt3__16vectorIxNS_9allocatorIxEEE11__vallocateB8ne200100Em
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
	bl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE8max_sizeB8ne200100Ev
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	subs	x8, x8, x0
	b.ls	LBB166_2
	b	LBB166_1
LBB166_1:
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE20__throw_length_errorB8ne200100Ev
LBB166_2:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	add	x0, x8, #16
	ldur	x1, [x29, #-16]
	bl	__ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIxEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m
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
	add	x8, x8, x9, lsl #3
	str	x8, [x0, #16]
	mov	x1, #0                          ; =0x0
	bl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE14__annotate_newB8ne200100Em
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__17advanceB8ne200100IPKxllLi0EEEvRT_T0_ ; -- Begin function _ZNSt3__17advanceB8ne200100IPKxllLi0EEEvRT_T0_
	.globl	__ZNSt3__17advanceB8ne200100IPKxllLi0EEEvRT_T0_
	.weak_definition	__ZNSt3__17advanceB8ne200100IPKxllLi0EEEvRT_T0_
	.p2align	2
__ZNSt3__17advanceB8ne200100IPKxllLi0EEEvRT_T0_: ; @_ZNSt3__17advanceB8ne200100IPKxllLi0EEEvRT_T0_
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
	bl	__ZNSt3__19__advanceB8ne200100IPKxEEvRT_NS_15iterator_traitsIS3_E15difference_typeENS_26random_access_iterator_tagE
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
	.private_extern	__ZNSt3__19__advanceB8ne200100IPKxEEvRT_NS_15iterator_traitsIS3_E15difference_typeENS_26random_access_iterator_tagE ; -- Begin function _ZNSt3__19__advanceB8ne200100IPKxEEvRT_NS_15iterator_traitsIS3_E15difference_typeENS_26random_access_iterator_tagE
	.globl	__ZNSt3__19__advanceB8ne200100IPKxEEvRT_NS_15iterator_traitsIS3_E15difference_typeENS_26random_access_iterator_tagE
	.weak_definition	__ZNSt3__19__advanceB8ne200100IPKxEEvRT_NS_15iterator_traitsIS3_E15difference_typeENS_26random_access_iterator_tagE
	.p2align	2
__ZNSt3__19__advanceB8ne200100IPKxEEvRT_NS_15iterator_traitsIS3_E15difference_typeENS_26random_access_iterator_tagE: ; @_ZNSt3__19__advanceB8ne200100IPKxEEvRT_NS_15iterator_traitsIS3_E15difference_typeENS_26random_access_iterator_tagE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x10, [sp, #8]
	ldr	x9, [sp, #16]
	ldr	x8, [x9]
	add	x8, x8, x10, lsl #3
	str	x8, [x9]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__130__uninitialized_allocator_copyB8ne200100INS_9allocatorIxEEPKxS4_PxEET2_RT_T0_T1_S6_ ; -- Begin function _ZNSt3__130__uninitialized_allocator_copyB8ne200100INS_9allocatorIxEEPKxS4_PxEET2_RT_T0_T1_S6_
	.globl	__ZNSt3__130__uninitialized_allocator_copyB8ne200100INS_9allocatorIxEEPKxS4_PxEET2_RT_T0_T1_S6_
	.weak_definition	__ZNSt3__130__uninitialized_allocator_copyB8ne200100INS_9allocatorIxEEPKxS4_PxEET2_RT_T0_T1_S6_
	.p2align	2
__ZNSt3__130__uninitialized_allocator_copyB8ne200100INS_9allocatorIxEEPKxS4_PxEET2_RT_T0_T1_S6_: ; @_ZNSt3__130__uninitialized_allocator_copyB8ne200100INS_9allocatorIxEEPKxS4_PxEET2_RT_T0_T1_S6_
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
	bl	__ZNSt3__114__unwrap_rangeB8ne200100IPKxS2_EENS_4pairIT0_S4_EET_S6_
	str	x0, [sp, #32]
	str	x1, [sp, #40]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldr	x8, [sp, #32]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x8, [sp, #40]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x0, [x29, #-32]
	bl	__ZNSt3__113__unwrap_iterB8ne200100IPxNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	ldr	x2, [sp, #8]                    ; 8-byte Folded Reload
	mov	x3, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__135__uninitialized_allocator_copy_implB8ne200100INS_9allocatorIxEEPKxS4_PxEET2_RT_T0_T1_S6_
	str	x0, [sp, #24]
	ldur	x0, [x29, #-32]
	ldr	x1, [sp, #24]
	bl	__ZNSt3__113__rewrap_iterB8ne200100IPxS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__unwrap_rangeB8ne200100IPKxS2_EENS_4pairIT0_S4_EET_S6_ ; -- Begin function _ZNSt3__114__unwrap_rangeB8ne200100IPKxS2_EENS_4pairIT0_S4_EET_S6_
	.globl	__ZNSt3__114__unwrap_rangeB8ne200100IPKxS2_EENS_4pairIT0_S4_EET_S6_
	.weak_definition	__ZNSt3__114__unwrap_rangeB8ne200100IPKxS2_EENS_4pairIT0_S4_EET_S6_
	.p2align	2
__ZNSt3__114__unwrap_rangeB8ne200100IPKxS2_EENS_4pairIT0_S4_EET_S6_: ; @_ZNSt3__114__unwrap_rangeB8ne200100IPKxS2_EENS_4pairIT0_S4_EET_S6_
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
	bl	__ZNSt3__113__unwrap_iterB8ne200100IPKxNS_18__unwrap_iter_implIS2_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES6_
	add	x8, sp, #24
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	str	x0, [sp, #24]
	ldr	x0, [sp, #32]
	bl	__ZNSt3__113__unwrap_iterB8ne200100IPKxNS_18__unwrap_iter_implIS2_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES6_
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	add	x1, sp, #16
	str	x8, [sp, #16]
	bl	__ZNSt3__19make_pairB8ne200100IPKxS2_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS4_Iu7__decayIT0_EE4typeEEEOS5_OS9_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__135__uninitialized_allocator_copy_implB8ne200100INS_9allocatorIxEEPKxS4_PxEET2_RT_T0_T1_S6_ ; -- Begin function _ZNSt3__135__uninitialized_allocator_copy_implB8ne200100INS_9allocatorIxEEPKxS4_PxEET2_RT_T0_T1_S6_
	.globl	__ZNSt3__135__uninitialized_allocator_copy_implB8ne200100INS_9allocatorIxEEPKxS4_PxEET2_RT_T0_T1_S6_
	.weak_definition	__ZNSt3__135__uninitialized_allocator_copy_implB8ne200100INS_9allocatorIxEEPKxS4_PxEET2_RT_T0_T1_S6_
	.p2align	2
__ZNSt3__135__uninitialized_allocator_copy_implB8ne200100INS_9allocatorIxEEPKxS4_PxEET2_RT_T0_T1_S6_: ; @_ZNSt3__135__uninitialized_allocator_copy_implB8ne200100INS_9allocatorIxEEPKxS4_PxEET2_RT_T0_T1_S6_
Lfunc_begin17:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception17
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
	bl	__ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIxEEPxEC1B8ne200100ERS2_RS3_S6_
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	add	x8, sp, #72
	bl	__ZNSt3__122__make_exception_guardB8ne200100INS_29_AllocatorDestroyRangeReverseINS_9allocatorIxEEPxEEEENS_28__exception_guard_exceptionsIT_EES7_
	b	LBB172_1
LBB172_1:                               ; =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-16]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	b.eq	LBB172_5
	b	LBB172_2
LBB172_2:                               ;   in Loop: Header=BB172_1 Depth=1
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-32]
	bl	__ZNSt3__112__to_addressB8ne200100IxEEPT_S2_
	mov	x1, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x2, [x29, #-16]
Ltmp329:
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIxEEE9constructB8ne200100IxJRKxELi0EEEvRS2_PT_DpOT0_
Ltmp330:
	b	LBB172_3
LBB172_3:                               ;   in Loop: Header=BB172_1 Depth=1
	ldur	x8, [x29, #-16]
	add	x8, x8, #8
	stur	x8, [x29, #-16]
	ldur	x8, [x29, #-32]
	add	x8, x8, #8
	stur	x8, [x29, #-32]
	b	LBB172_1
LBB172_4:
Ltmp331:
	str	x0, [sp, #40]
	mov	x8, x1
	str	w8, [sp, #36]
	add	x0, sp, #72
	bl	__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIxEEPxEEED1B8ne200100Ev
	b	LBB172_6
LBB172_5:
	add	x0, sp, #72
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIxEEPxEEE10__completeB8ne200100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldur	x8, [x29, #-32]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIxEEPxEEED1B8ne200100Ev
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
LBB172_6:
	ldr	x0, [sp, #40]
	bl	__Unwind_Resume
Lfunc_end17:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table172:
Lexception17:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end17-Lcst_begin17
Lcst_begin17:
	.uleb128 Lfunc_begin17-Lfunc_begin17    ; >> Call Site 1 <<
	.uleb128 Ltmp329-Lfunc_begin17          ;   Call between Lfunc_begin17 and Ltmp329
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp329-Lfunc_begin17          ; >> Call Site 2 <<
	.uleb128 Ltmp330-Ltmp329                ;   Call between Ltmp329 and Ltmp330
	.uleb128 Ltmp331-Lfunc_begin17          ;     jumps to Ltmp331
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp330-Lfunc_begin17          ; >> Call Site 3 <<
	.uleb128 Lfunc_end17-Ltmp330            ;   Call between Ltmp330 and Lfunc_end17
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end17:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__113__unwrap_iterB8ne200100IPxNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_ ; -- Begin function _ZNSt3__113__unwrap_iterB8ne200100IPxNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_
	.globl	__ZNSt3__113__unwrap_iterB8ne200100IPxNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_
	.weak_definition	__ZNSt3__113__unwrap_iterB8ne200100IPxNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_
	.p2align	2
__ZNSt3__113__unwrap_iterB8ne200100IPxNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_: ; @_ZNSt3__113__unwrap_iterB8ne200100IPxNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_
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
	bl	__ZNSt3__118__unwrap_iter_implIPxLb1EE8__unwrapB8ne200100ES1_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__113__rewrap_iterB8ne200100IPxS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_ ; -- Begin function _ZNSt3__113__rewrap_iterB8ne200100IPxS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_
	.globl	__ZNSt3__113__rewrap_iterB8ne200100IPxS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_
	.weak_definition	__ZNSt3__113__rewrap_iterB8ne200100IPxS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_
	.p2align	2
__ZNSt3__113__rewrap_iterB8ne200100IPxS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_: ; @_ZNSt3__113__rewrap_iterB8ne200100IPxS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_
Lfunc_begin18:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception18
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
Ltmp332:
	bl	__ZNSt3__118__unwrap_iter_implIPxLb1EE8__rewrapB8ne200100ES1_S1_
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp333:
	b	LBB174_1
LBB174_1:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB174_2:
Ltmp334:
	bl	___clang_call_terminate
Lfunc_end18:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table174:
Lexception18:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase7-Lttbaseref7
Lttbaseref7:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end18-Lcst_begin18
Lcst_begin18:
	.uleb128 Ltmp332-Lfunc_begin18          ; >> Call Site 1 <<
	.uleb128 Ltmp333-Ltmp332                ;   Call between Ltmp332 and Ltmp333
	.uleb128 Ltmp334-Lfunc_begin18          ;     jumps to Ltmp334
	.byte	1                               ;   On action: 1
Lcst_end18:
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
	.private_extern	__ZNSt3__19make_pairB8ne200100IPKxS2_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS4_Iu7__decayIT0_EE4typeEEEOS5_OS9_ ; -- Begin function _ZNSt3__19make_pairB8ne200100IPKxS2_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS4_Iu7__decayIT0_EE4typeEEEOS5_OS9_
	.globl	__ZNSt3__19make_pairB8ne200100IPKxS2_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS4_Iu7__decayIT0_EE4typeEEEOS5_OS9_
	.weak_definition	__ZNSt3__19make_pairB8ne200100IPKxS2_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS4_Iu7__decayIT0_EE4typeEEEOS5_OS9_
	.p2align	2
__ZNSt3__19make_pairB8ne200100IPKxS2_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS4_Iu7__decayIT0_EE4typeEEEOS5_OS9_: ; @_ZNSt3__19make_pairB8ne200100IPKxS2_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS4_Iu7__decayIT0_EE4typeEEEOS5_OS9_
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
	bl	__ZNSt3__14pairIPKxS2_EC1B8ne200100IS2_S2_Li0EEEOT_OT0_
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__113__unwrap_iterB8ne200100IPKxNS_18__unwrap_iter_implIS2_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES6_ ; -- Begin function _ZNSt3__113__unwrap_iterB8ne200100IPKxNS_18__unwrap_iter_implIS2_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES6_
	.globl	__ZNSt3__113__unwrap_iterB8ne200100IPKxNS_18__unwrap_iter_implIS2_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES6_
	.weak_definition	__ZNSt3__113__unwrap_iterB8ne200100IPKxNS_18__unwrap_iter_implIS2_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES6_
	.p2align	2
__ZNSt3__113__unwrap_iterB8ne200100IPKxNS_18__unwrap_iter_implIS2_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES6_: ; @_ZNSt3__113__unwrap_iterB8ne200100IPKxNS_18__unwrap_iter_implIS2_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES6_
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
	bl	__ZNSt3__118__unwrap_iter_implIPKxLb1EE8__unwrapB8ne200100ES2_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__14pairIPKxS2_EC1B8ne200100IS2_S2_Li0EEEOT_OT0_ ; -- Begin function _ZNSt3__14pairIPKxS2_EC1B8ne200100IS2_S2_Li0EEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__14pairIPKxS2_EC1B8ne200100IS2_S2_Li0EEEOT_OT0_
	.p2align	2
__ZNSt3__14pairIPKxS2_EC1B8ne200100IS2_S2_Li0EEEOT_OT0_: ; @_ZNSt3__14pairIPKxS2_EC1B8ne200100IS2_S2_Li0EEEOT_OT0_
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
	bl	__ZNSt3__14pairIPKxS2_EC2B8ne200100IS2_S2_Li0EEEOT_OT0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__14pairIPKxS2_EC2B8ne200100IS2_S2_Li0EEEOT_OT0_ ; -- Begin function _ZNSt3__14pairIPKxS2_EC2B8ne200100IS2_S2_Li0EEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__14pairIPKxS2_EC2B8ne200100IS2_S2_Li0EEEOT_OT0_
	.p2align	2
__ZNSt3__14pairIPKxS2_EC2B8ne200100IS2_S2_Li0EEEOT_OT0_: ; @_ZNSt3__14pairIPKxS2_EC2B8ne200100IS2_S2_Li0EEEOT_OT0_
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
	.private_extern	__ZNSt3__118__unwrap_iter_implIPKxLb1EE8__unwrapB8ne200100ES2_ ; -- Begin function _ZNSt3__118__unwrap_iter_implIPKxLb1EE8__unwrapB8ne200100ES2_
	.globl	__ZNSt3__118__unwrap_iter_implIPKxLb1EE8__unwrapB8ne200100ES2_
	.weak_definition	__ZNSt3__118__unwrap_iter_implIPKxLb1EE8__unwrapB8ne200100ES2_
	.p2align	2
__ZNSt3__118__unwrap_iter_implIPKxLb1EE8__unwrapB8ne200100ES2_: ; @_ZNSt3__118__unwrap_iter_implIPKxLb1EE8__unwrapB8ne200100ES2_
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
	bl	__ZNSt3__112__to_addressB8ne200100IKxEEPT_S3_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112__to_addressB8ne200100IKxEEPT_S3_ ; -- Begin function _ZNSt3__112__to_addressB8ne200100IKxEEPT_S3_
	.globl	__ZNSt3__112__to_addressB8ne200100IKxEEPT_S3_
	.weak_definition	__ZNSt3__112__to_addressB8ne200100IKxEEPT_S3_
	.p2align	2
__ZNSt3__112__to_addressB8ne200100IKxEEPT_S3_: ; @_ZNSt3__112__to_addressB8ne200100IKxEEPT_S3_
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
	.private_extern	__ZNSt3__122__make_exception_guardB8ne200100INS_29_AllocatorDestroyRangeReverseINS_9allocatorIxEEPxEEEENS_28__exception_guard_exceptionsIT_EES7_ ; -- Begin function _ZNSt3__122__make_exception_guardB8ne200100INS_29_AllocatorDestroyRangeReverseINS_9allocatorIxEEPxEEEENS_28__exception_guard_exceptionsIT_EES7_
	.globl	__ZNSt3__122__make_exception_guardB8ne200100INS_29_AllocatorDestroyRangeReverseINS_9allocatorIxEEPxEEEENS_28__exception_guard_exceptionsIT_EES7_
	.weak_definition	__ZNSt3__122__make_exception_guardB8ne200100INS_29_AllocatorDestroyRangeReverseINS_9allocatorIxEEPxEEEENS_28__exception_guard_exceptionsIT_EES7_
	.p2align	2
__ZNSt3__122__make_exception_guardB8ne200100INS_29_AllocatorDestroyRangeReverseINS_9allocatorIxEEPxEEEENS_28__exception_guard_exceptionsIT_EES7_: ; @_ZNSt3__122__make_exception_guardB8ne200100INS_29_AllocatorDestroyRangeReverseINS_9allocatorIxEEPxEEEENS_28__exception_guard_exceptionsIT_EES7_
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
	bl	__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIxEEPxEEEC1B8ne200100ES5_
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIxEEPxEC1B8ne200100ERS2_RS3_S6_ ; -- Begin function _ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIxEEPxEC1B8ne200100ERS2_RS3_S6_
	.globl	__ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIxEEPxEC1B8ne200100ERS2_RS3_S6_
	.weak_def_can_be_hidden	__ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIxEEPxEC1B8ne200100ERS2_RS3_S6_
	.p2align	2
__ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIxEEPxEC1B8ne200100ERS2_RS3_S6_: ; @_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIxEEPxEC1B8ne200100ERS2_RS3_S6_
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
	bl	__ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIxEEPxEC2B8ne200100ERS2_RS3_S6_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIxEEE9constructB8ne200100IxJRKxELi0EEEvRS2_PT_DpOT0_ ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIxEEE9constructB8ne200100IxJRKxELi0EEEvRS2_PT_DpOT0_
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIxEEE9constructB8ne200100IxJRKxELi0EEEvRS2_PT_DpOT0_
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIxEEE9constructB8ne200100IxJRKxELi0EEEvRS2_PT_DpOT0_: ; @_ZNSt3__116allocator_traitsINS_9allocatorIxEEE9constructB8ne200100IxJRKxELi0EEEvRS2_PT_DpOT0_
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
	bl	__ZNSt3__19allocatorIxE9constructB8ne200100IxJRKxEEEvPT_DpOT0_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIxEEPxEEE10__completeB8ne200100Ev ; -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIxEEPxEEE10__completeB8ne200100Ev
	.globl	__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIxEEPxEEE10__completeB8ne200100Ev
	.weak_definition	__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIxEEPxEEE10__completeB8ne200100Ev
	.p2align	2
__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIxEEPxEEE10__completeB8ne200100Ev: ; @_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIxEEPxEEE10__completeB8ne200100Ev
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
	.private_extern	__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIxEEPxEEED1B8ne200100Ev ; -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIxEEPxEEED1B8ne200100Ev
	.globl	__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIxEEPxEEED1B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIxEEPxEEED1B8ne200100Ev
	.p2align	2
__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIxEEPxEEED1B8ne200100Ev: ; @_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIxEEPxEEED1B8ne200100Ev
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
	bl	__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIxEEPxEEED2B8ne200100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIxEEPxEEEC1B8ne200100ES5_ ; -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIxEEPxEEEC1B8ne200100ES5_
	.globl	__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIxEEPxEEEC1B8ne200100ES5_
	.weak_def_can_be_hidden	__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIxEEPxEEEC1B8ne200100ES5_
	.p2align	2
__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIxEEPxEEEC1B8ne200100ES5_: ; @_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIxEEPxEEEC1B8ne200100ES5_
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
	bl	__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIxEEPxEEEC2B8ne200100ES5_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIxEEPxEEEC2B8ne200100ES5_ ; -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIxEEPxEEEC2B8ne200100ES5_
	.globl	__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIxEEPxEEEC2B8ne200100ES5_
	.weak_def_can_be_hidden	__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIxEEPxEEEC2B8ne200100ES5_
	.p2align	2
__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIxEEPxEEEC2B8ne200100ES5_: ; @_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIxEEPxEEEC2B8ne200100ES5_
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
	.private_extern	__ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIxEEPxEC2B8ne200100ERS2_RS3_S6_ ; -- Begin function _ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIxEEPxEC2B8ne200100ERS2_RS3_S6_
	.globl	__ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIxEEPxEC2B8ne200100ERS2_RS3_S6_
	.weak_def_can_be_hidden	__ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIxEEPxEC2B8ne200100ERS2_RS3_S6_
	.p2align	2
__ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIxEEPxEC2B8ne200100ERS2_RS3_S6_: ; @_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIxEEPxEC2B8ne200100ERS2_RS3_S6_
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
	.globl	__ZNSt3__19allocatorIxE9constructB8ne200100IxJRKxEEEvPT_DpOT0_ ; -- Begin function _ZNSt3__19allocatorIxE9constructB8ne200100IxJRKxEEEvPT_DpOT0_
	.weak_definition	__ZNSt3__19allocatorIxE9constructB8ne200100IxJRKxEEEvPT_DpOT0_
	.p2align	2
__ZNSt3__19allocatorIxE9constructB8ne200100IxJRKxEEEvPT_DpOT0_: ; @_ZNSt3__19allocatorIxE9constructB8ne200100IxJRKxEEEvPT_DpOT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x9, [sp, #16]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	str	x8, [x9]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIxEEPxEEED2B8ne200100Ev ; -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIxEEPxEEED2B8ne200100Ev
	.globl	__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIxEEPxEEED2B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIxEEPxEEED2B8ne200100Ev
	.p2align	2
__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIxEEPxEEED2B8ne200100Ev: ; @_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIxEEPxEEED2B8ne200100Ev
Lfunc_begin19:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception19
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
	tbnz	w8, #0, LBB190_3
	b	LBB190_1
LBB190_1:
Ltmp341:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIxEEPxEclB8ne200100Ev
Ltmp342:
	b	LBB190_2
LBB190_2:
	b	LBB190_3
LBB190_3:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB190_4:
Ltmp343:
	bl	___clang_call_terminate
Lfunc_end19:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table190:
Lexception19:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase8-Lttbaseref8
Lttbaseref8:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end19-Lcst_begin19
Lcst_begin19:
	.uleb128 Ltmp341-Lfunc_begin19          ; >> Call Site 1 <<
	.uleb128 Ltmp342-Ltmp341                ;   Call between Ltmp341 and Ltmp342
	.uleb128 Ltmp343-Lfunc_begin19          ;     jumps to Ltmp343
	.byte	1                               ;   On action: 1
Lcst_end19:
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
	.private_extern	__ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIxEEPxEclB8ne200100Ev ; -- Begin function _ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIxEEPxEclB8ne200100Ev
	.globl	__ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIxEEPxEclB8ne200100Ev
	.weak_definition	__ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIxEEPxEclB8ne200100Ev
	.p2align	2
__ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIxEEPxEclB8ne200100Ev: ; @_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIxEEPxEclB8ne200100Ev
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
	bl	__ZNSt3__116reverse_iteratorIPxEC1B8ne200100ES1_
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [x8, #8]
	ldr	x1, [x8]
	add	x0, sp, #24
	bl	__ZNSt3__116reverse_iteratorIPxEC1B8ne200100ES1_
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x1, [x29, #-24]
	ldur	x2, [x29, #-16]
	ldr	x3, [sp, #24]
	ldr	x4, [sp, #32]
	bl	__ZNSt3__119__allocator_destroyB8ne200100INS_9allocatorIxEENS_16reverse_iteratorIPxEES5_EEvRT_T0_T1_
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__allocator_destroyB8ne200100INS_9allocatorIxEENS_16reverse_iteratorIPxEES5_EEvRT_T0_T1_ ; -- Begin function _ZNSt3__119__allocator_destroyB8ne200100INS_9allocatorIxEENS_16reverse_iteratorIPxEES5_EEvRT_T0_T1_
	.globl	__ZNSt3__119__allocator_destroyB8ne200100INS_9allocatorIxEENS_16reverse_iteratorIPxEES5_EEvRT_T0_T1_
	.weak_definition	__ZNSt3__119__allocator_destroyB8ne200100INS_9allocatorIxEENS_16reverse_iteratorIPxEES5_EEvRT_T0_T1_
	.p2align	2
__ZNSt3__119__allocator_destroyB8ne200100INS_9allocatorIxEENS_16reverse_iteratorIPxEES5_EEvRT_T0_T1_: ; @_ZNSt3__119__allocator_destroyB8ne200100INS_9allocatorIxEENS_16reverse_iteratorIPxEES5_EEvRT_T0_T1_
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
	b	LBB192_1
LBB192_1:                               ; =>This Inner Loop Header: Depth=1
	sub	x0, x29, #16
	add	x1, sp, #16
	bl	__ZNSt3__1neB8ne200100IPxS1_EEbRKNS_16reverse_iteratorIT_EERKNS2_IT0_EE
	tbz	w0, #0, LBB192_4
	b	LBB192_2
LBB192_2:                               ;   in Loop: Header=BB192_1 Depth=1
	ldr	x8, [sp, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	sub	x0, x29, #16
	bl	__ZNSt3__112__to_addressB8ne200100INS_16reverse_iteratorIPxEELi0EEEu7__decayIDTclsr19__to_address_helperIT_EE6__callclsr3stdE7declvalIRKS4_EEEEES6_
	mov	x1, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIxEEE7destroyB8ne200100IxLi0EEEvRS2_PT_
	b	LBB192_3
LBB192_3:                               ;   in Loop: Header=BB192_1 Depth=1
	sub	x0, x29, #16
	bl	__ZNSt3__116reverse_iteratorIPxEppB8ne200100Ev
	b	LBB192_1
LBB192_4:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116reverse_iteratorIPxEC1B8ne200100ES1_ ; -- Begin function _ZNSt3__116reverse_iteratorIPxEC1B8ne200100ES1_
	.globl	__ZNSt3__116reverse_iteratorIPxEC1B8ne200100ES1_
	.weak_def_can_be_hidden	__ZNSt3__116reverse_iteratorIPxEC1B8ne200100ES1_
	.p2align	2
__ZNSt3__116reverse_iteratorIPxEC1B8ne200100ES1_: ; @_ZNSt3__116reverse_iteratorIPxEC1B8ne200100ES1_
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
	bl	__ZNSt3__116reverse_iteratorIPxEC2B8ne200100ES1_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__1neB8ne200100IPxS1_EEbRKNS_16reverse_iteratorIT_EERKNS2_IT0_EE ; -- Begin function _ZNSt3__1neB8ne200100IPxS1_EEbRKNS_16reverse_iteratorIT_EERKNS2_IT0_EE
	.globl	__ZNSt3__1neB8ne200100IPxS1_EEbRKNS_16reverse_iteratorIT_EERKNS2_IT0_EE
	.weak_definition	__ZNSt3__1neB8ne200100IPxS1_EEbRKNS_16reverse_iteratorIT_EERKNS2_IT0_EE
	.p2align	2
__ZNSt3__1neB8ne200100IPxS1_EEbRKNS_16reverse_iteratorIT_EERKNS2_IT0_EE: ; @_ZNSt3__1neB8ne200100IPxS1_EEbRKNS_16reverse_iteratorIT_EERKNS2_IT0_EE
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
	bl	__ZNKSt3__116reverse_iteratorIPxE4baseB8ne200100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	__ZNKSt3__116reverse_iteratorIPxE4baseB8ne200100Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	subs	x8, x0, x8
	cset	w0, ne
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112__to_addressB8ne200100INS_16reverse_iteratorIPxEELi0EEEu7__decayIDTclsr19__to_address_helperIT_EE6__callclsr3stdE7declvalIRKS4_EEEEES6_ ; -- Begin function _ZNSt3__112__to_addressB8ne200100INS_16reverse_iteratorIPxEELi0EEEu7__decayIDTclsr19__to_address_helperIT_EE6__callclsr3stdE7declvalIRKS4_EEEEES6_
	.globl	__ZNSt3__112__to_addressB8ne200100INS_16reverse_iteratorIPxEELi0EEEu7__decayIDTclsr19__to_address_helperIT_EE6__callclsr3stdE7declvalIRKS4_EEEEES6_
	.weak_definition	__ZNSt3__112__to_addressB8ne200100INS_16reverse_iteratorIPxEELi0EEEu7__decayIDTclsr19__to_address_helperIT_EE6__callclsr3stdE7declvalIRKS4_EEEEES6_
	.p2align	2
__ZNSt3__112__to_addressB8ne200100INS_16reverse_iteratorIPxEELi0EEEu7__decayIDTclsr19__to_address_helperIT_EE6__callclsr3stdE7declvalIRKS4_EEEEES6_: ; @_ZNSt3__112__to_addressB8ne200100INS_16reverse_iteratorIPxEELi0EEEu7__decayIDTclsr19__to_address_helperIT_EE6__callclsr3stdE7declvalIRKS4_EEEEES6_
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
	bl	__ZNSt3__119__to_address_helperINS_16reverse_iteratorIPxEEvE6__callB8ne200100ERKS3_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116reverse_iteratorIPxEppB8ne200100Ev ; -- Begin function _ZNSt3__116reverse_iteratorIPxEppB8ne200100Ev
	.globl	__ZNSt3__116reverse_iteratorIPxEppB8ne200100Ev
	.weak_definition	__ZNSt3__116reverse_iteratorIPxEppB8ne200100Ev
	.p2align	2
__ZNSt3__116reverse_iteratorIPxEppB8ne200100Ev: ; @_ZNSt3__116reverse_iteratorIPxEppB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x8, [x0, #8]
	subs	x8, x8, #8
	str	x8, [x0, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__116reverse_iteratorIPxE4baseB8ne200100Ev ; -- Begin function _ZNKSt3__116reverse_iteratorIPxE4baseB8ne200100Ev
	.globl	__ZNKSt3__116reverse_iteratorIPxE4baseB8ne200100Ev
	.weak_definition	__ZNKSt3__116reverse_iteratorIPxE4baseB8ne200100Ev
	.p2align	2
__ZNKSt3__116reverse_iteratorIPxE4baseB8ne200100Ev: ; @_ZNKSt3__116reverse_iteratorIPxE4baseB8ne200100Ev
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
	.private_extern	__ZNSt3__119__to_address_helperINS_16reverse_iteratorIPxEEvE6__callB8ne200100ERKS3_ ; -- Begin function _ZNSt3__119__to_address_helperINS_16reverse_iteratorIPxEEvE6__callB8ne200100ERKS3_
	.globl	__ZNSt3__119__to_address_helperINS_16reverse_iteratorIPxEEvE6__callB8ne200100ERKS3_
	.weak_definition	__ZNSt3__119__to_address_helperINS_16reverse_iteratorIPxEEvE6__callB8ne200100ERKS3_
	.p2align	2
__ZNSt3__119__to_address_helperINS_16reverse_iteratorIPxEEvE6__callB8ne200100ERKS3_: ; @_ZNSt3__119__to_address_helperINS_16reverse_iteratorIPxEEvE6__callB8ne200100ERKS3_
Lfunc_begin20:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception20
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
Ltmp346:
	bl	__ZNKSt3__116reverse_iteratorIPxEptB8ne200100Ev
	str	x0, [sp]                        ; 8-byte Folded Spill
Ltmp347:
	b	LBB198_1
LBB198_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZNSt3__112__to_addressB8ne200100IxEEPT_S2_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
LBB198_2:
Ltmp348:
	bl	___clang_call_terminate
Lfunc_end20:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table198:
Lexception20:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase9-Lttbaseref9
Lttbaseref9:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end20-Lcst_begin20
Lcst_begin20:
	.uleb128 Ltmp346-Lfunc_begin20          ; >> Call Site 1 <<
	.uleb128 Ltmp347-Ltmp346                ;   Call between Ltmp346 and Ltmp347
	.uleb128 Ltmp348-Lfunc_begin20          ;     jumps to Ltmp348
	.byte	1                               ;   On action: 1
Lcst_end20:
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
	.private_extern	__ZNKSt3__116reverse_iteratorIPxEptB8ne200100Ev ; -- Begin function _ZNKSt3__116reverse_iteratorIPxEptB8ne200100Ev
	.globl	__ZNKSt3__116reverse_iteratorIPxEptB8ne200100Ev
	.weak_definition	__ZNKSt3__116reverse_iteratorIPxEptB8ne200100Ev
	.p2align	2
__ZNKSt3__116reverse_iteratorIPxEptB8ne200100Ev: ; @_ZNKSt3__116reverse_iteratorIPxEptB8ne200100Ev
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
	bl	__ZNKSt3__116reverse_iteratorIPxEdeB8ne200100Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__116reverse_iteratorIPxEdeB8ne200100Ev ; -- Begin function _ZNKSt3__116reverse_iteratorIPxEdeB8ne200100Ev
	.globl	__ZNKSt3__116reverse_iteratorIPxEdeB8ne200100Ev
	.weak_definition	__ZNKSt3__116reverse_iteratorIPxEdeB8ne200100Ev
	.p2align	2
__ZNKSt3__116reverse_iteratorIPxEdeB8ne200100Ev: ; @_ZNKSt3__116reverse_iteratorIPxEdeB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	str	x8, [sp]
	ldr	x8, [sp]
	subs	x0, x8, #8
	str	x0, [sp]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116reverse_iteratorIPxEC2B8ne200100ES1_ ; -- Begin function _ZNSt3__116reverse_iteratorIPxEC2B8ne200100ES1_
	.globl	__ZNSt3__116reverse_iteratorIPxEC2B8ne200100ES1_
	.weak_def_can_be_hidden	__ZNSt3__116reverse_iteratorIPxEC2B8ne200100ES1_
	.p2align	2
__ZNSt3__116reverse_iteratorIPxEC2B8ne200100ES1_: ; @_ZNSt3__116reverse_iteratorIPxEC2B8ne200100ES1_
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
	.private_extern	__ZNSt3__118__unwrap_iter_implIPxLb1EE8__unwrapB8ne200100ES1_ ; -- Begin function _ZNSt3__118__unwrap_iter_implIPxLb1EE8__unwrapB8ne200100ES1_
	.globl	__ZNSt3__118__unwrap_iter_implIPxLb1EE8__unwrapB8ne200100ES1_
	.weak_definition	__ZNSt3__118__unwrap_iter_implIPxLb1EE8__unwrapB8ne200100ES1_
	.p2align	2
__ZNSt3__118__unwrap_iter_implIPxLb1EE8__unwrapB8ne200100ES1_: ; @_ZNSt3__118__unwrap_iter_implIPxLb1EE8__unwrapB8ne200100ES1_
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
	bl	__ZNSt3__112__to_addressB8ne200100IxEEPT_S2_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__118__unwrap_iter_implIPxLb1EE8__rewrapB8ne200100ES1_S1_ ; -- Begin function _ZNSt3__118__unwrap_iter_implIPxLb1EE8__rewrapB8ne200100ES1_S1_
	.globl	__ZNSt3__118__unwrap_iter_implIPxLb1EE8__rewrapB8ne200100ES1_S1_
	.weak_definition	__ZNSt3__118__unwrap_iter_implIPxLb1EE8__rewrapB8ne200100ES1_S1_
	.p2align	2
__ZNSt3__118__unwrap_iter_implIPxLb1EE8__rewrapB8ne200100ES1_S1_: ; @_ZNSt3__118__unwrap_iter_implIPxLb1EE8__rewrapB8ne200100ES1_S1_
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
	bl	__ZNSt3__112__to_addressB8ne200100IxEEPT_S2_
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	subs	x9, x9, x0
	mov	x10, #8                         ; =0x8
	sdiv	x9, x9, x10
	add	x0, x8, x9, lsl #3
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__124__copy_move_unwrap_itersB8ne200100INS_11__copy_implEPKxS3_PxLi0EEENS_4pairIT0_T2_EES6_T1_S7_ ; -- Begin function _ZNSt3__124__copy_move_unwrap_itersB8ne200100INS_11__copy_implEPKxS3_PxLi0EEENS_4pairIT0_T2_EES6_T1_S7_
	.globl	__ZNSt3__124__copy_move_unwrap_itersB8ne200100INS_11__copy_implEPKxS3_PxLi0EEENS_4pairIT0_T2_EES6_T1_S7_
	.weak_definition	__ZNSt3__124__copy_move_unwrap_itersB8ne200100INS_11__copy_implEPKxS3_PxLi0EEENS_4pairIT0_T2_EES6_T1_S7_
	.p2align	2
__ZNSt3__124__copy_move_unwrap_itersB8ne200100INS_11__copy_implEPKxS3_PxLi0EEENS_4pairIT0_T2_EES6_T1_S7_: ; @_ZNSt3__124__copy_move_unwrap_itersB8ne200100INS_11__copy_implEPKxS3_PxLi0EEENS_4pairIT0_T2_EES6_T1_S7_
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
	bl	__ZNSt3__114__unwrap_rangeB8ne200100IPKxS2_EENS_4pairIT0_S4_EET_S6_
	stur	x0, [x29, #-56]
	stur	x1, [x29, #-48]
	ldur	x8, [x29, #-56]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x8, [x29, #-48]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-40]
	bl	__ZNSt3__113__unwrap_iterB8ne200100IPxNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x2, [sp, #16]                   ; 8-byte Folded Reload
	mov	x3, x0
	add	x0, sp, #55
	bl	__ZNKSt3__111__copy_implclB8ne200100IKxxLi0EEENS_4pairIPT_PT0_EES5_S5_S7_
	str	x0, [sp, #56]
	str	x1, [sp, #64]
	ldur	x0, [x29, #-24]
	ldr	x1, [sp, #56]
	bl	__ZNSt3__114__rewrap_rangeB8ne200100IPKxS2_EET_S3_T0_
	add	x8, sp, #40
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	str	x0, [sp, #40]
	ldur	x0, [x29, #-40]
	ldr	x1, [sp, #64]
	bl	__ZNSt3__113__rewrap_iterB8ne200100IPxS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	add	x1, sp, #32
	str	x8, [sp, #32]
	bl	__ZNSt3__19make_pairB8ne200100IPKxPxEENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS5_Iu7__decayIT0_EE4typeEEEOS6_OSA_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__111__copy_implclB8ne200100IKxxLi0EEENS_4pairIPT_PT0_EES5_S5_S7_ ; -- Begin function _ZNKSt3__111__copy_implclB8ne200100IKxxLi0EEENS_4pairIPT_PT0_EES5_S5_S7_
	.globl	__ZNKSt3__111__copy_implclB8ne200100IKxxLi0EEENS_4pairIPT_PT0_EES5_S5_S7_
	.weak_definition	__ZNKSt3__111__copy_implclB8ne200100IKxxLi0EEENS_4pairIPT_PT0_EES5_S5_S7_
	.p2align	2
__ZNKSt3__111__copy_implclB8ne200100IKxxLi0EEENS_4pairIPT_PT0_EES5_S5_S7_: ; @_ZNKSt3__111__copy_implclB8ne200100IKxxLi0EEENS_4pairIPT_PT0_EES5_S5_S7_
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
	bl	__ZNSt3__119__copy_trivial_implB8ne200100IKxxEENS_4pairIPT_PT0_EES4_S4_S6_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19make_pairB8ne200100IPKxPxEENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS5_Iu7__decayIT0_EE4typeEEEOS6_OSA_ ; -- Begin function _ZNSt3__19make_pairB8ne200100IPKxPxEENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS5_Iu7__decayIT0_EE4typeEEEOS6_OSA_
	.globl	__ZNSt3__19make_pairB8ne200100IPKxPxEENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS5_Iu7__decayIT0_EE4typeEEEOS6_OSA_
	.weak_definition	__ZNSt3__19make_pairB8ne200100IPKxPxEENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS5_Iu7__decayIT0_EE4typeEEEOS6_OSA_
	.p2align	2
__ZNSt3__19make_pairB8ne200100IPKxPxEENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS5_Iu7__decayIT0_EE4typeEEEOS6_OSA_: ; @_ZNSt3__19make_pairB8ne200100IPKxPxEENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS5_Iu7__decayIT0_EE4typeEEEOS6_OSA_
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
	bl	__ZNSt3__14pairIPKxPxEC1B8ne200100IS2_S3_Li0EEEOT_OT0_
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__rewrap_rangeB8ne200100IPKxS2_EET_S3_T0_ ; -- Begin function _ZNSt3__114__rewrap_rangeB8ne200100IPKxS2_EET_S3_T0_
	.globl	__ZNSt3__114__rewrap_rangeB8ne200100IPKxS2_EET_S3_T0_
	.weak_definition	__ZNSt3__114__rewrap_rangeB8ne200100IPKxS2_EET_S3_T0_
	.p2align	2
__ZNSt3__114__rewrap_rangeB8ne200100IPKxS2_EET_S3_T0_: ; @_ZNSt3__114__rewrap_rangeB8ne200100IPKxS2_EET_S3_T0_
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
	bl	__ZNSt3__113__rewrap_iterB8ne200100IPKxS2_NS_18__unwrap_iter_implIS2_Lb1EEEEET_S5_T0_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__copy_trivial_implB8ne200100IKxxEENS_4pairIPT_PT0_EES4_S4_S6_ ; -- Begin function _ZNSt3__119__copy_trivial_implB8ne200100IKxxEENS_4pairIPT_PT0_EES4_S4_S6_
	.globl	__ZNSt3__119__copy_trivial_implB8ne200100IKxxEENS_4pairIPT_PT0_EES4_S4_S6_
	.weak_definition	__ZNSt3__119__copy_trivial_implB8ne200100IKxxEENS_4pairIPT_PT0_EES4_S4_S6_
	.p2align	2
__ZNSt3__119__copy_trivial_implB8ne200100IKxxEENS_4pairIPT_PT0_EES4_S4_S6_: ; @_ZNSt3__119__copy_trivial_implB8ne200100IKxxEENS_4pairIPT_PT0_EES4_S4_S6_
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
	mov	x9, #8                          ; =0x8
	sdiv	x8, x8, x9
	str	x8, [sp, #16]
	ldr	x0, [sp, #24]
	ldur	x1, [x29, #-24]
	ldr	x2, [sp, #16]
	bl	__ZNSt3__119__constexpr_memmoveB8ne200100IxKxLi0EEEPT_S3_PT0_NS_15__element_countE
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #16]
	add	x8, x8, x9, lsl #3
	add	x1, sp, #8
	str	x8, [sp, #8]
	bl	__ZNSt3__19make_pairB8ne200100IRPKxPxEENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS6_Iu7__decayIT0_EE4typeEEEOS7_OSB_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__constexpr_memmoveB8ne200100IxKxLi0EEEPT_S3_PT0_NS_15__element_countE ; -- Begin function _ZNSt3__119__constexpr_memmoveB8ne200100IxKxLi0EEEPT_S3_PT0_NS_15__element_countE
	.globl	__ZNSt3__119__constexpr_memmoveB8ne200100IxKxLi0EEEPT_S3_PT0_NS_15__element_countE
	.weak_definition	__ZNSt3__119__constexpr_memmoveB8ne200100IxKxLi0EEEPT_S3_PT0_NS_15__element_countE
	.p2align	2
__ZNSt3__119__constexpr_memmoveB8ne200100IxKxLi0EEEPT_S3_PT0_NS_15__element_countE: ; @_ZNSt3__119__constexpr_memmoveB8ne200100IxKxLi0EEEPT_S3_PT0_NS_15__element_countE
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
	b.ls	LBB209_2
	b	LBB209_1
LBB209_1:
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x8, [sp]
	subs	x8, x8, #1
	lsl	x8, x8, #3
	add	x2, x8, #8
	bl	_memmove
	b	LBB209_2
LBB209_2:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19make_pairB8ne200100IRPKxPxEENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS6_Iu7__decayIT0_EE4typeEEEOS7_OSB_ ; -- Begin function _ZNSt3__19make_pairB8ne200100IRPKxPxEENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS6_Iu7__decayIT0_EE4typeEEEOS7_OSB_
	.globl	__ZNSt3__19make_pairB8ne200100IRPKxPxEENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS6_Iu7__decayIT0_EE4typeEEEOS7_OSB_
	.weak_definition	__ZNSt3__19make_pairB8ne200100IRPKxPxEENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS6_Iu7__decayIT0_EE4typeEEEOS7_OSB_
	.p2align	2
__ZNSt3__19make_pairB8ne200100IRPKxPxEENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS6_Iu7__decayIT0_EE4typeEEEOS7_OSB_: ; @_ZNSt3__19make_pairB8ne200100IRPKxPxEENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS6_Iu7__decayIT0_EE4typeEEEOS7_OSB_
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
	bl	__ZNSt3__14pairIPKxPxEC1B8ne200100IRS2_S3_Li0EEEOT_OT0_
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__14pairIPKxPxEC1B8ne200100IRS2_S3_Li0EEEOT_OT0_ ; -- Begin function _ZNSt3__14pairIPKxPxEC1B8ne200100IRS2_S3_Li0EEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__14pairIPKxPxEC1B8ne200100IRS2_S3_Li0EEEOT_OT0_
	.p2align	2
__ZNSt3__14pairIPKxPxEC1B8ne200100IRS2_S3_Li0EEEOT_OT0_: ; @_ZNSt3__14pairIPKxPxEC1B8ne200100IRS2_S3_Li0EEEOT_OT0_
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
	bl	__ZNSt3__14pairIPKxPxEC2B8ne200100IRS2_S3_Li0EEEOT_OT0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__14pairIPKxPxEC2B8ne200100IRS2_S3_Li0EEEOT_OT0_ ; -- Begin function _ZNSt3__14pairIPKxPxEC2B8ne200100IRS2_S3_Li0EEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__14pairIPKxPxEC2B8ne200100IRS2_S3_Li0EEEOT_OT0_
	.p2align	2
__ZNSt3__14pairIPKxPxEC2B8ne200100IRS2_S3_Li0EEEOT_OT0_: ; @_ZNSt3__14pairIPKxPxEC2B8ne200100IRS2_S3_Li0EEEOT_OT0_
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
	.globl	__ZNSt3__14pairIPKxPxEC1B8ne200100IS2_S3_Li0EEEOT_OT0_ ; -- Begin function _ZNSt3__14pairIPKxPxEC1B8ne200100IS2_S3_Li0EEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__14pairIPKxPxEC1B8ne200100IS2_S3_Li0EEEOT_OT0_
	.p2align	2
__ZNSt3__14pairIPKxPxEC1B8ne200100IS2_S3_Li0EEEOT_OT0_: ; @_ZNSt3__14pairIPKxPxEC1B8ne200100IS2_S3_Li0EEEOT_OT0_
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
	bl	__ZNSt3__14pairIPKxPxEC2B8ne200100IS2_S3_Li0EEEOT_OT0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__14pairIPKxPxEC2B8ne200100IS2_S3_Li0EEEOT_OT0_ ; -- Begin function _ZNSt3__14pairIPKxPxEC2B8ne200100IS2_S3_Li0EEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__14pairIPKxPxEC2B8ne200100IS2_S3_Li0EEEOT_OT0_
	.p2align	2
__ZNSt3__14pairIPKxPxEC2B8ne200100IS2_S3_Li0EEEOT_OT0_: ; @_ZNSt3__14pairIPKxPxEC2B8ne200100IS2_S3_Li0EEEOT_OT0_
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
	.private_extern	__ZNSt3__113__rewrap_iterB8ne200100IPKxS2_NS_18__unwrap_iter_implIS2_Lb1EEEEET_S5_T0_ ; -- Begin function _ZNSt3__113__rewrap_iterB8ne200100IPKxS2_NS_18__unwrap_iter_implIS2_Lb1EEEEET_S5_T0_
	.globl	__ZNSt3__113__rewrap_iterB8ne200100IPKxS2_NS_18__unwrap_iter_implIS2_Lb1EEEEET_S5_T0_
	.weak_definition	__ZNSt3__113__rewrap_iterB8ne200100IPKxS2_NS_18__unwrap_iter_implIS2_Lb1EEEEET_S5_T0_
	.p2align	2
__ZNSt3__113__rewrap_iterB8ne200100IPKxS2_NS_18__unwrap_iter_implIS2_Lb1EEEEET_S5_T0_: ; @_ZNSt3__113__rewrap_iterB8ne200100IPKxS2_NS_18__unwrap_iter_implIS2_Lb1EEEEET_S5_T0_
Lfunc_begin21:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception21
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
Ltmp353:
	bl	__ZNSt3__118__unwrap_iter_implIPKxLb1EE8__rewrapB8ne200100ES2_S2_
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp354:
	b	LBB215_1
LBB215_1:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB215_2:
Ltmp355:
	bl	___clang_call_terminate
Lfunc_end21:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table215:
Lexception21:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase10-Lttbaseref10
Lttbaseref10:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end21-Lcst_begin21
Lcst_begin21:
	.uleb128 Ltmp353-Lfunc_begin21          ; >> Call Site 1 <<
	.uleb128 Ltmp354-Ltmp353                ;   Call between Ltmp353 and Ltmp354
	.uleb128 Ltmp355-Lfunc_begin21          ;     jumps to Ltmp355
	.byte	1                               ;   On action: 1
Lcst_end21:
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
	.private_extern	__ZNSt3__118__unwrap_iter_implIPKxLb1EE8__rewrapB8ne200100ES2_S2_ ; -- Begin function _ZNSt3__118__unwrap_iter_implIPKxLb1EE8__rewrapB8ne200100ES2_S2_
	.globl	__ZNSt3__118__unwrap_iter_implIPKxLb1EE8__rewrapB8ne200100ES2_S2_
	.weak_definition	__ZNSt3__118__unwrap_iter_implIPKxLb1EE8__rewrapB8ne200100ES2_S2_
	.p2align	2
__ZNSt3__118__unwrap_iter_implIPKxLb1EE8__rewrapB8ne200100ES2_S2_: ; @_ZNSt3__118__unwrap_iter_implIPKxLb1EE8__rewrapB8ne200100ES2_S2_
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
	bl	__ZNSt3__112__to_addressB8ne200100IKxEEPT_S3_
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	subs	x9, x9, x0
	mov	x10, #8                         ; =0x8
	sdiv	x9, x9, x10
	add	x0, x8, x9, lsl #3
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__110__distanceB8ne200100IPKxEENS_15iterator_traitsIT_E15difference_typeES4_S4_NS_26random_access_iterator_tagE ; -- Begin function _ZNSt3__110__distanceB8ne200100IPKxEENS_15iterator_traitsIT_E15difference_typeES4_S4_NS_26random_access_iterator_tagE
	.globl	__ZNSt3__110__distanceB8ne200100IPKxEENS_15iterator_traitsIT_E15difference_typeES4_S4_NS_26random_access_iterator_tagE
	.weak_definition	__ZNSt3__110__distanceB8ne200100IPKxEENS_15iterator_traitsIT_E15difference_typeES4_S4_NS_26random_access_iterator_tagE
	.p2align	2
__ZNSt3__110__distanceB8ne200100IPKxEENS_15iterator_traitsIT_E15difference_typeES4_S4_NS_26random_access_iterator_tagE: ; @_ZNSt3__110__distanceB8ne200100IPKxEENS_15iterator_traitsIT_E15difference_typeES4_S4_NS_26random_access_iterator_tagE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #16]
	subs	x8, x8, x9
	mov	x9, #8                          ; =0x8
	sdiv	x0, x8, x9
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEEC2B8ne200100Ev ; -- Begin function _ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEEC2B8ne200100Ev
	.globl	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEEC2B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEEC2B8ne200100Ev
	.p2align	2
__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEEC2B8ne200100Ev: ; @_ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEEC2B8ne200100Ev
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
	bl	__ZNSt3__19allocatorI6ResultEC1B8ne200100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorI6ResultEC1B8ne200100Ev ; -- Begin function _ZNSt3__19allocatorI6ResultEC1B8ne200100Ev
	.globl	__ZNSt3__19allocatorI6ResultEC1B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__19allocatorI6ResultEC1B8ne200100Ev
	.p2align	2
__ZNSt3__19allocatorI6ResultEC1B8ne200100Ev: ; @_ZNSt3__19allocatorI6ResultEC1B8ne200100Ev
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
	bl	__ZNSt3__19allocatorI6ResultEC2B8ne200100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorI6ResultEC2B8ne200100Ev ; -- Begin function _ZNSt3__19allocatorI6ResultEC2B8ne200100Ev
	.globl	__ZNSt3__19allocatorI6ResultEC2B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__19allocatorI6ResultEC2B8ne200100Ev
	.p2align	2
__ZNSt3__19allocatorI6ResultEC2B8ne200100Ev: ; @_ZNSt3__19allocatorI6ResultEC2B8ne200100Ev
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
	bl	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorI6ResultEEEC2B8ne200100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorI6ResultEEEC2B8ne200100Ev ; -- Begin function _ZNSt3__116__non_trivial_ifILb1ENS_9allocatorI6ResultEEEC2B8ne200100Ev
	.globl	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorI6ResultEEEC2B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorI6ResultEEEC2B8ne200100Ev
	.p2align	2
__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorI6ResultEEEC2B8ne200100Ev: ; @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorI6ResultEEEC2B8ne200100Ev
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
	.private_extern	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEED2B8ne200100Ev ; -- Begin function _ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEED2B8ne200100Ev
	.globl	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEED2B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEED2B8ne200100Ev
	.p2align	2
__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEED2B8ne200100Ev: ; @_ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEED2B8ne200100Ev
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
	ldur	x1, [x29, #-8]
	str	x1, [sp, #8]                    ; 8-byte Folded Spill
Ltmp358:
	add	x0, sp, #16
	bl	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE16__destroy_vectorC1B8ne200100ERS4_
Ltmp359:
	b	LBB222_1
LBB222_1:
Ltmp360:
	add	x0, sp, #16
	bl	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE16__destroy_vectorclB8ne200100Ev
Ltmp361:
	b	LBB222_2
LBB222_2:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB222_3:
Ltmp362:
	bl	___clang_call_terminate
Lfunc_end22:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table222:
Lexception22:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase11-Lttbaseref11
Lttbaseref11:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end22-Lcst_begin22
Lcst_begin22:
	.uleb128 Ltmp358-Lfunc_begin22          ; >> Call Site 1 <<
	.uleb128 Ltmp361-Ltmp358                ;   Call between Ltmp358 and Ltmp361
	.uleb128 Ltmp362-Lfunc_begin22          ;     jumps to Ltmp362
	.byte	1                               ;   On action: 1
Lcst_end22:
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
	.private_extern	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE16__destroy_vectorC1B8ne200100ERS4_ ; -- Begin function _ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE16__destroy_vectorC1B8ne200100ERS4_
	.globl	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE16__destroy_vectorC1B8ne200100ERS4_
	.weak_def_can_be_hidden	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE16__destroy_vectorC1B8ne200100ERS4_
	.p2align	2
__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE16__destroy_vectorC1B8ne200100ERS4_: ; @_ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE16__destroy_vectorC1B8ne200100ERS4_
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
	bl	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE16__destroy_vectorC2B8ne200100ERS4_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE16__destroy_vectorclB8ne200100Ev ; -- Begin function _ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE16__destroy_vectorclB8ne200100Ev
	.globl	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE16__destroy_vectorclB8ne200100Ev
	.weak_definition	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE16__destroy_vectorclB8ne200100Ev
	.p2align	2
__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE16__destroy_vectorclB8ne200100Ev: ; @_ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE16__destroy_vectorclB8ne200100Ev
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
	cbz	x8, LBB224_2
	b	LBB224_1
LBB224_1:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	bl	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE5clearB8ne200100Ev
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	bl	__ZNKSt3__16vectorI6ResultNS_9allocatorIS1_EEE17__annotate_deleteB8ne200100Ev
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x9, [x8]
	add	x9, x9, #16
	str	x9, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x9, [x8]
	ldr	x9, [x9]
	str	x9, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [x8]
	bl	__ZNKSt3__16vectorI6ResultNS_9allocatorIS1_EEE8capacityB8ne200100Ev
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	mov	x2, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__116allocator_traitsINS_9allocatorI6ResultEEE10deallocateB8ne200100ERS3_PS2_m
	b	LBB224_2
LBB224_2:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE16__destroy_vectorC2B8ne200100ERS4_ ; -- Begin function _ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE16__destroy_vectorC2B8ne200100ERS4_
	.globl	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE16__destroy_vectorC2B8ne200100ERS4_
	.weak_def_can_be_hidden	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE16__destroy_vectorC2B8ne200100ERS4_
	.p2align	2
__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE16__destroy_vectorC2B8ne200100ERS4_: ; @_ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE16__destroy_vectorC2B8ne200100ERS4_
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
	.private_extern	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE5clearB8ne200100Ev ; -- Begin function _ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE5clearB8ne200100Ev
	.globl	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE5clearB8ne200100Ev
	.weak_definition	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE5clearB8ne200100Ev
	.p2align	2
__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE5clearB8ne200100Ev: ; @_ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE5clearB8ne200100Ev
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
	bl	__ZNKSt3__16vectorI6ResultNS_9allocatorIS1_EEE4sizeB8ne200100Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	str	x8, [sp, #16]
	ldr	x1, [x0]
	bl	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE22__base_destruct_at_endB8ne200100EPS1_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x1, [sp, #16]
	bl	__ZNKSt3__16vectorI6ResultNS_9allocatorIS1_EEE17__annotate_shrinkB8ne200100Em
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorI6ResultNS_9allocatorIS1_EEE17__annotate_deleteB8ne200100Ev ; -- Begin function _ZNKSt3__16vectorI6ResultNS_9allocatorIS1_EEE17__annotate_deleteB8ne200100Ev
	.globl	__ZNKSt3__16vectorI6ResultNS_9allocatorIS1_EEE17__annotate_deleteB8ne200100Ev
	.weak_definition	__ZNKSt3__16vectorI6ResultNS_9allocatorIS1_EEE17__annotate_deleteB8ne200100Ev
	.p2align	2
__ZNKSt3__16vectorI6ResultNS_9allocatorIS1_EEE17__annotate_deleteB8ne200100Ev: ; @_ZNKSt3__16vectorI6ResultNS_9allocatorIS1_EEE17__annotate_deleteB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116allocator_traitsINS_9allocatorI6ResultEEE10deallocateB8ne200100ERS3_PS2_m ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorI6ResultEEE10deallocateB8ne200100ERS3_PS2_m
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorI6ResultEEE10deallocateB8ne200100ERS3_PS2_m
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorI6ResultEEE10deallocateB8ne200100ERS3_PS2_m
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorI6ResultEEE10deallocateB8ne200100ERS3_PS2_m: ; @_ZNSt3__116allocator_traitsINS_9allocatorI6ResultEEE10deallocateB8ne200100ERS3_PS2_m
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
	bl	__ZNSt3__19allocatorI6ResultE10deallocateB8ne200100EPS1_m
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorI6ResultNS_9allocatorIS1_EEE8capacityB8ne200100Ev ; -- Begin function _ZNKSt3__16vectorI6ResultNS_9allocatorIS1_EEE8capacityB8ne200100Ev
	.globl	__ZNKSt3__16vectorI6ResultNS_9allocatorIS1_EEE8capacityB8ne200100Ev
	.weak_definition	__ZNKSt3__16vectorI6ResultNS_9allocatorIS1_EEE8capacityB8ne200100Ev
	.p2align	2
__ZNKSt3__16vectorI6ResultNS_9allocatorIS1_EEE8capacityB8ne200100Ev: ; @_ZNKSt3__16vectorI6ResultNS_9allocatorIS1_EEE8capacityB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	ldr	x8, [x9, #16]
	ldr	x9, [x9]
	subs	x8, x8, x9
	mov	x9, #32                         ; =0x20
	sdiv	x0, x8, x9
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorI6ResultNS_9allocatorIS1_EEE4sizeB8ne200100Ev ; -- Begin function _ZNKSt3__16vectorI6ResultNS_9allocatorIS1_EEE4sizeB8ne200100Ev
	.globl	__ZNKSt3__16vectorI6ResultNS_9allocatorIS1_EEE4sizeB8ne200100Ev
	.weak_definition	__ZNKSt3__16vectorI6ResultNS_9allocatorIS1_EEE4sizeB8ne200100Ev
	.p2align	2
__ZNKSt3__16vectorI6ResultNS_9allocatorIS1_EEE4sizeB8ne200100Ev: ; @_ZNKSt3__16vectorI6ResultNS_9allocatorIS1_EEE4sizeB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	ldr	x8, [x9, #8]
	ldr	x9, [x9]
	subs	x8, x8, x9
	mov	x9, #32                         ; =0x20
	sdiv	x0, x8, x9
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE22__base_destruct_at_endB8ne200100EPS1_ ; -- Begin function _ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE22__base_destruct_at_endB8ne200100EPS1_
	.globl	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE22__base_destruct_at_endB8ne200100EPS1_
	.weak_definition	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE22__base_destruct_at_endB8ne200100EPS1_
	.p2align	2
__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE22__base_destruct_at_endB8ne200100EPS1_: ; @_ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE22__base_destruct_at_endB8ne200100EPS1_
Lfunc_begin23:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception23
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
	b	LBB231_1
LBB231_1:                               ; =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-16]
	ldr	x9, [sp, #24]
	subs	x8, x8, x9
	b.eq	LBB231_4
	b	LBB231_2
LBB231_2:                               ;   in Loop: Header=BB231_1 Depth=1
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	add	x8, x8, #16
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x8, [sp, #24]
	subs	x0, x8, #32
	str	x0, [sp, #24]
	bl	__ZNSt3__112__to_addressB8ne200100I6ResultEEPT_S3_
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
Ltmp367:
	bl	__ZNSt3__116allocator_traitsINS_9allocatorI6ResultEEE7destroyB8ne200100IS2_Li0EEEvRS3_PT_
Ltmp368:
	b	LBB231_3
LBB231_3:                               ;   in Loop: Header=BB231_1 Depth=1
	b	LBB231_1
LBB231_4:
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	str	x8, [x9, #8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB231_5:
Ltmp369:
	bl	___clang_call_terminate
Lfunc_end23:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table231:
Lexception23:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase12-Lttbaseref12
Lttbaseref12:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end23-Lcst_begin23
Lcst_begin23:
	.uleb128 Ltmp367-Lfunc_begin23          ; >> Call Site 1 <<
	.uleb128 Ltmp368-Ltmp367                ;   Call between Ltmp367 and Ltmp368
	.uleb128 Ltmp369-Lfunc_begin23          ;     jumps to Ltmp369
	.byte	1                               ;   On action: 1
Lcst_end23:
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
	.private_extern	__ZNKSt3__16vectorI6ResultNS_9allocatorIS1_EEE17__annotate_shrinkB8ne200100Em ; -- Begin function _ZNKSt3__16vectorI6ResultNS_9allocatorIS1_EEE17__annotate_shrinkB8ne200100Em
	.globl	__ZNKSt3__16vectorI6ResultNS_9allocatorIS1_EEE17__annotate_shrinkB8ne200100Em
	.weak_definition	__ZNKSt3__16vectorI6ResultNS_9allocatorIS1_EEE17__annotate_shrinkB8ne200100Em
	.p2align	2
__ZNKSt3__16vectorI6ResultNS_9allocatorIS1_EEE17__annotate_shrinkB8ne200100Em: ; @_ZNKSt3__16vectorI6ResultNS_9allocatorIS1_EEE17__annotate_shrinkB8ne200100Em
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
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorI6ResultEEE7destroyB8ne200100IS2_Li0EEEvRS3_PT_ ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorI6ResultEEE7destroyB8ne200100IS2_Li0EEEvRS3_PT_
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorI6ResultEEE7destroyB8ne200100IS2_Li0EEEvRS3_PT_
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorI6ResultEEE7destroyB8ne200100IS2_Li0EEEvRS3_PT_: ; @_ZNSt3__116allocator_traitsINS_9allocatorI6ResultEEE7destroyB8ne200100IS2_Li0EEEvRS3_PT_
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
	bl	__ZNSt3__19allocatorI6ResultE7destroyB8ne200100EPS1_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112__to_addressB8ne200100I6ResultEEPT_S3_ ; -- Begin function _ZNSt3__112__to_addressB8ne200100I6ResultEEPT_S3_
	.globl	__ZNSt3__112__to_addressB8ne200100I6ResultEEPT_S3_
	.weak_definition	__ZNSt3__112__to_addressB8ne200100I6ResultEEPT_S3_
	.p2align	2
__ZNSt3__112__to_addressB8ne200100I6ResultEEPT_S3_: ; @_ZNSt3__112__to_addressB8ne200100I6ResultEEPT_S3_
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
	.private_extern	__ZNSt3__19allocatorI6ResultE7destroyB8ne200100EPS1_ ; -- Begin function _ZNSt3__19allocatorI6ResultE7destroyB8ne200100EPS1_
	.globl	__ZNSt3__19allocatorI6ResultE7destroyB8ne200100EPS1_
	.weak_definition	__ZNSt3__19allocatorI6ResultE7destroyB8ne200100EPS1_
	.p2align	2
__ZNSt3__19allocatorI6ResultE7destroyB8ne200100EPS1_: ; @_ZNSt3__19allocatorI6ResultE7destroyB8ne200100EPS1_
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
	.private_extern	__ZNSt3__19allocatorI6ResultE10deallocateB8ne200100EPS1_m ; -- Begin function _ZNSt3__19allocatorI6ResultE10deallocateB8ne200100EPS1_m
	.globl	__ZNSt3__19allocatorI6ResultE10deallocateB8ne200100EPS1_m
	.weak_definition	__ZNSt3__19allocatorI6ResultE10deallocateB8ne200100EPS1_m
	.p2align	2
__ZNSt3__19allocatorI6ResultE10deallocateB8ne200100EPS1_m: ; @_ZNSt3__19allocatorI6ResultE10deallocateB8ne200100EPS1_m
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
	mov	x2, #8                          ; =0x8
	bl	__ZNSt3__119__libcpp_deallocateB8ne200100I6ResultEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__libcpp_deallocateB8ne200100I6ResultEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm ; -- Begin function _ZNSt3__119__libcpp_deallocateB8ne200100I6ResultEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm
	.globl	__ZNSt3__119__libcpp_deallocateB8ne200100I6ResultEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm
	.weak_definition	__ZNSt3__119__libcpp_deallocateB8ne200100I6ResultEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm
	.p2align	2
__ZNSt3__119__libcpp_deallocateB8ne200100I6ResultEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm: ; @_ZNSt3__119__libcpp_deallocateB8ne200100I6ResultEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm
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
	lsl	x8, x8, #5
	str	x8, [sp]
	ldur	x0, [x29, #-8]
	bl	__ZNSt3__124__libcpp_operator_deleteB8ne200100IJP6ResultEEEvDpT_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__124__libcpp_operator_deleteB8ne200100IJP6ResultEEEvDpT_ ; -- Begin function _ZNSt3__124__libcpp_operator_deleteB8ne200100IJP6ResultEEEvDpT_
	.globl	__ZNSt3__124__libcpp_operator_deleteB8ne200100IJP6ResultEEEvDpT_
	.weak_definition	__ZNSt3__124__libcpp_operator_deleteB8ne200100IJP6ResultEEEvDpT_
	.p2align	2
__ZNSt3__124__libcpp_operator_deleteB8ne200100IJP6ResultEEEvDpT_: ; @_ZNSt3__124__libcpp_operator_deleteB8ne200100IJP6ResultEEEvDpT_
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
	.private_extern	__ZNKSt3__16vectorI6ResultNS_9allocatorIS1_EEE8max_sizeB8ne200100Ev ; -- Begin function _ZNKSt3__16vectorI6ResultNS_9allocatorIS1_EEE8max_sizeB8ne200100Ev
	.globl	__ZNKSt3__16vectorI6ResultNS_9allocatorIS1_EEE8max_sizeB8ne200100Ev
	.weak_definition	__ZNKSt3__16vectorI6ResultNS_9allocatorIS1_EEE8max_sizeB8ne200100Ev
	.p2align	2
__ZNKSt3__16vectorI6ResultNS_9allocatorIS1_EEE8max_sizeB8ne200100Ev: ; @_ZNKSt3__16vectorI6ResultNS_9allocatorIS1_EEE8max_sizeB8ne200100Ev
Lfunc_begin24:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception24
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
	bl	__ZNSt3__116allocator_traitsINS_9allocatorI6ResultEEE8max_sizeB8ne200100IS3_Li0EEEmRKS3_
	sub	x8, x29, #16
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	stur	x0, [x29, #-16]
	bl	__ZNSt3__114numeric_limitsIlE3maxB8ne200100Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	add	x1, sp, #24
	str	x8, [sp, #24]
Ltmp373:
	bl	__ZNSt3__13minB8ne200100ImEERKT_S3_S3_
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp374:
	b	LBB239_1
LBB239_1:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB239_2:
Ltmp375:
	bl	___clang_call_terminate
Lfunc_end24:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table239:
Lexception24:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase13-Lttbaseref13
Lttbaseref13:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end24-Lcst_begin24
Lcst_begin24:
	.uleb128 Ltmp373-Lfunc_begin24          ; >> Call Site 1 <<
	.uleb128 Ltmp374-Ltmp373                ;   Call between Ltmp373 and Ltmp374
	.uleb128 Ltmp375-Lfunc_begin24          ;     jumps to Ltmp375
	.byte	1                               ;   On action: 1
Lcst_end24:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase13:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev ; -- Begin function _ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev
	.globl	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev
	.weak_definition	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev
	.p2align	2
__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev: ; @_ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x0, l_.str.38@PAGE
	add	x0, x0, l_.str.38@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB8ne200100EPKc
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferI6ResultRNS_9allocatorIS1_EEEC1EmmS4_ ; -- Begin function _ZNSt3__114__split_bufferI6ResultRNS_9allocatorIS1_EEEC1EmmS4_
	.globl	__ZNSt3__114__split_bufferI6ResultRNS_9allocatorIS1_EEEC1EmmS4_
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferI6ResultRNS_9allocatorIS1_EEEC1EmmS4_
	.p2align	2
__ZNSt3__114__split_bufferI6ResultRNS_9allocatorIS1_EEEC1EmmS4_: ; @_ZNSt3__114__split_bufferI6ResultRNS_9allocatorIS1_EEEC1EmmS4_
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
	bl	__ZNSt3__114__split_bufferI6ResultRNS_9allocatorIS1_EEEC2EmmS4_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS1_RS3_EE ; -- Begin function _ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS1_RS3_EE
	.globl	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS1_RS3_EE
	.weak_definition	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS1_RS3_EE
	.p2align	2
__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS1_RS3_EE: ; @_ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS1_RS3_EE
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
	bl	__ZNKSt3__16vectorI6ResultNS_9allocatorIS1_EEE17__annotate_deleteB8ne200100Ev
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #8]
	ldr	x10, [x8, #8]
	ldr	x11, [x8]
	subs	x10, x10, x11
	mov	x11, #32                        ; =0x20
	sdiv	x11, x10, x11
	mov	x10, #0                         ; =0x0
	subs	x10, x10, x11
	add	x9, x9, x10, lsl #5
	str	x9, [sp, #24]
	ldr	x0, [x8]
	bl	__ZNSt3__112__to_addressB8ne200100I6ResultEEPT_S3_
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [x8, #8]
	bl	__ZNSt3__112__to_addressB8ne200100I6ResultEEPT_S3_
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x0, [sp, #24]
	bl	__ZNSt3__112__to_addressB8ne200100I6ResultEEPT_S3_
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	ldr	x2, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	mov	x3, x0
	add	x0, x8, #16
	bl	__ZNSt3__134__uninitialized_allocator_relocateB8ne200100INS_9allocatorI6ResultEEPS2_EEvRT_T0_S7_S7_
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #24]
	ldur	x9, [x29, #-16]
	str	x8, [x9, #8]
	ldr	x8, [x0]
	str	x8, [x0, #8]
	ldur	x8, [x29, #-16]
	add	x1, x8, #8
	bl	__ZNSt3__14swapB8ne200100IP6ResultEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	add	x0, x9, #8
	add	x1, x8, #16
	bl	__ZNSt3__14swapB8ne200100IP6ResultEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	add	x0, x9, #16
	add	x1, x8, #24
	bl	__ZNSt3__14swapB8ne200100IP6ResultEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	ldur	x9, [x29, #-16]
	str	x8, [x9]
	bl	__ZNKSt3__16vectorI6ResultNS_9allocatorIS1_EEE4sizeB8ne200100Ev
	mov	x1, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__16vectorI6ResultNS_9allocatorIS1_EEE14__annotate_newB8ne200100Em
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferI6ResultRNS_9allocatorIS1_EEED1Ev ; -- Begin function _ZNSt3__114__split_bufferI6ResultRNS_9allocatorIS1_EEED1Ev
	.globl	__ZNSt3__114__split_bufferI6ResultRNS_9allocatorIS1_EEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferI6ResultRNS_9allocatorIS1_EEED1Ev
	.p2align	2
__ZNSt3__114__split_bufferI6ResultRNS_9allocatorIS1_EEED1Ev: ; @_ZNSt3__114__split_bufferI6ResultRNS_9allocatorIS1_EEED1Ev
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
	bl	__ZNSt3__114__split_bufferI6ResultRNS_9allocatorIS1_EEED2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorI6ResultEEE8max_sizeB8ne200100IS3_Li0EEEmRKS3_ ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorI6ResultEEE8max_sizeB8ne200100IS3_Li0EEEmRKS3_
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorI6ResultEEE8max_sizeB8ne200100IS3_Li0EEEmRKS3_
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorI6ResultEEE8max_sizeB8ne200100IS3_Li0EEEmRKS3_: ; @_ZNSt3__116allocator_traitsINS_9allocatorI6ResultEEE8max_sizeB8ne200100IS3_Li0EEEmRKS3_
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
	bl	__ZNKSt3__19allocatorI6ResultE8max_sizeB8ne200100Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__19allocatorI6ResultE8max_sizeB8ne200100Ev ; -- Begin function _ZNKSt3__19allocatorI6ResultE8max_sizeB8ne200100Ev
	.globl	__ZNKSt3__19allocatorI6ResultE8max_sizeB8ne200100Ev
	.weak_definition	__ZNKSt3__19allocatorI6ResultE8max_sizeB8ne200100Ev
	.p2align	2
__ZNKSt3__19allocatorI6ResultE8max_sizeB8ne200100Ev: ; @_ZNKSt3__19allocatorI6ResultE8max_sizeB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	mov	x0, #576460752303423487         ; =0x7ffffffffffffff
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferI6ResultRNS_9allocatorIS1_EEEC2EmmS4_ ; -- Begin function _ZNSt3__114__split_bufferI6ResultRNS_9allocatorIS1_EEEC2EmmS4_
	.globl	__ZNSt3__114__split_bufferI6ResultRNS_9allocatorIS1_EEEC2EmmS4_
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferI6ResultRNS_9allocatorIS1_EEEC2EmmS4_
	.p2align	2
__ZNSt3__114__split_bufferI6ResultRNS_9allocatorIS1_EEEC2EmmS4_: ; @_ZNSt3__114__split_bufferI6ResultRNS_9allocatorIS1_EEEC2EmmS4_
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
	cbnz	x8, LBB246_2
	b	LBB246_1
LBB246_1:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8]
	b	LBB246_3
LBB246_2:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldr	x0, [x8, #32]
	ldur	x1, [x29, #-24]
	bl	__ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorI6ResultEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	str	x0, [sp, #8]
	str	x1, [sp, #16]
	ldr	x8, [sp, #8]
	str	x8, [x9]
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-24]
	b	LBB246_3
LBB246_3:
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [x9]
	ldr	x10, [sp, #32]
	add	x8, x8, x10, lsl #5
	str	x8, [x9, #16]
	str	x8, [x9, #8]
	ldr	x8, [x9]
	ldur	x10, [x29, #-24]
	add	x8, x8, x10, lsl #5
	str	x8, [x9, #24]
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorI6ResultEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m ; -- Begin function _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorI6ResultEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m
	.globl	__ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorI6ResultEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m
	.weak_definition	__ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorI6ResultEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m
	.p2align	2
__ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorI6ResultEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m: ; @_ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorI6ResultEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m
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
	bl	__ZNSt3__19allocatorI6ResultE8allocateB8ne200100Em
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
	.private_extern	__ZNSt3__19allocatorI6ResultE8allocateB8ne200100Em ; -- Begin function _ZNSt3__19allocatorI6ResultE8allocateB8ne200100Em
	.globl	__ZNSt3__19allocatorI6ResultE8allocateB8ne200100Em
	.weak_definition	__ZNSt3__19allocatorI6ResultE8allocateB8ne200100Em
	.p2align	2
__ZNSt3__19allocatorI6ResultE8allocateB8ne200100Em: ; @_ZNSt3__19allocatorI6ResultE8allocateB8ne200100Em
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
	bl	__ZNSt3__116allocator_traitsINS_9allocatorI6ResultEEE8max_sizeB8ne200100IS3_Li0EEEmRKS3_
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	subs	x8, x8, x0
	b.ls	LBB248_2
	b	LBB248_1
LBB248_1:
	bl	__ZSt28__throw_bad_array_new_lengthB8ne200100v
LBB248_2:
	ldr	x0, [sp, #16]
	mov	x1, #8                          ; =0x8
	bl	__ZNSt3__117__libcpp_allocateB8ne200100I6ResultEEPT_NS_15__element_countEm
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__117__libcpp_allocateB8ne200100I6ResultEEPT_NS_15__element_countEm ; -- Begin function _ZNSt3__117__libcpp_allocateB8ne200100I6ResultEEPT_NS_15__element_countEm
	.globl	__ZNSt3__117__libcpp_allocateB8ne200100I6ResultEEPT_NS_15__element_countEm
	.weak_definition	__ZNSt3__117__libcpp_allocateB8ne200100I6ResultEEPT_NS_15__element_countEm
	.p2align	2
__ZNSt3__117__libcpp_allocateB8ne200100I6ResultEEPT_NS_15__element_countEm: ; @_ZNSt3__117__libcpp_allocateB8ne200100I6ResultEEPT_NS_15__element_countEm
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
	lsl	x8, x8, #5
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__121__libcpp_operator_newB8ne200100I6ResultEEPvm
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__121__libcpp_operator_newB8ne200100I6ResultEEPvm ; -- Begin function _ZNSt3__121__libcpp_operator_newB8ne200100I6ResultEEPvm
	.globl	__ZNSt3__121__libcpp_operator_newB8ne200100I6ResultEEPvm
	.weak_definition	__ZNSt3__121__libcpp_operator_newB8ne200100I6ResultEEPvm
	.p2align	2
__ZNSt3__121__libcpp_operator_newB8ne200100I6ResultEEPvm: ; @_ZNSt3__121__libcpp_operator_newB8ne200100I6ResultEEPvm
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
	.private_extern	__ZNSt3__134__uninitialized_allocator_relocateB8ne200100INS_9allocatorI6ResultEEPS2_EEvRT_T0_S7_S7_ ; -- Begin function _ZNSt3__134__uninitialized_allocator_relocateB8ne200100INS_9allocatorI6ResultEEPS2_EEvRT_T0_S7_S7_
	.globl	__ZNSt3__134__uninitialized_allocator_relocateB8ne200100INS_9allocatorI6ResultEEPS2_EEvRT_T0_S7_S7_
	.weak_definition	__ZNSt3__134__uninitialized_allocator_relocateB8ne200100INS_9allocatorI6ResultEEPS2_EEvRT_T0_S7_S7_
	.p2align	2
__ZNSt3__134__uninitialized_allocator_relocateB8ne200100INS_9allocatorI6ResultEEPS2_EEvRT_T0_S7_S7_: ; @_ZNSt3__134__uninitialized_allocator_relocateB8ne200100INS_9allocatorI6ResultEEPS2_EEvRT_T0_S7_S7_
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
	bl	__ZNSt3__112__to_addressB8ne200100I6ResultEEPT_S3_
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	__ZNSt3__112__to_addressB8ne200100I6ResultEEPT_S3_
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [sp, #24]
	ldur	x9, [x29, #-16]
	subs	x9, x8, x9
	mov	x8, #32                         ; =0x20
	sdiv	x9, x9, x8
	mul	x2, x8, x9
	bl	_memcpy
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__14swapB8ne200100IP6ResultEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_ ; -- Begin function _ZNSt3__14swapB8ne200100IP6ResultEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_
	.globl	__ZNSt3__14swapB8ne200100IP6ResultEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_
	.weak_definition	__ZNSt3__14swapB8ne200100IP6ResultEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_
	.p2align	2
__ZNSt3__14swapB8ne200100IP6ResultEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_: ; @_ZNSt3__14swapB8ne200100IP6ResultEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_
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
	.private_extern	__ZNKSt3__16vectorI6ResultNS_9allocatorIS1_EEE14__annotate_newB8ne200100Em ; -- Begin function _ZNKSt3__16vectorI6ResultNS_9allocatorIS1_EEE14__annotate_newB8ne200100Em
	.globl	__ZNKSt3__16vectorI6ResultNS_9allocatorIS1_EEE14__annotate_newB8ne200100Em
	.weak_definition	__ZNKSt3__16vectorI6ResultNS_9allocatorIS1_EEE14__annotate_newB8ne200100Em
	.p2align	2
__ZNKSt3__16vectorI6ResultNS_9allocatorIS1_EEE14__annotate_newB8ne200100Em: ; @_ZNKSt3__16vectorI6ResultNS_9allocatorIS1_EEE14__annotate_newB8ne200100Em
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
	.private_extern	__ZNSt3__114__split_bufferI6ResultRNS_9allocatorIS1_EEED2Ev ; -- Begin function _ZNSt3__114__split_bufferI6ResultRNS_9allocatorIS1_EEED2Ev
	.globl	__ZNSt3__114__split_bufferI6ResultRNS_9allocatorIS1_EEED2Ev
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferI6ResultRNS_9allocatorIS1_EEED2Ev
	.p2align	2
__ZNSt3__114__split_bufferI6ResultRNS_9allocatorIS1_EEED2Ev: ; @_ZNSt3__114__split_bufferI6ResultRNS_9allocatorIS1_EEED2Ev
Lfunc_begin25:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception25
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
	bl	__ZNSt3__114__split_bufferI6ResultRNS_9allocatorIS1_EEE5clearB8ne200100Ev
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x8, [x8]
	cbz	x8, LBB254_3
	b	LBB254_1
LBB254_1:
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x8, [x0, #32]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x8, [x0]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
Ltmp379:
	bl	__ZNKSt3__114__split_bufferI6ResultRNS_9allocatorIS1_EEE8capacityB8ne200100Ev
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp380:
	b	LBB254_2
LBB254_2:
	ldr	x2, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZNSt3__116allocator_traitsINS_9allocatorI6ResultEEE10deallocateB8ne200100ERS3_PS2_m
	b	LBB254_3
LBB254_3:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB254_4:
Ltmp381:
	bl	___clang_call_terminate
Lfunc_end25:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table254:
Lexception25:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase14-Lttbaseref14
Lttbaseref14:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end25-Lcst_begin25
Lcst_begin25:
	.uleb128 Ltmp379-Lfunc_begin25          ; >> Call Site 1 <<
	.uleb128 Ltmp380-Ltmp379                ;   Call between Ltmp379 and Ltmp380
	.uleb128 Ltmp381-Lfunc_begin25          ;     jumps to Ltmp381
	.byte	1                               ;   On action: 1
Lcst_end25:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase14:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__114__split_bufferI6ResultRNS_9allocatorIS1_EEE5clearB8ne200100Ev ; -- Begin function _ZNSt3__114__split_bufferI6ResultRNS_9allocatorIS1_EEE5clearB8ne200100Ev
	.globl	__ZNSt3__114__split_bufferI6ResultRNS_9allocatorIS1_EEE5clearB8ne200100Ev
	.weak_definition	__ZNSt3__114__split_bufferI6ResultRNS_9allocatorIS1_EEE5clearB8ne200100Ev
	.p2align	2
__ZNSt3__114__split_bufferI6ResultRNS_9allocatorIS1_EEE5clearB8ne200100Ev: ; @_ZNSt3__114__split_bufferI6ResultRNS_9allocatorIS1_EEE5clearB8ne200100Ev
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
	bl	__ZNSt3__114__split_bufferI6ResultRNS_9allocatorIS1_EEE17__destruct_at_endB8ne200100EPS1_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__114__split_bufferI6ResultRNS_9allocatorIS1_EEE8capacityB8ne200100Ev ; -- Begin function _ZNKSt3__114__split_bufferI6ResultRNS_9allocatorIS1_EEE8capacityB8ne200100Ev
	.globl	__ZNKSt3__114__split_bufferI6ResultRNS_9allocatorIS1_EEE8capacityB8ne200100Ev
	.weak_definition	__ZNKSt3__114__split_bufferI6ResultRNS_9allocatorIS1_EEE8capacityB8ne200100Ev
	.p2align	2
__ZNKSt3__114__split_bufferI6ResultRNS_9allocatorIS1_EEE8capacityB8ne200100Ev: ; @_ZNKSt3__114__split_bufferI6ResultRNS_9allocatorIS1_EEE8capacityB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	ldr	x8, [x9, #24]
	ldr	x9, [x9]
	subs	x8, x8, x9
	mov	x9, #32                         ; =0x20
	sdiv	x0, x8, x9
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferI6ResultRNS_9allocatorIS1_EEE17__destruct_at_endB8ne200100EPS1_ ; -- Begin function _ZNSt3__114__split_bufferI6ResultRNS_9allocatorIS1_EEE17__destruct_at_endB8ne200100EPS1_
	.globl	__ZNSt3__114__split_bufferI6ResultRNS_9allocatorIS1_EEE17__destruct_at_endB8ne200100EPS1_
	.weak_definition	__ZNSt3__114__split_bufferI6ResultRNS_9allocatorIS1_EEE17__destruct_at_endB8ne200100EPS1_
	.p2align	2
__ZNSt3__114__split_bufferI6ResultRNS_9allocatorIS1_EEE17__destruct_at_endB8ne200100EPS1_: ; @_ZNSt3__114__split_bufferI6ResultRNS_9allocatorIS1_EEE17__destruct_at_endB8ne200100EPS1_
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
	bl	__ZNSt3__114__split_bufferI6ResultRNS_9allocatorIS1_EEE17__destruct_at_endB8ne200100EPS1_NS_17integral_constantIbLb0EEE
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferI6ResultRNS_9allocatorIS1_EEE17__destruct_at_endB8ne200100EPS1_NS_17integral_constantIbLb0EEE ; -- Begin function _ZNSt3__114__split_bufferI6ResultRNS_9allocatorIS1_EEE17__destruct_at_endB8ne200100EPS1_NS_17integral_constantIbLb0EEE
	.globl	__ZNSt3__114__split_bufferI6ResultRNS_9allocatorIS1_EEE17__destruct_at_endB8ne200100EPS1_NS_17integral_constantIbLb0EEE
	.weak_definition	__ZNSt3__114__split_bufferI6ResultRNS_9allocatorIS1_EEE17__destruct_at_endB8ne200100EPS1_NS_17integral_constantIbLb0EEE
	.p2align	2
__ZNSt3__114__split_bufferI6ResultRNS_9allocatorIS1_EEE17__destruct_at_endB8ne200100EPS1_NS_17integral_constantIbLb0EEE: ; @_ZNSt3__114__split_bufferI6ResultRNS_9allocatorIS1_EEE17__destruct_at_endB8ne200100EPS1_NS_17integral_constantIbLb0EEE
Lfunc_begin26:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception26
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
	b	LBB258_1
LBB258_1:                               ; =>This Inner Loop Header: Depth=1
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #24]
	ldr	x9, [x9, #16]
	subs	x8, x8, x9
	b.eq	LBB258_4
	b	LBB258_2
LBB258_2:                               ;   in Loop: Header=BB258_1 Depth=1
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x9, [x8, #32]
	str	x9, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x9, [x8, #16]
	subs	x0, x9, #32
	str	x0, [x8, #16]
	bl	__ZNSt3__112__to_addressB8ne200100I6ResultEEPT_S3_
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
Ltmp383:
	bl	__ZNSt3__116allocator_traitsINS_9allocatorI6ResultEEE7destroyB8ne200100IS2_Li0EEEvRS3_PT_
Ltmp384:
	b	LBB258_3
LBB258_3:                               ;   in Loop: Header=BB258_1 Depth=1
	b	LBB258_1
LBB258_4:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB258_5:
Ltmp385:
	bl	___clang_call_terminate
Lfunc_end26:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table258:
Lexception26:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase15-Lttbaseref15
Lttbaseref15:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end26-Lcst_begin26
Lcst_begin26:
	.uleb128 Ltmp383-Lfunc_begin26          ; >> Call Site 1 <<
	.uleb128 Ltmp384-Ltmp383                ;   Call between Ltmp383 and Ltmp384
	.uleb128 Ltmp385-Lfunc_begin26          ;     jumps to Ltmp385
	.byte	1                               ;   On action: 1
Lcst_end26:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase15:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
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
	.private_extern	__ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_ ; -- Begin function _ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
	.globl	__ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
	.weak_definition	__ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
	.p2align	2
__ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_: ; @_ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
Lfunc_begin27:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception27
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
	tbz	w0, #0, LBB266_25
	b	LBB266_1
LBB266_1:
	ldur	x0, [x29, #-16]
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5clearB8ne200100Ev
	stur	xzr, [x29, #-40]
	b	LBB266_2
LBB266_2:                               ; =>This Inner Loop Header: Depth=1
	b	LBB266_3
LBB266_3:                               ;   in Loop: Header=BB266_2 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp388:
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne200100Ev
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
Ltmp389:
	b	LBB266_4
LBB266_4:                               ;   in Loop: Header=BB266_2 Depth=1
Ltmp390:
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6sbumpcB8ne200100Ev
	str	w0, [sp, #28]                   ; 4-byte Folded Spill
Ltmp391:
	b	LBB266_5
LBB266_5:                               ;   in Loop: Header=BB266_2 Depth=1
	ldr	w8, [sp, #28]                   ; 4-byte Folded Reload
	stur	w8, [x29, #-44]
	ldur	w8, [x29, #-44]
	str	w8, [sp, #24]                   ; 4-byte Folded Spill
	bl	__ZNSt3__111char_traitsIcE3eofB8ne200100Ev
	mov	x1, x0
	ldr	w0, [sp, #24]                   ; 4-byte Folded Reload
	bl	__ZNSt3__111char_traitsIcE11eq_int_typeB8ne200100Eii
	tbz	w0, #0, LBB266_12
	b	LBB266_6
LBB266_6:
	ldur	w8, [x29, #-24]
	orr	w8, w8, #0x2
	stur	w8, [x29, #-24]
	b	LBB266_18
LBB266_7:
Ltmp394:
	str	x0, [sp, #56]
	mov	x8, x1
	str	w8, [sp, #52]
	b	LBB266_8
LBB266_8:
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
Ltmp395:
	bl	__ZNSt3__18ios_base18__setstate_nothrowB8ne200100Ej
Ltmp396:
	b	LBB266_9
LBB266_9:
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp397:
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE10exceptionsB8ne200100Ev
	str	w0, [sp, #20]                   ; 4-byte Folded Spill
Ltmp398:
	b	LBB266_10
LBB266_10:
	ldr	w8, [sp, #20]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB266_22
	b	LBB266_11
LBB266_11:
Ltmp399:
	bl	___cxa_rethrow
Ltmp400:
	b	LBB266_28
LBB266_12:                              ;   in Loop: Header=BB266_2 Depth=1
	ldur	x8, [x29, #-40]
	add	x8, x8, #1
	stur	x8, [x29, #-40]
	ldur	w0, [x29, #-44]
	bl	__ZNSt3__111char_traitsIcE12to_char_typeB8ne200100Ei
	strb	w0, [sp, #51]
	ldrsb	w0, [sp, #51]
	ldursb	w1, [x29, #-17]
	bl	__ZNSt3__111char_traitsIcE2eqEcc
	tbz	w0, #0, LBB266_14
	b	LBB266_13
LBB266_13:
	b	LBB266_18
LBB266_14:                              ;   in Loop: Header=BB266_2 Depth=1
	ldur	x0, [x29, #-16]
	ldrsb	w1, [sp, #51]
Ltmp392:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc
Ltmp393:
	b	LBB266_15
LBB266_15:                              ;   in Loop: Header=BB266_2 Depth=1
	ldur	x0, [x29, #-16]
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB8ne200100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8max_sizeB8ne200100Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	subs	x8, x0, x8
	b.ne	LBB266_17
	b	LBB266_16
LBB266_16:
	ldur	w8, [x29, #-24]
	orr	w8, w8, #0x4
	stur	w8, [x29, #-24]
	b	LBB266_18
LBB266_17:                              ;   in Loop: Header=BB266_2 Depth=1
	b	LBB266_2
LBB266_18:
	ldur	x8, [x29, #-40]
	cbnz	x8, LBB266_20
	b	LBB266_19
LBB266_19:
	ldur	w8, [x29, #-24]
	orr	w8, w8, #0x4
	stur	w8, [x29, #-24]
	b	LBB266_20
LBB266_20:
	b	LBB266_23
LBB266_21:
Ltmp401:
	str	x0, [sp, #56]
	mov	x8, x1
	str	w8, [sp, #52]
Ltmp402:
	bl	___cxa_end_catch
Ltmp403:
	b	LBB266_24
LBB266_22:
	bl	___cxa_end_catch
	b	LBB266_23
LBB266_23:
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
	ldur	w1, [x29, #-24]
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne200100Ej
	b	LBB266_25
LBB266_24:
	b	LBB266_26
LBB266_25:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
LBB266_26:
	ldr	x0, [sp, #56]
	bl	__Unwind_Resume
LBB266_27:
Ltmp404:
	bl	___clang_call_terminate
LBB266_28:
	brk	#0x1
Lfunc_end27:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table266:
Lexception27:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase16-Lttbaseref16
Lttbaseref16:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end27-Lcst_begin27
Lcst_begin27:
	.uleb128 Lfunc_begin27-Lfunc_begin27    ; >> Call Site 1 <<
	.uleb128 Ltmp388-Lfunc_begin27          ;   Call between Lfunc_begin27 and Ltmp388
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp388-Lfunc_begin27          ; >> Call Site 2 <<
	.uleb128 Ltmp391-Ltmp388                ;   Call between Ltmp388 and Ltmp391
	.uleb128 Ltmp394-Lfunc_begin27          ;     jumps to Ltmp394
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp391-Lfunc_begin27          ; >> Call Site 3 <<
	.uleb128 Ltmp395-Ltmp391                ;   Call between Ltmp391 and Ltmp395
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp395-Lfunc_begin27          ; >> Call Site 4 <<
	.uleb128 Ltmp400-Ltmp395                ;   Call between Ltmp395 and Ltmp400
	.uleb128 Ltmp401-Lfunc_begin27          ;     jumps to Ltmp401
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp392-Lfunc_begin27          ; >> Call Site 5 <<
	.uleb128 Ltmp393-Ltmp392                ;   Call between Ltmp392 and Ltmp393
	.uleb128 Ltmp394-Lfunc_begin27          ;     jumps to Ltmp394
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp402-Lfunc_begin27          ; >> Call Site 6 <<
	.uleb128 Ltmp403-Ltmp402                ;   Call between Ltmp402 and Ltmp403
	.uleb128 Ltmp404-Lfunc_begin27          ;     jumps to Ltmp404
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp403-Lfunc_begin27          ; >> Call Site 7 <<
	.uleb128 Lfunc_end27-Ltmp403            ;   Call between Ltmp403 and Lfunc_end27
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end27:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase16:
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
	tbz	w0, #0, LBB268_2
	b	LBB268_1
LBB268_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne200100Ev
	add	x1, sp, #15
	strb	wzr, [sp, #15]
	bl	__ZNSt3__111char_traitsIcE6assignB8ne200100ERcRKc
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	mov	x1, #0                          ; =0x0
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeB8ne200100Em
	b	LBB268_3
LBB268_2:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne200100Ev
	add	x1, sp, #14
	strb	wzr, [sp, #14]
	bl	__ZNSt3__111char_traitsIcE6assignB8ne200100ERcRKc
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	mov	x1, #0                          ; =0x0
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeB8ne200100Em
	b	LBB268_3
LBB268_3:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x1, [sp, #16]
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_shrinkB8ne200100Em
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
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
	b.ne	LBB269_2
	b	LBB269_1
LBB269_1:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [x0]
	ldr	x8, [x8, #80]
	blr	x8
	stur	w0, [x29, #-4]
	b	LBB269_3
LBB269_2:
	ldr	x10, [sp, #8]                   ; 8-byte Folded Reload
	ldr	x8, [x10, #24]
	add	x9, x8, #1
	str	x9, [x10, #24]
	ldrsb	w0, [x8]
	bl	__ZNSt3__111char_traitsIcE11to_int_typeB8ne200100Ec
	stur	w0, [x29, #-4]
	b	LBB269_3
LBB269_3:
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
	tbz	w0, #0, LBB273_2
	b	LBB273_1
LBB273_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeB8ne200100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB273_3
LBB273_2:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB8ne200100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB273_3
LBB273_3:
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
	b.hi	LBB274_2
	b	LBB274_1
LBB274_1:
	ldr	x8, [sp, #24]
	subs	x8, x8, #8
	stur	x8, [x29, #-8]
	b	LBB274_6
LBB274_2:
	strb	wzr, [sp, #23]
	ldrb	w8, [sp, #23]
	tbz	w8, #0, LBB274_4
	b	LBB274_3
LBB274_3:
	ldr	x8, [sp, #24]
	subs	x8, x8, #8
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB274_5
LBB274_4:
	ldr	x8, [sp, #24]
	mov	x9, #2                          ; =0x2
	udiv	x8, x8, x9
	subs	x8, x8, #8
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB274_5
LBB274_5:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	stur	x8, [x29, #-8]
	b	LBB274_6
LBB274_6:
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
	cbz	x8, LBB275_2
	b	LBB275_1
LBB275_1:
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	ldr	w10, [sp, #20]
	ldr	w8, [x9, #32]
	orr	w8, w8, w10
	str	w8, [x9, #32]
	b	LBB275_3
LBB275_2:
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	ldr	w8, [sp, #20]
	orr	w10, w8, #0x1
	ldr	w8, [x9, #32]
	orr	w8, w8, w10
	str	w8, [x9, #32]
	b	LBB275_3
LBB275_3:
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
	b.ls	LBB294_2
	b	LBB294_1
LBB294_1:
	mov	x8, #-1                         ; =0xffffffffffffffff
	stur	x8, [x29, #-8]
	b	LBB294_7
LBB294_2:
	ldr	x8, [sp, #16]
	cbnz	x8, LBB294_4
	b	LBB294_3
LBB294_3:
	ldr	x8, [sp, #24]
	stur	x8, [x29, #-8]
	b	LBB294_7
LBB294_4:
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
	b.ne	LBB294_6
	b	LBB294_5
LBB294_5:
	mov	x8, #-1                         ; =0xffffffffffffffff
	stur	x8, [x29, #-8]
	b	LBB294_7
LBB294_6:
	ldr	x8, [sp, #8]
	ldur	x9, [x29, #-16]
	subs	x8, x8, x9
	stur	x8, [x29, #-8]
	b	LBB294_7
LBB294_7:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
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
	cbnz	x8, LBB295_2
	b	LBB295_1
LBB295_1:
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB295_13
LBB295_2:
	ldur	x8, [x29, #-24]
	ldur	x9, [x29, #-16]
	subs	x8, x8, x9
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #16]
	subs	x8, x8, x9
	b.ge	LBB295_4
	b	LBB295_3
LBB295_3:
	ldur	x8, [x29, #-24]
	stur	x8, [x29, #-8]
	b	LBB295_13
LBB295_4:
	ldr	x8, [sp, #32]
	ldrb	w8, [x8]
	strb	w8, [sp, #7]
	b	LBB295_5
LBB295_5:                               ; =>This Inner Loop Header: Depth=1
	b	LBB295_6
LBB295_6:                               ;   in Loop: Header=BB295_5 Depth=1
	ldur	x8, [x29, #-24]
	ldur	x9, [x29, #-16]
	subs	x8, x8, x9
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #16]
	subs	x8, x8, x9
	b.ge	LBB295_8
	b	LBB295_7
LBB295_7:
	ldur	x8, [x29, #-24]
	stur	x8, [x29, #-8]
	b	LBB295_13
LBB295_8:                               ;   in Loop: Header=BB295_5 Depth=1
	ldur	x0, [x29, #-16]
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #16]
	subs	x8, x8, x9
	add	x1, x8, #1
	add	x2, sp, #7
	bl	__ZNSt3__111char_traitsIcE4findB8ne200100EPKcmRS2_
	stur	x0, [x29, #-16]
	ldur	x8, [x29, #-16]
	cbnz	x8, LBB295_10
	b	LBB295_9
LBB295_9:
	ldur	x8, [x29, #-24]
	stur	x8, [x29, #-8]
	b	LBB295_13
LBB295_10:                              ;   in Loop: Header=BB295_5 Depth=1
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #32]
	ldr	x2, [sp, #16]
	bl	__ZNSt3__111char_traitsIcE7compareB8ne200100EPKcS3_m
	cbnz	w0, LBB295_12
	b	LBB295_11
LBB295_11:
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB295_13
LBB295_12:                              ;   in Loop: Header=BB295_5 Depth=1
	ldur	x8, [x29, #-16]
	add	x8, x8, #1
	stur	x8, [x29, #-16]
	b	LBB295_5
LBB295_13:
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
Lfunc_begin28:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception28
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
	cbnz	x8, LBB296_2
	b	LBB296_1
LBB296_1:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	LBB296_4
LBB296_2:
	ldur	x0, [x29, #-16]
	ldr	x8, [sp, #16]
	ldrsb	w1, [x8]
	ldr	x2, [sp, #24]
Ltmp422:
	bl	__ZNSt3__118__constexpr_memchrB8ne200100IKccEEPT_S3_T0_m
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp423:
	b	LBB296_3
LBB296_3:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	stur	x8, [x29, #-8]
	b	LBB296_4
LBB296_4:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB296_5:
Ltmp424:
	bl	___clang_call_terminate
Lfunc_end28:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table296:
Lexception28:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase17-Lttbaseref17
Lttbaseref17:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end28-Lcst_begin28
Lcst_begin28:
	.uleb128 Ltmp422-Lfunc_begin28          ; >> Call Site 1 <<
	.uleb128 Ltmp423-Ltmp422                ;   Call between Ltmp422 and Ltmp423
	.uleb128 Ltmp424-Lfunc_begin28          ;     jumps to Ltmp424
	.byte	1                               ;   On action: 1
Lcst_end28:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase17:
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
	tbz	w0, #0, LBB299_2
	b	LBB299_1
LBB299_1:
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
	b	LBB299_2
LBB299_2:
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
	tbz	w8, #0, LBB299_5
	b	LBB299_3
LBB299_3:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	b.eq	LBB299_5
	b	LBB299_4
LBB299_4:
	ldur	x0, [x29, #-24]
	ldr	x1, [sp, #32]
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_shrinkB8ne200100Em
	b	LBB299_6
LBB299_5:
	ldur	x0, [x29, #-24]
	mov	x1, #0                          ; =0x0
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB8ne200100Em
	b	LBB299_6
LBB299_6:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne200100Ev
	tbnz	w0, #0, LBB299_9
	b	LBB299_7
LBB299_7:
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-24]
	subs	x8, x8, x9
	b.eq	LBB299_9
	b	LBB299_8
LBB299_8:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB8ne200100Ev
	mov	x1, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB8ne200100Em
	b	LBB299_9
LBB299_9:
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
	tbz	w0, #0, LBB308_2
	b	LBB308_1
LBB308_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne200100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB308_3
LBB308_2:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne200100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB308_3
LBB308_3:
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
	b.ls	LBB310_2
	b	LBB310_1
LBB310_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #16]
	subs	x1, x8, x9
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__annotate_increaseB8ne200100Em
	b	LBB310_2
LBB310_2:
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
	b.ls	LBB310_4
	b	LBB310_3
LBB310_3:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x1, [sp, #16]
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_shrinkB8ne200100Em
	b	LBB310_4
LBB310_4:
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
	tbz	w0, #0, LBB313_2
	b	LBB313_1
LBB313_1:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x1, [sp, #16]
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeB8ne200100Em
	b	LBB313_3
LBB313_2:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x1, [sp, #16]
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeB8ne200100Em
	b	LBB313_3
LBB313_3:
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
	.private_extern	__ZNSt3__16vectorIxNS_9allocatorIxEEE11__make_iterB8ne200100EPx ; -- Begin function _ZNSt3__16vectorIxNS_9allocatorIxEEE11__make_iterB8ne200100EPx
	.globl	__ZNSt3__16vectorIxNS_9allocatorIxEEE11__make_iterB8ne200100EPx
	.weak_definition	__ZNSt3__16vectorIxNS_9allocatorIxEEE11__make_iterB8ne200100EPx
	.p2align	2
__ZNSt3__16vectorIxNS_9allocatorIxEEE11__make_iterB8ne200100EPx: ; @_ZNSt3__16vectorIxNS_9allocatorIxEEE11__make_iterB8ne200100EPx
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
	bl	__ZNSt3__111__wrap_iterIPxEC1B8ne200100ES1_
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16vectorIxNS_9allocatorIxEEE26__add_alignment_assumptionB8ne200100IPxLi0EEES5_T_ ; -- Begin function _ZNSt3__16vectorIxNS_9allocatorIxEEE26__add_alignment_assumptionB8ne200100IPxLi0EEES5_T_
	.weak_definition	__ZNSt3__16vectorIxNS_9allocatorIxEEE26__add_alignment_assumptionB8ne200100IPxLi0EEES5_T_
	.p2align	2
__ZNSt3__16vectorIxNS_9allocatorIxEEE26__add_alignment_assumptionB8ne200100IPxLi0EEES5_T_: ; @_ZNSt3__16vectorIxNS_9allocatorIxEEE26__add_alignment_assumptionB8ne200100IPxLi0EEES5_T_
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
	.private_extern	__ZNSt3__111__wrap_iterIPxEC1B8ne200100ES1_ ; -- Begin function _ZNSt3__111__wrap_iterIPxEC1B8ne200100ES1_
	.globl	__ZNSt3__111__wrap_iterIPxEC1B8ne200100ES1_
	.weak_def_can_be_hidden	__ZNSt3__111__wrap_iterIPxEC1B8ne200100ES1_
	.p2align	2
__ZNSt3__111__wrap_iterIPxEC1B8ne200100ES1_: ; @_ZNSt3__111__wrap_iterIPxEC1B8ne200100ES1_
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
	bl	__ZNSt3__111__wrap_iterIPxEC2B8ne200100ES1_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__111__wrap_iterIPxEC2B8ne200100ES1_ ; -- Begin function _ZNSt3__111__wrap_iterIPxEC2B8ne200100ES1_
	.globl	__ZNSt3__111__wrap_iterIPxEC2B8ne200100ES1_
	.weak_def_can_be_hidden	__ZNSt3__111__wrap_iterIPxEC2B8ne200100ES1_
	.p2align	2
__ZNSt3__111__wrap_iterIPxEC2B8ne200100ES1_: ; @_ZNSt3__111__wrap_iterIPxEC2B8ne200100ES1_
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
	.p2align	2                               ; -- Begin function _ZZ4mainENK3$_0clEx
__ZZ4mainENK3$_0clEx:                   ; @"_ZZ4mainENK3$_0clEx"
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
	ldr	x9, [x8, #8]
	ldr	x0, [x9]
	ldr	x1, [sp, #16]
	ldr	x8, [x8, #16]
	ldr	x2, [x8]
	bl	__ZL17bench_classic_modxxx
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [x8]
	str	x0, [x8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
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
	.p2align	2                               ; -- Begin function _ZL17bench_classic_modxxx
__ZL17bench_classic_modxxx:             ; @_ZL17bench_classic_modxxx
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, #40]
	str	x1, [sp, #32]
	str	x2, [sp, #24]
	str	xzr, [sp, #16]
	str	xzr, [sp, #8]
	b	LBB323_1
LBB323_1:                               ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #32]
	subs	x8, x8, x9
	b.ge	LBB323_4
	b	LBB323_2
LBB323_2:                               ;   in Loop: Header=BB323_1 Depth=1
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #24]
	add	x8, x8, x9
	ldr	x10, [sp, #40]
	sdiv	x9, x8, x10
	mul	x9, x9, x10
	subs	x8, x8, x9
	str	x8, [sp, #16]
	b	LBB323_3
LBB323_3:                               ;   in Loop: Header=BB323_1 Depth=1
	ldr	x8, [sp, #8]
	add	x8, x8, #1
	str	x8, [sp, #8]
	b	LBB323_1
LBB323_4:
	ldr	x0, [sp, #16]
	add	sp, sp, #48
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
	.globl	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE12emplace_backIJS1_EEEvDpOT_ ; -- Begin function _ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE12emplace_backIJS1_EEEvDpOT_
	.weak_definition	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE12emplace_backIJS1_EEEvDpOT_
	.p2align	2
__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE12emplace_backIJS1_EEEvDpOT_: ; @_ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE12emplace_backIJS1_EEEvDpOT_
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
	b.hs	LBB334_2
	b	LBB334_1
LBB334_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x1, [sp, #16]
	bl	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE22__construct_one_at_endB8ne200100IJS1_EEEvDpOT_
	ldr	x8, [sp, #8]
	add	x8, x8, #32
	str	x8, [sp, #8]
	b	LBB334_3
LBB334_2:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x1, [sp, #16]
	bl	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE24__emplace_back_slow_pathIJS1_EEEPS1_DpOT_
	str	x0, [sp, #8]
	b	LBB334_3
LBB334_3:
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #8]
	str	x8, [x9, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE22__construct_one_at_endB8ne200100IJS1_EEEvDpOT_ ; -- Begin function _ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE22__construct_one_at_endB8ne200100IJS1_EEEvDpOT_
	.weak_definition	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE22__construct_one_at_endB8ne200100IJS1_EEEvDpOT_
	.p2align	2
__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE22__construct_one_at_endB8ne200100IJS1_EEEvDpOT_: ; @_ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE22__construct_one_at_endB8ne200100IJS1_EEEvDpOT_
Lfunc_begin29:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception29
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
	bl	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE21_ConstructTransactionC1B8ne200100ERS4_m
	ldr	x0, [sp, #32]
	bl	__ZNSt3__112__to_addressB8ne200100I6ResultEEPT_S3_
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	mov	x1, x0
	ldur	x2, [x29, #-16]
Ltmp439:
	add	x0, x8, #16
	bl	__ZNSt3__116allocator_traitsINS_9allocatorI6ResultEEE9constructB8ne200100IS2_JS2_ELi0EEEvRS3_PT_DpOT0_
Ltmp440:
	b	LBB335_1
LBB335_1:
	add	x0, sp, #24
	ldr	x8, [sp, #32]
	add	x8, x8, #32
	str	x8, [sp, #32]
	bl	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE21_ConstructTransactionD1B8ne200100Ev
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB335_2:
Ltmp441:
	str	x0, [sp, #16]
	mov	x8, x1
	str	w8, [sp, #12]
	add	x0, sp, #24
	bl	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE21_ConstructTransactionD1B8ne200100Ev
	b	LBB335_3
LBB335_3:
	ldr	x0, [sp, #16]
	bl	__Unwind_Resume
Lfunc_end29:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table335:
Lexception29:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end29-Lcst_begin29
Lcst_begin29:
	.uleb128 Lfunc_begin29-Lfunc_begin29    ; >> Call Site 1 <<
	.uleb128 Ltmp439-Lfunc_begin29          ;   Call between Lfunc_begin29 and Ltmp439
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp439-Lfunc_begin29          ; >> Call Site 2 <<
	.uleb128 Ltmp440-Ltmp439                ;   Call between Ltmp439 and Ltmp440
	.uleb128 Ltmp441-Lfunc_begin29          ;     jumps to Ltmp441
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp440-Lfunc_begin29          ; >> Call Site 3 <<
	.uleb128 Lfunc_end29-Ltmp440            ;   Call between Ltmp440 and Lfunc_end29
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end29:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE24__emplace_back_slow_pathIJS1_EEEPS1_DpOT_ ; -- Begin function _ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE24__emplace_back_slow_pathIJS1_EEEPS1_DpOT_
	.weak_definition	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE24__emplace_back_slow_pathIJS1_EEEPS1_DpOT_
	.p2align	2
__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE24__emplace_back_slow_pathIJS1_EEEPS1_DpOT_: ; @_ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE24__emplace_back_slow_pathIJS1_EEEPS1_DpOT_
Lfunc_begin30:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception30
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
	bl	__ZNKSt3__16vectorI6ResultNS_9allocatorIS1_EEE4sizeB8ne200100Ev
	mov	x8, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	add	x1, x8, #1
	bl	__ZNKSt3__16vectorI6ResultNS_9allocatorIS1_EEE11__recommendB8ne200100Em
	mov	x1, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	str	x1, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorI6ResultNS_9allocatorIS1_EEE4sizeB8ne200100Ev
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	mov	x2, x0
	add	x0, sp, #40
	add	x3, x8, #16
	bl	__ZNSt3__114__split_bufferI6ResultRNS_9allocatorIS1_EEEC1EmmS4_
	ldr	x0, [sp, #56]
	bl	__ZNSt3__112__to_addressB8ne200100I6ResultEEPT_S3_
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	mov	x1, x0
	ldur	x2, [x29, #-16]
Ltmp442:
	add	x0, x8, #16
	bl	__ZNSt3__116allocator_traitsINS_9allocatorI6ResultEEE9constructB8ne200100IS2_JS2_ELi0EEEvRS3_PT_DpOT0_
Ltmp443:
	b	LBB336_1
LBB336_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	add	x1, sp, #40
	ldr	x8, [sp, #56]
	add	x8, x8, #32
	str	x8, [sp, #56]
Ltmp444:
	bl	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS1_RS3_EE
Ltmp445:
	b	LBB336_2
LBB336_2:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x8, [x8, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	add	x0, sp, #40
	bl	__ZNSt3__114__split_bufferI6ResultRNS_9allocatorIS1_EEED1Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB336_3:
Ltmp446:
	str	x0, [sp, #32]
	mov	x8, x1
	str	w8, [sp, #28]
	add	x0, sp, #40
	bl	__ZNSt3__114__split_bufferI6ResultRNS_9allocatorIS1_EEED1Ev
	b	LBB336_4
LBB336_4:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
Lfunc_end30:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table336:
Lexception30:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end30-Lcst_begin30
Lcst_begin30:
	.uleb128 Lfunc_begin30-Lfunc_begin30    ; >> Call Site 1 <<
	.uleb128 Ltmp442-Lfunc_begin30          ;   Call between Lfunc_begin30 and Ltmp442
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp442-Lfunc_begin30          ; >> Call Site 2 <<
	.uleb128 Ltmp445-Ltmp442                ;   Call between Ltmp442 and Ltmp445
	.uleb128 Ltmp446-Lfunc_begin30          ;     jumps to Ltmp446
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp445-Lfunc_begin30          ; >> Call Site 3 <<
	.uleb128 Lfunc_end30-Ltmp445            ;   Call between Ltmp445 and Lfunc_end30
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end30:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE21_ConstructTransactionC1B8ne200100ERS4_m ; -- Begin function _ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE21_ConstructTransactionC1B8ne200100ERS4_m
	.globl	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE21_ConstructTransactionC1B8ne200100ERS4_m
	.weak_def_can_be_hidden	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE21_ConstructTransactionC1B8ne200100ERS4_m
	.p2align	2
__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE21_ConstructTransactionC1B8ne200100ERS4_m: ; @_ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE21_ConstructTransactionC1B8ne200100ERS4_m
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
	bl	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE21_ConstructTransactionC2B8ne200100ERS4_m
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorI6ResultEEE9constructB8ne200100IS2_JS2_ELi0EEEvRS3_PT_DpOT0_ ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorI6ResultEEE9constructB8ne200100IS2_JS2_ELi0EEEvRS3_PT_DpOT0_
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorI6ResultEEE9constructB8ne200100IS2_JS2_ELi0EEEvRS3_PT_DpOT0_
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorI6ResultEEE9constructB8ne200100IS2_JS2_ELi0EEEvRS3_PT_DpOT0_: ; @_ZNSt3__116allocator_traitsINS_9allocatorI6ResultEEE9constructB8ne200100IS2_JS2_ELi0EEEvRS3_PT_DpOT0_
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
	bl	__ZNSt3__19allocatorI6ResultE9constructB8ne200100IS1_JS1_EEEvPT_DpOT0_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE21_ConstructTransactionD1B8ne200100Ev ; -- Begin function _ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE21_ConstructTransactionD1B8ne200100Ev
	.globl	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE21_ConstructTransactionD1B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE21_ConstructTransactionD1B8ne200100Ev
	.p2align	2
__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE21_ConstructTransactionD1B8ne200100Ev: ; @_ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE21_ConstructTransactionD1B8ne200100Ev
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
	bl	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE21_ConstructTransactionD2B8ne200100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE21_ConstructTransactionC2B8ne200100ERS4_m ; -- Begin function _ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE21_ConstructTransactionC2B8ne200100ERS4_m
	.globl	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE21_ConstructTransactionC2B8ne200100ERS4_m
	.weak_def_can_be_hidden	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE21_ConstructTransactionC2B8ne200100ERS4_m
	.p2align	2
__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE21_ConstructTransactionC2B8ne200100ERS4_m: ; @_ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE21_ConstructTransactionC2B8ne200100ERS4_m
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
	add	x8, x8, x9, lsl #5
	str	x8, [x0, #16]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__19allocatorI6ResultE9constructB8ne200100IS1_JS1_EEEvPT_DpOT0_ ; -- Begin function _ZNSt3__19allocatorI6ResultE9constructB8ne200100IS1_JS1_EEEvPT_DpOT0_
	.weak_definition	__ZNSt3__19allocatorI6ResultE9constructB8ne200100IS1_JS1_EEEvPT_DpOT0_
	.p2align	2
__ZNSt3__19allocatorI6ResultE9constructB8ne200100IS1_JS1_EEEvPT_DpOT0_: ; @_ZNSt3__19allocatorI6ResultE9constructB8ne200100IS1_JS1_EEEvPT_DpOT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #8]
	ldr	q0, [x9]
	str	q0, [x8]
	ldr	q0, [x9, #16]
	str	q0, [x8, #16]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE21_ConstructTransactionD2B8ne200100Ev ; -- Begin function _ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE21_ConstructTransactionD2B8ne200100Ev
	.globl	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE21_ConstructTransactionD2B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE21_ConstructTransactionD2B8ne200100Ev
	.p2align	2
__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE21_ConstructTransactionD2B8ne200100Ev: ; @_ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE21_ConstructTransactionD2B8ne200100Ev
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
	.private_extern	__ZNKSt3__16vectorI6ResultNS_9allocatorIS1_EEE11__recommendB8ne200100Em ; -- Begin function _ZNKSt3__16vectorI6ResultNS_9allocatorIS1_EEE11__recommendB8ne200100Em
	.globl	__ZNKSt3__16vectorI6ResultNS_9allocatorIS1_EEE11__recommendB8ne200100Em
	.weak_definition	__ZNKSt3__16vectorI6ResultNS_9allocatorIS1_EEE11__recommendB8ne200100Em
	.p2align	2
__ZNKSt3__16vectorI6ResultNS_9allocatorIS1_EEE11__recommendB8ne200100Em: ; @_ZNKSt3__16vectorI6ResultNS_9allocatorIS1_EEE11__recommendB8ne200100Em
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
	bl	__ZNKSt3__16vectorI6ResultNS_9allocatorIS1_EEE8max_sizeB8ne200100Ev
	str	x0, [sp, #32]
	ldur	x8, [x29, #-24]
	ldr	x9, [sp, #32]
	subs	x8, x8, x9
	b.ls	LBB343_2
	b	LBB343_1
LBB343_1:
	bl	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev
LBB343_2:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNKSt3__16vectorI6ResultNS_9allocatorIS1_EEE8capacityB8ne200100Ev
	str	x0, [sp, #24]
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #32]
	mov	x10, #2                         ; =0x2
	udiv	x9, x9, x10
	subs	x8, x8, x9
	b.lo	LBB343_4
	b	LBB343_3
LBB343_3:
	ldr	x8, [sp, #32]
	stur	x8, [x29, #-8]
	b	LBB343_5
LBB343_4:
	ldr	x9, [sp, #24]
	mov	x8, #2                          ; =0x2
	mul	x8, x8, x9
	add	x0, sp, #16
	str	x8, [sp, #16]
	sub	x1, x29, #24
	bl	__ZNSt3__13maxB8ne200100ImEERKT_S3_S3_
	ldr	x8, [x0]
	stur	x8, [x29, #-8]
	b	LBB343_5
LBB343_5:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZZ4mainENK3$_1clEx
__ZZ4mainENK3$_1clEx:                   ; @"_ZZ4mainENK3$_1clEx"
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
	ldr	x9, [x8, #8]
	ldr	x0, [x9]
	ldr	x1, [sp, #16]
	ldr	x8, [x8, #16]
	ldr	x2, [x8]
	bl	__ZL15bench_reist_symxxx
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [x8]
	str	x0, [x8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZL15bench_reist_symxxx
__ZL15bench_reist_symxxx:               ; @_ZL15bench_reist_symxxx
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, #40]
	str	x1, [sp, #32]
	str	x2, [sp, #24]
	ldr	x8, [sp, #40]
	mov	x9, #2                          ; =0x2
	sdiv	x8, x8, x9
	str	x8, [sp, #16]
	str	xzr, [sp, #8]
	str	xzr, [sp]
	b	LBB345_1
LBB345_1:                               ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp]
	ldr	x9, [sp, #32]
	subs	x8, x8, x9
	b.ge	LBB345_9
	b	LBB345_2
LBB345_2:                               ;   in Loop: Header=BB345_1 Depth=1
	ldr	x9, [sp, #24]
	ldr	x8, [sp, #8]
	add	x8, x8, x9
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #16]
	subs	x8, x8, x9
	b.le	LBB345_4
	b	LBB345_3
LBB345_3:                               ;   in Loop: Header=BB345_1 Depth=1
	ldr	x9, [sp, #40]
	ldr	x8, [sp, #8]
	subs	x8, x8, x9
	str	x8, [sp, #8]
	b	LBB345_7
LBB345_4:                               ;   in Loop: Header=BB345_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x10, [sp, #16]
	mov	x9, #0                          ; =0x0
	subs	x9, x9, x10
	subs	x8, x8, x9
	b.gt	LBB345_6
	b	LBB345_5
LBB345_5:                               ;   in Loop: Header=BB345_1 Depth=1
	ldr	x9, [sp, #40]
	ldr	x8, [sp, #8]
	add	x8, x8, x9
	str	x8, [sp, #8]
	b	LBB345_6
LBB345_6:                               ;   in Loop: Header=BB345_1 Depth=1
	b	LBB345_7
LBB345_7:                               ;   in Loop: Header=BB345_1 Depth=1
	b	LBB345_8
LBB345_8:                               ;   in Loop: Header=BB345_1 Depth=1
	ldr	x8, [sp]
	add	x8, x8, #1
	str	x8, [sp]
	b	LBB345_1
LBB345_9:
	ldr	x0, [sp, #8]
	add	sp, sp, #48
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
	.private_extern	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE11__make_iterB8ne200100EPS1_ ; -- Begin function _ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE11__make_iterB8ne200100EPS1_
	.globl	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE11__make_iterB8ne200100EPS1_
	.weak_definition	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE11__make_iterB8ne200100EPS1_
	.p2align	2
__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE11__make_iterB8ne200100EPS1_: ; @_ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE11__make_iterB8ne200100EPS1_
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
	bl	__ZNSt3__111__wrap_iterIP6ResultEC1B8ne200100ES2_
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE26__add_alignment_assumptionB8ne200100IPS1_Li0EEES6_T_ ; -- Begin function _ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE26__add_alignment_assumptionB8ne200100IPS1_Li0EEES6_T_
	.weak_definition	__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE26__add_alignment_assumptionB8ne200100IPS1_Li0EEES6_T_
	.p2align	2
__ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE26__add_alignment_assumptionB8ne200100IPS1_Li0EEES6_T_: ; @_ZNSt3__16vectorI6ResultNS_9allocatorIS1_EEE26__add_alignment_assumptionB8ne200100IPS1_Li0EEES6_T_
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
	.private_extern	__ZNSt3__111__wrap_iterIP6ResultEC1B8ne200100ES2_ ; -- Begin function _ZNSt3__111__wrap_iterIP6ResultEC1B8ne200100ES2_
	.globl	__ZNSt3__111__wrap_iterIP6ResultEC1B8ne200100ES2_
	.weak_def_can_be_hidden	__ZNSt3__111__wrap_iterIP6ResultEC1B8ne200100ES2_
	.p2align	2
__ZNSt3__111__wrap_iterIP6ResultEC1B8ne200100ES2_: ; @_ZNSt3__111__wrap_iterIP6ResultEC1B8ne200100ES2_
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
	bl	__ZNSt3__111__wrap_iterIP6ResultEC2B8ne200100ES2_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__111__wrap_iterIP6ResultEC2B8ne200100ES2_ ; -- Begin function _ZNSt3__111__wrap_iterIP6ResultEC2B8ne200100ES2_
	.globl	__ZNSt3__111__wrap_iterIP6ResultEC2B8ne200100ES2_
	.weak_def_can_be_hidden	__ZNSt3__111__wrap_iterIP6ResultEC2B8ne200100ES2_
	.p2align	2
__ZNSt3__111__wrap_iterIP6ResultEC2B8ne200100ES2_: ; @_ZNSt3__111__wrap_iterIP6ResultEC2B8ne200100ES2_
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

l_.str.3:                               ; @.str.3
	.asciz	":"

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
	.asciz	"REIST modular-add benchmark suite\n"

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
	.asciz	"Running benchmarks...\n\n"

l_.str.23:                              ; @.str.23
	.asciz	"Modulus B = "

l_.str.24:                              ; @.str.24
	.asciz	"classic_mod"

l_.str.25:                              ; @.str.25
	.asciz	"reist_sym"

l_.str.26:                              ; @.str.26
	.asciz	"  classic_mod: "

l_.str.27:                              ; @.str.27
	.asciz	" s\n"

l_.str.28:                              ; @.str.28
	.asciz	"  reist_sym  : "

l_.str.29:                              ; @.str.29
	.asciz	"  speedup    : "

l_.str.30:                              ; @.str.30
	.asciz	"x (classic / REIST)\n"

l_.str.31:                              ; @.str.31
	.asciz	"  sinks: "

l_.str.32:                              ; @.str.32
	.asciz	" / "

l_.str.33:                              ; @.str.33
	.asciz	"results_modadd_suite.csv"

l_.str.34:                              ; @.str.34
	.asciz	"modulus,N,scenario,seconds,ops_per_sec\n"

l_.str.35:                              ; @.str.35
	.asciz	","

l_.str.36:                              ; @.str.36
	.asciz	"CSV written to "

l_.str.37:                              ; @.str.37
	.asciz	"WARNING: could not write CSV file "

l_.str.38:                              ; @.str.38
	.asciz	"vector"

.subsections_via_symbols
