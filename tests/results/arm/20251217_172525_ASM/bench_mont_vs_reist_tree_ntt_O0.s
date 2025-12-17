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
	sub	sp, sp, #640
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	mov	w8, #57345                      ; =0xe001
	movk	w8, #127, lsl #16
	str	w8, [sp, #188]                  ; 4-byte Folded Spill
	stur	wzr, [x29, #-20]
	stur	w0, [x29, #-24]
	stur	x1, [x29, #-32]
	mov	w8, #1024                       ; =0x400
	stur	w8, [x29, #-36]
	mov	w8, #5000                       ; =0x1388
	stur	w8, [x29, #-40]
	mov	w8, #1                          ; =0x1
	sturb	w8, [x29, #-41]
	ldur	w8, [x29, #-24]
	subs	w8, w8, #1
	b.le	LBB0_2
	b	LBB0_1
LBB0_1:
	ldur	x8, [x29, #-32]
	ldr	x0, [x8, #8]
	bl	_atoi
	stur	w0, [x29, #-36]
	b	LBB0_2
LBB0_2:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #2
	b.le	LBB0_4
	b	LBB0_3
LBB0_3:
	ldur	x8, [x29, #-32]
	ldr	x0, [x8, #16]
	bl	_atoi
	stur	w0, [x29, #-40]
	b	LBB0_4
LBB0_4:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	str	x0, [sp, #176]                  ; 8-byte Folded Spill
	adrp	x1, __ZNSt3__15fixedB8ne200100ERNS_8ios_baseE@PAGE
	add	x1, x1, __ZNSt3__15fixedB8ne200100ERNS_8ios_baseE@PAGEOFF
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne200100EPFRNS_8ios_baseES5_E
	str	x0, [sp, #160]                  ; 8-byte Folded Spill
	mov	w0, #6                          ; =0x6
	bl	__ZNSt3__112setprecisionB8ne200100Ei
	mov	x8, x0
	ldr	x0, [sp, #160]                  ; 8-byte Folded Reload
	sub	x1, x29, #48
	stur	w8, [x29, #-48]
	bl	__ZNSt3__1lsB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_8__iom_t5E
	ldr	x0, [sp, #176]                  ; 8-byte Folded Reload
	adrp	x1, l_.str@PAGE
	add	x1, x1, l_.str@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x0, [sp, #176]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.1@PAGE
	add	x1, x1, l_.str.1@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	w1, [sp, #188]                  ; 4-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	adrp	x1, l_.str.2@PAGE
	add	x1, x1, l_.str.2@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldur	w1, [x29, #-36]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	adrp	x1, l_.str.3@PAGE
	add	x1, x1, l_.str.3@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldur	w1, [x29, #-40]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	adrp	x1, l_.str.4@PAGE
	add	x1, x1, l_.str.4@PAGEOFF
	str	x1, [sp, #168]                  ; 8-byte Folded Spill
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x0, [sp, #176]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.5@PAGE
	add	x1, x1, l_.str.5@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x1, [sp, #168]                  ; 8-byte Folded Reload
	ldr	x0, [sp, #176]                  ; 8-byte Folded Reload
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldursw	x1, [x29, #-36]
	sub	x0, x29, #72
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEEC1B8ne200100Em
	ldursw	x1, [x29, #-36]
Ltmp0:
	sub	x0, x29, #96
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEEC1B8ne200100Em
Ltmp1:
	b	LBB0_5
LBB0_5:
	ldursw	x1, [x29, #-36]
Ltmp3:
	sub	x0, x29, #136
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEEC1B8ne200100Em
Ltmp4:
	b	LBB0_6
LBB0_6:
Ltmp6:
	sub	x0, x29, #72
	sub	x1, x29, #96
	sub	x2, x29, #136
	bl	__ZL13init_centeredRNSt3__16vectorIiNS_9allocatorIiEEEES4_S4_
Ltmp7:
	b	LBB0_7
LBB0_7:
Ltmp8:
	ldr	w1, [sp, #188]                  ; 4-byte Folded Reload
	sub	x0, x29, #148
	bl	__ZN6Mont32C1Ej
Ltmp9:
	b	LBB0_8
LBB0_8:
	ldursw	x1, [x29, #-36]
Ltmp10:
	sub	x0, x29, #176
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEEC1B8ne200100Em
Ltmp11:
	b	LBB0_9
LBB0_9:
	ldursw	x1, [x29, #-36]
Ltmp13:
	sub	x0, x29, #200
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEEC1B8ne200100Em
Ltmp14:
	b	LBB0_10
LBB0_10:
	ldursw	x1, [x29, #-36]
Ltmp16:
	sub	x0, x29, #224
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEEC1B8ne200100Em
Ltmp17:
	b	LBB0_11
LBB0_11:
	stur	wzr, [x29, #-228]
	b	LBB0_12
LBB0_12:                                ; =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-228]
	ldur	w9, [x29, #-36]
	subs	w8, w8, w9
	b.ge	LBB0_33
	b	LBB0_13
LBB0_13:                                ;   in Loop: Header=BB0_12 Depth=1
	ldursw	x1, [x29, #-228]
	sub	x0, x29, #72
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEEixB8ne200100Em
	ldr	w8, [x0]
	tbnz	w8, #31, LBB0_15
	b	LBB0_14
LBB0_14:                                ;   in Loop: Header=BB0_12 Depth=1
	ldursw	x1, [x29, #-228]
	sub	x0, x29, #72
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEEixB8ne200100Em
	ldr	w8, [x0]
	str	w8, [sp, #156]                  ; 4-byte Folded Spill
	b	LBB0_16
LBB0_15:                                ;   in Loop: Header=BB0_12 Depth=1
	ldursw	x1, [x29, #-228]
	sub	x0, x29, #72
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEEixB8ne200100Em
	ldr	w9, [sp, #188]                  ; 4-byte Folded Reload
	ldr	w8, [x0]
	add	w8, w8, w9
	str	w8, [sp, #156]                  ; 4-byte Folded Spill
	b	LBB0_16
LBB0_16:                                ;   in Loop: Header=BB0_12 Depth=1
	ldr	w8, [sp, #156]                  ; 4-byte Folded Reload
	stur	w8, [x29, #-232]
	ldursw	x1, [x29, #-228]
	sub	x0, x29, #96
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEEixB8ne200100Em
	ldr	w8, [x0]
	tbnz	w8, #31, LBB0_18
	b	LBB0_17
LBB0_17:                                ;   in Loop: Header=BB0_12 Depth=1
	ldursw	x1, [x29, #-228]
	sub	x0, x29, #96
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEEixB8ne200100Em
	ldr	w8, [x0]
	str	w8, [sp, #152]                  ; 4-byte Folded Spill
	b	LBB0_19
LBB0_18:                                ;   in Loop: Header=BB0_12 Depth=1
	ldursw	x1, [x29, #-228]
	sub	x0, x29, #96
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEEixB8ne200100Em
	ldr	w9, [sp, #188]                  ; 4-byte Folded Reload
	ldr	w8, [x0]
	add	w8, w8, w9
	str	w8, [sp, #152]                  ; 4-byte Folded Spill
	b	LBB0_19
LBB0_19:                                ;   in Loop: Header=BB0_12 Depth=1
	ldr	w8, [sp, #152]                  ; 4-byte Folded Reload
	stur	w8, [x29, #-236]
	ldursw	x1, [x29, #-228]
	sub	x0, x29, #136
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEEixB8ne200100Em
	ldr	w8, [x0]
	tbnz	w8, #31, LBB0_21
	b	LBB0_20
LBB0_20:                                ;   in Loop: Header=BB0_12 Depth=1
	ldursw	x1, [x29, #-228]
	sub	x0, x29, #136
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEEixB8ne200100Em
	ldr	w8, [x0]
	str	w8, [sp, #148]                  ; 4-byte Folded Spill
	b	LBB0_22
LBB0_21:                                ;   in Loop: Header=BB0_12 Depth=1
	ldursw	x1, [x29, #-228]
	sub	x0, x29, #136
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEEixB8ne200100Em
	ldr	w9, [sp, #188]                  ; 4-byte Folded Reload
	ldr	w8, [x0]
	add	w8, w8, w9
	str	w8, [sp, #148]                  ; 4-byte Folded Spill
	b	LBB0_22
LBB0_22:                                ;   in Loop: Header=BB0_12 Depth=1
	ldr	w8, [sp, #148]                  ; 4-byte Folded Reload
	stur	w8, [x29, #-240]
	ldur	w1, [x29, #-232]
Ltmp83:
	sub	x0, x29, #148
	bl	__ZNK6Mont327to_montEj
	str	w0, [sp, #144]                  ; 4-byte Folded Spill
Ltmp84:
	b	LBB0_23
LBB0_23:                                ;   in Loop: Header=BB0_12 Depth=1
	ldursw	x1, [x29, #-228]
	sub	x0, x29, #176
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEEixB8ne200100Em
	ldr	w8, [sp, #144]                  ; 4-byte Folded Reload
	str	w8, [x0]
	ldur	w1, [x29, #-236]
Ltmp85:
	sub	x0, x29, #148
	bl	__ZNK6Mont327to_montEj
	str	w0, [sp, #140]                  ; 4-byte Folded Spill
Ltmp86:
	b	LBB0_24
LBB0_24:                                ;   in Loop: Header=BB0_12 Depth=1
	ldursw	x1, [x29, #-228]
	sub	x0, x29, #200
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEEixB8ne200100Em
	ldr	w8, [sp, #140]                  ; 4-byte Folded Reload
	str	w8, [x0]
	ldur	w1, [x29, #-240]
Ltmp87:
	sub	x0, x29, #148
	bl	__ZNK6Mont327to_montEj
	str	w0, [sp, #136]                  ; 4-byte Folded Spill
Ltmp88:
	b	LBB0_25
LBB0_25:                                ;   in Loop: Header=BB0_12 Depth=1
	ldursw	x1, [x29, #-228]
	sub	x0, x29, #224
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEEixB8ne200100Em
	ldr	w8, [sp, #136]                  ; 4-byte Folded Reload
	str	w8, [x0]
	b	LBB0_26
LBB0_26:                                ;   in Loop: Header=BB0_12 Depth=1
	ldur	w8, [x29, #-228]
	add	w8, w8, #1
	stur	w8, [x29, #-228]
	b	LBB0_12
LBB0_27:
Ltmp2:
	stur	x0, [x29, #-104]
	mov	x8, x1
	stur	w8, [x29, #-108]
	b	LBB0_76
LBB0_28:
Ltmp5:
	stur	x0, [x29, #-104]
	mov	x8, x1
	stur	w8, [x29, #-108]
	b	LBB0_75
LBB0_29:
Ltmp12:
	stur	x0, [x29, #-104]
	mov	x8, x1
	stur	w8, [x29, #-108]
	b	LBB0_74
LBB0_30:
Ltmp15:
	stur	x0, [x29, #-104]
	mov	x8, x1
	stur	w8, [x29, #-108]
	b	LBB0_73
LBB0_31:
Ltmp18:
	stur	x0, [x29, #-104]
	mov	x8, x1
	stur	w8, [x29, #-108]
	b	LBB0_72
LBB0_32:
Ltmp89:
	stur	x0, [x29, #-104]
	mov	x8, x1
	stur	w8, [x29, #-108]
	b	LBB0_71
LBB0_33:
Ltmp19:
	add	x0, sp, #392
	sub	x1, x29, #72
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEEC1B8ne200100ERKS3_
Ltmp20:
	b	LBB0_34
LBB0_34:
Ltmp21:
	add	x0, sp, #368
	sub	x1, x29, #96
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEEC1B8ne200100ERKS3_
Ltmp22:
	b	LBB0_35
LBB0_35:
Ltmp24:
	add	x0, sp, #344
	sub	x1, x29, #176
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEEC1B8ne200100ERKS3_
Ltmp25:
	b	LBB0_36
LBB0_36:
Ltmp27:
	add	x0, sp, #320
	sub	x1, x29, #200
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEEC1B8ne200100ERKS3_
Ltmp28:
	b	LBB0_37
LBB0_37:
	add	x0, sp, #280
	add	x8, sp, #392
	str	x8, [sp, #280]
	add	x8, sp, #368
	str	x8, [sp, #288]
	sub	x8, x29, #136
	str	x8, [sp, #296]
	sub	x8, x29, #40
	str	x8, [sp, #304]
Ltmp30:
	bl	__Z13bench_secondsIZ4mainE3$_0EdOT_
	str	d0, [sp, #128]                  ; 8-byte Folded Spill
Ltmp31:
	b	LBB0_38
LBB0_38:
	ldr	d0, [sp, #128]                  ; 8-byte Folded Reload
	str	d0, [sp, #312]
	add	x0, sp, #240
	add	x8, sp, #392
	str	x8, [sp, #240]
	add	x8, sp, #368
	str	x8, [sp, #248]
	sub	x8, x29, #136
	str	x8, [sp, #256]
	sub	x8, x29, #40
	str	x8, [sp, #264]
Ltmp32:
	bl	__Z13bench_secondsIZ4mainE3$_1EdOT_
	str	d0, [sp, #120]                  ; 8-byte Folded Spill
Ltmp33:
	b	LBB0_39
LBB0_39:
	ldr	d0, [sp, #120]                  ; 8-byte Folded Reload
	str	d0, [sp, #272]
	add	x0, sp, #192
	add	x8, sp, #344
	str	x8, [sp, #192]
	add	x8, sp, #320
	str	x8, [sp, #200]
	sub	x8, x29, #224
	str	x8, [sp, #208]
	sub	x8, x29, #148
	str	x8, [sp, #216]
	sub	x8, x29, #40
	str	x8, [sp, #224]
Ltmp34:
	bl	__Z13bench_secondsIZ4mainE3$_2EdOT_
	str	d0, [sp, #112]                  ; 8-byte Folded Spill
Ltmp35:
	b	LBB0_40
LBB0_40:
	ldr	d0, [sp, #112]                  ; 8-byte Folded Reload
	str	d0, [sp, #232]
Ltmp36:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.6@PAGE
	add	x1, x1, l_.str.6@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp37:
	b	LBB0_41
LBB0_41:
Ltmp38:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.7@PAGE
	add	x1, x1, l_.str.7@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #104]                  ; 8-byte Folded Spill
Ltmp39:
	b	LBB0_42
LBB0_42:
	ldr	x0, [sp, #104]                  ; 8-byte Folded Reload
	ldr	d0, [sp, #312]
Ltmp40:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	str	x0, [sp, #96]                   ; 8-byte Folded Spill
Ltmp41:
	b	LBB0_43
LBB0_43:
Ltmp42:
	ldr	x0, [sp, #96]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.4@PAGE
	add	x1, x1, l_.str.4@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp43:
	b	LBB0_44
LBB0_44:
Ltmp44:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.8@PAGE
	add	x1, x1, l_.str.8@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #88]                   ; 8-byte Folded Spill
Ltmp45:
	b	LBB0_45
LBB0_45:
	ldr	x0, [sp, #88]                   ; 8-byte Folded Reload
	ldr	d0, [sp, #272]
Ltmp46:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	str	x0, [sp, #80]                   ; 8-byte Folded Spill
Ltmp47:
	b	LBB0_46
LBB0_46:
Ltmp48:
	ldr	x0, [sp, #80]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.4@PAGE
	add	x1, x1, l_.str.4@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp49:
	b	LBB0_47
LBB0_47:
Ltmp50:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.9@PAGE
	add	x1, x1, l_.str.9@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #72]                   ; 8-byte Folded Spill
Ltmp51:
	b	LBB0_48
LBB0_48:
	ldr	x0, [sp, #72]                   ; 8-byte Folded Reload
	ldr	d0, [sp, #232]
Ltmp52:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	str	x0, [sp, #64]                   ; 8-byte Folded Spill
Ltmp53:
	b	LBB0_49
LBB0_49:
Ltmp54:
	ldr	x0, [sp, #64]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.10@PAGE
	add	x1, x1, l_.str.10@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp55:
	b	LBB0_50
LBB0_50:
Ltmp56:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.11@PAGE
	add	x1, x1, l_.str.11@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp57:
	b	LBB0_51
LBB0_51:
Ltmp58:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.12@PAGE
	add	x1, x1, l_.str.12@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #56]                   ; 8-byte Folded Spill
Ltmp59:
	b	LBB0_52
LBB0_52:
	ldr	x0, [sp, #56]                   ; 8-byte Folded Reload
	ldr	d0, [sp, #312]
	ldr	d1, [sp, #272]
	fdiv	d0, d0, d1
Ltmp60:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	str	x0, [sp, #48]                   ; 8-byte Folded Spill
Ltmp61:
	b	LBB0_53
LBB0_53:
Ltmp62:
	ldr	x0, [sp, #48]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.13@PAGE
	add	x1, x1, l_.str.13@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp63:
	b	LBB0_54
LBB0_54:
Ltmp64:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.14@PAGE
	add	x1, x1, l_.str.14@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #40]                   ; 8-byte Folded Spill
Ltmp65:
	b	LBB0_55
LBB0_55:
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	ldr	d0, [sp, #272]
	ldr	d1, [sp, #232]
	fdiv	d0, d0, d1
Ltmp66:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
Ltmp67:
	b	LBB0_56
LBB0_56:
Ltmp68:
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.15@PAGE
	add	x1, x1, l_.str.15@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp69:
	b	LBB0_57
LBB0_57:
Ltmp70:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.16@PAGE
	add	x1, x1, l_.str.16@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
Ltmp71:
	b	LBB0_58
LBB0_58:
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldr	d0, [sp, #312]
	ldr	d1, [sp, #232]
	fdiv	d0, d0, d1
Ltmp72:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp73:
	b	LBB0_59
LBB0_59:
Ltmp74:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.17@PAGE
	add	x1, x1, l_.str.17@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp75:
	b	LBB0_60
LBB0_60:
Ltmp76:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.18@PAGE
	add	x1, x1, l_.str.18@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp77:
	b	LBB0_61
LBB0_61:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	adrp	x8, __ZL6g_sink@PAGE
	ldr	x1, [x8, __ZL6g_sink@PAGEOFF]
Ltmp78:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEy
	str	x0, [sp]                        ; 8-byte Folded Spill
Ltmp79:
	b	LBB0_62
LBB0_62:
Ltmp80:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	adrp	x1, l_.str.4@PAGE
	add	x1, x1, l_.str.4@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp81:
	b	LBB0_63
LBB0_63:
	stur	wzr, [x29, #-20]
	add	x0, sp, #320
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEED1B8ne200100Ev
	add	x0, sp, #344
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEED1B8ne200100Ev
	add	x0, sp, #368
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEED1B8ne200100Ev
	add	x0, sp, #392
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEED1B8ne200100Ev
	sub	x0, x29, #224
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEED1B8ne200100Ev
	sub	x0, x29, #200
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEED1B8ne200100Ev
	sub	x0, x29, #176
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEED1B8ne200100Ev
	sub	x0, x29, #136
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEED1B8ne200100Ev
	sub	x0, x29, #96
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEED1B8ne200100Ev
	sub	x0, x29, #72
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEED1B8ne200100Ev
	ldur	w0, [x29, #-20]
	add	sp, sp, #640
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #32             ; 16-byte Folded Reload
	ret
LBB0_64:
Ltmp23:
	stur	x0, [x29, #-104]
	mov	x8, x1
	stur	w8, [x29, #-108]
	b	LBB0_70
LBB0_65:
Ltmp26:
	stur	x0, [x29, #-104]
	mov	x8, x1
	stur	w8, [x29, #-108]
	b	LBB0_69
LBB0_66:
Ltmp29:
	stur	x0, [x29, #-104]
	mov	x8, x1
	stur	w8, [x29, #-108]
	b	LBB0_68
LBB0_67:
Ltmp82:
	stur	x0, [x29, #-104]
	mov	x8, x1
	stur	w8, [x29, #-108]
	add	x0, sp, #320
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEED1B8ne200100Ev
	b	LBB0_68
LBB0_68:
	add	x0, sp, #344
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEED1B8ne200100Ev
	b	LBB0_69
LBB0_69:
	add	x0, sp, #368
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEED1B8ne200100Ev
	b	LBB0_70
LBB0_70:
	add	x0, sp, #392
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEED1B8ne200100Ev
	b	LBB0_71
LBB0_71:
	sub	x0, x29, #224
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEED1B8ne200100Ev
	b	LBB0_72
LBB0_72:
	sub	x0, x29, #200
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEED1B8ne200100Ev
	b	LBB0_73
LBB0_73:
	sub	x0, x29, #176
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEED1B8ne200100Ev
	b	LBB0_74
LBB0_74:
	sub	x0, x29, #136
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEED1B8ne200100Ev
	b	LBB0_75
LBB0_75:
	sub	x0, x29, #96
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEED1B8ne200100Ev
	b	LBB0_76
LBB0_76:
	sub	x0, x29, #72
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEED1B8ne200100Ev
	b	LBB0_77
LBB0_77:
	ldur	x0, [x29, #-104]
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
	.uleb128 Ltmp11-Ltmp6                   ;   Call between Ltmp6 and Ltmp11
	.uleb128 Ltmp12-Lfunc_begin0            ;     jumps to Ltmp12
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp13-Lfunc_begin0            ; >> Call Site 5 <<
	.uleb128 Ltmp14-Ltmp13                  ;   Call between Ltmp13 and Ltmp14
	.uleb128 Ltmp15-Lfunc_begin0            ;     jumps to Ltmp15
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp16-Lfunc_begin0            ; >> Call Site 6 <<
	.uleb128 Ltmp17-Ltmp16                  ;   Call between Ltmp16 and Ltmp17
	.uleb128 Ltmp18-Lfunc_begin0            ;     jumps to Ltmp18
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp83-Lfunc_begin0            ; >> Call Site 7 <<
	.uleb128 Ltmp20-Ltmp83                  ;   Call between Ltmp83 and Ltmp20
	.uleb128 Ltmp89-Lfunc_begin0            ;     jumps to Ltmp89
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp21-Lfunc_begin0            ; >> Call Site 8 <<
	.uleb128 Ltmp22-Ltmp21                  ;   Call between Ltmp21 and Ltmp22
	.uleb128 Ltmp23-Lfunc_begin0            ;     jumps to Ltmp23
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp24-Lfunc_begin0            ; >> Call Site 9 <<
	.uleb128 Ltmp25-Ltmp24                  ;   Call between Ltmp24 and Ltmp25
	.uleb128 Ltmp26-Lfunc_begin0            ;     jumps to Ltmp26
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp27-Lfunc_begin0            ; >> Call Site 10 <<
	.uleb128 Ltmp28-Ltmp27                  ;   Call between Ltmp27 and Ltmp28
	.uleb128 Ltmp29-Lfunc_begin0            ;     jumps to Ltmp29
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp30-Lfunc_begin0            ; >> Call Site 11 <<
	.uleb128 Ltmp81-Ltmp30                  ;   Call between Ltmp30 and Ltmp81
	.uleb128 Ltmp82-Lfunc_begin0            ;     jumps to Ltmp82
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp81-Lfunc_begin0            ; >> Call Site 12 <<
	.uleb128 Lfunc_end0-Ltmp81              ;   Call between Ltmp81 and Lfunc_end0
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end0:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
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
	.p2align	2                               ; -- Begin function _ZL13init_centeredRNSt3__16vectorIiNS_9allocatorIiEEEES4_S4_
__ZL13init_centeredRNSt3__16vectorIiNS_9allocatorIiEEEES4_S4_: ; @_ZL13init_centeredRNSt3__16vectorIiNS_9allocatorIiEEEES4_S4_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #128
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w8, #57345                      ; =0xe001
	movk	w8, #127, lsl #16
	str	w8, [sp, #44]                   ; 4-byte Folded Spill
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	mov	w8, #1                          ; =0x1
	stur	w8, [x29, #-28]
	stur	xzr, [x29, #-40]
	b	LBB7_1
LBB7_1:                                 ; =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-40]
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-8]
	bl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeB8ne200100Ev
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	subs	x8, x8, x0
	b.hs	LBB7_10
	b	LBB7_2
LBB7_2:                                 ;   in Loop: Header=BB7_1 Depth=1
	sub	x0, x29, #28
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	bl	__ZL5lcg32Rj
	ldr	w10, [sp, #44]                  ; 4-byte Folded Reload
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	udiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w8, w8, w9
	stur	w8, [x29, #-44]
	bl	__ZL5lcg32Rj
	ldr	w10, [sp, #44]                  ; 4-byte Folded Reload
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	udiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w8, w8, w9
	stur	w8, [x29, #-48]
	bl	__ZL5lcg32Rj
	ldr	w9, [sp, #44]                   ; 4-byte Folded Reload
	udiv	w8, w0, w9
	mul	w8, w8, w9
	subs	w8, w0, w8
	stur	w8, [x29, #-52]
	ldur	w8, [x29, #-44]
	str	w8, [sp, #56]
	ldr	w8, [sp, #56]
	subs	w8, w8, #1023, lsl #12          ; =4190208
	b.le	LBB7_4
	b	LBB7_3
LBB7_3:                                 ;   in Loop: Header=BB7_1 Depth=1
	ldr	w9, [sp, #44]                   ; 4-byte Folded Reload
	ldr	w8, [sp, #56]
	subs	w8, w8, w9
	str	w8, [sp, #56]
	b	LBB7_4
LBB7_4:                                 ;   in Loop: Header=BB7_1 Depth=1
	ldur	w8, [x29, #-48]
	str	w8, [sp, #52]
	ldr	w8, [sp, #52]
	subs	w8, w8, #1023, lsl #12          ; =4190208
	b.le	LBB7_6
	b	LBB7_5
LBB7_5:                                 ;   in Loop: Header=BB7_1 Depth=1
	ldr	w9, [sp, #44]                   ; 4-byte Folded Reload
	ldr	w8, [sp, #52]
	subs	w8, w8, w9
	str	w8, [sp, #52]
	b	LBB7_6
LBB7_6:                                 ;   in Loop: Header=BB7_1 Depth=1
	ldur	w8, [x29, #-52]
	str	w8, [sp, #48]
	ldr	w8, [sp, #48]
	subs	w8, w8, #1023, lsl #12          ; =4190208
	b.le	LBB7_8
	b	LBB7_7
LBB7_7:                                 ;   in Loop: Header=BB7_1 Depth=1
	ldr	w9, [sp, #44]                   ; 4-byte Folded Reload
	ldr	w8, [sp, #48]
	subs	w8, w8, w9
	str	w8, [sp, #48]
	b	LBB7_8
LBB7_8:                                 ;   in Loop: Header=BB7_1 Depth=1
	ldr	w8, [sp, #56]
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-40]
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEEixB8ne200100Em
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	str	w8, [x0]
	ldr	w8, [sp, #52]
	str	w8, [sp, #16]                   ; 4-byte Folded Spill
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-40]
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEEixB8ne200100Em
	ldr	w8, [sp, #16]                   ; 4-byte Folded Reload
	str	w8, [x0]
	ldr	w8, [sp, #48]
	str	w8, [sp, #20]                   ; 4-byte Folded Spill
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-40]
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEEixB8ne200100Em
	ldr	w8, [sp, #20]                   ; 4-byte Folded Reload
	str	w8, [x0]
	b	LBB7_9
LBB7_9:                                 ;   in Loop: Header=BB7_1 Depth=1
	ldur	x8, [x29, #-40]
	add	x8, x8, #1
	stur	x8, [x29, #-40]
	b	LBB7_1
LBB7_10:
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN6Mont32C1Ej                 ; -- Begin function _ZN6Mont32C1Ej
	.weak_def_can_be_hidden	__ZN6Mont32C1Ej
	.p2align	2
__ZN6Mont32C1Ej:                        ; @_ZN6Mont32C1Ej
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
	bl	__ZN6Mont32C2Ej
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIjNS_9allocatorIjEEEC1B8ne200100Em ; -- Begin function _ZNSt3__16vectorIjNS_9allocatorIjEEEC1B8ne200100Em
	.globl	__ZNSt3__16vectorIjNS_9allocatorIjEEEC1B8ne200100Em
	.weak_def_can_be_hidden	__ZNSt3__16vectorIjNS_9allocatorIjEEEC1B8ne200100Em
	.p2align	2
__ZNSt3__16vectorIjNS_9allocatorIjEEEC1B8ne200100Em: ; @_ZNSt3__16vectorIjNS_9allocatorIjEEEC1B8ne200100Em
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
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEEC2B8ne200100Em
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
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
	.globl	__ZNK6Mont327to_montEj          ; -- Begin function _ZNK6Mont327to_montEj
	.weak_definition	__ZNK6Mont327to_montEj
	.p2align	2
__ZNK6Mont327to_montEj:                 ; @_ZNK6Mont327to_montEj
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
	ldr	w8, [sp, #4]
                                        ; kill: def $x8 killed $w8
	ldr	w9, [x0, #8]
                                        ; kill: def $x9 killed $w9
	mul	x1, x8, x9
	bl	__ZNK6Mont324redcEy
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIjNS_9allocatorIjEEEixB8ne200100Em ; -- Begin function _ZNSt3__16vectorIjNS_9allocatorIjEEEixB8ne200100Em
	.globl	__ZNSt3__16vectorIjNS_9allocatorIjEEEixB8ne200100Em
	.weak_definition	__ZNSt3__16vectorIjNS_9allocatorIjEEEixB8ne200100Em
	.p2align	2
__ZNSt3__16vectorIjNS_9allocatorIjEEEixB8ne200100Em: ; @_ZNSt3__16vectorIjNS_9allocatorIjEEEixB8ne200100Em
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
	.private_extern	__ZNSt3__16vectorIiNS_9allocatorIiEEEC1B8ne200100ERKS3_ ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEEC1B8ne200100ERKS3_
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEEC1B8ne200100ERKS3_
	.weak_def_can_be_hidden	__ZNSt3__16vectorIiNS_9allocatorIiEEEC1B8ne200100ERKS3_
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEEC1B8ne200100ERKS3_: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEEC1B8ne200100ERKS3_
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
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEEC2B8ne200100ERKS3_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIjNS_9allocatorIjEEEC1B8ne200100ERKS3_ ; -- Begin function _ZNSt3__16vectorIjNS_9allocatorIjEEEC1B8ne200100ERKS3_
	.globl	__ZNSt3__16vectorIjNS_9allocatorIjEEEC1B8ne200100ERKS3_
	.weak_def_can_be_hidden	__ZNSt3__16vectorIjNS_9allocatorIjEEEC1B8ne200100ERKS3_
	.p2align	2
__ZNSt3__16vectorIjNS_9allocatorIjEEEC1B8ne200100ERKS3_: ; @_ZNSt3__16vectorIjNS_9allocatorIjEEEC1B8ne200100ERKS3_
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
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEEC2B8ne200100ERKS3_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _Z13bench_secondsIZ4mainE3$_0EdOT_
__Z13bench_secondsIZ4mainE3$_0EdOT_:    ; @"_Z13bench_secondsIZ4mainE3$_0EdOT_"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	sub	x8, x29, #16
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	stur	x0, [x29, #-16]
	ldur	x0, [x29, #-8]
	bl	__ZZ4mainENK3$_0clEv
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	mov	x8, x0
	sub	x0, x29, #24
	stur	x8, [x29, #-24]
	bl	__ZNSt3__16chronomiB8ne200100INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	add	x1, sp, #24
	str	x0, [sp, #24]
	add	x0, sp, #32
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B8ne200100IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEE5countB8ne200100Ev
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _Z13bench_secondsIZ4mainE3$_1EdOT_
__Z13bench_secondsIZ4mainE3$_1EdOT_:    ; @"_Z13bench_secondsIZ4mainE3$_1EdOT_"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	sub	x8, x29, #16
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	stur	x0, [x29, #-16]
	ldur	x0, [x29, #-8]
	bl	__ZZ4mainENK3$_1clEv
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	mov	x8, x0
	sub	x0, x29, #24
	stur	x8, [x29, #-24]
	bl	__ZNSt3__16chronomiB8ne200100INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	add	x1, sp, #24
	str	x0, [sp, #24]
	add	x0, sp, #32
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B8ne200100IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEE5countB8ne200100Ev
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _Z13bench_secondsIZ4mainE3$_2EdOT_
__Z13bench_secondsIZ4mainE3$_2EdOT_:    ; @"_Z13bench_secondsIZ4mainE3$_2EdOT_"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	sub	x8, x29, #16
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	stur	x0, [x29, #-16]
	ldur	x0, [x29, #-8]
	bl	__ZZ4mainENK3$_2clEv
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	mov	x8, x0
	sub	x0, x29, #24
	stur	x8, [x29, #-24]
	bl	__ZNSt3__16chronomiB8ne200100INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	add	x1, sp, #24
	str	x0, [sp, #24]
	add	x0, sp, #32
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B8ne200100IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEE5countB8ne200100Ev
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIjNS_9allocatorIjEEED1B8ne200100Ev ; -- Begin function _ZNSt3__16vectorIjNS_9allocatorIjEEED1B8ne200100Ev
	.globl	__ZNSt3__16vectorIjNS_9allocatorIjEEED1B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIjNS_9allocatorIjEEED1B8ne200100Ev
	.p2align	2
__ZNSt3__16vectorIjNS_9allocatorIjEEED1B8ne200100Ev: ; @_ZNSt3__16vectorIjNS_9allocatorIjEEED1B8ne200100Ev
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
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEED2B8ne200100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
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
	.p2align	2                               ; -- Begin function _ZL5lcg32Rj
__ZL5lcg32Rj:                           ; @_ZL5lcg32Rj
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	mov	w9, #26125                      ; =0x660d
	movk	w9, #25, lsl #16
	mul	w8, w8, w9
	mov	w9, #62303                      ; =0xf35f
	movk	w9, #15470, lsl #16
	add	w8, w8, w9
	ldr	x9, [sp, #8]
	str	w8, [x9]
	ldr	x8, [sp, #8]
	ldr	w0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN6Mont32C2Ej                 ; -- Begin function _ZN6Mont32C2Ej
	.weak_def_can_be_hidden	__ZN6Mont32C2Ej
	.p2align	2
__ZN6Mont32C2Ej:                        ; @_ZN6Mont32C2Ej
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	w1, [x29, #-20]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	mov	x9, x8
	stur	x9, [x29, #-8]
	ldur	w9, [x29, #-20]
	str	w9, [x8]
	ldr	w8, [x8]
	tbnz	w8, #0, LBB26_2
	b	LBB26_1
LBB26_1:
	adrp	x0, __ZNSt3__14cerrE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14cerrE@GOTPAGEOFF]
	adrp	x1, l_.str.19@PAGE
	add	x1, x1, l_.str.19@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	bl	_abort
LBB26_2:
	mov	w8, #1                          ; =0x1
	str	w8, [sp, #24]
	str	wzr, [sp, #20]
	b	LBB26_3
LBB26_3:                                ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #20]
	subs	w8, w8, #5
	b.ge	LBB26_6
	b	LBB26_4
LBB26_4:                                ;   in Loop: Header=BB26_3 Depth=1
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	w8, [x8]
	ldr	w9, [sp, #24]
	mul	w9, w8, w9
	mov	w8, #2                          ; =0x2
	subs	w9, w8, w9
	ldr	w8, [sp, #24]
	mul	w8, w8, w9
	str	w8, [sp, #24]
	b	LBB26_5
LBB26_5:                                ;   in Loop: Header=BB26_3 Depth=1
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	LBB26_3
LBB26_6:
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	ldr	w10, [sp, #24]
	mov	w8, #0                          ; =0x0
	subs	w8, w8, w10
	str	w8, [x9, #4]
	ldr	w8, [x9]
	mov	x11, x8
	mov	x8, #4294967296                 ; =0x100000000
	udiv	x10, x8, x11
	mul	x10, x10, x11
	subs	x8, x8, x10
                                        ; kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #16]
	ldr	w8, [sp, #16]
                                        ; kill: def $x8 killed $w8
	ldr	w10, [sp, #16]
                                        ; kill: def $x10 killed $w10
	mul	x8, x8, x10
	ldr	w10, [x9]
	mov	x11, x10
	udiv	x10, x8, x11
	mul	x10, x10, x11
	subs	x8, x8, x10
                                        ; kill: def $w8 killed $w8 killed $x8
	str	w8, [x9, #8]
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNK6Mont324redcEy             ; -- Begin function _ZNK6Mont324redcEy
	.weak_definition	__ZNK6Mont324redcEy
	.p2align	2
__ZNK6Mont324redcEy:                    ; @_ZNK6Mont324redcEy
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, #40]
	str	x1, [sp, #32]
	ldr	x9, [sp, #40]
	str	x9, [sp]                        ; 8-byte Folded Spill
	ldr	x8, [sp, #32]
                                        ; kill: def $w8 killed $w8 killed $x8
	ldr	w10, [x9, #4]
	mul	w8, w8, w10
	str	w8, [sp, #28]
	ldr	x8, [sp, #32]
	ldr	w10, [sp, #28]
                                        ; kill: def $x10 killed $w10
	ldr	w11, [x9]
                                        ; kill: def $x11 killed $w11
	mul	x10, x10, x11
	add	x8, x8, x10
	lsr	x8, x8, #32
	str	x8, [sp, #16]
	ldr	x8, [sp, #16]
                                        ; kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #12]
	ldr	w8, [sp, #12]
	ldr	w9, [x9]
	subs	w8, w8, w9
	b.lo	LBB27_2
	b	LBB27_1
LBB27_1:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldr	w9, [x8]
	ldr	w8, [sp, #12]
	subs	w8, w8, w9
	str	w8, [sp, #12]
	b	LBB27_2
LBB27_2:
	ldr	w0, [sp, #12]
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m ; -- Begin function _ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.globl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_definition	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.p2align	2
__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ; @_ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception1
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
Ltmp97:
	sub	x0, x29, #40
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp98:
	b	LBB28_1
LBB28_1:
Ltmp100:
	sub	x0, x29, #40
	bl	__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB8ne200100Ev
	str	w0, [sp, #68]                   ; 4-byte Folded Spill
Ltmp101:
	b	LBB28_2
LBB28_2:
	ldr	w8, [sp, #68]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB28_18
	b	LBB28_3
LBB28_3:
	ldur	x1, [x29, #-8]
	add	x0, sp, #72
	bl	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B8ne200100ERNS_13basic_ostreamIcS2_EE
	ldur	x8, [x29, #-16]
	str	x8, [sp, #56]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp102:
	bl	__ZNKSt3__18ios_base5flagsB8ne200100Ev
	str	w0, [sp, #64]                   ; 4-byte Folded Spill
Ltmp103:
	b	LBB28_4
LBB28_4:
	ldr	w8, [sp, #64]                   ; 4-byte Folded Reload
	mov	w9, #176                        ; =0xb0
	and	w8, w8, w9
	subs	w8, w8, #32
	b.ne	LBB28_6
	b	LBB28_5
LBB28_5:
	ldur	x8, [x29, #-16]
	ldur	x9, [x29, #-24]
	add	x8, x8, x9
	str	x8, [sp, #48]                   ; 8-byte Folded Spill
	b	LBB28_7
LBB28_6:
	ldur	x8, [x29, #-16]
	str	x8, [sp, #48]                   ; 8-byte Folded Spill
	b	LBB28_7
LBB28_7:
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
Ltmp104:
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne200100Ev
	str	w0, [sp, #44]                   ; 4-byte Folded Spill
Ltmp105:
	b	LBB28_8
LBB28_8:
	ldr	w5, [sp, #44]                   ; 4-byte Folded Reload
	ldr	x4, [sp, #32]                   ; 8-byte Folded Reload
	ldr	x3, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x2, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #56]                   ; 8-byte Folded Reload
	ldr	x0, [sp, #72]
Ltmp106:
	bl	__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp107:
	b	LBB28_9
LBB28_9:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	sub	x0, x29, #64
	stur	x8, [x29, #-64]
	bl	__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB8ne200100Ev
	tbz	w0, #0, LBB28_17
	b	LBB28_10
LBB28_10:
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp108:
	mov	w1, #5                          ; =0x5
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne200100Ej
Ltmp109:
	b	LBB28_11
LBB28_11:
	b	LBB28_17
LBB28_12:
Ltmp99:
	stur	x0, [x29, #-48]
	mov	x8, x1
	stur	w8, [x29, #-52]
	b	LBB28_14
LBB28_13:
Ltmp110:
	stur	x0, [x29, #-48]
	mov	x8, x1
	stur	w8, [x29, #-52]
	sub	x0, x29, #40
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB28_14
LBB28_14:
	ldur	x0, [x29, #-48]
	bl	___cxa_begin_catch
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp111:
	bl	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp112:
	b	LBB28_15
LBB28_15:
	bl	___cxa_end_catch
	b	LBB28_16
LBB28_16:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
LBB28_17:
	b	LBB28_18
LBB28_18:
	sub	x0, x29, #40
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB28_16
LBB28_19:
Ltmp113:
	stur	x0, [x29, #-48]
	mov	x8, x1
	stur	w8, [x29, #-52]
Ltmp114:
	bl	___cxa_end_catch
Ltmp115:
	b	LBB28_20
LBB28_20:
	b	LBB28_21
LBB28_21:
	ldur	x0, [x29, #-48]
	bl	__Unwind_Resume
LBB28_22:
Ltmp116:
	bl	___clang_call_terminate
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table28:
Lexception1:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase0-Lttbaseref0
Lttbaseref0:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end1-Lcst_begin1
Lcst_begin1:
	.uleb128 Ltmp97-Lfunc_begin1            ; >> Call Site 1 <<
	.uleb128 Ltmp98-Ltmp97                  ;   Call between Ltmp97 and Ltmp98
	.uleb128 Ltmp99-Lfunc_begin1            ;     jumps to Ltmp99
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp100-Lfunc_begin1           ; >> Call Site 2 <<
	.uleb128 Ltmp109-Ltmp100                ;   Call between Ltmp100 and Ltmp109
	.uleb128 Ltmp110-Lfunc_begin1           ;     jumps to Ltmp110
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp109-Lfunc_begin1           ; >> Call Site 3 <<
	.uleb128 Ltmp111-Ltmp109                ;   Call between Ltmp109 and Ltmp111
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp111-Lfunc_begin1           ; >> Call Site 4 <<
	.uleb128 Ltmp112-Ltmp111                ;   Call between Ltmp111 and Ltmp112
	.uleb128 Ltmp113-Lfunc_begin1           ;     jumps to Ltmp113
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp112-Lfunc_begin1           ; >> Call Site 5 <<
	.uleb128 Ltmp114-Ltmp112                ;   Call between Ltmp112 and Ltmp114
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp114-Lfunc_begin1           ; >> Call Site 6 <<
	.uleb128 Ltmp115-Ltmp114                ;   Call between Ltmp114 and Ltmp115
	.uleb128 Ltmp116-Lfunc_begin1           ;     jumps to Ltmp116
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp115-Lfunc_begin1           ; >> Call Site 7 <<
	.uleb128 Lfunc_end1-Ltmp115             ;   Call between Ltmp115 and Lfunc_end1
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
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception2
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
	cbnz	x8, LBB31_2
	b	LBB31_1
LBB31_1:
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB31_23
LBB31_2:
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
	b.le	LBB31_4
	b	LBB31_3
LBB31_3:
	ldur	x9, [x29, #-64]
	ldr	x8, [sp, #72]
	subs	x8, x8, x9
	str	x8, [sp, #72]
	b	LBB31_5
LBB31_4:
	str	xzr, [sp, #72]
	b	LBB31_5
LBB31_5:
	ldur	x8, [x29, #-32]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	str	x8, [sp, #64]
	ldr	x8, [sp, #64]
	subs	x8, x8, #0
	b.le	LBB31_9
	b	LBB31_6
LBB31_6:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	ldr	x2, [sp, #64]
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne200100EPKcl
	ldr	x8, [sp, #64]
	subs	x8, x0, x8
	b.eq	LBB31_8
	b	LBB31_7
LBB31_7:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB31_23
LBB31_8:
	b	LBB31_9
LBB31_9:
	ldr	x8, [sp, #72]
	subs	x8, x8, #0
	b.le	LBB31_18
	b	LBB31_10
LBB31_10:
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
Ltmp118:
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne200100EPKcl
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp119:
	b	LBB31_11
LBB31_11:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x9, [sp, #72]
	subs	x8, x8, x9
	b.eq	LBB31_14
	b	LBB31_12
LBB31_12:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	mov	w8, #1                          ; =0x1
	str	w8, [sp, #24]
	b	LBB31_15
LBB31_13:
Ltmp120:
	str	x0, [sp, #32]
	mov	x8, x1
	str	w8, [sp, #28]
	add	x0, sp, #40
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	b	LBB31_24
LBB31_14:
	str	wzr, [sp, #24]
	b	LBB31_15
LBB31_15:
	add	x0, sp, #40
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	ldr	w8, [sp, #24]
	cbz	w8, LBB31_17
	b	LBB31_16
LBB31_16:
	b	LBB31_23
LBB31_17:
	b	LBB31_18
LBB31_18:
	ldur	x8, [x29, #-40]
	ldur	x9, [x29, #-32]
	subs	x8, x8, x9
	str	x8, [sp, #64]
	ldr	x8, [sp, #64]
	subs	x8, x8, #0
	b.le	LBB31_22
	b	LBB31_19
LBB31_19:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-32]
	ldr	x2, [sp, #64]
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne200100EPKcl
	ldr	x8, [sp, #64]
	subs	x8, x0, x8
	b.eq	LBB31_21
	b	LBB31_20
LBB31_20:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB31_23
LBB31_21:
	b	LBB31_22
LBB31_22:
	ldur	x0, [x29, #-48]
	mov	x1, #0                          ; =0x0
	bl	__ZNSt3__18ios_base5widthB8ne200100El
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB31_23
LBB31_23:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
LBB31_24:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
; %bb.25:
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table31:
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
	tbnz	w0, #0, LBB34_2
	b	LBB34_1
LBB34_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	mov	w1, #32                         ; =0x20
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne200100Ec
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	mov	x1, x0
	add	x0, x8, #144
	bl	__ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB8ne200100Ei
	b	LBB34_2
LBB34_2:
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
	tbz	w0, #0, LBB48_2
	b	LBB48_1
LBB48_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne200100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB48_3
LBB48_2:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne200100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB48_3
LBB48_3:
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
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x8, [sp, #16]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
Ltmp130:
	add	x0, x8, x9
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne200100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp131:
	b	LBB53_1
LBB53_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	str	x8, [x0]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB53_2:
Ltmp132:
	bl	___clang_call_terminate
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table53:
Lexception3:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase1-Lttbaseref1
Lttbaseref1:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end3-Lcst_begin3
Lcst_begin3:
	.uleb128 Ltmp130-Lfunc_begin3           ; >> Call Site 1 <<
	.uleb128 Ltmp131-Ltmp130                ;   Call between Ltmp130 and Ltmp131
	.uleb128 Ltmp132-Lfunc_begin3           ;     jumps to Ltmp132
	.byte	1                               ;   On action: 1
Lcst_end3:
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
Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception4
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
Ltmp134:
	bl	__ZNSt3__19use_facetB8ne200100INS_5ctypeIcEEEERKT_RKNS_6localeE
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp135:
	b	LBB57_1
LBB57_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldursb	w1, [x29, #-9]
Ltmp136:
	bl	__ZNKSt3__15ctypeIcE5widenB8ne200100Ec
	str	w0, [sp, #4]                    ; 4-byte Folded Spill
Ltmp137:
	b	LBB57_2
LBB57_2:
	sub	x0, x29, #24
	bl	__ZNSt3__16localeD1Ev
	ldr	w0, [sp, #4]                    ; 4-byte Folded Reload
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB57_3:
Ltmp138:
	str	x0, [sp, #32]
	mov	x8, x1
	str	w8, [sp, #28]
	sub	x0, x29, #24
	bl	__ZNSt3__16localeD1Ev
	b	LBB57_4
LBB57_4:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
Lfunc_end4:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table57:
Lexception4:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end4-Lcst_begin4
Lcst_begin4:
	.uleb128 Lfunc_begin4-Lfunc_begin4      ; >> Call Site 1 <<
	.uleb128 Ltmp134-Lfunc_begin4           ;   Call between Lfunc_begin4 and Ltmp134
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp134-Lfunc_begin4           ; >> Call Site 2 <<
	.uleb128 Ltmp137-Ltmp134                ;   Call between Ltmp134 and Ltmp137
	.uleb128 Ltmp138-Lfunc_begin4           ;     jumps to Ltmp138
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp137-Lfunc_begin4           ; >> Call Site 3 <<
	.uleb128 Lfunc_end4-Ltmp137             ;   Call between Ltmp137 and Lfunc_end4
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end4:
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
	.private_extern	__ZNSt3__16vectorIiNS_9allocatorIiEEEC2B8ne200100Em ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEEC2B8ne200100Em
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEEC2B8ne200100Em
	.weak_def_can_be_hidden	__ZNSt3__16vectorIiNS_9allocatorIiEEEC2B8ne200100Em
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEEC2B8ne200100Em: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEEC2B8ne200100Em
Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception5
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
	b.ls	LBB66_5
	b	LBB66_1
LBB66_1:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldur	x1, [x29, #-24]
Ltmp142:
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE11__vallocateB8ne200100Em
Ltmp143:
	b	LBB66_2
LBB66_2:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldur	x1, [x29, #-24]
Ltmp144:
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm
Ltmp145:
	b	LBB66_3
LBB66_3:
	b	LBB66_5
LBB66_4:
Ltmp146:
	str	x0, [sp, #24]
	mov	x8, x1
	str	w8, [sp, #20]
	add	x0, sp, #40
	bl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEED1B8ne200100Ev
	b	LBB66_6
LBB66_5:
	add	x0, sp, #40
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEE10__completeB8ne200100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEED1B8ne200100Ev
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
LBB66_6:
	ldr	x0, [sp, #24]
	bl	__Unwind_Resume
Lfunc_end5:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table66:
Lexception5:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end5-Lcst_begin5
Lcst_begin5:
	.uleb128 Lfunc_begin5-Lfunc_begin5      ; >> Call Site 1 <<
	.uleb128 Ltmp142-Lfunc_begin5           ;   Call between Lfunc_begin5 and Ltmp142
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp142-Lfunc_begin5           ; >> Call Site 2 <<
	.uleb128 Ltmp145-Ltmp142                ;   Call between Ltmp142 and Ltmp145
	.uleb128 Ltmp146-Lfunc_begin5           ;     jumps to Ltmp146
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp145-Lfunc_begin5           ; >> Call Site 3 <<
	.uleb128 Lfunc_end5-Ltmp145             ;   Call between Ltmp145 and Lfunc_end5
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end5:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
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
	b.ls	LBB70_2
	b	LBB70_1
LBB70_1:
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8ne200100Ev
LBB70_2:
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
	.private_extern	__ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm
	.weak_definition	__ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm
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
	ldur	x1, [x29, #-8]
	str	x1, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x2, [x29, #-16]
	sub	x0, x29, #40
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC1B8ne200100ERS3_m
	ldur	x8, [x29, #-24]
	str	x8, [sp, #48]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #40]
	b	LBB71_1
LBB71_1:                                ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #40]
	ldr	x9, [sp, #48]
	subs	x8, x8, x9
	b.eq	LBB71_6
	b	LBB71_2
LBB71_2:                                ;   in Loop: Header=BB71_1 Depth=1
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	add	x8, x8, #16
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x0, [sp, #40]
	bl	__ZNSt3__112__to_addressB8ne200100IiEEPT_S2_
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
Ltmp147:
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIiEEE9constructB8ne200100IiJELi0EEEvRS2_PT_DpOT0_
Ltmp148:
	b	LBB71_3
LBB71_3:                                ;   in Loop: Header=BB71_1 Depth=1
	b	LBB71_4
LBB71_4:                                ;   in Loop: Header=BB71_1 Depth=1
	ldr	x8, [sp, #40]
	add	x8, x8, #4
	mov	x9, x8
	str	x9, [sp, #40]
	stur	x8, [x29, #-32]
	b	LBB71_1
LBB71_5:
Ltmp149:
	str	x0, [sp, #32]
	mov	x8, x1
	str	w8, [sp, #28]
	sub	x0, x29, #40
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD1B8ne200100Ev
	b	LBB71_7
LBB71_6:
	sub	x0, x29, #40
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD1B8ne200100Ev
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB71_7:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
Lfunc_end6:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table71:
Lexception6:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end6-Lcst_begin6
Lcst_begin6:
	.uleb128 Lfunc_begin6-Lfunc_begin6      ; >> Call Site 1 <<
	.uleb128 Ltmp147-Lfunc_begin6           ;   Call between Lfunc_begin6 and Ltmp147
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp147-Lfunc_begin6           ; >> Call Site 2 <<
	.uleb128 Ltmp148-Ltmp147                ;   Call between Ltmp147 and Ltmp148
	.uleb128 Ltmp149-Lfunc_begin6           ;     jumps to Ltmp149
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp148-Lfunc_begin6           ; >> Call Site 3 <<
	.uleb128 Lfunc_end6-Ltmp148             ;   Call between Ltmp148 and Lfunc_end6
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end6:
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
Ltmp154:
	bl	__ZNSt3__13minB8ne200100ImEERKT_S3_S3_
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp155:
	b	LBB79_1
LBB79_1:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB79_2:
Ltmp156:
	bl	___clang_call_terminate
Lfunc_end7:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table79:
Lexception7:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase2-Lttbaseref2
Lttbaseref2:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end7-Lcst_begin7
Lcst_begin7:
	.uleb128 Ltmp154-Lfunc_begin7           ; >> Call Site 1 <<
	.uleb128 Ltmp155-Ltmp154                ;   Call between Ltmp154 and Ltmp155
	.uleb128 Ltmp156-Lfunc_begin7           ;     jumps to Ltmp156
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
	adrp	x0, l_.str.20@PAGE
	add	x0, x0, l_.str.20@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB8ne200100EPKc
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
	tbz	w0, #0, LBB86_2
	b	LBB86_1
LBB86_1:
	ldr	x8, [sp, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB86_3
LBB86_2:
	ldr	x8, [sp, #16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB86_3
LBB86_3:
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
Ltmp160:
	bl	__ZNSt12length_errorC1B8ne200100EPKc
Ltmp161:
	b	LBB90_1
LBB90_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	adrp	x1, __ZTISt12length_error@GOTPAGE
	ldr	x1, [x1, __ZTISt12length_error@GOTPAGEOFF]
	adrp	x2, __ZNSt12length_errorD1Ev@GOTPAGE
	ldr	x2, [x2, __ZNSt12length_errorD1Ev@GOTPAGEOFF]
	bl	___cxa_throw
LBB90_2:
Ltmp162:
	mov	x8, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	str	x8, [sp, #16]
	mov	x8, x1
	str	w8, [sp, #12]
	bl	___cxa_free_exception
	b	LBB90_3
LBB90_3:
	ldr	x0, [sp, #16]
	bl	__Unwind_Resume
Lfunc_end8:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table90:
Lexception8:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end8-Lcst_begin8
Lcst_begin8:
	.uleb128 Lfunc_begin8-Lfunc_begin8      ; >> Call Site 1 <<
	.uleb128 Ltmp160-Lfunc_begin8           ;   Call between Lfunc_begin8 and Ltmp160
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp160-Lfunc_begin8           ; >> Call Site 2 <<
	.uleb128 Ltmp161-Ltmp160                ;   Call between Ltmp160 and Ltmp161
	.uleb128 Ltmp162-Lfunc_begin8           ;     jumps to Ltmp162
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp161-Lfunc_begin8           ; >> Call Site 3 <<
	.uleb128 Lfunc_end8-Ltmp161             ;   Call between Ltmp161 and Lfunc_end8
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
	b.ls	LBB93_2
	b	LBB93_1
LBB93_1:
	bl	__ZSt28__throw_bad_array_new_lengthB8ne200100v
LBB93_2:
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
	.private_extern	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEED2B8ne200100Ev ; -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEED2B8ne200100Ev
	.globl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEED2B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEED2B8ne200100Ev
	.p2align	2
__ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEED2B8ne200100Ev: ; @_ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEED2B8ne200100Ev
Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception9
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
	tbnz	w8, #0, LBB104_3
	b	LBB104_1
LBB104_1:
Ltmp167:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE16__destroy_vectorclB8ne200100Ev
Ltmp168:
	b	LBB104_2
LBB104_2:
	b	LBB104_3
LBB104_3:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB104_4:
Ltmp169:
	bl	___clang_call_terminate
Lfunc_end9:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table104:
Lexception9:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase3-Lttbaseref3
Lttbaseref3:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end9-Lcst_begin9
Lcst_begin9:
	.uleb128 Ltmp167-Lfunc_begin9           ; >> Call Site 1 <<
	.uleb128 Ltmp168-Ltmp167                ;   Call between Ltmp167 and Ltmp168
	.uleb128 Ltmp169-Lfunc_begin9           ;     jumps to Ltmp169
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
	cbz	x8, LBB105_2
	b	LBB105_1
LBB105_1:
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
	b	LBB105_2
LBB105_2:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
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
	.private_extern	__ZNSt3__16vectorIiNS_9allocatorIiEEE22__base_destruct_at_endB8ne200100EPi ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE22__base_destruct_at_endB8ne200100EPi
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEE22__base_destruct_at_endB8ne200100EPi
	.weak_definition	__ZNSt3__16vectorIiNS_9allocatorIiEEE22__base_destruct_at_endB8ne200100EPi
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEE22__base_destruct_at_endB8ne200100EPi: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEE22__base_destruct_at_endB8ne200100EPi
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
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldr	x8, [x8, #8]
	str	x8, [sp, #24]
	b	LBB110_1
LBB110_1:                               ; =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-16]
	ldr	x9, [sp, #24]
	subs	x8, x8, x9
	b.eq	LBB110_4
	b	LBB110_2
LBB110_2:                               ;   in Loop: Header=BB110_1 Depth=1
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	add	x8, x8, #16
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x8, [sp, #24]
	subs	x0, x8, #4
	str	x0, [sp, #24]
	bl	__ZNSt3__112__to_addressB8ne200100IiEEPT_S2_
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
Ltmp172:
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIiEEE7destroyB8ne200100IiLi0EEEvRS2_PT_
Ltmp173:
	b	LBB110_3
LBB110_3:                               ;   in Loop: Header=BB110_1 Depth=1
	b	LBB110_1
LBB110_4:
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	str	x8, [x9, #8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB110_5:
Ltmp174:
	bl	___clang_call_terminate
Lfunc_end10:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table110:
Lexception10:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase4-Lttbaseref4
Lttbaseref4:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end10-Lcst_begin10
Lcst_begin10:
	.uleb128 Ltmp172-Lfunc_begin10          ; >> Call Site 1 <<
	.uleb128 Ltmp173-Ltmp172                ;   Call between Ltmp172 and Ltmp173
	.uleb128 Ltmp174-Lfunc_begin10          ;     jumps to Ltmp174
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
	.private_extern	__ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne200100Ev ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne200100Ev
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne200100Ev
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne200100Ev: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne200100Ev
Lfunc_begin11:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception11
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
Ltmp177:
	add	x0, sp, #16
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE16__destroy_vectorC1B8ne200100ERS3_
Ltmp178:
	b	LBB117_1
LBB117_1:
	add	x0, sp, #16
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE16__destroy_vectorclB8ne200100Ev
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB117_2:
Ltmp179:
	bl	___clang_call_terminate
Lfunc_end11:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table117:
Lexception11:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase5-Lttbaseref5
Lttbaseref5:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end11-Lcst_begin11
Lcst_begin11:
	.uleb128 Ltmp177-Lfunc_begin11          ; >> Call Site 1 <<
	.uleb128 Ltmp178-Ltmp177                ;   Call between Ltmp177 and Ltmp178
	.uleb128 Ltmp179-Lfunc_begin11          ;     jumps to Ltmp179
	.byte	1                               ;   On action: 1
Lcst_end11:
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
	.private_extern	__ZNSt3__16vectorIjNS_9allocatorIjEEEC2B8ne200100Em ; -- Begin function _ZNSt3__16vectorIjNS_9allocatorIjEEEC2B8ne200100Em
	.globl	__ZNSt3__16vectorIjNS_9allocatorIjEEEC2B8ne200100Em
	.weak_def_can_be_hidden	__ZNSt3__16vectorIjNS_9allocatorIjEEEC2B8ne200100Em
	.p2align	2
__ZNSt3__16vectorIjNS_9allocatorIjEEEC2B8ne200100Em: ; @_ZNSt3__16vectorIjNS_9allocatorIjEEEC2B8ne200100Em
Lfunc_begin12:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception12
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
	bl	__ZNSt3__19allocatorIjEC1B8ne200100Ev
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	add	x0, sp, #32
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorC1B8ne200100ERS3_
	ldr	x0, [sp, #32]
	add	x8, sp, #40
	bl	__ZNSt3__122__make_exception_guardB8ne200100INS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES7_
	ldur	x8, [x29, #-24]
	subs	x8, x8, #0
	b.ls	LBB118_5
	b	LBB118_1
LBB118_1:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldur	x1, [x29, #-24]
Ltmp180:
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEE11__vallocateB8ne200100Em
Ltmp181:
	b	LBB118_2
LBB118_2:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldur	x1, [x29, #-24]
Ltmp182:
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEE18__construct_at_endEm
Ltmp183:
	b	LBB118_3
LBB118_3:
	b	LBB118_5
LBB118_4:
Ltmp184:
	str	x0, [sp, #24]
	mov	x8, x1
	str	w8, [sp, #20]
	add	x0, sp, #40
	bl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEED1B8ne200100Ev
	b	LBB118_6
LBB118_5:
	add	x0, sp, #40
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEE10__completeB8ne200100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEED1B8ne200100Ev
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
LBB118_6:
	ldr	x0, [sp, #24]
	bl	__Unwind_Resume
Lfunc_end12:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table118:
Lexception12:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end12-Lcst_begin12
Lcst_begin12:
	.uleb128 Lfunc_begin12-Lfunc_begin12    ; >> Call Site 1 <<
	.uleb128 Ltmp180-Lfunc_begin12          ;   Call between Lfunc_begin12 and Ltmp180
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp180-Lfunc_begin12          ; >> Call Site 2 <<
	.uleb128 Ltmp183-Ltmp180                ;   Call between Ltmp180 and Ltmp183
	.uleb128 Ltmp184-Lfunc_begin12          ;     jumps to Ltmp184
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp183-Lfunc_begin12          ; >> Call Site 3 <<
	.uleb128 Lfunc_end12-Ltmp183            ;   Call between Ltmp183 and Lfunc_end12
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end12:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__19allocatorIjEC1B8ne200100Ev ; -- Begin function _ZNSt3__19allocatorIjEC1B8ne200100Ev
	.globl	__ZNSt3__19allocatorIjEC1B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__19allocatorIjEC1B8ne200100Ev
	.p2align	2
__ZNSt3__19allocatorIjEC1B8ne200100Ev:  ; @_ZNSt3__19allocatorIjEC1B8ne200100Ev
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
	bl	__ZNSt3__19allocatorIjEC2B8ne200100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__122__make_exception_guardB8ne200100INS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES7_ ; -- Begin function _ZNSt3__122__make_exception_guardB8ne200100INS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES7_
	.globl	__ZNSt3__122__make_exception_guardB8ne200100INS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES7_
	.weak_definition	__ZNSt3__122__make_exception_guardB8ne200100INS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES7_
	.p2align	2
__ZNSt3__122__make_exception_guardB8ne200100INS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES7_: ; @_ZNSt3__122__make_exception_guardB8ne200100INS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES7_
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
	bl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEEC1B8ne200100ES5_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorC1B8ne200100ERS3_ ; -- Begin function _ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorC1B8ne200100ERS3_
	.globl	__ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorC1B8ne200100ERS3_
	.weak_def_can_be_hidden	__ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorC1B8ne200100ERS3_
	.p2align	2
__ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorC1B8ne200100ERS3_: ; @_ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorC1B8ne200100ERS3_
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
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorC2B8ne200100ERS3_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIjNS_9allocatorIjEEE11__vallocateB8ne200100Em ; -- Begin function _ZNSt3__16vectorIjNS_9allocatorIjEEE11__vallocateB8ne200100Em
	.globl	__ZNSt3__16vectorIjNS_9allocatorIjEEE11__vallocateB8ne200100Em
	.weak_definition	__ZNSt3__16vectorIjNS_9allocatorIjEEE11__vallocateB8ne200100Em
	.p2align	2
__ZNSt3__16vectorIjNS_9allocatorIjEEE11__vallocateB8ne200100Em: ; @_ZNSt3__16vectorIjNS_9allocatorIjEEE11__vallocateB8ne200100Em
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
	bl	__ZNKSt3__16vectorIjNS_9allocatorIjEEE8max_sizeB8ne200100Ev
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	subs	x8, x8, x0
	b.ls	LBB122_2
	b	LBB122_1
LBB122_1:
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB8ne200100Ev
LBB122_2:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	add	x0, x8, #16
	ldur	x1, [x29, #-16]
	bl	__ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m
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
	bl	__ZNKSt3__16vectorIjNS_9allocatorIjEEE14__annotate_newB8ne200100Em
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIjNS_9allocatorIjEEE18__construct_at_endEm ; -- Begin function _ZNSt3__16vectorIjNS_9allocatorIjEEE18__construct_at_endEm
	.globl	__ZNSt3__16vectorIjNS_9allocatorIjEEE18__construct_at_endEm
	.weak_definition	__ZNSt3__16vectorIjNS_9allocatorIjEEE18__construct_at_endEm
	.p2align	2
__ZNSt3__16vectorIjNS_9allocatorIjEEE18__construct_at_endEm: ; @_ZNSt3__16vectorIjNS_9allocatorIjEEE18__construct_at_endEm
Lfunc_begin13:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception13
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
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionC1B8ne200100ERS3_m
	ldur	x8, [x29, #-24]
	str	x8, [sp, #48]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #40]
	b	LBB123_1
LBB123_1:                               ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #40]
	ldr	x9, [sp, #48]
	subs	x8, x8, x9
	b.eq	LBB123_6
	b	LBB123_2
LBB123_2:                               ;   in Loop: Header=BB123_1 Depth=1
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	add	x8, x8, #16
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x0, [sp, #40]
	bl	__ZNSt3__112__to_addressB8ne200100IjEEPT_S2_
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
Ltmp185:
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIjEEE9constructB8ne200100IjJELi0EEEvRS2_PT_DpOT0_
Ltmp186:
	b	LBB123_3
LBB123_3:                               ;   in Loop: Header=BB123_1 Depth=1
	b	LBB123_4
LBB123_4:                               ;   in Loop: Header=BB123_1 Depth=1
	ldr	x8, [sp, #40]
	add	x8, x8, #4
	mov	x9, x8
	str	x9, [sp, #40]
	stur	x8, [x29, #-32]
	b	LBB123_1
LBB123_5:
Ltmp187:
	str	x0, [sp, #32]
	mov	x8, x1
	str	w8, [sp, #28]
	sub	x0, x29, #40
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionD1B8ne200100Ev
	b	LBB123_7
LBB123_6:
	sub	x0, x29, #40
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionD1B8ne200100Ev
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB123_7:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
Lfunc_end13:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table123:
Lexception13:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end13-Lcst_begin13
Lcst_begin13:
	.uleb128 Lfunc_begin13-Lfunc_begin13    ; >> Call Site 1 <<
	.uleb128 Ltmp185-Lfunc_begin13          ;   Call between Lfunc_begin13 and Ltmp185
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp185-Lfunc_begin13          ; >> Call Site 2 <<
	.uleb128 Ltmp186-Ltmp185                ;   Call between Ltmp185 and Ltmp186
	.uleb128 Ltmp187-Lfunc_begin13          ;     jumps to Ltmp187
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp186-Lfunc_begin13          ; >> Call Site 3 <<
	.uleb128 Lfunc_end13-Ltmp186            ;   Call between Ltmp186 and Lfunc_end13
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end13:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEE10__completeB8ne200100Ev ; -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEE10__completeB8ne200100Ev
	.globl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEE10__completeB8ne200100Ev
	.weak_definition	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEE10__completeB8ne200100Ev
	.p2align	2
__ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEE10__completeB8ne200100Ev: ; @_ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEE10__completeB8ne200100Ev
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
	.private_extern	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEED1B8ne200100Ev ; -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEED1B8ne200100Ev
	.globl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEED1B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEED1B8ne200100Ev
	.p2align	2
__ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEED1B8ne200100Ev: ; @_ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEED1B8ne200100Ev
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
	bl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEED2B8ne200100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIjEC2B8ne200100Ev ; -- Begin function _ZNSt3__19allocatorIjEC2B8ne200100Ev
	.globl	__ZNSt3__19allocatorIjEC2B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__19allocatorIjEC2B8ne200100Ev
	.p2align	2
__ZNSt3__19allocatorIjEC2B8ne200100Ev:  ; @_ZNSt3__19allocatorIjEC2B8ne200100Ev
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
	bl	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIjEEEC2B8ne200100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIjEEEC2B8ne200100Ev ; -- Begin function _ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIjEEEC2B8ne200100Ev
	.globl	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIjEEEC2B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIjEEEC2B8ne200100Ev
	.p2align	2
__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIjEEEC2B8ne200100Ev: ; @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIjEEEC2B8ne200100Ev
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
	.private_extern	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEEC1B8ne200100ES5_ ; -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEEC1B8ne200100ES5_
	.globl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEEC1B8ne200100ES5_
	.weak_def_can_be_hidden	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEEC1B8ne200100ES5_
	.p2align	2
__ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEEC1B8ne200100ES5_: ; @_ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEEC1B8ne200100ES5_
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
	bl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEEC2B8ne200100ES5_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEEC2B8ne200100ES5_ ; -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEEC2B8ne200100ES5_
	.globl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEEC2B8ne200100ES5_
	.weak_def_can_be_hidden	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEEC2B8ne200100ES5_
	.p2align	2
__ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEEC2B8ne200100ES5_: ; @_ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEEC2B8ne200100ES5_
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
	.private_extern	__ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorC2B8ne200100ERS3_ ; -- Begin function _ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorC2B8ne200100ERS3_
	.globl	__ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorC2B8ne200100ERS3_
	.weak_def_can_be_hidden	__ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorC2B8ne200100ERS3_
	.p2align	2
__ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorC2B8ne200100ERS3_: ; @_ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorC2B8ne200100ERS3_
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
	.private_extern	__ZNKSt3__16vectorIjNS_9allocatorIjEEE8max_sizeB8ne200100Ev ; -- Begin function _ZNKSt3__16vectorIjNS_9allocatorIjEEE8max_sizeB8ne200100Ev
	.globl	__ZNKSt3__16vectorIjNS_9allocatorIjEEE8max_sizeB8ne200100Ev
	.weak_definition	__ZNKSt3__16vectorIjNS_9allocatorIjEEE8max_sizeB8ne200100Ev
	.p2align	2
__ZNKSt3__16vectorIjNS_9allocatorIjEEE8max_sizeB8ne200100Ev: ; @_ZNKSt3__16vectorIjNS_9allocatorIjEEE8max_sizeB8ne200100Ev
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
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	add	x0, x8, #16
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIjEEE8max_sizeB8ne200100IS2_Li0EEEmRKS2_
	sub	x8, x29, #16
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	stur	x0, [x29, #-16]
	bl	__ZNSt3__114numeric_limitsIlE3maxB8ne200100Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	add	x1, sp, #24
	str	x8, [sp, #24]
Ltmp192:
	bl	__ZNSt3__13minB8ne200100ImEERKT_S3_S3_
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp193:
	b	LBB131_1
LBB131_1:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB131_2:
Ltmp194:
	bl	___clang_call_terminate
Lfunc_end14:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table131:
Lexception14:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase6-Lttbaseref6
Lttbaseref6:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end14-Lcst_begin14
Lcst_begin14:
	.uleb128 Ltmp192-Lfunc_begin14          ; >> Call Site 1 <<
	.uleb128 Ltmp193-Ltmp192                ;   Call between Ltmp192 and Ltmp193
	.uleb128 Ltmp194-Lfunc_begin14          ;     jumps to Ltmp194
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
	.private_extern	__ZNSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB8ne200100Ev ; -- Begin function _ZNSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB8ne200100Ev
	.globl	__ZNSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB8ne200100Ev
	.weak_definition	__ZNSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB8ne200100Ev
	.p2align	2
__ZNSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB8ne200100Ev: ; @_ZNSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB8ne200100Ev
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x0, l_.str.20@PAGE
	add	x0, x0, l_.str.20@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB8ne200100EPKc
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m ; -- Begin function _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m
	.globl	__ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m
	.weak_definition	__ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m
	.p2align	2
__ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m: ; @_ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m
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
	bl	__ZNSt3__19allocatorIjE8allocateB8ne200100Em
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
	.private_extern	__ZNKSt3__16vectorIjNS_9allocatorIjEEE14__annotate_newB8ne200100Em ; -- Begin function _ZNKSt3__16vectorIjNS_9allocatorIjEEE14__annotate_newB8ne200100Em
	.globl	__ZNKSt3__16vectorIjNS_9allocatorIjEEE14__annotate_newB8ne200100Em
	.weak_definition	__ZNKSt3__16vectorIjNS_9allocatorIjEEE14__annotate_newB8ne200100Em
	.p2align	2
__ZNKSt3__16vectorIjNS_9allocatorIjEEE14__annotate_newB8ne200100Em: ; @_ZNKSt3__16vectorIjNS_9allocatorIjEEE14__annotate_newB8ne200100Em
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
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIjEEE8max_sizeB8ne200100IS2_Li0EEEmRKS2_ ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIjEEE8max_sizeB8ne200100IS2_Li0EEEmRKS2_
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIjEEE8max_sizeB8ne200100IS2_Li0EEEmRKS2_
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIjEEE8max_sizeB8ne200100IS2_Li0EEEmRKS2_: ; @_ZNSt3__116allocator_traitsINS_9allocatorIjEEE8max_sizeB8ne200100IS2_Li0EEEmRKS2_
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
	bl	__ZNKSt3__19allocatorIjE8max_sizeB8ne200100Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__19allocatorIjE8max_sizeB8ne200100Ev ; -- Begin function _ZNKSt3__19allocatorIjE8max_sizeB8ne200100Ev
	.globl	__ZNKSt3__19allocatorIjE8max_sizeB8ne200100Ev
	.weak_definition	__ZNKSt3__19allocatorIjE8max_sizeB8ne200100Ev
	.p2align	2
__ZNKSt3__19allocatorIjE8max_sizeB8ne200100Ev: ; @_ZNKSt3__19allocatorIjE8max_sizeB8ne200100Ev
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
	.private_extern	__ZNSt3__19allocatorIjE8allocateB8ne200100Em ; -- Begin function _ZNSt3__19allocatorIjE8allocateB8ne200100Em
	.globl	__ZNSt3__19allocatorIjE8allocateB8ne200100Em
	.weak_definition	__ZNSt3__19allocatorIjE8allocateB8ne200100Em
	.p2align	2
__ZNSt3__19allocatorIjE8allocateB8ne200100Em: ; @_ZNSt3__19allocatorIjE8allocateB8ne200100Em
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
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIjEEE8max_sizeB8ne200100IS2_Li0EEEmRKS2_
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	subs	x8, x8, x0
	b.ls	LBB137_2
	b	LBB137_1
LBB137_1:
	bl	__ZSt28__throw_bad_array_new_lengthB8ne200100v
LBB137_2:
	ldr	x0, [sp, #16]
	mov	x1, #4                          ; =0x4
	bl	__ZNSt3__117__libcpp_allocateB8ne200100IjEEPT_NS_15__element_countEm
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__117__libcpp_allocateB8ne200100IjEEPT_NS_15__element_countEm ; -- Begin function _ZNSt3__117__libcpp_allocateB8ne200100IjEEPT_NS_15__element_countEm
	.globl	__ZNSt3__117__libcpp_allocateB8ne200100IjEEPT_NS_15__element_countEm
	.weak_definition	__ZNSt3__117__libcpp_allocateB8ne200100IjEEPT_NS_15__element_countEm
	.p2align	2
__ZNSt3__117__libcpp_allocateB8ne200100IjEEPT_NS_15__element_countEm: ; @_ZNSt3__117__libcpp_allocateB8ne200100IjEEPT_NS_15__element_countEm
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
	bl	__ZNSt3__121__libcpp_operator_newB8ne200100IjEEPvm
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__121__libcpp_operator_newB8ne200100IjEEPvm ; -- Begin function _ZNSt3__121__libcpp_operator_newB8ne200100IjEEPvm
	.globl	__ZNSt3__121__libcpp_operator_newB8ne200100IjEEPvm
	.weak_definition	__ZNSt3__121__libcpp_operator_newB8ne200100IjEEPvm
	.p2align	2
__ZNSt3__121__libcpp_operator_newB8ne200100IjEEPvm: ; @_ZNSt3__121__libcpp_operator_newB8ne200100IjEEPvm
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
	.private_extern	__ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionC1B8ne200100ERS3_m ; -- Begin function _ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionC1B8ne200100ERS3_m
	.globl	__ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionC1B8ne200100ERS3_m
	.weak_def_can_be_hidden	__ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionC1B8ne200100ERS3_m
	.p2align	2
__ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionC1B8ne200100ERS3_m: ; @_ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionC1B8ne200100ERS3_m
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
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionC2B8ne200100ERS3_m
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIjEEE9constructB8ne200100IjJELi0EEEvRS2_PT_DpOT0_ ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIjEEE9constructB8ne200100IjJELi0EEEvRS2_PT_DpOT0_
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIjEEE9constructB8ne200100IjJELi0EEEvRS2_PT_DpOT0_
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIjEEE9constructB8ne200100IjJELi0EEEvRS2_PT_DpOT0_: ; @_ZNSt3__116allocator_traitsINS_9allocatorIjEEE9constructB8ne200100IjJELi0EEEvRS2_PT_DpOT0_
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
	bl	__ZNSt3__19allocatorIjE9constructB8ne200100IjJEEEvPT_DpOT0_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112__to_addressB8ne200100IjEEPT_S2_ ; -- Begin function _ZNSt3__112__to_addressB8ne200100IjEEPT_S2_
	.globl	__ZNSt3__112__to_addressB8ne200100IjEEPT_S2_
	.weak_definition	__ZNSt3__112__to_addressB8ne200100IjEEPT_S2_
	.p2align	2
__ZNSt3__112__to_addressB8ne200100IjEEPT_S2_: ; @_ZNSt3__112__to_addressB8ne200100IjEEPT_S2_
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
	.private_extern	__ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionD1B8ne200100Ev ; -- Begin function _ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionD1B8ne200100Ev
	.globl	__ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionD1B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionD1B8ne200100Ev
	.p2align	2
__ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionD1B8ne200100Ev: ; @_ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionD1B8ne200100Ev
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
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionD2B8ne200100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionC2B8ne200100ERS3_m ; -- Begin function _ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionC2B8ne200100ERS3_m
	.globl	__ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionC2B8ne200100ERS3_m
	.weak_def_can_be_hidden	__ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionC2B8ne200100ERS3_m
	.p2align	2
__ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionC2B8ne200100ERS3_m: ; @_ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionC2B8ne200100ERS3_m
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
	.globl	__ZNSt3__19allocatorIjE9constructB8ne200100IjJEEEvPT_DpOT0_ ; -- Begin function _ZNSt3__19allocatorIjE9constructB8ne200100IjJEEEvPT_DpOT0_
	.weak_definition	__ZNSt3__19allocatorIjE9constructB8ne200100IjJEEEvPT_DpOT0_
	.p2align	2
__ZNSt3__19allocatorIjE9constructB8ne200100IjJEEEvPT_DpOT0_: ; @_ZNSt3__19allocatorIjE9constructB8ne200100IjJEEEvPT_DpOT0_
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
	.private_extern	__ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionD2B8ne200100Ev ; -- Begin function _ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionD2B8ne200100Ev
	.globl	__ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionD2B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionD2B8ne200100Ev
	.p2align	2
__ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionD2B8ne200100Ev: ; @_ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionD2B8ne200100Ev
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
	.private_extern	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEED2B8ne200100Ev ; -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEED2B8ne200100Ev
	.globl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEED2B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEED2B8ne200100Ev
	.p2align	2
__ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEED2B8ne200100Ev: ; @_ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEED2B8ne200100Ev
Lfunc_begin15:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception15
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
	tbnz	w8, #0, LBB147_3
	b	LBB147_1
LBB147_1:
Ltmp201:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorclB8ne200100Ev
Ltmp202:
	b	LBB147_2
LBB147_2:
	b	LBB147_3
LBB147_3:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB147_4:
Ltmp203:
	bl	___clang_call_terminate
Lfunc_end15:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table147:
Lexception15:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase7-Lttbaseref7
Lttbaseref7:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end15-Lcst_begin15
Lcst_begin15:
	.uleb128 Ltmp201-Lfunc_begin15          ; >> Call Site 1 <<
	.uleb128 Ltmp202-Ltmp201                ;   Call between Ltmp201 and Ltmp202
	.uleb128 Ltmp203-Lfunc_begin15          ;     jumps to Ltmp203
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
	.private_extern	__ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorclB8ne200100Ev ; -- Begin function _ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorclB8ne200100Ev
	.globl	__ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorclB8ne200100Ev
	.weak_definition	__ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorclB8ne200100Ev
	.p2align	2
__ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorclB8ne200100Ev: ; @_ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorclB8ne200100Ev
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
	cbz	x8, LBB148_2
	b	LBB148_1
LBB148_1:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEE5clearB8ne200100Ev
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	bl	__ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_deleteB8ne200100Ev
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x9, [x8]
	add	x9, x9, #16
	str	x9, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x9, [x8]
	ldr	x9, [x9]
	str	x9, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [x8]
	bl	__ZNKSt3__16vectorIjNS_9allocatorIjEEE8capacityB8ne200100Ev
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	mov	x2, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIjEEE10deallocateB8ne200100ERS2_Pjm
	b	LBB148_2
LBB148_2:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIjNS_9allocatorIjEEE5clearB8ne200100Ev ; -- Begin function _ZNSt3__16vectorIjNS_9allocatorIjEEE5clearB8ne200100Ev
	.globl	__ZNSt3__16vectorIjNS_9allocatorIjEEE5clearB8ne200100Ev
	.weak_definition	__ZNSt3__16vectorIjNS_9allocatorIjEEE5clearB8ne200100Ev
	.p2align	2
__ZNSt3__16vectorIjNS_9allocatorIjEEE5clearB8ne200100Ev: ; @_ZNSt3__16vectorIjNS_9allocatorIjEEE5clearB8ne200100Ev
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
	bl	__ZNKSt3__16vectorIjNS_9allocatorIjEEE4sizeB8ne200100Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	str	x8, [sp, #16]
	ldr	x1, [x0]
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEE22__base_destruct_at_endB8ne200100EPj
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x1, [sp, #16]
	bl	__ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_shrinkB8ne200100Em
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_deleteB8ne200100Ev ; -- Begin function _ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_deleteB8ne200100Ev
	.globl	__ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_deleteB8ne200100Ev
	.weak_definition	__ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_deleteB8ne200100Ev
	.p2align	2
__ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_deleteB8ne200100Ev: ; @_ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_deleteB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116allocator_traitsINS_9allocatorIjEEE10deallocateB8ne200100ERS2_Pjm ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIjEEE10deallocateB8ne200100ERS2_Pjm
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIjEEE10deallocateB8ne200100ERS2_Pjm
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIjEEE10deallocateB8ne200100ERS2_Pjm
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIjEEE10deallocateB8ne200100ERS2_Pjm: ; @_ZNSt3__116allocator_traitsINS_9allocatorIjEEE10deallocateB8ne200100ERS2_Pjm
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
	bl	__ZNSt3__19allocatorIjE10deallocateB8ne200100EPjm
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIjNS_9allocatorIjEEE8capacityB8ne200100Ev ; -- Begin function _ZNKSt3__16vectorIjNS_9allocatorIjEEE8capacityB8ne200100Ev
	.globl	__ZNKSt3__16vectorIjNS_9allocatorIjEEE8capacityB8ne200100Ev
	.weak_definition	__ZNKSt3__16vectorIjNS_9allocatorIjEEE8capacityB8ne200100Ev
	.p2align	2
__ZNKSt3__16vectorIjNS_9allocatorIjEEE8capacityB8ne200100Ev: ; @_ZNKSt3__16vectorIjNS_9allocatorIjEEE8capacityB8ne200100Ev
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
	.private_extern	__ZNKSt3__16vectorIjNS_9allocatorIjEEE4sizeB8ne200100Ev ; -- Begin function _ZNKSt3__16vectorIjNS_9allocatorIjEEE4sizeB8ne200100Ev
	.globl	__ZNKSt3__16vectorIjNS_9allocatorIjEEE4sizeB8ne200100Ev
	.weak_definition	__ZNKSt3__16vectorIjNS_9allocatorIjEEE4sizeB8ne200100Ev
	.p2align	2
__ZNKSt3__16vectorIjNS_9allocatorIjEEE4sizeB8ne200100Ev: ; @_ZNKSt3__16vectorIjNS_9allocatorIjEEE4sizeB8ne200100Ev
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
	.private_extern	__ZNSt3__16vectorIjNS_9allocatorIjEEE22__base_destruct_at_endB8ne200100EPj ; -- Begin function _ZNSt3__16vectorIjNS_9allocatorIjEEE22__base_destruct_at_endB8ne200100EPj
	.globl	__ZNSt3__16vectorIjNS_9allocatorIjEEE22__base_destruct_at_endB8ne200100EPj
	.weak_definition	__ZNSt3__16vectorIjNS_9allocatorIjEEE22__base_destruct_at_endB8ne200100EPj
	.p2align	2
__ZNSt3__16vectorIjNS_9allocatorIjEEE22__base_destruct_at_endB8ne200100EPj: ; @_ZNSt3__16vectorIjNS_9allocatorIjEEE22__base_destruct_at_endB8ne200100EPj
Lfunc_begin16:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception16
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
	b	LBB154_1
LBB154_1:                               ; =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-16]
	ldr	x9, [sp, #24]
	subs	x8, x8, x9
	b.eq	LBB154_4
	b	LBB154_2
LBB154_2:                               ;   in Loop: Header=BB154_1 Depth=1
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	add	x8, x8, #16
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x8, [sp, #24]
	subs	x0, x8, #4
	str	x0, [sp, #24]
	bl	__ZNSt3__112__to_addressB8ne200100IjEEPT_S2_
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
Ltmp207:
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIjEEE7destroyB8ne200100IjLi0EEEvRS2_PT_
Ltmp208:
	b	LBB154_3
LBB154_3:                               ;   in Loop: Header=BB154_1 Depth=1
	b	LBB154_1
LBB154_4:
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	str	x8, [x9, #8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB154_5:
Ltmp209:
	bl	___clang_call_terminate
Lfunc_end16:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table154:
Lexception16:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase8-Lttbaseref8
Lttbaseref8:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end16-Lcst_begin16
Lcst_begin16:
	.uleb128 Ltmp207-Lfunc_begin16          ; >> Call Site 1 <<
	.uleb128 Ltmp208-Ltmp207                ;   Call between Ltmp207 and Ltmp208
	.uleb128 Ltmp209-Lfunc_begin16          ;     jumps to Ltmp209
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
	.private_extern	__ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_shrinkB8ne200100Em ; -- Begin function _ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_shrinkB8ne200100Em
	.globl	__ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_shrinkB8ne200100Em
	.weak_definition	__ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_shrinkB8ne200100Em
	.p2align	2
__ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_shrinkB8ne200100Em: ; @_ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_shrinkB8ne200100Em
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
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIjEEE7destroyB8ne200100IjLi0EEEvRS2_PT_ ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIjEEE7destroyB8ne200100IjLi0EEEvRS2_PT_
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIjEEE7destroyB8ne200100IjLi0EEEvRS2_PT_
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIjEEE7destroyB8ne200100IjLi0EEEvRS2_PT_: ; @_ZNSt3__116allocator_traitsINS_9allocatorIjEEE7destroyB8ne200100IjLi0EEEvRS2_PT_
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
	bl	__ZNSt3__19allocatorIjE7destroyB8ne200100EPj
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIjE7destroyB8ne200100EPj ; -- Begin function _ZNSt3__19allocatorIjE7destroyB8ne200100EPj
	.globl	__ZNSt3__19allocatorIjE7destroyB8ne200100EPj
	.weak_definition	__ZNSt3__19allocatorIjE7destroyB8ne200100EPj
	.p2align	2
__ZNSt3__19allocatorIjE7destroyB8ne200100EPj: ; @_ZNSt3__19allocatorIjE7destroyB8ne200100EPj
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
	.private_extern	__ZNSt3__19allocatorIjE10deallocateB8ne200100EPjm ; -- Begin function _ZNSt3__19allocatorIjE10deallocateB8ne200100EPjm
	.globl	__ZNSt3__19allocatorIjE10deallocateB8ne200100EPjm
	.weak_definition	__ZNSt3__19allocatorIjE10deallocateB8ne200100EPjm
	.p2align	2
__ZNSt3__19allocatorIjE10deallocateB8ne200100EPjm: ; @_ZNSt3__19allocatorIjE10deallocateB8ne200100EPjm
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
	bl	__ZNSt3__119__libcpp_deallocateB8ne200100IjEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__libcpp_deallocateB8ne200100IjEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm ; -- Begin function _ZNSt3__119__libcpp_deallocateB8ne200100IjEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm
	.globl	__ZNSt3__119__libcpp_deallocateB8ne200100IjEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm
	.weak_definition	__ZNSt3__119__libcpp_deallocateB8ne200100IjEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm
	.p2align	2
__ZNSt3__119__libcpp_deallocateB8ne200100IjEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm: ; @_ZNSt3__119__libcpp_deallocateB8ne200100IjEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm
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
	bl	__ZNSt3__124__libcpp_operator_deleteB8ne200100IJPjEEEvDpT_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__124__libcpp_operator_deleteB8ne200100IJPjEEEvDpT_ ; -- Begin function _ZNSt3__124__libcpp_operator_deleteB8ne200100IJPjEEEvDpT_
	.globl	__ZNSt3__124__libcpp_operator_deleteB8ne200100IJPjEEEvDpT_
	.weak_definition	__ZNSt3__124__libcpp_operator_deleteB8ne200100IJPjEEEvDpT_
	.p2align	2
__ZNSt3__124__libcpp_operator_deleteB8ne200100IJPjEEEvDpT_: ; @_ZNSt3__124__libcpp_operator_deleteB8ne200100IJPjEEEvDpT_
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
	.private_extern	__ZNSt3__16vectorIjNS_9allocatorIjEEED2B8ne200100Ev ; -- Begin function _ZNSt3__16vectorIjNS_9allocatorIjEEED2B8ne200100Ev
	.globl	__ZNSt3__16vectorIjNS_9allocatorIjEEED2B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIjNS_9allocatorIjEEED2B8ne200100Ev
	.p2align	2
__ZNSt3__16vectorIjNS_9allocatorIjEEED2B8ne200100Ev: ; @_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8ne200100Ev
Lfunc_begin17:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception17
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
Ltmp212:
	add	x0, sp, #16
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorC1B8ne200100ERS3_
Ltmp213:
	b	LBB161_1
LBB161_1:
	add	x0, sp, #16
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorclB8ne200100Ev
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB161_2:
Ltmp214:
	bl	___clang_call_terminate
Lfunc_end17:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table161:
Lexception17:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase9-Lttbaseref9
Lttbaseref9:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end17-Lcst_begin17
Lcst_begin17:
	.uleb128 Ltmp212-Lfunc_begin17          ; >> Call Site 1 <<
	.uleb128 Ltmp213-Ltmp212                ;   Call between Ltmp212 and Ltmp213
	.uleb128 Ltmp214-Lfunc_begin17          ;     jumps to Ltmp214
	.byte	1                               ;   On action: 1
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
	.private_extern	__ZNSt3__16vectorIiNS_9allocatorIiEEEC2B8ne200100ERKS3_ ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEEC2B8ne200100ERKS3_
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEEC2B8ne200100ERKS3_
	.weak_def_can_be_hidden	__ZNSt3__16vectorIiNS_9allocatorIiEEEC2B8ne200100ERKS3_
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEEC2B8ne200100ERKS3_: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEEC2B8ne200100ERKS3_
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
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8]
	str	xzr, [x8, #8]
	str	xzr, [x8, #16]
	ldur	x8, [x29, #-16]
	add	x0, x8, #16
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIiEEE37select_on_container_copy_constructionB8ne200100IS2_vLi0EEES2_RKS2_
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeB8ne200100Ev
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	ldr	x2, [sp, #8]                    ; 8-byte Folded Reload
	mov	x3, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE16__init_with_sizeB8ne200100IPiS5_EEvT_T0_m
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIiEEE37select_on_container_copy_constructionB8ne200100IS2_vLi0EEES2_RKS2_ ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIiEEE37select_on_container_copy_constructionB8ne200100IS2_vLi0EEES2_RKS2_
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIiEEE37select_on_container_copy_constructionB8ne200100IS2_vLi0EEES2_RKS2_
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIiEEE37select_on_container_copy_constructionB8ne200100IS2_vLi0EEES2_RKS2_: ; @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE37select_on_container_copy_constructionB8ne200100IS2_vLi0EEES2_RKS2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEE16__init_with_sizeB8ne200100IPiS5_EEvT_T0_m ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE16__init_with_sizeB8ne200100IPiS5_EEvT_T0_m
	.weak_definition	__ZNSt3__16vectorIiNS_9allocatorIiEEE16__init_with_sizeB8ne200100IPiS5_EEvT_T0_m
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEE16__init_with_sizeB8ne200100IPiS5_EEvT_T0_m: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEE16__init_with_sizeB8ne200100IPiS5_EEvT_T0_m
Lfunc_begin18:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception18
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
	str	x1, [sp, #16]                   ; 8-byte Folded Spill
	add	x0, sp, #40
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE16__destroy_vectorC1B8ne200100ERS3_
	ldr	x0, [sp, #40]
	add	x8, sp, #48
	bl	__ZNSt3__122__make_exception_guardB8ne200100INS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES7_
	ldur	x8, [x29, #-32]
	subs	x8, x8, #0
	b.ls	LBB164_5
	b	LBB164_1
LBB164_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x1, [x29, #-32]
Ltmp216:
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE11__vallocateB8ne200100Em
Ltmp217:
	b	LBB164_2
LBB164_2:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	ldur	x3, [x29, #-32]
Ltmp218:
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endIPiS5_EEvT_T0_m
Ltmp219:
	b	LBB164_3
LBB164_3:
	b	LBB164_5
LBB164_4:
Ltmp220:
	str	x0, [sp, #32]
	mov	x8, x1
	str	w8, [sp, #28]
	add	x0, sp, #48
	bl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEED1B8ne200100Ev
	b	LBB164_6
LBB164_5:
	add	x0, sp, #48
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEE10__completeB8ne200100Ev
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEED1B8ne200100Ev
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB164_6:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
Lfunc_end18:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table164:
Lexception18:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end18-Lcst_begin18
Lcst_begin18:
	.uleb128 Lfunc_begin18-Lfunc_begin18    ; >> Call Site 1 <<
	.uleb128 Ltmp216-Lfunc_begin18          ;   Call between Lfunc_begin18 and Ltmp216
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp216-Lfunc_begin18          ; >> Call Site 2 <<
	.uleb128 Ltmp219-Ltmp216                ;   Call between Ltmp216 and Ltmp219
	.uleb128 Ltmp220-Lfunc_begin18          ;     jumps to Ltmp220
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp219-Lfunc_begin18          ; >> Call Site 3 <<
	.uleb128 Lfunc_end18-Ltmp219            ;   Call between Ltmp219 and Lfunc_end18
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end18:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endIPiS5_EEvT_T0_m ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endIPiS5_EEvT_T0_m
	.weak_definition	__ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endIPiS5_EEvT_T0_m
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endIPiS5_EEvT_T0_m: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endIPiS5_EEvT_T0_m
Lfunc_begin19:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception19
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
Ltmp221:
	add	x0, x8, #16
	bl	__ZNSt3__130__uninitialized_allocator_copyB8ne200100INS_9allocatorIiEEPiS3_S3_EET2_RT_T0_T1_S4_
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp222:
	b	LBB165_1
LBB165_1:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	add	x0, sp, #40
	str	x8, [sp, #48]
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD1B8ne200100Ev
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB165_2:
Ltmp223:
	str	x0, [sp, #32]
	mov	x8, x1
	str	w8, [sp, #28]
	add	x0, sp, #40
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD1B8ne200100Ev
	b	LBB165_3
LBB165_3:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
Lfunc_end19:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table165:
Lexception19:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end19-Lcst_begin19
Lcst_begin19:
	.uleb128 Lfunc_begin19-Lfunc_begin19    ; >> Call Site 1 <<
	.uleb128 Ltmp221-Lfunc_begin19          ;   Call between Lfunc_begin19 and Ltmp221
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp221-Lfunc_begin19          ; >> Call Site 2 <<
	.uleb128 Ltmp222-Ltmp221                ;   Call between Ltmp221 and Ltmp222
	.uleb128 Ltmp223-Lfunc_begin19          ;     jumps to Ltmp223
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp222-Lfunc_begin19          ; >> Call Site 3 <<
	.uleb128 Lfunc_end19-Ltmp222            ;   Call between Ltmp222 and Lfunc_end19
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end19:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__130__uninitialized_allocator_copyB8ne200100INS_9allocatorIiEEPiS3_S3_EET2_RT_T0_T1_S4_ ; -- Begin function _ZNSt3__130__uninitialized_allocator_copyB8ne200100INS_9allocatorIiEEPiS3_S3_EET2_RT_T0_T1_S4_
	.globl	__ZNSt3__130__uninitialized_allocator_copyB8ne200100INS_9allocatorIiEEPiS3_S3_EET2_RT_T0_T1_S4_
	.weak_definition	__ZNSt3__130__uninitialized_allocator_copyB8ne200100INS_9allocatorIiEEPiS3_S3_EET2_RT_T0_T1_S4_
	.p2align	2
__ZNSt3__130__uninitialized_allocator_copyB8ne200100INS_9allocatorIiEEPiS3_S3_EET2_RT_T0_T1_S4_: ; @_ZNSt3__130__uninitialized_allocator_copyB8ne200100INS_9allocatorIiEEPiS3_S3_EET2_RT_T0_T1_S4_
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
	bl	__ZNSt3__114__unwrap_rangeB8ne200100IPiS1_EENS_4pairIT0_S3_EET_S5_
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
	bl	__ZNSt3__135__uninitialized_allocator_copy_implB8ne200100INS_9allocatorIiEEiiLi0EEEPT1_RT_PT0_S8_S4_
	str	x0, [sp, #24]
	ldur	x0, [x29, #-32]
	ldr	x1, [sp, #24]
	bl	__ZNSt3__113__rewrap_iterB8ne200100IPiS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__unwrap_rangeB8ne200100IPiS1_EENS_4pairIT0_S3_EET_S5_ ; -- Begin function _ZNSt3__114__unwrap_rangeB8ne200100IPiS1_EENS_4pairIT0_S3_EET_S5_
	.globl	__ZNSt3__114__unwrap_rangeB8ne200100IPiS1_EENS_4pairIT0_S3_EET_S5_
	.weak_definition	__ZNSt3__114__unwrap_rangeB8ne200100IPiS1_EENS_4pairIT0_S3_EET_S5_
	.p2align	2
__ZNSt3__114__unwrap_rangeB8ne200100IPiS1_EENS_4pairIT0_S3_EET_S5_: ; @_ZNSt3__114__unwrap_rangeB8ne200100IPiS1_EENS_4pairIT0_S3_EET_S5_
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
	bl	__ZNSt3__113__unwrap_iterB8ne200100IPiNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_
	add	x8, sp, #24
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	str	x0, [sp, #24]
	ldr	x0, [sp, #32]
	bl	__ZNSt3__113__unwrap_iterB8ne200100IPiNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	add	x1, sp, #16
	str	x8, [sp, #16]
	bl	__ZNSt3__19make_pairB8ne200100IPiS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS3_Iu7__decayIT0_EE4typeEEEOS4_OS8_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__135__uninitialized_allocator_copy_implB8ne200100INS_9allocatorIiEEiiLi0EEEPT1_RT_PT0_S8_S4_ ; -- Begin function _ZNSt3__135__uninitialized_allocator_copy_implB8ne200100INS_9allocatorIiEEiiLi0EEEPT1_RT_PT0_S8_S4_
	.globl	__ZNSt3__135__uninitialized_allocator_copy_implB8ne200100INS_9allocatorIiEEiiLi0EEEPT1_RT_PT0_S8_S4_
	.weak_definition	__ZNSt3__135__uninitialized_allocator_copy_implB8ne200100INS_9allocatorIiEEiiLi0EEEPT1_RT_PT0_S8_S4_
	.p2align	2
__ZNSt3__135__uninitialized_allocator_copy_implB8ne200100INS_9allocatorIiEEiiLi0EEEPT1_RT_PT0_S8_S4_: ; @_ZNSt3__135__uninitialized_allocator_copy_implB8ne200100INS_9allocatorIiEEiiLi0EEEPT1_RT_PT0_S8_S4_
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
	str	x3, [sp]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	ldr	x2, [sp]
	bl	__ZNSt3__14copyB8ne200100IPiS1_EET0_T_S3_S2_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
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
Lfunc_begin20:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception20
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
Ltmp224:
	bl	__ZNSt3__118__unwrap_iter_implIPiLb1EE8__rewrapB8ne200100ES1_S1_
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp225:
	b	LBB170_1
LBB170_1:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB170_2:
Ltmp226:
	bl	___clang_call_terminate
Lfunc_end20:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table170:
Lexception20:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase10-Lttbaseref10
Lttbaseref10:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end20-Lcst_begin20
Lcst_begin20:
	.uleb128 Ltmp224-Lfunc_begin20          ; >> Call Site 1 <<
	.uleb128 Ltmp225-Ltmp224                ;   Call between Ltmp224 and Ltmp225
	.uleb128 Ltmp226-Lfunc_begin20          ;     jumps to Ltmp226
	.byte	1                               ;   On action: 1
Lcst_end20:
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
	.private_extern	__ZNSt3__19make_pairB8ne200100IPiS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS3_Iu7__decayIT0_EE4typeEEEOS4_OS8_ ; -- Begin function _ZNSt3__19make_pairB8ne200100IPiS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS3_Iu7__decayIT0_EE4typeEEEOS4_OS8_
	.globl	__ZNSt3__19make_pairB8ne200100IPiS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS3_Iu7__decayIT0_EE4typeEEEOS4_OS8_
	.weak_definition	__ZNSt3__19make_pairB8ne200100IPiS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS3_Iu7__decayIT0_EE4typeEEEOS4_OS8_
	.p2align	2
__ZNSt3__19make_pairB8ne200100IPiS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS3_Iu7__decayIT0_EE4typeEEEOS4_OS8_: ; @_ZNSt3__19make_pairB8ne200100IPiS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS3_Iu7__decayIT0_EE4typeEEEOS4_OS8_
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
	bl	__ZNSt3__14pairIPiS1_EC1B8ne200100IS1_S1_Li0EEEOT_OT0_
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__14pairIPiS1_EC1B8ne200100IS1_S1_Li0EEEOT_OT0_ ; -- Begin function _ZNSt3__14pairIPiS1_EC1B8ne200100IS1_S1_Li0EEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__14pairIPiS1_EC1B8ne200100IS1_S1_Li0EEEOT_OT0_
	.p2align	2
__ZNSt3__14pairIPiS1_EC1B8ne200100IS1_S1_Li0EEEOT_OT0_: ; @_ZNSt3__14pairIPiS1_EC1B8ne200100IS1_S1_Li0EEEOT_OT0_
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
	bl	__ZNSt3__14pairIPiS1_EC2B8ne200100IS1_S1_Li0EEEOT_OT0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__14pairIPiS1_EC2B8ne200100IS1_S1_Li0EEEOT_OT0_ ; -- Begin function _ZNSt3__14pairIPiS1_EC2B8ne200100IS1_S1_Li0EEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__14pairIPiS1_EC2B8ne200100IS1_S1_Li0EEEOT_OT0_
	.p2align	2
__ZNSt3__14pairIPiS1_EC2B8ne200100IS1_S1_Li0EEEOT_OT0_: ; @_ZNSt3__14pairIPiS1_EC2B8ne200100IS1_S1_Li0EEEOT_OT0_
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
	.private_extern	__ZNSt3__14copyB8ne200100IPiS1_EET0_T_S3_S2_ ; -- Begin function _ZNSt3__14copyB8ne200100IPiS1_EET0_T_S3_S2_
	.globl	__ZNSt3__14copyB8ne200100IPiS1_EET0_T_S3_S2_
	.weak_definition	__ZNSt3__14copyB8ne200100IPiS1_EET0_T_S3_S2_
	.p2align	2
__ZNSt3__14copyB8ne200100IPiS1_EET0_T_S3_S2_: ; @_ZNSt3__14copyB8ne200100IPiS1_EET0_T_S3_S2_
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
	bl	__ZNSt3__16__copyB8ne200100IPiS1_S1_EENS_4pairIT_T1_EES3_T0_S4_
	str	x0, [sp, #8]
	str	x1, [sp, #16]
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16__copyB8ne200100IPiS1_S1_EENS_4pairIT_T1_EES3_T0_S4_ ; -- Begin function _ZNSt3__16__copyB8ne200100IPiS1_S1_EENS_4pairIT_T1_EES3_T0_S4_
	.globl	__ZNSt3__16__copyB8ne200100IPiS1_S1_EENS_4pairIT_T1_EES3_T0_S4_
	.weak_definition	__ZNSt3__16__copyB8ne200100IPiS1_S1_EENS_4pairIT_T1_EES3_T0_S4_
	.p2align	2
__ZNSt3__16__copyB8ne200100IPiS1_S1_EENS_4pairIT_T1_EES3_T0_S4_: ; @_ZNSt3__16__copyB8ne200100IPiS1_S1_EENS_4pairIT_T1_EES3_T0_S4_
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
	bl	__ZNSt3__124__copy_move_unwrap_itersB8ne200100INS_11__copy_implEPiS2_S2_Li0EEENS_4pairIT0_T2_EES4_T1_S5_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__124__copy_move_unwrap_itersB8ne200100INS_11__copy_implEPiS2_S2_Li0EEENS_4pairIT0_T2_EES4_T1_S5_ ; -- Begin function _ZNSt3__124__copy_move_unwrap_itersB8ne200100INS_11__copy_implEPiS2_S2_Li0EEENS_4pairIT0_T2_EES4_T1_S5_
	.globl	__ZNSt3__124__copy_move_unwrap_itersB8ne200100INS_11__copy_implEPiS2_S2_Li0EEENS_4pairIT0_T2_EES4_T1_S5_
	.weak_definition	__ZNSt3__124__copy_move_unwrap_itersB8ne200100INS_11__copy_implEPiS2_S2_Li0EEENS_4pairIT0_T2_EES4_T1_S5_
	.p2align	2
__ZNSt3__124__copy_move_unwrap_itersB8ne200100INS_11__copy_implEPiS2_S2_Li0EEENS_4pairIT0_T2_EES4_T1_S5_: ; @_ZNSt3__124__copy_move_unwrap_itersB8ne200100INS_11__copy_implEPiS2_S2_Li0EEENS_4pairIT0_T2_EES4_T1_S5_
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
	bl	__ZNSt3__114__unwrap_rangeB8ne200100IPiS1_EENS_4pairIT0_S3_EET_S5_
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
	bl	__ZNKSt3__111__copy_implclB8ne200100IiiLi0EEENS_4pairIPT_PT0_EES4_S4_S6_
	str	x0, [sp, #56]
	str	x1, [sp, #64]
	ldur	x0, [x29, #-24]
	ldr	x1, [sp, #56]
	bl	__ZNSt3__114__rewrap_rangeB8ne200100IPiS1_EET_S2_T0_
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
	bl	__ZNSt3__19make_pairB8ne200100IPiS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS3_Iu7__decayIT0_EE4typeEEEOS4_OS8_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__111__copy_implclB8ne200100IiiLi0EEENS_4pairIPT_PT0_EES4_S4_S6_ ; -- Begin function _ZNKSt3__111__copy_implclB8ne200100IiiLi0EEENS_4pairIPT_PT0_EES4_S4_S6_
	.globl	__ZNKSt3__111__copy_implclB8ne200100IiiLi0EEENS_4pairIPT_PT0_EES4_S4_S6_
	.weak_definition	__ZNKSt3__111__copy_implclB8ne200100IiiLi0EEENS_4pairIPT_PT0_EES4_S4_S6_
	.p2align	2
__ZNKSt3__111__copy_implclB8ne200100IiiLi0EEENS_4pairIPT_PT0_EES4_S4_S6_: ; @_ZNKSt3__111__copy_implclB8ne200100IiiLi0EEENS_4pairIPT_PT0_EES4_S4_S6_
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
	bl	__ZNSt3__119__copy_trivial_implB8ne200100IiiEENS_4pairIPT_PT0_EES3_S3_S5_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__rewrap_rangeB8ne200100IPiS1_EET_S2_T0_ ; -- Begin function _ZNSt3__114__rewrap_rangeB8ne200100IPiS1_EET_S2_T0_
	.globl	__ZNSt3__114__rewrap_rangeB8ne200100IPiS1_EET_S2_T0_
	.weak_definition	__ZNSt3__114__rewrap_rangeB8ne200100IPiS1_EET_S2_T0_
	.p2align	2
__ZNSt3__114__rewrap_rangeB8ne200100IPiS1_EET_S2_T0_: ; @_ZNSt3__114__rewrap_rangeB8ne200100IPiS1_EET_S2_T0_
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
	bl	__ZNSt3__113__rewrap_iterB8ne200100IPiS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__copy_trivial_implB8ne200100IiiEENS_4pairIPT_PT0_EES3_S3_S5_ ; -- Begin function _ZNSt3__119__copy_trivial_implB8ne200100IiiEENS_4pairIPT_PT0_EES3_S3_S5_
	.globl	__ZNSt3__119__copy_trivial_implB8ne200100IiiEENS_4pairIPT_PT0_EES3_S3_S5_
	.weak_definition	__ZNSt3__119__copy_trivial_implB8ne200100IiiEENS_4pairIPT_PT0_EES3_S3_S5_
	.p2align	2
__ZNSt3__119__copy_trivial_implB8ne200100IiiEENS_4pairIPT_PT0_EES3_S3_S5_: ; @_ZNSt3__119__copy_trivial_implB8ne200100IiiEENS_4pairIPT_PT0_EES3_S3_S5_
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
	bl	__ZNSt3__119__constexpr_memmoveB8ne200100IiiLi0EEEPT_S2_PT0_NS_15__element_countE
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #16]
	add	x8, x8, x9, lsl #2
	add	x1, sp, #8
	str	x8, [sp, #8]
	bl	__ZNSt3__19make_pairB8ne200100IRPiS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS4_Iu7__decayIT0_EE4typeEEEOS5_OS9_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__constexpr_memmoveB8ne200100IiiLi0EEEPT_S2_PT0_NS_15__element_countE ; -- Begin function _ZNSt3__119__constexpr_memmoveB8ne200100IiiLi0EEEPT_S2_PT0_NS_15__element_countE
	.globl	__ZNSt3__119__constexpr_memmoveB8ne200100IiiLi0EEEPT_S2_PT0_NS_15__element_countE
	.weak_definition	__ZNSt3__119__constexpr_memmoveB8ne200100IiiLi0EEEPT_S2_PT0_NS_15__element_countE
	.p2align	2
__ZNSt3__119__constexpr_memmoveB8ne200100IiiLi0EEEPT_S2_PT0_NS_15__element_countE: ; @_ZNSt3__119__constexpr_memmoveB8ne200100IiiLi0EEEPT_S2_PT0_NS_15__element_countE
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
	b.ls	LBB180_2
	b	LBB180_1
LBB180_1:
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x8, [sp]
	subs	x8, x8, #1
	lsl	x8, x8, #2
	add	x2, x8, #4
	bl	_memmove
	b	LBB180_2
LBB180_2:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19make_pairB8ne200100IRPiS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS4_Iu7__decayIT0_EE4typeEEEOS5_OS9_ ; -- Begin function _ZNSt3__19make_pairB8ne200100IRPiS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS4_Iu7__decayIT0_EE4typeEEEOS5_OS9_
	.globl	__ZNSt3__19make_pairB8ne200100IRPiS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS4_Iu7__decayIT0_EE4typeEEEOS5_OS9_
	.weak_definition	__ZNSt3__19make_pairB8ne200100IRPiS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS4_Iu7__decayIT0_EE4typeEEEOS5_OS9_
	.p2align	2
__ZNSt3__19make_pairB8ne200100IRPiS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS4_Iu7__decayIT0_EE4typeEEEOS5_OS9_: ; @_ZNSt3__19make_pairB8ne200100IRPiS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS4_Iu7__decayIT0_EE4typeEEEOS5_OS9_
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
	bl	__ZNSt3__14pairIPiS1_EC1B8ne200100IRS1_S1_Li0EEEOT_OT0_
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__14pairIPiS1_EC1B8ne200100IRS1_S1_Li0EEEOT_OT0_ ; -- Begin function _ZNSt3__14pairIPiS1_EC1B8ne200100IRS1_S1_Li0EEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__14pairIPiS1_EC1B8ne200100IRS1_S1_Li0EEEOT_OT0_
	.p2align	2
__ZNSt3__14pairIPiS1_EC1B8ne200100IRS1_S1_Li0EEEOT_OT0_: ; @_ZNSt3__14pairIPiS1_EC1B8ne200100IRS1_S1_Li0EEEOT_OT0_
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
	bl	__ZNSt3__14pairIPiS1_EC2B8ne200100IRS1_S1_Li0EEEOT_OT0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__14pairIPiS1_EC2B8ne200100IRS1_S1_Li0EEEOT_OT0_ ; -- Begin function _ZNSt3__14pairIPiS1_EC2B8ne200100IRS1_S1_Li0EEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__14pairIPiS1_EC2B8ne200100IRS1_S1_Li0EEEOT_OT0_
	.p2align	2
__ZNSt3__14pairIPiS1_EC2B8ne200100IRS1_S1_Li0EEEOT_OT0_: ; @_ZNSt3__14pairIPiS1_EC2B8ne200100IRS1_S1_Li0EEEOT_OT0_
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
	.private_extern	__ZNSt3__16vectorIjNS_9allocatorIjEEEC2B8ne200100ERKS3_ ; -- Begin function _ZNSt3__16vectorIjNS_9allocatorIjEEEC2B8ne200100ERKS3_
	.globl	__ZNSt3__16vectorIjNS_9allocatorIjEEEC2B8ne200100ERKS3_
	.weak_def_can_be_hidden	__ZNSt3__16vectorIjNS_9allocatorIjEEEC2B8ne200100ERKS3_
	.p2align	2
__ZNSt3__16vectorIjNS_9allocatorIjEEEC2B8ne200100ERKS3_: ; @_ZNSt3__16vectorIjNS_9allocatorIjEEEC2B8ne200100ERKS3_
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
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8]
	str	xzr, [x8, #8]
	str	xzr, [x8, #16]
	ldur	x8, [x29, #-16]
	add	x0, x8, #16
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIjEEE37select_on_container_copy_constructionB8ne200100IS2_vLi0EEES2_RKS2_
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	__ZNKSt3__16vectorIjNS_9allocatorIjEEE4sizeB8ne200100Ev
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	ldr	x2, [sp, #8]                    ; 8-byte Folded Reload
	mov	x3, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEE16__init_with_sizeB8ne200100IPjS5_EEvT_T0_m
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIjEEE37select_on_container_copy_constructionB8ne200100IS2_vLi0EEES2_RKS2_ ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIjEEE37select_on_container_copy_constructionB8ne200100IS2_vLi0EEES2_RKS2_
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIjEEE37select_on_container_copy_constructionB8ne200100IS2_vLi0EEES2_RKS2_
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIjEEE37select_on_container_copy_constructionB8ne200100IS2_vLi0EEES2_RKS2_: ; @_ZNSt3__116allocator_traitsINS_9allocatorIjEEE37select_on_container_copy_constructionB8ne200100IS2_vLi0EEES2_RKS2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16vectorIjNS_9allocatorIjEEE16__init_with_sizeB8ne200100IPjS5_EEvT_T0_m ; -- Begin function _ZNSt3__16vectorIjNS_9allocatorIjEEE16__init_with_sizeB8ne200100IPjS5_EEvT_T0_m
	.weak_definition	__ZNSt3__16vectorIjNS_9allocatorIjEEE16__init_with_sizeB8ne200100IPjS5_EEvT_T0_m
	.p2align	2
__ZNSt3__16vectorIjNS_9allocatorIjEEE16__init_with_sizeB8ne200100IPjS5_EEvT_T0_m: ; @_ZNSt3__16vectorIjNS_9allocatorIjEEE16__init_with_sizeB8ne200100IPjS5_EEvT_T0_m
Lfunc_begin21:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception21
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
	str	x1, [sp, #16]                   ; 8-byte Folded Spill
	add	x0, sp, #40
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorC1B8ne200100ERS3_
	ldr	x0, [sp, #40]
	add	x8, sp, #48
	bl	__ZNSt3__122__make_exception_guardB8ne200100INS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES7_
	ldur	x8, [x29, #-32]
	subs	x8, x8, #0
	b.ls	LBB188_5
	b	LBB188_1
LBB188_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x1, [x29, #-32]
Ltmp230:
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEE11__vallocateB8ne200100Em
Ltmp231:
	b	LBB188_2
LBB188_2:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	ldur	x3, [x29, #-32]
Ltmp232:
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEE18__construct_at_endIPjS5_EEvT_T0_m
Ltmp233:
	b	LBB188_3
LBB188_3:
	b	LBB188_5
LBB188_4:
Ltmp234:
	str	x0, [sp, #32]
	mov	x8, x1
	str	w8, [sp, #28]
	add	x0, sp, #48
	bl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEED1B8ne200100Ev
	b	LBB188_6
LBB188_5:
	add	x0, sp, #48
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEE10__completeB8ne200100Ev
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEED1B8ne200100Ev
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB188_6:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
Lfunc_end21:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table188:
Lexception21:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end21-Lcst_begin21
Lcst_begin21:
	.uleb128 Lfunc_begin21-Lfunc_begin21    ; >> Call Site 1 <<
	.uleb128 Ltmp230-Lfunc_begin21          ;   Call between Lfunc_begin21 and Ltmp230
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp230-Lfunc_begin21          ; >> Call Site 2 <<
	.uleb128 Ltmp233-Ltmp230                ;   Call between Ltmp230 and Ltmp233
	.uleb128 Ltmp234-Lfunc_begin21          ;     jumps to Ltmp234
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp233-Lfunc_begin21          ; >> Call Site 3 <<
	.uleb128 Lfunc_end21-Ltmp233            ;   Call between Ltmp233 and Lfunc_end21
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end21:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__16vectorIjNS_9allocatorIjEEE18__construct_at_endIPjS5_EEvT_T0_m ; -- Begin function _ZNSt3__16vectorIjNS_9allocatorIjEEE18__construct_at_endIPjS5_EEvT_T0_m
	.weak_definition	__ZNSt3__16vectorIjNS_9allocatorIjEEE18__construct_at_endIPjS5_EEvT_T0_m
	.p2align	2
__ZNSt3__16vectorIjNS_9allocatorIjEEE18__construct_at_endIPjS5_EEvT_T0_m: ; @_ZNSt3__16vectorIjNS_9allocatorIjEEE18__construct_at_endIPjS5_EEvT_T0_m
Lfunc_begin22:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception22
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
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionC1B8ne200100ERS3_m
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	ldr	x3, [sp, #48]
Ltmp235:
	add	x0, x8, #16
	bl	__ZNSt3__130__uninitialized_allocator_copyB8ne200100INS_9allocatorIjEEPjS3_S3_EET2_RT_T0_T1_S4_
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp236:
	b	LBB189_1
LBB189_1:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	add	x0, sp, #40
	str	x8, [sp, #48]
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionD1B8ne200100Ev
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB189_2:
Ltmp237:
	str	x0, [sp, #32]
	mov	x8, x1
	str	w8, [sp, #28]
	add	x0, sp, #40
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionD1B8ne200100Ev
	b	LBB189_3
LBB189_3:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
Lfunc_end22:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table189:
Lexception22:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end22-Lcst_begin22
Lcst_begin22:
	.uleb128 Lfunc_begin22-Lfunc_begin22    ; >> Call Site 1 <<
	.uleb128 Ltmp235-Lfunc_begin22          ;   Call between Lfunc_begin22 and Ltmp235
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp235-Lfunc_begin22          ; >> Call Site 2 <<
	.uleb128 Ltmp236-Ltmp235                ;   Call between Ltmp235 and Ltmp236
	.uleb128 Ltmp237-Lfunc_begin22          ;     jumps to Ltmp237
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp236-Lfunc_begin22          ; >> Call Site 3 <<
	.uleb128 Lfunc_end22-Ltmp236            ;   Call between Ltmp236 and Lfunc_end22
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end22:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__130__uninitialized_allocator_copyB8ne200100INS_9allocatorIjEEPjS3_S3_EET2_RT_T0_T1_S4_ ; -- Begin function _ZNSt3__130__uninitialized_allocator_copyB8ne200100INS_9allocatorIjEEPjS3_S3_EET2_RT_T0_T1_S4_
	.globl	__ZNSt3__130__uninitialized_allocator_copyB8ne200100INS_9allocatorIjEEPjS3_S3_EET2_RT_T0_T1_S4_
	.weak_definition	__ZNSt3__130__uninitialized_allocator_copyB8ne200100INS_9allocatorIjEEPjS3_S3_EET2_RT_T0_T1_S4_
	.p2align	2
__ZNSt3__130__uninitialized_allocator_copyB8ne200100INS_9allocatorIjEEPjS3_S3_EET2_RT_T0_T1_S4_: ; @_ZNSt3__130__uninitialized_allocator_copyB8ne200100INS_9allocatorIjEEPjS3_S3_EET2_RT_T0_T1_S4_
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
	bl	__ZNSt3__114__unwrap_rangeB8ne200100IPjS1_EENS_4pairIT0_S3_EET_S5_
	str	x0, [sp, #32]
	str	x1, [sp, #40]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldr	x8, [sp, #32]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x8, [sp, #40]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x0, [x29, #-32]
	bl	__ZNSt3__113__unwrap_iterB8ne200100IPjNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	ldr	x2, [sp, #8]                    ; 8-byte Folded Reload
	mov	x3, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__135__uninitialized_allocator_copy_implB8ne200100INS_9allocatorIjEEjjLi0EEEPT1_RT_PT0_S8_S4_
	str	x0, [sp, #24]
	ldur	x0, [x29, #-32]
	ldr	x1, [sp, #24]
	bl	__ZNSt3__113__rewrap_iterB8ne200100IPjS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__unwrap_rangeB8ne200100IPjS1_EENS_4pairIT0_S3_EET_S5_ ; -- Begin function _ZNSt3__114__unwrap_rangeB8ne200100IPjS1_EENS_4pairIT0_S3_EET_S5_
	.globl	__ZNSt3__114__unwrap_rangeB8ne200100IPjS1_EENS_4pairIT0_S3_EET_S5_
	.weak_definition	__ZNSt3__114__unwrap_rangeB8ne200100IPjS1_EENS_4pairIT0_S3_EET_S5_
	.p2align	2
__ZNSt3__114__unwrap_rangeB8ne200100IPjS1_EENS_4pairIT0_S3_EET_S5_: ; @_ZNSt3__114__unwrap_rangeB8ne200100IPjS1_EENS_4pairIT0_S3_EET_S5_
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
	bl	__ZNSt3__113__unwrap_iterB8ne200100IPjNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_
	add	x8, sp, #24
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	str	x0, [sp, #24]
	ldr	x0, [sp, #32]
	bl	__ZNSt3__113__unwrap_iterB8ne200100IPjNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	add	x1, sp, #16
	str	x8, [sp, #16]
	bl	__ZNSt3__19make_pairB8ne200100IPjS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS3_Iu7__decayIT0_EE4typeEEEOS4_OS8_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__135__uninitialized_allocator_copy_implB8ne200100INS_9allocatorIjEEjjLi0EEEPT1_RT_PT0_S8_S4_ ; -- Begin function _ZNSt3__135__uninitialized_allocator_copy_implB8ne200100INS_9allocatorIjEEjjLi0EEEPT1_RT_PT0_S8_S4_
	.globl	__ZNSt3__135__uninitialized_allocator_copy_implB8ne200100INS_9allocatorIjEEjjLi0EEEPT1_RT_PT0_S8_S4_
	.weak_definition	__ZNSt3__135__uninitialized_allocator_copy_implB8ne200100INS_9allocatorIjEEjjLi0EEEPT1_RT_PT0_S8_S4_
	.p2align	2
__ZNSt3__135__uninitialized_allocator_copy_implB8ne200100INS_9allocatorIjEEjjLi0EEEPT1_RT_PT0_S8_S4_: ; @_ZNSt3__135__uninitialized_allocator_copy_implB8ne200100INS_9allocatorIjEEjjLi0EEEPT1_RT_PT0_S8_S4_
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
	str	x3, [sp]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	ldr	x2, [sp]
	bl	__ZNSt3__14copyB8ne200100IPjS1_EET0_T_S3_S2_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__113__unwrap_iterB8ne200100IPjNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_ ; -- Begin function _ZNSt3__113__unwrap_iterB8ne200100IPjNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_
	.globl	__ZNSt3__113__unwrap_iterB8ne200100IPjNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_
	.weak_definition	__ZNSt3__113__unwrap_iterB8ne200100IPjNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_
	.p2align	2
__ZNSt3__113__unwrap_iterB8ne200100IPjNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_: ; @_ZNSt3__113__unwrap_iterB8ne200100IPjNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_
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
	bl	__ZNSt3__118__unwrap_iter_implIPjLb1EE8__unwrapB8ne200100ES1_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__113__rewrap_iterB8ne200100IPjS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_ ; -- Begin function _ZNSt3__113__rewrap_iterB8ne200100IPjS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_
	.globl	__ZNSt3__113__rewrap_iterB8ne200100IPjS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_
	.weak_definition	__ZNSt3__113__rewrap_iterB8ne200100IPjS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_
	.p2align	2
__ZNSt3__113__rewrap_iterB8ne200100IPjS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_: ; @_ZNSt3__113__rewrap_iterB8ne200100IPjS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_
Lfunc_begin23:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception23
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
Ltmp238:
	bl	__ZNSt3__118__unwrap_iter_implIPjLb1EE8__rewrapB8ne200100ES1_S1_
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp239:
	b	LBB194_1
LBB194_1:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB194_2:
Ltmp240:
	bl	___clang_call_terminate
Lfunc_end23:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table194:
Lexception23:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase11-Lttbaseref11
Lttbaseref11:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end23-Lcst_begin23
Lcst_begin23:
	.uleb128 Ltmp238-Lfunc_begin23          ; >> Call Site 1 <<
	.uleb128 Ltmp239-Ltmp238                ;   Call between Ltmp238 and Ltmp239
	.uleb128 Ltmp240-Lfunc_begin23          ;     jumps to Ltmp240
	.byte	1                               ;   On action: 1
Lcst_end23:
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
	.private_extern	__ZNSt3__19make_pairB8ne200100IPjS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS3_Iu7__decayIT0_EE4typeEEEOS4_OS8_ ; -- Begin function _ZNSt3__19make_pairB8ne200100IPjS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS3_Iu7__decayIT0_EE4typeEEEOS4_OS8_
	.globl	__ZNSt3__19make_pairB8ne200100IPjS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS3_Iu7__decayIT0_EE4typeEEEOS4_OS8_
	.weak_definition	__ZNSt3__19make_pairB8ne200100IPjS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS3_Iu7__decayIT0_EE4typeEEEOS4_OS8_
	.p2align	2
__ZNSt3__19make_pairB8ne200100IPjS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS3_Iu7__decayIT0_EE4typeEEEOS4_OS8_: ; @_ZNSt3__19make_pairB8ne200100IPjS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS3_Iu7__decayIT0_EE4typeEEEOS4_OS8_
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
	bl	__ZNSt3__14pairIPjS1_EC1B8ne200100IS1_S1_Li0EEEOT_OT0_
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__14pairIPjS1_EC1B8ne200100IS1_S1_Li0EEEOT_OT0_ ; -- Begin function _ZNSt3__14pairIPjS1_EC1B8ne200100IS1_S1_Li0EEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__14pairIPjS1_EC1B8ne200100IS1_S1_Li0EEEOT_OT0_
	.p2align	2
__ZNSt3__14pairIPjS1_EC1B8ne200100IS1_S1_Li0EEEOT_OT0_: ; @_ZNSt3__14pairIPjS1_EC1B8ne200100IS1_S1_Li0EEEOT_OT0_
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
	bl	__ZNSt3__14pairIPjS1_EC2B8ne200100IS1_S1_Li0EEEOT_OT0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__14pairIPjS1_EC2B8ne200100IS1_S1_Li0EEEOT_OT0_ ; -- Begin function _ZNSt3__14pairIPjS1_EC2B8ne200100IS1_S1_Li0EEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__14pairIPjS1_EC2B8ne200100IS1_S1_Li0EEEOT_OT0_
	.p2align	2
__ZNSt3__14pairIPjS1_EC2B8ne200100IS1_S1_Li0EEEOT_OT0_: ; @_ZNSt3__14pairIPjS1_EC2B8ne200100IS1_S1_Li0EEEOT_OT0_
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
	.private_extern	__ZNSt3__14copyB8ne200100IPjS1_EET0_T_S3_S2_ ; -- Begin function _ZNSt3__14copyB8ne200100IPjS1_EET0_T_S3_S2_
	.globl	__ZNSt3__14copyB8ne200100IPjS1_EET0_T_S3_S2_
	.weak_definition	__ZNSt3__14copyB8ne200100IPjS1_EET0_T_S3_S2_
	.p2align	2
__ZNSt3__14copyB8ne200100IPjS1_EET0_T_S3_S2_: ; @_ZNSt3__14copyB8ne200100IPjS1_EET0_T_S3_S2_
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
	bl	__ZNSt3__16__copyB8ne200100IPjS1_S1_EENS_4pairIT_T1_EES3_T0_S4_
	str	x0, [sp, #8]
	str	x1, [sp, #16]
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16__copyB8ne200100IPjS1_S1_EENS_4pairIT_T1_EES3_T0_S4_ ; -- Begin function _ZNSt3__16__copyB8ne200100IPjS1_S1_EENS_4pairIT_T1_EES3_T0_S4_
	.globl	__ZNSt3__16__copyB8ne200100IPjS1_S1_EENS_4pairIT_T1_EES3_T0_S4_
	.weak_definition	__ZNSt3__16__copyB8ne200100IPjS1_S1_EENS_4pairIT_T1_EES3_T0_S4_
	.p2align	2
__ZNSt3__16__copyB8ne200100IPjS1_S1_EENS_4pairIT_T1_EES3_T0_S4_: ; @_ZNSt3__16__copyB8ne200100IPjS1_S1_EENS_4pairIT_T1_EES3_T0_S4_
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
	bl	__ZNSt3__124__copy_move_unwrap_itersB8ne200100INS_11__copy_implEPjS2_S2_Li0EEENS_4pairIT0_T2_EES4_T1_S5_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__124__copy_move_unwrap_itersB8ne200100INS_11__copy_implEPjS2_S2_Li0EEENS_4pairIT0_T2_EES4_T1_S5_ ; -- Begin function _ZNSt3__124__copy_move_unwrap_itersB8ne200100INS_11__copy_implEPjS2_S2_Li0EEENS_4pairIT0_T2_EES4_T1_S5_
	.globl	__ZNSt3__124__copy_move_unwrap_itersB8ne200100INS_11__copy_implEPjS2_S2_Li0EEENS_4pairIT0_T2_EES4_T1_S5_
	.weak_definition	__ZNSt3__124__copy_move_unwrap_itersB8ne200100INS_11__copy_implEPjS2_S2_Li0EEENS_4pairIT0_T2_EES4_T1_S5_
	.p2align	2
__ZNSt3__124__copy_move_unwrap_itersB8ne200100INS_11__copy_implEPjS2_S2_Li0EEENS_4pairIT0_T2_EES4_T1_S5_: ; @_ZNSt3__124__copy_move_unwrap_itersB8ne200100INS_11__copy_implEPjS2_S2_Li0EEENS_4pairIT0_T2_EES4_T1_S5_
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
	bl	__ZNSt3__114__unwrap_rangeB8ne200100IPjS1_EENS_4pairIT0_S3_EET_S5_
	stur	x0, [x29, #-56]
	stur	x1, [x29, #-48]
	ldur	x8, [x29, #-56]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x8, [x29, #-48]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-40]
	bl	__ZNSt3__113__unwrap_iterB8ne200100IPjNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x2, [sp, #16]                   ; 8-byte Folded Reload
	mov	x3, x0
	add	x0, sp, #55
	bl	__ZNKSt3__111__copy_implclB8ne200100IjjLi0EEENS_4pairIPT_PT0_EES4_S4_S6_
	str	x0, [sp, #56]
	str	x1, [sp, #64]
	ldur	x0, [x29, #-24]
	ldr	x1, [sp, #56]
	bl	__ZNSt3__114__rewrap_rangeB8ne200100IPjS1_EET_S2_T0_
	add	x8, sp, #40
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	str	x0, [sp, #40]
	ldur	x0, [x29, #-40]
	ldr	x1, [sp, #64]
	bl	__ZNSt3__113__rewrap_iterB8ne200100IPjS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	add	x1, sp, #32
	str	x8, [sp, #32]
	bl	__ZNSt3__19make_pairB8ne200100IPjS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS3_Iu7__decayIT0_EE4typeEEEOS4_OS8_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__111__copy_implclB8ne200100IjjLi0EEENS_4pairIPT_PT0_EES4_S4_S6_ ; -- Begin function _ZNKSt3__111__copy_implclB8ne200100IjjLi0EEENS_4pairIPT_PT0_EES4_S4_S6_
	.globl	__ZNKSt3__111__copy_implclB8ne200100IjjLi0EEENS_4pairIPT_PT0_EES4_S4_S6_
	.weak_definition	__ZNKSt3__111__copy_implclB8ne200100IjjLi0EEENS_4pairIPT_PT0_EES4_S4_S6_
	.p2align	2
__ZNKSt3__111__copy_implclB8ne200100IjjLi0EEENS_4pairIPT_PT0_EES4_S4_S6_: ; @_ZNKSt3__111__copy_implclB8ne200100IjjLi0EEENS_4pairIPT_PT0_EES4_S4_S6_
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
	bl	__ZNSt3__119__copy_trivial_implB8ne200100IjjEENS_4pairIPT_PT0_EES3_S3_S5_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__rewrap_rangeB8ne200100IPjS1_EET_S2_T0_ ; -- Begin function _ZNSt3__114__rewrap_rangeB8ne200100IPjS1_EET_S2_T0_
	.globl	__ZNSt3__114__rewrap_rangeB8ne200100IPjS1_EET_S2_T0_
	.weak_definition	__ZNSt3__114__rewrap_rangeB8ne200100IPjS1_EET_S2_T0_
	.p2align	2
__ZNSt3__114__rewrap_rangeB8ne200100IPjS1_EET_S2_T0_: ; @_ZNSt3__114__rewrap_rangeB8ne200100IPjS1_EET_S2_T0_
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
	bl	__ZNSt3__113__rewrap_iterB8ne200100IPjS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__copy_trivial_implB8ne200100IjjEENS_4pairIPT_PT0_EES3_S3_S5_ ; -- Begin function _ZNSt3__119__copy_trivial_implB8ne200100IjjEENS_4pairIPT_PT0_EES3_S3_S5_
	.globl	__ZNSt3__119__copy_trivial_implB8ne200100IjjEENS_4pairIPT_PT0_EES3_S3_S5_
	.weak_definition	__ZNSt3__119__copy_trivial_implB8ne200100IjjEENS_4pairIPT_PT0_EES3_S3_S5_
	.p2align	2
__ZNSt3__119__copy_trivial_implB8ne200100IjjEENS_4pairIPT_PT0_EES3_S3_S5_: ; @_ZNSt3__119__copy_trivial_implB8ne200100IjjEENS_4pairIPT_PT0_EES3_S3_S5_
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
	bl	__ZNSt3__119__constexpr_memmoveB8ne200100IjjLi0EEEPT_S2_PT0_NS_15__element_countE
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #16]
	add	x8, x8, x9, lsl #2
	add	x1, sp, #8
	str	x8, [sp, #8]
	bl	__ZNSt3__19make_pairB8ne200100IRPjS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS4_Iu7__decayIT0_EE4typeEEEOS5_OS9_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__constexpr_memmoveB8ne200100IjjLi0EEEPT_S2_PT0_NS_15__element_countE ; -- Begin function _ZNSt3__119__constexpr_memmoveB8ne200100IjjLi0EEEPT_S2_PT0_NS_15__element_countE
	.globl	__ZNSt3__119__constexpr_memmoveB8ne200100IjjLi0EEEPT_S2_PT0_NS_15__element_countE
	.weak_definition	__ZNSt3__119__constexpr_memmoveB8ne200100IjjLi0EEEPT_S2_PT0_NS_15__element_countE
	.p2align	2
__ZNSt3__119__constexpr_memmoveB8ne200100IjjLi0EEEPT_S2_PT0_NS_15__element_countE: ; @_ZNSt3__119__constexpr_memmoveB8ne200100IjjLi0EEEPT_S2_PT0_NS_15__element_countE
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
	b.ls	LBB204_2
	b	LBB204_1
LBB204_1:
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x8, [sp]
	subs	x8, x8, #1
	lsl	x8, x8, #2
	add	x2, x8, #4
	bl	_memmove
	b	LBB204_2
LBB204_2:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19make_pairB8ne200100IRPjS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS4_Iu7__decayIT0_EE4typeEEEOS5_OS9_ ; -- Begin function _ZNSt3__19make_pairB8ne200100IRPjS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS4_Iu7__decayIT0_EE4typeEEEOS5_OS9_
	.globl	__ZNSt3__19make_pairB8ne200100IRPjS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS4_Iu7__decayIT0_EE4typeEEEOS5_OS9_
	.weak_definition	__ZNSt3__19make_pairB8ne200100IRPjS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS4_Iu7__decayIT0_EE4typeEEEOS5_OS9_
	.p2align	2
__ZNSt3__19make_pairB8ne200100IRPjS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS4_Iu7__decayIT0_EE4typeEEEOS5_OS9_: ; @_ZNSt3__19make_pairB8ne200100IRPjS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS4_Iu7__decayIT0_EE4typeEEEOS5_OS9_
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
	bl	__ZNSt3__14pairIPjS1_EC1B8ne200100IRS1_S1_Li0EEEOT_OT0_
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__14pairIPjS1_EC1B8ne200100IRS1_S1_Li0EEEOT_OT0_ ; -- Begin function _ZNSt3__14pairIPjS1_EC1B8ne200100IRS1_S1_Li0EEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__14pairIPjS1_EC1B8ne200100IRS1_S1_Li0EEEOT_OT0_
	.p2align	2
__ZNSt3__14pairIPjS1_EC1B8ne200100IRS1_S1_Li0EEEOT_OT0_: ; @_ZNSt3__14pairIPjS1_EC1B8ne200100IRS1_S1_Li0EEEOT_OT0_
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
	bl	__ZNSt3__14pairIPjS1_EC2B8ne200100IRS1_S1_Li0EEEOT_OT0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__14pairIPjS1_EC2B8ne200100IRS1_S1_Li0EEEOT_OT0_ ; -- Begin function _ZNSt3__14pairIPjS1_EC2B8ne200100IRS1_S1_Li0EEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__14pairIPjS1_EC2B8ne200100IRS1_S1_Li0EEEOT_OT0_
	.p2align	2
__ZNSt3__14pairIPjS1_EC2B8ne200100IRS1_S1_Li0EEEOT_OT0_: ; @_ZNSt3__14pairIPjS1_EC2B8ne200100IRS1_S1_Li0EEEOT_OT0_
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
	.private_extern	__ZNSt3__118__unwrap_iter_implIPjLb1EE8__unwrapB8ne200100ES1_ ; -- Begin function _ZNSt3__118__unwrap_iter_implIPjLb1EE8__unwrapB8ne200100ES1_
	.globl	__ZNSt3__118__unwrap_iter_implIPjLb1EE8__unwrapB8ne200100ES1_
	.weak_definition	__ZNSt3__118__unwrap_iter_implIPjLb1EE8__unwrapB8ne200100ES1_
	.p2align	2
__ZNSt3__118__unwrap_iter_implIPjLb1EE8__unwrapB8ne200100ES1_: ; @_ZNSt3__118__unwrap_iter_implIPjLb1EE8__unwrapB8ne200100ES1_
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
	bl	__ZNSt3__112__to_addressB8ne200100IjEEPT_S2_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__118__unwrap_iter_implIPjLb1EE8__rewrapB8ne200100ES1_S1_ ; -- Begin function _ZNSt3__118__unwrap_iter_implIPjLb1EE8__rewrapB8ne200100ES1_S1_
	.globl	__ZNSt3__118__unwrap_iter_implIPjLb1EE8__rewrapB8ne200100ES1_S1_
	.weak_definition	__ZNSt3__118__unwrap_iter_implIPjLb1EE8__rewrapB8ne200100ES1_S1_
	.p2align	2
__ZNSt3__118__unwrap_iter_implIPjLb1EE8__rewrapB8ne200100ES1_S1_: ; @_ZNSt3__118__unwrap_iter_implIPjLb1EE8__rewrapB8ne200100ES1_S1_
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
	bl	__ZNSt3__112__to_addressB8ne200100IjEEPT_S2_
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
	.p2align	2                               ; -- Begin function _ZZ4mainENK3$_0clEv
__ZZ4mainENK3$_0clEv:                   ; @"_ZZ4mainENK3$_0clEv"
Lfunc_begin24:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception24
; %bb.0:
	sub	sp, sp, #128
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	ldr	x1, [x8]
	sub	x0, x29, #32
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEEC1B8ne200100ERKS3_
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	ldr	x1, [x8, #8]
Ltmp243:
	add	x0, sp, #56
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEEC1B8ne200100ERKS3_
Ltmp244:
	b	LBB210_1
LBB210_1:
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	ldr	x2, [x8, #16]
	ldr	x8, [x8, #24]
	ldr	w3, [x8]
Ltmp246:
	sub	x0, x29, #32
	add	x1, sp, #56
	bl	__ZL27reist_tree_butterfly_scalarRNSt3__16vectorIiNS_9allocatorIiEEEES4_RKS3_i
Ltmp247:
	b	LBB210_2
LBB210_2:
	sub	x0, x29, #32
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	mov	x1, #1                          ; =0x1
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEEixB8ne200100Em
	ldr	w8, [x0]
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	add	x0, sp, #56
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	mov	x1, #2                          ; =0x2
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEEixB8ne200100Em
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	mov	x9, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldr	w9, [x9]
	add	w8, w8, w9
	mov	w8, w8
	mov	x10, x8
	adrp	x9, __ZL6g_sink@PAGE
	ldr	x8, [x9, __ZL6g_sink@PAGEOFF]
	eor	x8, x8, x10
	str	x8, [x9, __ZL6g_sink@PAGEOFF]
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEED1B8ne200100Ev
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEED1B8ne200100Ev
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
LBB210_3:
Ltmp245:
	str	x0, [sp, #48]
	mov	x8, x1
	str	w8, [sp, #44]
	b	LBB210_5
LBB210_4:
Ltmp248:
	str	x0, [sp, #48]
	mov	x8, x1
	str	w8, [sp, #44]
	add	x0, sp, #56
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEED1B8ne200100Ev
	b	LBB210_5
LBB210_5:
	sub	x0, x29, #32
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEED1B8ne200100Ev
	b	LBB210_6
LBB210_6:
	ldr	x0, [sp, #48]
	bl	__Unwind_Resume
Lfunc_end24:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table210:
Lexception24:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end24-Lcst_begin24
Lcst_begin24:
	.uleb128 Lfunc_begin24-Lfunc_begin24    ; >> Call Site 1 <<
	.uleb128 Ltmp243-Lfunc_begin24          ;   Call between Lfunc_begin24 and Ltmp243
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp243-Lfunc_begin24          ; >> Call Site 2 <<
	.uleb128 Ltmp244-Ltmp243                ;   Call between Ltmp243 and Ltmp244
	.uleb128 Ltmp245-Lfunc_begin24          ;     jumps to Ltmp245
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp246-Lfunc_begin24          ; >> Call Site 3 <<
	.uleb128 Ltmp247-Ltmp246                ;   Call between Ltmp246 and Ltmp247
	.uleb128 Ltmp248-Lfunc_begin24          ;     jumps to Ltmp248
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp247-Lfunc_begin24          ; >> Call Site 4 <<
	.uleb128 Lfunc_end24-Ltmp247            ;   Call between Ltmp247 and Lfunc_end24
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end24:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
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
	.p2align	2                               ; -- Begin function _ZL27reist_tree_butterfly_scalarRNSt3__16vectorIiNS_9allocatorIiEEEES4_RKS3_i
__ZL27reist_tree_butterfly_scalarRNSt3__16vectorIiNS_9allocatorIiEEEES4_RKS3_i: ; @_ZL27reist_tree_butterfly_scalarRNSt3__16vectorIiNS_9allocatorIiEEEES4_RKS3_i
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
	str	wzr, [sp, #28]
	b	LBB214_1
LBB214_1:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB214_3 Depth 2
	ldr	w8, [sp, #28]
	ldur	w9, [x29, #-28]
	subs	w8, w8, w9
	b.ge	LBB214_8
	b	LBB214_2
LBB214_2:                               ;   in Loop: Header=BB214_1 Depth=1
	str	wzr, [sp, #24]
	b	LBB214_3
LBB214_3:                               ;   Parent Loop BB214_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #24]
	ldr	w9, [sp, #32]
	subs	w8, w8, w9
	b.ge	LBB214_6
	b	LBB214_4
LBB214_4:                               ;   in Loop: Header=BB214_3 Depth=2
	ldur	x0, [x29, #-16]
	ldrsw	x1, [sp, #24]
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEEixB8ne200100Em
	ldr	w8, [x0]
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	ldur	x0, [x29, #-24]
	ldrsw	x1, [sp, #24]
	bl	__ZNKSt3__16vectorIiNS_9allocatorIiEEEixB8ne200100Em
	mov	x8, x0
	ldr	w0, [sp, #4]                    ; 4-byte Folded Reload
	ldr	w1, [x8]
	bl	__ZL23barrett_mul_to_centeredii
	str	w0, [sp, #20]
	ldur	x0, [x29, #-8]
	ldrsw	x1, [sp, #24]
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEEixB8ne200100Em
	ldr	w8, [x0]
	str	w8, [sp, #16]
	ldr	w0, [sp, #16]
	ldr	w1, [sp, #20]
	bl	__ZL18reist_add_centeredii
	str	w0, [sp, #8]                    ; 4-byte Folded Spill
	ldur	x0, [x29, #-8]
	ldrsw	x1, [sp, #24]
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEEixB8ne200100Em
	mov	x8, x0
	ldr	w0, [sp, #8]                    ; 4-byte Folded Reload
	str	w0, [x8]
	ldr	w0, [sp, #16]
	ldr	w1, [sp, #20]
	bl	__ZL18reist_sub_centeredii
	str	w0, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x0, [x29, #-16]
	ldrsw	x1, [sp, #24]
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEEixB8ne200100Em
	mov	x8, x0
	ldr	w0, [sp, #12]                   ; 4-byte Folded Reload
	str	w0, [x8]
	b	LBB214_5
LBB214_5:                               ;   in Loop: Header=BB214_3 Depth=2
	ldr	w8, [sp, #24]
	add	w8, w8, #1
	str	w8, [sp, #24]
	b	LBB214_3
LBB214_6:                               ;   in Loop: Header=BB214_1 Depth=1
	b	LBB214_7
LBB214_7:                               ;   in Loop: Header=BB214_1 Depth=1
	ldr	w8, [sp, #28]
	add	w8, w8, #1
	str	w8, [sp, #28]
	b	LBB214_1
LBB214_8:
	ldur	x0, [x29, #-8]
	mov	x1, #0                          ; =0x0
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEEixB8ne200100Em
	ldr	w8, [x0]
	str	w8, [sp]                        ; 4-byte Folded Spill
	ldur	x0, [x29, #-16]
	ldr	w8, [sp, #32]
	mov	w9, #2                          ; =0x2
	sdiv	w9, w8, w9
                                        ; implicit-def: $x8
	mov	x8, x9
	sxtw	x1, w8
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEEixB8ne200100Em
	ldr	w8, [sp]                        ; 4-byte Folded Reload
	ldr	w9, [x0]
	add	w8, w8, w9
	mov	w8, w8
	mov	x10, x8
	adrp	x9, __ZL6g_sink@PAGE
	ldr	x8, [x9, __ZL6g_sink@PAGEOFF]
	eor	x8, x8, x10
	str	x8, [x9, __ZL6g_sink@PAGEOFF]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZL23barrett_mul_to_centeredii
__ZL23barrett_mul_to_centeredii:        ; @_ZL23barrett_mul_to_centeredii
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	mov	w8, #57345                      ; =0xe001
	movk	w8, #127, lsl #16
	str	w8, [sp, #20]                   ; 4-byte Folded Spill
	mov	x8, #57345                      ; =0xe001
	movk	x8, #127, lsl #16
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	str	w0, [sp, #76]
	str	w1, [sp, #72]
	ldr	w8, [sp, #76]
	tbnz	w8, #31, LBB215_2
	b	LBB215_1
LBB215_1:
	ldr	w8, [sp, #76]
	str	w8, [sp, #16]                   ; 4-byte Folded Spill
	b	LBB215_3
LBB215_2:
	ldr	w9, [sp, #20]                   ; 4-byte Folded Reload
	ldr	w8, [sp, #76]
	add	w8, w8, w9
	str	w8, [sp, #16]                   ; 4-byte Folded Spill
	b	LBB215_3
LBB215_3:
	ldr	w8, [sp, #16]                   ; 4-byte Folded Reload
	str	w8, [sp, #68]
	ldr	w8, [sp, #72]
	tbnz	w8, #31, LBB215_5
	b	LBB215_4
LBB215_4:
	ldr	w8, [sp, #72]
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	b	LBB215_6
LBB215_5:
	ldr	w9, [sp, #20]                   ; 4-byte Folded Reload
	ldr	w8, [sp, #72]
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	b	LBB215_6
LBB215_6:
	ldr	x10, [sp, #24]                  ; 8-byte Folded Reload
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	str	w8, [sp, #64]
	ldr	w8, [sp, #68]
                                        ; kill: def $x8 killed $w8
	ldr	w9, [sp, #64]
                                        ; kill: def $x9 killed $w9
	mul	x8, x8, x9
	str	x8, [sp, #56]
	ldr	x8, [sp, #56]
	lsl	x8, x8, #9
	lsr	x8, x8, #32
                                        ; kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #52]
	ldr	x8, [sp, #56]
	ldr	w9, [sp, #52]
                                        ; kill: def $x9 killed $w9
	mul	x9, x9, x10
	subs	x8, x8, x9
	str	x8, [sp, #40]
	ldr	x8, [sp, #40]
	subs	x8, x8, #2046, lsl #12          ; =8380416
	b.le	LBB215_8
	b	LBB215_7
LBB215_7:
	ldr	x9, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #40]
	subs	x8, x8, x9
	str	x8, [sp, #40]
	b	LBB215_8
LBB215_8:
	ldr	x8, [sp, #40]
	subs	x8, x8, #2046, lsl #12          ; =8380416
	b.le	LBB215_10
	b	LBB215_9
LBB215_9:
	ldr	x9, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #40]
	subs	x8, x8, x9
	str	x8, [sp, #40]
	b	LBB215_10
LBB215_10:
	ldr	x8, [sp, #40]
                                        ; kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #36]
	ldr	w8, [sp, #36]
	subs	w8, w8, #1023, lsl #12          ; =4190208
	b.le	LBB215_12
	b	LBB215_11
LBB215_11:
	ldr	w9, [sp, #20]                   ; 4-byte Folded Reload
	ldr	w8, [sp, #36]
	subs	w8, w8, w9
	str	w8, [sp, #36]
	b	LBB215_12
LBB215_12:
	ldr	w0, [sp, #36]
	add	sp, sp, #80
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
	.p2align	2                               ; -- Begin function _ZL18reist_add_centeredii
__ZL18reist_add_centeredii:             ; @_ZL18reist_add_centeredii
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	mov	w8, #57345                      ; =0xe001
	movk	w8, #127, lsl #16
	str	w0, [sp, #12]
	str	w1, [sp, #8]
	ldr	w9, [sp, #12]
	ldr	w10, [sp, #8]
	add	w9, w9, w10
	str	w9, [sp, #4]
	ldr	w9, [sp, #4]
	str	w9, [sp]
	ldr	w10, [sp]
	mov	w9, #0                          ; =0x0
	subs	w10, w10, #0
	csel	w11, w8, w9, lt
	ldr	w10, [sp]
	add	w10, w10, w11
	str	w10, [sp]
	ldr	w10, [sp]
	subs	w10, w10, #2046, lsl #12        ; =8380416
	csel	w11, w8, w9, gt
	ldr	w10, [sp]
	subs	w10, w10, w11
	str	w10, [sp]
	ldr	w10, [sp]
	subs	w10, w10, #1023, lsl #12        ; =4190208
	csel	w9, w8, w9, gt
	ldr	w8, [sp]
	subs	w8, w8, w9
	str	w8, [sp]
	ldr	w0, [sp]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZL18reist_sub_centeredii
__ZL18reist_sub_centeredii:             ; @_ZL18reist_sub_centeredii
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	mov	w8, #57345                      ; =0xe001
	movk	w8, #127, lsl #16
	str	w0, [sp, #12]
	str	w1, [sp, #8]
	ldr	w9, [sp, #12]
	ldr	w10, [sp, #8]
	subs	w9, w9, w10
	str	w9, [sp, #4]
	ldr	w9, [sp, #4]
	str	w9, [sp]
	ldr	w10, [sp]
	mov	w9, #0                          ; =0x0
	subs	w10, w10, #0
	csel	w11, w8, w9, lt
	ldr	w10, [sp]
	add	w10, w10, w11
	str	w10, [sp]
	ldr	w10, [sp]
	subs	w10, w10, #2046, lsl #12        ; =8380416
	csel	w11, w8, w9, gt
	ldr	w10, [sp]
	subs	w10, w10, w11
	str	w10, [sp]
	ldr	w10, [sp]
	subs	w10, w10, #1023, lsl #12        ; =4190208
	csel	w9, w8, w9, gt
	ldr	w8, [sp]
	subs	w8, w8, w9
	str	w8, [sp]
	ldr	w0, [sp]
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
Lfunc_begin25:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception25
; %bb.0:
	sub	sp, sp, #128
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	ldr	x1, [x8]
	sub	x0, x29, #32
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEEC1B8ne200100ERKS3_
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	ldr	x1, [x8, #8]
Ltmp258:
	add	x0, sp, #56
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEEC1B8ne200100ERKS3_
Ltmp259:
	b	LBB229_1
LBB229_1:
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	ldr	x2, [x8, #16]
	ldr	x8, [x8, #24]
	ldr	w3, [x8]
Ltmp261:
	sub	x0, x29, #32
	add	x1, sp, #56
	bl	__ZL25reist_tree_butterfly_neonRNSt3__16vectorIiNS_9allocatorIiEEEES4_RKS3_i
Ltmp262:
	b	LBB229_2
LBB229_2:
	sub	x0, x29, #32
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	mov	x1, #1                          ; =0x1
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEEixB8ne200100Em
	ldr	w8, [x0]
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	add	x0, sp, #56
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	mov	x1, #2                          ; =0x2
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEEixB8ne200100Em
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	mov	x9, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldr	w9, [x9]
	add	w8, w8, w9
	mov	w8, w8
	mov	x10, x8
	adrp	x9, __ZL6g_sink@PAGE
	ldr	x8, [x9, __ZL6g_sink@PAGEOFF]
	eor	x8, x8, x10
	str	x8, [x9, __ZL6g_sink@PAGEOFF]
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEED1B8ne200100Ev
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEED1B8ne200100Ev
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
LBB229_3:
Ltmp260:
	str	x0, [sp, #48]
	mov	x8, x1
	str	w8, [sp, #44]
	b	LBB229_5
LBB229_4:
Ltmp263:
	str	x0, [sp, #48]
	mov	x8, x1
	str	w8, [sp, #44]
	add	x0, sp, #56
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEED1B8ne200100Ev
	b	LBB229_5
LBB229_5:
	sub	x0, x29, #32
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEED1B8ne200100Ev
	b	LBB229_6
LBB229_6:
	ldr	x0, [sp, #48]
	bl	__Unwind_Resume
Lfunc_end25:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table229:
Lexception25:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end25-Lcst_begin25
Lcst_begin25:
	.uleb128 Lfunc_begin25-Lfunc_begin25    ; >> Call Site 1 <<
	.uleb128 Ltmp258-Lfunc_begin25          ;   Call between Lfunc_begin25 and Ltmp258
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp258-Lfunc_begin25          ; >> Call Site 2 <<
	.uleb128 Ltmp259-Ltmp258                ;   Call between Ltmp258 and Ltmp259
	.uleb128 Ltmp260-Lfunc_begin25          ;     jumps to Ltmp260
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp261-Lfunc_begin25          ; >> Call Site 3 <<
	.uleb128 Ltmp262-Ltmp261                ;   Call between Ltmp261 and Ltmp262
	.uleb128 Ltmp263-Lfunc_begin25          ;     jumps to Ltmp263
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp262-Lfunc_begin25          ; >> Call Site 4 <<
	.uleb128 Lfunc_end25-Ltmp262            ;   Call between Ltmp262 and Lfunc_end25
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end25:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2                               ; -- Begin function _ZL25reist_tree_butterfly_neonRNSt3__16vectorIiNS_9allocatorIiEEEES4_RKS3_i
__ZL25reist_tree_butterfly_neonRNSt3__16vectorIiNS_9allocatorIiEEEES4_RKS3_i: ; @_ZL25reist_tree_butterfly_neonRNSt3__16vectorIiNS_9allocatorIiEEEES4_RKS3_i
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #496
	stp	x28, x27, [sp, #464]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #480]            ; 16-byte Folded Spill
	add	x29, sp, #480
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	add	x8, sp, #176
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	str	x0, [x8, #184]
	str	x1, [x8, #176]
	str	x2, [x8, #168]
	stur	w3, [x29, #-140]
	ldr	x0, [x8, #184]
	bl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeB8ne200100Ev
	mov	x8, x0
	stur	w8, [x29, #-144]
	ldur	w8, [x29, #-144]
	and	w8, w8, #0xfffffffc
	stur	w8, [x29, #-148]
	stur	wzr, [x29, #-152]
	b	LBB230_1
LBB230_1:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB230_3 Depth 2
                                        ;     Child Loop BB230_7 Depth 2
	ldur	w8, [x29, #-152]
	ldur	w9, [x29, #-140]
	subs	w8, w8, w9
	b.ge	LBB230_12
	b	LBB230_2
LBB230_2:                               ;   in Loop: Header=BB230_1 Depth=1
	stur	wzr, [x29, #-156]
	b	LBB230_3
LBB230_3:                               ;   Parent Loop BB230_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldur	w8, [x29, #-156]
	ldur	w9, [x29, #-148]
	subs	w8, w8, w9
	b.ge	LBB230_6
	b	LBB230_4
LBB230_4:                               ;   in Loop: Header=BB230_3 Depth=2
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x0, [x8, #184]
	ldursw	x1, [x29, #-156]
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEEixB8ne200100Em
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	ldr	q0, [x0]
	str	q0, [x8, #112]
	ldr	q0, [x8, #112]
	str	q0, [x8, #96]
	ldr	q0, [x8, #96]
	str	q0, [x8, #128]
	ldr	x0, [x8, #176]
	ldursw	x1, [x29, #-156]
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEEixB8ne200100Em
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	ldr	q0, [x0]
	str	q0, [x8, #64]
	ldr	q0, [x8, #64]
	str	q0, [x8, #48]
	ldr	q0, [x8, #48]
	str	q0, [x8, #80]
	ldr	x0, [x8, #168]
	ldursw	x1, [x29, #-156]
	bl	__ZNKSt3__16vectorIiNS_9allocatorIiEEEixB8ne200100Em
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	ldr	q0, [x0]
	str	q0, [x8, #16]
	ldr	q0, [x8, #16]
	str	q0, [x8]
	ldr	q0, [x8]
	str	q0, [x8, #32]
	ldr	q0, [x8, #80]
	bl	__ZL22neon_to_0q_from_center17__simd128_int32_t
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	str	q0, [x8, #240]
	ldr	q0, [x8, #240]
	str	q0, [x8, #224]
	ldr	q0, [x8, #224]
	str	q0, [sp, #160]
	ldr	q0, [x8, #32]
	bl	__ZL22neon_to_0q_from_center17__simd128_int32_t
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	str	q0, [x8, #208]
	ldr	q0, [x8, #208]
	str	q0, [x8, #192]
	ldr	q0, [x8, #192]
	str	q0, [sp, #144]
	ldr	q0, [sp, #160]
	ldr	q1, [sp, #144]
	bl	__ZL19neon_barrett_mul_0q18__simd128_uint32_tS_
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	str	q0, [sp, #128]
	ldr	q0, [sp, #128]
	str	q0, [x8, #272]
	ldr	q0, [x8, #272]
	str	q0, [x8, #256]
	ldr	q0, [x8, #256]
	bl	__ZL19neon_center_from_0q17__simd128_int32_t
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	str	q0, [sp, #112]
	ldr	q0, [x8, #128]
	ldr	q1, [sp, #112]
	bl	__ZL17neon_add_centered17__simd128_int32_tS_
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	str	q0, [sp, #96]
	ldr	q0, [x8, #128]
	ldr	q1, [sp, #112]
	bl	__ZL17neon_sub_centered17__simd128_int32_tS_
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	str	q0, [sp, #80]
	ldr	q0, [sp, #96]
	str	q0, [sp, #64]
	ldr	x0, [x8, #184]
	ldursw	x1, [x29, #-156]
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEEixB8ne200100Em
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	ldr	q0, [sp, #64]
	str	q0, [x0]
	ldr	q0, [sp, #80]
	str	q0, [sp, #48]
	ldr	x0, [x8, #176]
	ldursw	x1, [x29, #-156]
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEEixB8ne200100Em
	ldr	q0, [sp, #48]
	str	q0, [x0]
	b	LBB230_5
LBB230_5:                               ;   in Loop: Header=BB230_3 Depth=2
	ldur	w8, [x29, #-156]
	add	w8, w8, #4
	stur	w8, [x29, #-156]
	b	LBB230_3
LBB230_6:                               ;   in Loop: Header=BB230_1 Depth=1
	ldur	w8, [x29, #-148]
	str	w8, [sp, #44]
	b	LBB230_7
LBB230_7:                               ;   Parent Loop BB230_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #44]
	ldur	w9, [x29, #-144]
	subs	w8, w8, w9
	b.ge	LBB230_10
	b	LBB230_8
LBB230_8:                               ;   in Loop: Header=BB230_7 Depth=2
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x0, [x8, #176]
	ldrsw	x1, [sp, #44]
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEEixB8ne200100Em
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	ldr	w9, [x0]
	str	w9, [sp, #12]                   ; 4-byte Folded Spill
	ldr	x0, [x8, #168]
	ldrsw	x1, [sp, #44]
	bl	__ZNKSt3__16vectorIiNS_9allocatorIiEEEixB8ne200100Em
	mov	x8, x0
	ldr	w0, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w1, [x8]
	bl	__ZL23barrett_mul_to_centeredii
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	str	w0, [sp, #40]
	ldr	x0, [x8, #184]
	ldrsw	x1, [sp, #44]
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEEixB8ne200100Em
	ldr	w8, [x0]
	str	w8, [sp, #36]
	ldr	w0, [sp, #36]
	ldr	w1, [sp, #40]
	bl	__ZL18reist_add_centeredii
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	str	w0, [sp, #16]                   ; 4-byte Folded Spill
	ldr	x0, [x8, #184]
	ldrsw	x1, [sp, #44]
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEEixB8ne200100Em
	mov	x8, x0
	ldr	w0, [sp, #16]                   ; 4-byte Folded Reload
	str	w0, [x8]
	ldr	w0, [sp, #36]
	ldr	w1, [sp, #40]
	bl	__ZL18reist_sub_centeredii
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	str	w0, [sp, #20]                   ; 4-byte Folded Spill
	ldr	x0, [x8, #176]
	ldrsw	x1, [sp, #44]
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEEixB8ne200100Em
	mov	x8, x0
	ldr	w0, [sp, #20]                   ; 4-byte Folded Reload
	str	w0, [x8]
	b	LBB230_9
LBB230_9:                               ;   in Loop: Header=BB230_7 Depth=2
	ldr	w8, [sp, #44]
	add	w8, w8, #1
	str	w8, [sp, #44]
	b	LBB230_7
LBB230_10:                              ;   in Loop: Header=BB230_1 Depth=1
	b	LBB230_11
LBB230_11:                              ;   in Loop: Header=BB230_1 Depth=1
	ldur	w8, [x29, #-152]
	add	w8, w8, #1
	stur	w8, [x29, #-152]
	b	LBB230_1
LBB230_12:
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x0, [x8, #184]
	mov	x1, #0                          ; =0x0
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEEixB8ne200100Em
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	ldr	w9, [x0]
	str	w9, [sp, #8]                    ; 4-byte Folded Spill
	ldr	x0, [x8, #176]
	ldur	w8, [x29, #-144]
	mov	w9, #2                          ; =0x2
	sdiv	w9, w8, w9
                                        ; implicit-def: $x8
	mov	x8, x9
	sxtw	x1, w8
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEEixB8ne200100Em
	ldr	w8, [sp, #8]                    ; 4-byte Folded Reload
	ldr	w9, [x0]
	add	w8, w8, w9
	mov	w8, w8
	mov	x10, x8
	adrp	x9, __ZL6g_sink@PAGE
	ldr	x8, [x9, __ZL6g_sink@PAGEOFF]
	eor	x8, x8, x10
	str	x8, [x9, __ZL6g_sink@PAGEOFF]
	ldp	x29, x30, [sp, #480]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #464]            ; 16-byte Folded Reload
	add	sp, sp, #496
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZL22neon_to_0q_from_center17__simd128_int32_t
__ZL22neon_to_0q_from_center17__simd128_int32_t: ; @_ZL22neon_to_0q_from_center17__simd128_int32_t
	.cfi_startproc
; %bb.0:
	stp	x28, x27, [sp, #-16]!           ; 16-byte Folded Spill
	sub	sp, sp, #528
	.cfi_def_cfa_offset 544
	.cfi_offset w27, -8
	.cfi_offset w28, -16
	mov.16b	v1, v0
                                        ; implicit-def: $q0
	str	q1, [sp, #64]
	mov	w8, #57345                      ; =0xe001
	movk	w8, #127, lsl #16
	str	w8, [sp, #236]
	ldr	s1, [sp, #236]
                                        ; implicit-def: $q2
	fmov	s2, s1
	mov.16b	v1, v0
	mov.s	v1[0], v2[0]
	ldr	s3, [sp, #236]
                                        ; implicit-def: $q2
	fmov	s2, s3
	mov.s	v1[1], v2[0]
	ldr	s3, [sp, #236]
                                        ; implicit-def: $q2
	fmov	s2, s3
	mov.s	v1[2], v2[0]
	ldr	s3, [sp, #236]
                                        ; implicit-def: $q2
	fmov	s2, s3
	mov.s	v1[3], v2[0]
	str	q1, [sp, #192]
	ldr	q1, [sp, #192]
	str	q1, [sp, #208]
	ldr	q1, [sp, #208]
	str	q1, [sp, #48]
	ldr	q1, [sp, #64]
	add	x8, sp, #188
	str	wzr, [sp, #188]
	ld1.s	{ v0 }[0], [x8]
	ld1.s	{ v0 }[1], [x8]
	ld1.s	{ v0 }[2], [x8]
	ld1.s	{ v0 }[3], [x8]
	str	q0, [sp, #144]
	ldr	q0, [sp, #144]
	str	q0, [sp, #160]
	ldr	q0, [sp, #160]
	str	q1, [sp, #272]
	str	q0, [sp, #256]
	ldr	q1, [sp, #272]
	ldr	q0, [sp, #256]
	cmgt.4s	v0, v0, v1
	str	q0, [sp, #240]
	ldr	q0, [sp, #240]
	str	q0, [sp, #32]
	ldr	q1, [sp, #64]
	ldr	q0, [sp, #32]
	str	q0, [sp, #128]
	ldr	q0, [sp, #128]
	str	q0, [sp, #112]
	ldr	q2, [sp, #112]
	ldr	q0, [sp, #48]
	str	q2, [sp, #416]
	str	q0, [sp, #400]
	ldr	q0, [sp, #416]
	ldr	q2, [sp, #400]
	and.16b	v0, v0, v2
	str	q0, [sp, #384]
	ldr	q0, [sp, #384]
	str	q1, [sp, #320]
	str	q0, [sp, #304]
	ldr	q0, [sp, #320]
	ldr	q1, [sp, #304]
	add.4s	v0, v0, v1
	str	q0, [sp, #288]
	ldr	q0, [sp, #288]
	str	q0, [sp, #16]
	ldr	q1, [sp, #16]
	ldr	q0, [sp, #48]
	str	q1, [sp, #464]
	str	q0, [sp, #448]
	ldr	q0, [sp, #464]
	ldr	q1, [sp, #448]
	cmge.4s	v0, v0, v1
	str	q0, [sp, #432]
	ldr	q0, [sp, #432]
	str	q0, [sp]
	ldr	q1, [sp, #16]
	ldr	q0, [sp]
	str	q0, [sp, #96]
	ldr	q0, [sp, #96]
	str	q0, [sp, #80]
	ldr	q2, [sp, #80]
	ldr	q0, [sp, #48]
	str	q2, [sp, #368]
	str	q0, [sp, #352]
	ldr	q0, [sp, #368]
	ldr	q2, [sp, #352]
	and.16b	v0, v0, v2
	str	q0, [sp, #336]
	ldr	q0, [sp, #336]
	str	q1, [sp, #512]
	str	q0, [sp, #496]
	ldr	q0, [sp, #512]
	ldr	q1, [sp, #496]
	sub.4s	v0, v0, v1
	str	q0, [sp, #480]
	ldr	q0, [sp, #480]
	str	q0, [sp, #16]
	ldr	q0, [sp, #16]
	add	sp, sp, #528
	ldp	x28, x27, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZL19neon_barrett_mul_0q18__simd128_uint32_tS_
__ZL19neon_barrett_mul_0q18__simd128_uint32_tS_: ; @_ZL19neon_barrett_mul_0q18__simd128_uint32_tS_
	.cfi_startproc
; %bb.0:
	stp	x28, x27, [sp, #-16]!           ; 16-byte Folded Spill
	sub	sp, sp, #1488
	.cfi_def_cfa_offset 1504
	.cfi_offset w27, -8
	.cfi_offset w28, -16
	str	q0, [sp, #400]
	str	q1, [sp, #384]
	ldr	q0, [sp, #400]
	str	q0, [sp, #496]
	ldr	q0, [sp, #496]
                                        ; kill: def $d0 killed $d0 killed $q0
	str	d0, [sp, #488]
	ldr	d0, [sp, #488]
	str	d0, [sp, #376]
	ldr	q0, [sp, #400]
	str	q0, [sp, #592]
	ldr	q0, [sp, #592]
	ext.16b	v0, v0, v0, #8
                                        ; kill: def $d0 killed $d0 killed $q0
	str	d0, [sp, #584]
	ldr	d0, [sp, #584]
	str	d0, [sp, #368]
	ldr	q0, [sp, #384]
	str	q0, [sp, #464]
	ldr	q0, [sp, #464]
                                        ; kill: def $d0 killed $d0 killed $q0
	str	d0, [sp, #456]
	ldr	d0, [sp, #456]
	str	d0, [sp, #360]
	ldr	q0, [sp, #384]
	str	q0, [sp, #560]
	ldr	q0, [sp, #560]
	ext.16b	v0, v0, v0, #8
                                        ; kill: def $d0 killed $d0 killed $q0
	str	d0, [sp, #552]
	ldr	d0, [sp, #552]
	str	d0, [sp, #352]
	ldr	d1, [sp, #376]
	ldr	d0, [sp, #360]
	str	d1, [sp, #792]
	str	d0, [sp, #784]
	ldr	d0, [sp, #792]
	ldr	d1, [sp, #784]
	umull.2d	v0, v0, v1
	str	q0, [sp, #768]
	ldr	q0, [sp, #768]
	str	q0, [sp, #336]
	ldr	d1, [sp, #368]
	ldr	d0, [sp, #352]
	str	d1, [sp, #760]
	str	d0, [sp, #752]
	ldr	d0, [sp, #760]
	ldr	d1, [sp, #752]
	umull.2d	v0, v0, v1
	str	q0, [sp, #736]
	ldr	q0, [sp, #736]
	str	q0, [sp, #320]
	mov	w8, #512                        ; =0x200
	str	w8, [sp, #868]
	add	x8, sp, #868
	ld1r.2s	{ v0 }, [x8]
	str	d0, [sp, #848]
	ldr	d0, [sp, #848]
	str	d0, [sp, #856]
	ldr	d0, [sp, #856]
	str	d0, [sp, #312]
	ldr	q0, [sp, #336]
	str	q0, [sp, #976]
	ldr	q0, [sp, #976]
	xtn.2s	v0, v0
	str	d0, [sp, #968]
	ldr	d1, [sp, #968]
	ldr	d0, [sp, #312]
	str	d1, [sp, #728]
	str	d0, [sp, #720]
	ldr	d0, [sp, #728]
	ldr	d1, [sp, #720]
	umull.2d	v0, v0, v1
	str	q0, [sp, #704]
	ldr	q0, [sp, #704]
	str	q0, [sp, #288]
	ldr	q0, [sp, #320]
	str	q0, [sp, #944]
	ldr	q0, [sp, #944]
	xtn.2s	v0, v0
	str	d0, [sp, #936]
	ldr	d1, [sp, #936]
	ldr	d0, [sp, #312]
	str	d1, [sp, #696]
	str	d0, [sp, #688]
	ldr	d0, [sp, #696]
	ldr	d1, [sp, #688]
	umull.2d	v0, v0, v1
	str	q0, [sp, #672]
	ldr	q0, [sp, #672]
	str	q0, [sp, #272]
	ldr	q0, [sp, #288]
	str	q0, [sp, #240]
	ldr	q0, [sp, #240]
	shrn.2s	v0, v0, #32
	str	d0, [sp, #256]
	ldr	d0, [sp, #256]
	str	d0, [sp, #232]
	ldr	d0, [sp, #232]
	str	d0, [sp, #264]
	ldr	q0, [sp, #272]
	str	q0, [sp, #192]
	ldr	q0, [sp, #192]
	shrn.2s	v0, v0, #32
	str	d0, [sp, #216]
	ldr	d0, [sp, #216]
	str	d0, [sp, #184]
	ldr	d0, [sp, #184]
	str	d0, [sp, #224]
	ldr	d1, [sp, #264]
	ldr	d0, [sp, #224]
	str	d1, [sp, #1048]
	str	d0, [sp, #1040]
	ldr	d2, [sp, #1048]
	ldr	d0, [sp, #1040]
                                        ; implicit-def: $q1
	fmov	d1, d0
                                        ; implicit-def: $q0
	fmov	d0, d2
	mov.d	v0[1], v1[0]
	str	q0, [sp, #1024]
	ldr	q0, [sp, #1024]
	str	q0, [sp, #160]
	mov	w8, #57345                      ; =0xe001
	movk	w8, #127, lsl #16
	str	w8, [sp, #1100]
	add	x9, sp, #1100
	ld1r.4s	{ v0 }, [x9]
	str	q0, [sp, #1056]
	ldr	q0, [sp, #1056]
	str	q0, [sp, #1072]
	ldr	q0, [sp, #1072]
	str	q0, [sp, #144]
	ldr	q0, [sp, #160]
	str	q0, [sp, #432]
	ldr	q0, [sp, #432]
                                        ; kill: def $d0 killed $d0 killed $q0
	str	d0, [sp, #424]
	ldr	d0, [sp, #424]
	str	d0, [sp, #136]
	ldr	q0, [sp, #160]
	str	q0, [sp, #528]
	ldr	q0, [sp, #528]
	ext.16b	v0, v0, v0, #8
                                        ; kill: def $d0 killed $d0 killed $q0
	str	d0, [sp, #520]
	ldr	d0, [sp, #520]
	str	d0, [sp, #128]
	ldr	d1, [sp, #136]
	str	w8, [sp, #844]
	add	x9, sp, #844
	ld1r.2s	{ v0 }, [x9]
	str	d0, [sp, #824]
	ldr	d0, [sp, #824]
	str	d0, [sp, #832]
	ldr	d0, [sp, #832]
	str	d1, [sp, #664]
	str	d0, [sp, #656]
	ldr	d0, [sp, #664]
	ldr	d1, [sp, #656]
	umull.2d	v0, v0, v1
	str	q0, [sp, #640]
	ldr	q0, [sp, #640]
	str	q0, [sp, #112]
	ldr	d1, [sp, #128]
	str	w8, [sp, #820]
	add	x8, sp, #820
	ld1r.2s	{ v0 }, [x8]
	str	d0, [sp, #800]
	ldr	d0, [sp, #800]
	str	d0, [sp, #808]
	ldr	d0, [sp, #808]
	str	d1, [sp, #632]
	str	d0, [sp, #624]
	ldr	d0, [sp, #632]
	ldr	d1, [sp, #624]
	umull.2d	v0, v0, v1
	str	q0, [sp, #608]
	ldr	q0, [sp, #608]
	str	q0, [sp, #96]
	ldr	q1, [sp, #336]
	ldr	q0, [sp, #112]
	str	q1, [sp, #1184]
	str	q0, [sp, #1168]
	ldr	q0, [sp, #1184]
	ldr	q1, [sp, #1168]
	sub.2d	v0, v0, v1
	str	q0, [sp, #1152]
	ldr	q0, [sp, #1152]
	str	q0, [sp, #80]
	ldr	q1, [sp, #320]
	ldr	q0, [sp, #96]
	str	q1, [sp, #1136]
	str	q0, [sp, #1120]
	ldr	q0, [sp, #1136]
	ldr	q1, [sp, #1120]
	sub.2d	v0, v0, v1
	str	q0, [sp, #1104]
	ldr	q0, [sp, #1104]
	str	q0, [sp, #64]
	ldr	q0, [sp, #80]
	str	q0, [sp, #912]
	ldr	q0, [sp, #912]
	xtn.2s	v0, v0
	str	d0, [sp, #904]
	ldr	d0, [sp, #904]
	str	d0, [sp, #56]
	ldr	q0, [sp, #64]
	str	q0, [sp, #880]
	ldr	q0, [sp, #880]
	xtn.2s	v0, v0
	str	d0, [sp, #872]
	ldr	d0, [sp, #872]
	str	d0, [sp, #48]
	ldr	d1, [sp, #56]
	ldr	d0, [sp, #48]
	str	d1, [sp, #1016]
	str	d0, [sp, #1008]
	ldr	d2, [sp, #1016]
	ldr	d0, [sp, #1008]
                                        ; implicit-def: $q1
	fmov	d1, d0
                                        ; implicit-def: $q0
	fmov	d0, d2
	mov.d	v0[1], v1[0]
	str	q0, [sp, #992]
	ldr	q0, [sp, #992]
	str	q0, [sp, #32]
	ldr	q1, [sp, #32]
	ldr	q0, [sp, #144]
	str	q1, [sp, #1280]
	str	q0, [sp, #1264]
	ldr	q0, [sp, #1280]
	ldr	q1, [sp, #1264]
	cmhs.4s	v0, v0, v1
	str	q0, [sp, #1248]
	ldr	q0, [sp, #1248]
	str	q0, [sp, #16]
	ldr	q1, [sp, #32]
	ldr	q2, [sp, #16]
	ldr	q0, [sp, #144]
	str	q2, [sp, #1472]
	str	q0, [sp, #1456]
	ldr	q0, [sp, #1472]
	ldr	q2, [sp, #1456]
	and.16b	v0, v0, v2
	str	q0, [sp, #1440]
	ldr	q0, [sp, #1440]
	str	q1, [sp, #1376]
	str	q0, [sp, #1360]
	ldr	q0, [sp, #1376]
	ldr	q1, [sp, #1360]
	sub.4s	v0, v0, v1
	str	q0, [sp, #1344]
	ldr	q0, [sp, #1344]
	str	q0, [sp, #32]
	ldr	q1, [sp, #32]
	ldr	q0, [sp, #144]
	str	q1, [sp, #1232]
	str	q0, [sp, #1216]
	ldr	q0, [sp, #1232]
	ldr	q1, [sp, #1216]
	cmhs.4s	v0, v0, v1
	str	q0, [sp, #1200]
	ldr	q0, [sp, #1200]
	str	q0, [sp]
	ldr	q1, [sp, #32]
	ldr	q2, [sp]
	ldr	q0, [sp, #144]
	str	q2, [sp, #1424]
	str	q0, [sp, #1408]
	ldr	q0, [sp, #1424]
	ldr	q2, [sp, #1408]
	and.16b	v0, v0, v2
	str	q0, [sp, #1392]
	ldr	q0, [sp, #1392]
	str	q1, [sp, #1328]
	str	q0, [sp, #1312]
	ldr	q0, [sp, #1328]
	ldr	q1, [sp, #1312]
	sub.4s	v0, v0, v1
	str	q0, [sp, #1296]
	ldr	q0, [sp, #1296]
	str	q0, [sp, #32]
	ldr	q0, [sp, #32]
	add	sp, sp, #1488
	ldp	x28, x27, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZL19neon_center_from_0q17__simd128_int32_t
__ZL19neon_center_from_0q17__simd128_int32_t: ; @_ZL19neon_center_from_0q17__simd128_int32_t
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #352
	stp	x28, x27, [sp, #336]            ; 16-byte Folded Spill
	.cfi_def_cfa_offset 352
	.cfi_offset w27, -8
	.cfi_offset w28, -16
	mov.16b	v1, v0
                                        ; implicit-def: $q0
	str	q1, [sp, #48]
	mov	w8, #4190208                    ; =0x3ff000
	str	w8, [sp, #188]
	ldr	s1, [sp, #188]
                                        ; implicit-def: $q2
	fmov	s2, s1
	mov.16b	v1, v0
	mov.s	v1[0], v2[0]
	ldr	s3, [sp, #188]
                                        ; implicit-def: $q2
	fmov	s2, s3
	mov.s	v1[1], v2[0]
	ldr	s3, [sp, #188]
                                        ; implicit-def: $q2
	fmov	s2, s3
	mov.s	v1[2], v2[0]
	ldr	s3, [sp, #188]
                                        ; implicit-def: $q2
	fmov	s2, s3
	mov.s	v1[3], v2[0]
	str	q1, [sp, #144]
	ldr	q1, [sp, #144]
	str	q1, [sp, #160]
	ldr	q1, [sp, #160]
	str	q1, [sp, #32]
	add	x8, sp, #140
	mov	w9, #57345                      ; =0xe001
	movk	w9, #127, lsl #16
	str	w9, [sp, #140]
	ld1.s	{ v0 }[0], [x8]
	ld1.s	{ v0 }[1], [x8]
	ld1.s	{ v0 }[2], [x8]
	ld1.s	{ v0 }[3], [x8]
	str	q0, [sp, #96]
	ldr	q0, [sp, #96]
	str	q0, [sp, #112]
	ldr	q0, [sp, #112]
	str	q0, [sp, #16]
	ldr	q1, [sp, #48]
	ldr	q0, [sp, #32]
	str	q1, [sp, #320]
	str	q0, [sp, #304]
	ldr	q0, [sp, #320]
	ldr	q1, [sp, #304]
	cmgt.4s	v0, v0, v1
	str	q0, [sp, #288]
	ldr	q0, [sp, #288]
	str	q0, [sp]
	ldr	q1, [sp, #48]
	ldr	q0, [sp]
	str	q0, [sp, #80]
	ldr	q0, [sp, #80]
	str	q0, [sp, #64]
	ldr	q2, [sp, #64]
	ldr	q0, [sp, #16]
	str	q2, [sp, #224]
	str	q0, [sp, #208]
	ldr	q0, [sp, #224]
	ldr	q2, [sp, #208]
	and.16b	v0, v0, v2
	str	q0, [sp, #192]
	ldr	q0, [sp, #192]
	str	q1, [sp, #272]
	str	q0, [sp, #256]
	ldr	q0, [sp, #272]
	ldr	q1, [sp, #256]
	sub.4s	v0, v0, v1
	str	q0, [sp, #240]
	ldr	q0, [sp, #240]
	ldp	x28, x27, [sp, #336]            ; 16-byte Folded Reload
	add	sp, sp, #352
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZL17neon_add_centered17__simd128_int32_tS_
__ZL17neon_add_centered17__simd128_int32_tS_: ; @_ZL17neon_add_centered17__simd128_int32_tS_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #128
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	q0, [sp, #48]
	str	q1, [sp, #32]
	ldr	q1, [sp, #48]
	ldr	q0, [sp, #32]
	stur	q1, [x29, #-16]
	stur	q0, [x29, #-32]
	ldur	q0, [x29, #-16]
	ldur	q1, [x29, #-32]
	add.4s	v0, v0, v1
	stur	q0, [x29, #-48]
	ldur	q0, [x29, #-48]
	str	q0, [sp, #16]
	ldr	q0, [sp, #16]
	bl	__ZL22neon_to_0q_from_center17__simd128_int32_t
	str	q0, [sp]
	ldr	q0, [sp]
	bl	__ZL19neon_center_from_0q17__simd128_int32_t
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZL17neon_sub_centered17__simd128_int32_tS_
__ZL17neon_sub_centered17__simd128_int32_tS_: ; @_ZL17neon_sub_centered17__simd128_int32_tS_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #128
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	q0, [sp, #48]
	str	q1, [sp, #32]
	ldr	q1, [sp, #48]
	ldr	q0, [sp, #32]
	stur	q1, [x29, #-16]
	stur	q0, [x29, #-32]
	ldur	q0, [x29, #-16]
	ldur	q1, [x29, #-32]
	sub.4s	v0, v0, v1
	stur	q0, [x29, #-48]
	ldur	q0, [x29, #-48]
	str	q0, [sp, #16]
	ldr	q0, [sp, #16]
	bl	__ZL22neon_to_0q_from_center17__simd128_int32_t
	str	q0, [sp]
	ldr	q0, [sp]
	bl	__ZL19neon_center_from_0q17__simd128_int32_t
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZZ4mainENK3$_2clEv
__ZZ4mainENK3$_2clEv:                   ; @"_ZZ4mainENK3$_2clEv"
Lfunc_begin26:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception26
; %bb.0:
	sub	sp, sp, #128
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	ldr	x1, [x8]
	sub	x0, x29, #32
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEEC1B8ne200100ERKS3_
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	ldr	x1, [x8, #8]
Ltmp264:
	add	x0, sp, #56
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEEC1B8ne200100ERKS3_
Ltmp265:
	b	LBB236_1
LBB236_1:
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	ldr	x2, [x8, #16]
	ldr	x3, [x8, #24]
	ldr	x8, [x8, #32]
	ldr	w4, [x8]
Ltmp267:
	sub	x0, x29, #32
	add	x1, sp, #56
	bl	__ZL14mont_butterflyRNSt3__16vectorIjNS_9allocatorIjEEEES4_RKS3_RK6Mont32i
Ltmp268:
	b	LBB236_2
LBB236_2:
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	ldr	x8, [x8, #24]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	sub	x0, x29, #32
	mov	x1, #3                          ; =0x3
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEEixB8ne200100Em
	ldr	w8, [x0]
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	add	x0, sp, #56
	mov	x1, #4                          ; =0x4
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEEixB8ne200100Em
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	mov	x9, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldr	w9, [x9]
	eor	w1, w8, w9
Ltmp269:
	bl	__ZNK6Mont329from_montEj
	str	w0, [sp, #28]                   ; 4-byte Folded Spill
Ltmp270:
	b	LBB236_3
LBB236_3:
	ldr	w8, [sp, #28]                   ; 4-byte Folded Reload
	str	w8, [sp, #40]
	ldr	w8, [sp, #40]
	mov	x10, x8
	adrp	x9, __ZL6g_sink@PAGE
	ldr	x8, [x9, __ZL6g_sink@PAGEOFF]
	eor	x8, x8, x10
	str	x8, [x9, __ZL6g_sink@PAGEOFF]
	add	x0, sp, #56
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEED1B8ne200100Ev
	sub	x0, x29, #32
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEED1B8ne200100Ev
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
LBB236_4:
Ltmp266:
	str	x0, [sp, #48]
	mov	x8, x1
	str	w8, [sp, #44]
	b	LBB236_6
LBB236_5:
Ltmp271:
	str	x0, [sp, #48]
	mov	x8, x1
	str	w8, [sp, #44]
	add	x0, sp, #56
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEED1B8ne200100Ev
	b	LBB236_6
LBB236_6:
	sub	x0, x29, #32
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEED1B8ne200100Ev
	b	LBB236_7
LBB236_7:
	ldr	x0, [sp, #48]
	bl	__Unwind_Resume
Lfunc_end26:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table236:
Lexception26:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end26-Lcst_begin26
Lcst_begin26:
	.uleb128 Lfunc_begin26-Lfunc_begin26    ; >> Call Site 1 <<
	.uleb128 Ltmp264-Lfunc_begin26          ;   Call between Lfunc_begin26 and Ltmp264
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp264-Lfunc_begin26          ; >> Call Site 2 <<
	.uleb128 Ltmp265-Ltmp264                ;   Call between Ltmp264 and Ltmp265
	.uleb128 Ltmp266-Lfunc_begin26          ;     jumps to Ltmp266
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp267-Lfunc_begin26          ; >> Call Site 3 <<
	.uleb128 Ltmp270-Ltmp267                ;   Call between Ltmp267 and Ltmp270
	.uleb128 Ltmp271-Lfunc_begin26          ;     jumps to Ltmp271
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp270-Lfunc_begin26          ; >> Call Site 4 <<
	.uleb128 Lfunc_end26-Ltmp270            ;   Call between Ltmp270 and Lfunc_end26
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end26:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2                               ; -- Begin function _ZL14mont_butterflyRNSt3__16vectorIjNS_9allocatorIjEEEES4_RKS3_RK6Mont32i
__ZL14mont_butterflyRNSt3__16vectorIjNS_9allocatorIjEEEES4_RKS3_RK6Mont32i: ; @_ZL14mont_butterflyRNSt3__16vectorIjNS_9allocatorIjEEEES4_RKS3_RK6Mont32i
	.cfi_startproc
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
	stur	w4, [x29, #-36]
	ldur	x0, [x29, #-8]
	bl	__ZNKSt3__16vectorIjNS_9allocatorIjEEE4sizeB8ne200100Ev
	mov	x8, x0
	stur	w8, [x29, #-40]
	stur	wzr, [x29, #-44]
	b	LBB237_1
LBB237_1:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB237_3 Depth 2
	ldur	w8, [x29, #-44]
	ldur	w9, [x29, #-36]
	subs	w8, w8, w9
	b.ge	LBB237_8
	b	LBB237_2
LBB237_2:                               ;   in Loop: Header=BB237_1 Depth=1
	str	wzr, [sp, #48]
	b	LBB237_3
LBB237_3:                               ;   Parent Loop BB237_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #48]
	ldur	w9, [x29, #-40]
	subs	w8, w8, w9
	b.ge	LBB237_6
	b	LBB237_4
LBB237_4:                               ;   in Loop: Header=BB237_3 Depth=2
	ldur	x8, [x29, #-32]
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	ldrsw	x1, [sp, #48]
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEEixB8ne200100Em
	ldr	w8, [x0]
	str	w8, [sp, #20]                   ; 4-byte Folded Spill
	ldur	x0, [x29, #-24]
	ldrsw	x1, [sp, #48]
	bl	__ZNKSt3__16vectorIjNS_9allocatorIjEEEixB8ne200100Em
	ldr	w1, [sp, #20]                   ; 4-byte Folded Reload
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldr	w2, [x8]
	bl	__ZNK6Mont323mulEjj
	str	w0, [sp, #44]
	ldur	x0, [x29, #-8]
	ldrsw	x1, [sp, #48]
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEEixB8ne200100Em
	ldr	w8, [x0]
	str	w8, [sp, #40]
	ldr	w0, [sp, #40]
	ldr	w1, [sp, #44]
	ldur	x8, [x29, #-32]
	ldr	w2, [x8]
	bl	__ZN6Mont323addEjjj
	str	w0, [sp, #32]                   ; 4-byte Folded Spill
	ldur	x0, [x29, #-8]
	ldrsw	x1, [sp, #48]
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEEixB8ne200100Em
	mov	x8, x0
	ldr	w0, [sp, #32]                   ; 4-byte Folded Reload
	str	w0, [x8]
	ldr	w0, [sp, #40]
	ldr	w1, [sp, #44]
	ldur	x8, [x29, #-32]
	ldr	w2, [x8]
	bl	__ZN6Mont323subEjjj
	str	w0, [sp, #36]                   ; 4-byte Folded Spill
	ldur	x0, [x29, #-16]
	ldrsw	x1, [sp, #48]
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEEixB8ne200100Em
	mov	x8, x0
	ldr	w0, [sp, #36]                   ; 4-byte Folded Reload
	str	w0, [x8]
	b	LBB237_5
LBB237_5:                               ;   in Loop: Header=BB237_3 Depth=2
	ldr	w8, [sp, #48]
	add	w8, w8, #1
	str	w8, [sp, #48]
	b	LBB237_3
LBB237_6:                               ;   in Loop: Header=BB237_1 Depth=1
	b	LBB237_7
LBB237_7:                               ;   in Loop: Header=BB237_1 Depth=1
	ldur	w8, [x29, #-44]
	add	w8, w8, #1
	stur	w8, [x29, #-44]
	b	LBB237_1
LBB237_8:
	ldur	x8, [x29, #-32]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x0, [x29, #-8]
	mov	x1, #0                          ; =0x0
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEEixB8ne200100Em
	ldr	w8, [x0]
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	ldur	x0, [x29, #-16]
	ldur	w8, [x29, #-40]
	mov	w9, #2                          ; =0x2
	sdiv	w9, w8, w9
                                        ; implicit-def: $x8
	mov	x8, x9
	sxtw	x1, w8
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEEixB8ne200100Em
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	mov	x9, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	w9, [x9]
	eor	w1, w8, w9
	bl	__ZNK6Mont329from_montEj
	mov	w8, w0
	mov	x10, x8
	adrp	x9, __ZL6g_sink@PAGE
	ldr	x8, [x9, __ZL6g_sink@PAGEOFF]
	eor	x8, x8, x10
	str	x8, [x9, __ZL6g_sink@PAGEOFF]
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNK6Mont329from_montEj        ; -- Begin function _ZNK6Mont329from_montEj
	.weak_definition	__ZNK6Mont329from_montEj
	.p2align	2
__ZNK6Mont329from_montEj:               ; @_ZNK6Mont329from_montEj
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
	ldr	w8, [sp, #4]
	mov	x1, x8
	bl	__ZNK6Mont324redcEy
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNK6Mont323mulEjj             ; -- Begin function _ZNK6Mont323mulEjj
	.weak_definition	__ZNK6Mont323mulEjj
	.p2align	2
__ZNK6Mont323mulEjj:                    ; @_ZNK6Mont323mulEjj
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
	str	w2, [sp]
	ldr	x0, [sp, #8]
	ldr	w8, [sp, #4]
                                        ; kill: def $x8 killed $w8
	ldr	w9, [sp]
                                        ; kill: def $x9 killed $w9
	mul	x1, x8, x9
	bl	__ZNK6Mont324redcEy
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIjNS_9allocatorIjEEEixB8ne200100Em ; -- Begin function _ZNKSt3__16vectorIjNS_9allocatorIjEEEixB8ne200100Em
	.globl	__ZNKSt3__16vectorIjNS_9allocatorIjEEEixB8ne200100Em
	.weak_definition	__ZNKSt3__16vectorIjNS_9allocatorIjEEEixB8ne200100Em
	.p2align	2
__ZNKSt3__16vectorIjNS_9allocatorIjEEEixB8ne200100Em: ; @_ZNKSt3__16vectorIjNS_9allocatorIjEEEixB8ne200100Em
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
	.globl	__ZN6Mont323addEjjj             ; -- Begin function _ZN6Mont323addEjjj
	.weak_definition	__ZN6Mont323addEjjj
	.p2align	2
__ZN6Mont323addEjjj:                    ; @_ZN6Mont323addEjjj
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, #12]
	str	w1, [sp, #8]
	str	w2, [sp, #4]
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #8]
	add	w8, w8, w9
	str	w8, [sp]
	ldr	w8, [sp]
	ldr	w9, [sp, #4]
	subs	w8, w8, w9
	b.hs	LBB241_2
	b	LBB241_1
LBB241_1:
	ldr	w8, [sp]
	ldr	w9, [sp, #12]
	subs	w8, w8, w9
	b.hs	LBB241_3
	b	LBB241_2
LBB241_2:
	ldr	w9, [sp, #4]
	ldr	w8, [sp]
	subs	w8, w8, w9
	str	w8, [sp]
	b	LBB241_3
LBB241_3:
	ldr	w0, [sp]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN6Mont323subEjjj             ; -- Begin function _ZN6Mont323subEjjj
	.weak_definition	__ZN6Mont323subEjjj
	.p2align	2
__ZN6Mont323subEjjj:                    ; @_ZN6Mont323subEjjj
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, #12]
	str	w1, [sp, #8]
	str	w2, [sp, #4]
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #8]
	subs	w8, w8, w9
	str	w8, [sp]
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #8]
	subs	w8, w8, w9
	b.hs	LBB242_2
	b	LBB242_1
LBB242_1:
	ldr	w9, [sp, #4]
	ldr	w8, [sp]
	add	w8, w8, w9
	str	w8, [sp]
	b	LBB242_2
LBB242_2:
	ldr	w0, [sp]
	add	sp, sp, #16
	ret
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
l_.str.19:                              ; @.str.19
	.asciz	"Montgomery requires odd modulus\n"

l_.str.20:                              ; @.str.20
	.asciz	"vector"

.subsections_via_symbols
