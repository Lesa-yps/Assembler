	.file	"main1.cpp"
	.intel_syntax noprefix
 # GNU C++17 (GCC) version 13.2.0 (x86_64-w64-mingw32)
 #	compiled by GNU C version 13.2.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version none
 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed: -mno-sse -m80387 -masm=intel -mtune=generic -march=x86-64 -g -O0 -std=c++17
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "C:/assembly/lab8_vsc" "main1.cpp"
	.section .rdata,"dr"
.LC0:
	.ascii " = \0"
.LC1:
	.ascii " sec\0"
.LC2:
	.ascii " ms\0"
.LC3:
	.ascii " (count runs = \0"
.LC4:
	.ascii ")\0"
	.text
	.globl	_Z10print_timelPKc
	.def	_Z10print_timelPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z10print_timelPKc
_Z10print_timelPKc:
.LFB2052:
	.file 1 "main1.cpp"
	.loc 1 16 1
	.cfi_startproc
	push	rbp	 #
	.seh_pushreg	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	 #,
	.seh_setframe	rbp, 0
	.cfi_def_cfa_register 6
	sub	rsp, 32	 #,
	.seh_stackalloc	32
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx	 # time, time
	mov	QWORD PTR 24[rbp], rdx	 # help_str, help_str
 # main1.cpp:17: 	cout << help_str << " = ";
	.loc 1 17 22
	mov	rax, QWORD PTR 24[rbp]	 # tmp89, help_str
	mov	rdx, rax	 #, tmp89
	mov	rax, QWORD PTR .refptr._ZSt4cout[rip]	 # tmp90,
	mov	rcx, rax	 #, tmp90
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	 #
	mov	rcx, rax	 # _1,
 # main1.cpp:17: 	cout << help_str << " = ";
	.loc 1 17 22 is_stmt 0 discriminator 1
	lea	rax, .LC0[rip]	 # tmp91,
	mov	rdx, rax	 #, tmp91
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	 #
 # main1.cpp:18: 	if (time >= CLOCKS_PER_SEC)
	.loc 1 18 2 is_stmt 1
	cmp	DWORD PTR 16[rbp], 999	 # time,
	jle	.L2	 #,
 # main1.cpp:19: 		cout << time / CLOCKS_PER_SEC << " sec";
	.loc 1 19 18
	mov	eax, DWORD PTR 16[rbp]	 # tmp92, time
	movsx	rdx, eax	 # tmp93, tmp92
	imul	rdx, rdx, 274877907	 # tmp94, tmp93,
	shr	rdx, 32	 # tmp95,
	mov	ecx, edx	 # tmp96, tmp95
	sar	ecx, 6	 # tmp96,
	cdq
	mov	eax, ecx	 # tmp96, tmp96
	sub	eax, edx	 # tmp96, tmp97
	mov	edx, eax	 #, _2
	mov	rax, QWORD PTR .refptr._ZSt4cout[rip]	 # tmp98,
	mov	rcx, rax	 #, tmp98
	call	_ZNSolsEl	 #
	mov	rcx, rax	 # _3,
 # main1.cpp:19: 		cout << time / CLOCKS_PER_SEC << " sec";
	.loc 1 19 36 discriminator 1
	lea	rax, .LC1[rip]	 # tmp99,
	mov	rdx, rax	 #, tmp99
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	 #
	jmp	.L3	 #
.L2:
 # main1.cpp:21: 		cout << time << " ms";
	.loc 1 21 11
	mov	eax, DWORD PTR 16[rbp]	 # tmp100, time
	mov	edx, eax	 #, tmp100
	mov	rax, QWORD PTR .refptr._ZSt4cout[rip]	 # tmp101,
	mov	rcx, rax	 #, tmp101
	call	_ZNSolsEl	 #
	mov	rcx, rax	 # _4,
 # main1.cpp:21: 		cout << time << " ms";
	.loc 1 21 19 discriminator 1
	lea	rax, .LC2[rip]	 # tmp102,
	mov	rdx, rax	 #, tmp102
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	 #
.L3:
 # main1.cpp:22: 	cout << " (count runs = " << COUNT_RUN << ")" << endl;
	.loc 1 22 10
	lea	rax, .LC3[rip]	 # tmp103,
	mov	rdx, rax	 #, tmp103
	mov	rax, QWORD PTR .refptr._ZSt4cout[rip]	 # tmp104,
	mov	rcx, rax	 #, tmp104
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	 #
 # main1.cpp:22: 	cout << " (count runs = " << COUNT_RUN << ")" << endl;
	.loc 1 22 44 discriminator 1
	mov	edx, 1000000	 #,
	mov	rcx, rax	 #, _5
	call	_ZNSolsEi	 #
	mov	rcx, rax	 # _6,
 # main1.cpp:22: 	cout << " (count runs = " << COUNT_RUN << ")" << endl;
	.loc 1 22 44 is_stmt 0 discriminator 2
	lea	rax, .LC4[rip]	 # tmp105,
	mov	rdx, rax	 #, tmp105
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	 #
	mov	rcx, rax	 # _7,
 # main1.cpp:22: 	cout << " (count runs = " << COUNT_RUN << ")" << endl;
	.loc 1 22 51 is_stmt 1 discriminator 3
	mov	rax, QWORD PTR .refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_[rip]	 # tmp106,
	mov	rdx, rax	 #, tmp106
	call	_ZNSolsEPFRSoS_E	 #
 # main1.cpp:23: }
	.loc 1 23 1
	nop	
	add	rsp, 32	 #,
	pop	rbp	 #
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2052:
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC5:
	.ascii "Float: \0"
.LC8:
	.ascii "Double: \0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB2057:
	.loc 1 99 1
	.cfi_startproc
	push	rbp	 #
	.seh_pushreg	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	 #,
	.seh_setframe	rbp, 0
	.cfi_def_cfa_register 6
	sub	rsp, 64	 #,
	.seh_stackalloc	64
	.seh_endprologue
 # main1.cpp:99: {
	.loc 1 99 1
	call	__main	 #
 # main1.cpp:100: 	cout << endl << "Float: " << endl;
	.loc 1 100 10
	mov	rax, QWORD PTR .refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_[rip]	 # tmp88,
	mov	rdx, rax	 #, tmp88
	mov	rax, QWORD PTR .refptr._ZSt4cout[rip]	 # tmp89,
	mov	rcx, rax	 #, tmp89
	call	_ZNSolsEPFRSoS_E	 #
	mov	rcx, rax	 # _1,
 # main1.cpp:100: 	cout << endl << "Float: " << endl;
	.loc 1 100 18 discriminator 1
	lea	rax, .LC5[rip]	 # tmp90,
	mov	rdx, rax	 #, tmp90
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	 #
	mov	rcx, rax	 # _2,
 # main1.cpp:100: 	cout << endl << "Float: " << endl;
	.loc 1 100 31 discriminator 2
	mov	rax, QWORD PTR .refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_[rip]	 # tmp91,
	mov	rdx, rax	 #, tmp91
	call	_ZNSolsEPFRSoS_E	 #
 # main1.cpp:101: 	float fa = 3.2f;
	.loc 1 101 8
	fld	DWORD PTR .LC6[rip]	 #
	fstp	DWORD PTR -4[rbp]	 # fa
 # main1.cpp:102: 	float fb = 5.21f;
	.loc 1 102 8
	fld	DWORD PTR .LC7[rip]	 #
	fstp	DWORD PTR -8[rbp]	 # fb
 # main1.cpp:103: 	sum_cpp(fa, fb);
	.loc 1 103 9
	mov	edx, DWORD PTR -8[rbp]	 # tmp94, fb
	mov	eax, DWORD PTR -4[rbp]	 # tmp95, fa
	mov	ecx, eax	 #, tmp95
	call	_Z7sum_cppIfEvT_S0_	 #
 # main1.cpp:104: 	sum_asm(fa, fb);
	.loc 1 104 9
	mov	edx, DWORD PTR -8[rbp]	 # tmp96, fb
	mov	eax, DWORD PTR -4[rbp]	 # tmp97, fa
	mov	ecx, eax	 #, tmp97
	call	_Z7sum_asmIfEvT_S0_	 #
 # main1.cpp:105: 	mul_cpp(fa, fb);
	.loc 1 105 9
	mov	edx, DWORD PTR -8[rbp]	 # tmp98, fb
	mov	eax, DWORD PTR -4[rbp]	 # tmp99, fa
	mov	ecx, eax	 #, tmp99
	call	_Z7mul_cppIfEvT_S0_	 #
 # main1.cpp:106: 	mul_asm(fa, fb);
	.loc 1 106 9
	mov	edx, DWORD PTR -8[rbp]	 # tmp100, fb
	mov	eax, DWORD PTR -4[rbp]	 # tmp101, fa
	mov	ecx, eax	 #, tmp101
	call	_Z7mul_asmIfEvT_S0_	 #
 # main1.cpp:108: 	cout << endl << "Double: " << endl;
	.loc 1 108 10
	mov	rax, QWORD PTR .refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_[rip]	 # tmp102,
	mov	rdx, rax	 #, tmp102
	mov	rax, QWORD PTR .refptr._ZSt4cout[rip]	 # tmp103,
	mov	rcx, rax	 #, tmp103
	call	_ZNSolsEPFRSoS_E	 #
	mov	rcx, rax	 # _3,
 # main1.cpp:108: 	cout << endl << "Double: " << endl;
	.loc 1 108 18 discriminator 1
	lea	rax, .LC8[rip]	 # tmp104,
	mov	rdx, rax	 #, tmp104
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	 #
	mov	rcx, rax	 # _4,
 # main1.cpp:108: 	cout << endl << "Double: " << endl;
	.loc 1 108 32 discriminator 2
	mov	rax, QWORD PTR .refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_[rip]	 # tmp105,
	mov	rdx, rax	 #, tmp105
	call	_ZNSolsEPFRSoS_E	 #
 # main1.cpp:109: 	double da = 3.2;
	.loc 1 109 9
	fld	QWORD PTR .LC9[rip]	 #
	fstp	QWORD PTR -16[rbp]	 # da
 # main1.cpp:110: 	double db = 5.21;
	.loc 1 110 9
	fld	QWORD PTR .LC10[rip]	 #
	fstp	QWORD PTR -24[rbp]	 # db
 # main1.cpp:111: 	sum_cpp(da, db);
	.loc 1 111 9
	mov	rdx, QWORD PTR -24[rbp]	 # tmp108, db
	mov	rax, QWORD PTR -16[rbp]	 # tmp109, da
	mov	rcx, rax	 #, tmp109
	call	_Z7sum_cppIdEvT_S0_	 #
 # main1.cpp:112: 	sum_asm(da, db);
	.loc 1 112 9
	mov	rdx, QWORD PTR -24[rbp]	 # tmp110, db
	mov	rax, QWORD PTR -16[rbp]	 # tmp111, da
	mov	rcx, rax	 #, tmp111
	call	_Z7sum_asmIdEvT_S0_	 #
 # main1.cpp:113: 	mul_cpp(da, db);
	.loc 1 113 9
	mov	rdx, QWORD PTR -24[rbp]	 # tmp112, db
	mov	rax, QWORD PTR -16[rbp]	 # tmp113, da
	mov	rcx, rax	 #, tmp113
	call	_Z7mul_cppIdEvT_S0_	 #
 # main1.cpp:114: 	mul_asm(da, db);
	.loc 1 114 9
	mov	rdx, QWORD PTR -24[rbp]	 # tmp114, db
	mov	rax, QWORD PTR -16[rbp]	 # tmp115, da
	mov	rcx, rax	 #, tmp115
	call	_Z7mul_asmIdEvT_S0_	 #
 # main1.cpp:116: 	return 0;
	.loc 1 116 9
	mov	eax, 0	 # _28,
 # main1.cpp:117: }
	.loc 1 117 1
	add	rsp, 64	 #,
	pop	rbp	 #
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2057:
	.seh_endproc
	.section .rdata,"dr"
.LC12:
	.ascii "Cpp sum \0"
	.section	.text$_Z7sum_cppIfEvT_S0_,"x"
	.linkonce discard
	.globl	_Z7sum_cppIfEvT_S0_
	.def	_Z7sum_cppIfEvT_S0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z7sum_cppIfEvT_S0_
_Z7sum_cppIfEvT_S0_:
.LFB2317:
	.loc 1 27 6
	.cfi_startproc
	push	rbp	 #
	.seh_pushreg	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	 #,
	.seh_setframe	rbp, 0
	.cfi_def_cfa_register 6
	sub	rsp, 48	 #,
	.seh_stackalloc	48
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx	 # a, a
	mov	DWORD PTR 24[rbp], edx	 # b, b
 # main1.cpp:29: 	clock_t time_res = 0;
	.loc 1 29 10
	mov	DWORD PTR -4[rbp], 0	 # time_res,
.LBB2:
 # main1.cpp:31: 	for (int i = 0; i < COUNT_RUN; i++)
	.loc 1 31 11
	mov	DWORD PTR -8[rbp], 0	 # i,
 # main1.cpp:31: 	for (int i = 0; i < COUNT_RUN; i++)
	.loc 1 31 2
	jmp	.L7	 #
.L8:
.LBB3:
 # main1.cpp:33: 		clock_t time_was = clock();
	.loc 1 33 27
	call	clock	 #
	mov	DWORD PTR -12[rbp], eax	 # time_was, tmp87
 # main1.cpp:34: 		c = a + b;
	.loc 1 34 7
	fld	DWORD PTR 16[rbp]	 # a
 # main1.cpp:34: 		c = a + b;
	.loc 1 34 11
	fld	DWORD PTR 24[rbp]	 # b
 # main1.cpp:34: 		c = a + b;
	.loc 1 34 9
	faddp	st(1), st	 #,
 # main1.cpp:34: 		c = a + b;
	.loc 1 34 5
	fstp	DWORD PTR -16[rbp]	 # c
 # main1.cpp:35: 		time_res += clock() - time_was;
	.loc 1 35 20
	call	clock	 #
 # main1.cpp:35: 		time_res += clock() - time_was;
	.loc 1 35 23 discriminator 1
	sub	eax, DWORD PTR -12[rbp]	 # _18, time_was
 # main1.cpp:35: 		time_res += clock() - time_was;
	.loc 1 35 12 discriminator 1
	add	DWORD PTR -4[rbp], eax	 # time_res, _18
.LBE3:
 # main1.cpp:31: 	for (int i = 0; i < COUNT_RUN; i++)
	.loc 1 31 2 discriminator 3
	add	DWORD PTR -8[rbp], 1	 # i,
.L7:
 # main1.cpp:31: 	for (int i = 0; i < COUNT_RUN; i++)
	.loc 1 31 20 discriminator 1
	cmp	DWORD PTR -8[rbp], 999999	 # i,
	jle	.L8	 #,
.LBE2:
 # main1.cpp:38: 	print_time(time_res, "Cpp sum ");
	.loc 1 38 12
	mov	eax, DWORD PTR -4[rbp]	 # tmp88, time_res
	lea	rdx, .LC12[rip]	 # tmp89,
	mov	ecx, eax	 #, tmp88
	call	_Z10print_timelPKc	 #
 # main1.cpp:39: }
	.loc 1 39 1
	nop	
	add	rsp, 48	 #,
	pop	rbp	 #
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2317:
	.seh_endproc
	.section .rdata,"dr"
.LC13:
	.ascii "Assembler sum \0"
	.section	.text$_Z7sum_asmIfEvT_S0_,"x"
	.linkonce discard
	.globl	_Z7sum_asmIfEvT_S0_
	.def	_Z7sum_asmIfEvT_S0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z7sum_asmIfEvT_S0_
_Z7sum_asmIfEvT_S0_:
.LFB2318:
	.loc 1 59 6
	.cfi_startproc
	push	rbp	 #
	.seh_pushreg	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	 #,
	.seh_setframe	rbp, 0
	.cfi_def_cfa_register 6
	sub	rsp, 48	 #,
	.seh_stackalloc	48
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx	 # a, a
	mov	DWORD PTR 24[rbp], edx	 # b, b
 # main1.cpp:61:     clock_t time_res = 0;
	.loc 1 61 13
	mov	DWORD PTR -4[rbp], 0	 # time_res,
.LBB4:
 # main1.cpp:63:     for (int i = 0; i < COUNT_RUN; i++)
	.loc 1 63 14
	mov	DWORD PTR -8[rbp], 0	 # i,
 # main1.cpp:63:     for (int i = 0; i < COUNT_RUN; i++)
	.loc 1 63 5
	jmp	.L10	 #
.L11:
.LBB5:
 # main1.cpp:65:         clock_t time_was = clock();
	.loc 1 65 33
	call	clock	 #
	mov	DWORD PTR -12[rbp], eax	 # time_was, tmp84
 # main1.cpp:66:         asm("fld %1\n\t" 				// a -> STACK (a)
	.loc 1 66 9
/APP
 # 66 "main1.cpp" 1
	fld DWORD PTR 16[rbp]	 # a
	fld DWORD PTR 24[rbp]	 # b
	faddp ST(1), ST(0)
	fstp DWORD PTR -16[rbp]	 # c
	
 # 0 "" 2
 # main1.cpp:72:         time_res += clock() - time_was;
	.loc 1 72 26
/NO_APP
	call	clock	 #
 # main1.cpp:72:         time_res += clock() - time_was;
	.loc 1 72 29 discriminator 1
	sub	eax, DWORD PTR -12[rbp]	 # _15, time_was
 # main1.cpp:72:         time_res += clock() - time_was;
	.loc 1 72 18 discriminator 1
	add	DWORD PTR -4[rbp], eax	 # time_res, _15
.LBE5:
 # main1.cpp:63:     for (int i = 0; i < COUNT_RUN; i++)
	.loc 1 63 5 discriminator 3
	add	DWORD PTR -8[rbp], 1	 # i,
.L10:
 # main1.cpp:63:     for (int i = 0; i < COUNT_RUN; i++)
	.loc 1 63 23 discriminator 1
	cmp	DWORD PTR -8[rbp], 999999	 # i,
	jle	.L11	 #,
.LBE4:
 # main1.cpp:74:     print_time(time_res, "Assembler sum ");
	.loc 1 74 15
	mov	eax, DWORD PTR -4[rbp]	 # tmp85, time_res
	lea	rdx, .LC13[rip]	 # tmp86,
	mov	ecx, eax	 #, tmp85
	call	_Z10print_timelPKc	 #
 # main1.cpp:75: }
	.loc 1 75 1
	nop	
	add	rsp, 48	 #,
	pop	rbp	 #
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2318:
	.seh_endproc
	.section .rdata,"dr"
.LC14:
	.ascii "Cpp mul \0"
	.section	.text$_Z7mul_cppIfEvT_S0_,"x"
	.linkonce discard
	.globl	_Z7mul_cppIfEvT_S0_
	.def	_Z7mul_cppIfEvT_S0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z7mul_cppIfEvT_S0_
_Z7mul_cppIfEvT_S0_:
.LFB2319:
	.loc 1 43 6
	.cfi_startproc
	push	rbp	 #
	.seh_pushreg	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	 #,
	.seh_setframe	rbp, 0
	.cfi_def_cfa_register 6
	sub	rsp, 48	 #,
	.seh_stackalloc	48
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx	 # a, a
	mov	DWORD PTR 24[rbp], edx	 # b, b
 # main1.cpp:45: 	clock_t time_res = 0;
	.loc 1 45 10
	mov	DWORD PTR -4[rbp], 0	 # time_res,
.LBB6:
 # main1.cpp:47: 	for (int i = 0; i < COUNT_RUN; i++)
	.loc 1 47 11
	mov	DWORD PTR -8[rbp], 0	 # i,
 # main1.cpp:47: 	for (int i = 0; i < COUNT_RUN; i++)
	.loc 1 47 2
	jmp	.L13	 #
.L14:
.LBB7:
 # main1.cpp:49: 		clock_t time_was = clock();
	.loc 1 49 27
	call	clock	 #
	mov	DWORD PTR -12[rbp], eax	 # time_was, tmp87
 # main1.cpp:50: 		c = a * b;
	.loc 1 50 7
	fld	DWORD PTR 16[rbp]	 # a
 # main1.cpp:50: 		c = a * b;
	.loc 1 50 11
	fld	DWORD PTR 24[rbp]	 # b
 # main1.cpp:50: 		c = a * b;
	.loc 1 50 9
	fmulp	st(1), st	 #,
 # main1.cpp:50: 		c = a * b;
	.loc 1 50 5
	fstp	DWORD PTR -16[rbp]	 # c
 # main1.cpp:51: 		time_res += clock() - time_was;
	.loc 1 51 20
	call	clock	 #
 # main1.cpp:51: 		time_res += clock() - time_was;
	.loc 1 51 23 discriminator 1
	sub	eax, DWORD PTR -12[rbp]	 # _18, time_was
 # main1.cpp:51: 		time_res += clock() - time_was;
	.loc 1 51 12 discriminator 1
	add	DWORD PTR -4[rbp], eax	 # time_res, _18
.LBE7:
 # main1.cpp:47: 	for (int i = 0; i < COUNT_RUN; i++)
	.loc 1 47 2 discriminator 3
	add	DWORD PTR -8[rbp], 1	 # i,
.L13:
 # main1.cpp:47: 	for (int i = 0; i < COUNT_RUN; i++)
	.loc 1 47 20 discriminator 1
	cmp	DWORD PTR -8[rbp], 999999	 # i,
	jle	.L14	 #,
.LBE6:
 # main1.cpp:54: 	print_time(time_res, "Cpp mul ");
	.loc 1 54 12
	mov	eax, DWORD PTR -4[rbp]	 # tmp88, time_res
	lea	rdx, .LC14[rip]	 # tmp89,
	mov	ecx, eax	 #, tmp88
	call	_Z10print_timelPKc	 #
 # main1.cpp:55: }
	.loc 1 55 1
	nop	
	add	rsp, 48	 #,
	pop	rbp	 #
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2319:
	.seh_endproc
	.section .rdata,"dr"
.LC15:
	.ascii "Assembler mul \0"
	.section	.text$_Z7mul_asmIfEvT_S0_,"x"
	.linkonce discard
	.globl	_Z7mul_asmIfEvT_S0_
	.def	_Z7mul_asmIfEvT_S0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z7mul_asmIfEvT_S0_
_Z7mul_asmIfEvT_S0_:
.LFB2320:
	.loc 1 79 6
	.cfi_startproc
	push	rbp	 #
	.seh_pushreg	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	 #,
	.seh_setframe	rbp, 0
	.cfi_def_cfa_register 6
	sub	rsp, 48	 #,
	.seh_stackalloc	48
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx	 # a, a
	mov	DWORD PTR 24[rbp], edx	 # b, b
 # main1.cpp:81:     clock_t time_res = 0;
	.loc 1 81 13
	mov	DWORD PTR -4[rbp], 0	 # time_res,
.LBB8:
 # main1.cpp:83:     for (int i = 0; i < COUNT_RUN; i++)
	.loc 1 83 14
	mov	DWORD PTR -8[rbp], 0	 # i,
 # main1.cpp:83:     for (int i = 0; i < COUNT_RUN; i++)
	.loc 1 83 5
	jmp	.L16	 #
.L17:
.LBB9:
 # main1.cpp:85:         clock_t time_was = clock();
	.loc 1 85 33
	call	clock	 #
	mov	DWORD PTR -12[rbp], eax	 # time_was, tmp84
 # main1.cpp:86:         asm("fld %1\n\t" 				// a -> STACK (a)
	.loc 1 86 9
/APP
 # 86 "main1.cpp" 1
	fld DWORD PTR 16[rbp]	 # a
	fld DWORD PTR 24[rbp]	 # b
	fmulp ST(1), ST(0)
	fstp DWORD PTR -16[rbp]	 # c
	
 # 0 "" 2
 # main1.cpp:92:         time_res += clock() - time_was;
	.loc 1 92 26
/NO_APP
	call	clock	 #
 # main1.cpp:92:         time_res += clock() - time_was;
	.loc 1 92 29 discriminator 1
	sub	eax, DWORD PTR -12[rbp]	 # _15, time_was
 # main1.cpp:92:         time_res += clock() - time_was;
	.loc 1 92 18 discriminator 1
	add	DWORD PTR -4[rbp], eax	 # time_res, _15
.LBE9:
 # main1.cpp:83:     for (int i = 0; i < COUNT_RUN; i++)
	.loc 1 83 5 discriminator 3
	add	DWORD PTR -8[rbp], 1	 # i,
.L16:
 # main1.cpp:83:     for (int i = 0; i < COUNT_RUN; i++)
	.loc 1 83 23 discriminator 1
	cmp	DWORD PTR -8[rbp], 999999	 # i,
	jle	.L17	 #,
.LBE8:
 # main1.cpp:94:     print_time(time_res, "Assembler mul ");
	.loc 1 94 15
	mov	eax, DWORD PTR -4[rbp]	 # tmp85, time_res
	lea	rdx, .LC15[rip]	 # tmp86,
	mov	ecx, eax	 #, tmp85
	call	_Z10print_timelPKc	 #
 # main1.cpp:95: }
	.loc 1 95 1
	nop	
	add	rsp, 48	 #,
	pop	rbp	 #
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2320:
	.seh_endproc
	.section	.text$_Z7sum_cppIdEvT_S0_,"x"
	.linkonce discard
	.globl	_Z7sum_cppIdEvT_S0_
	.def	_Z7sum_cppIdEvT_S0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z7sum_cppIdEvT_S0_
_Z7sum_cppIdEvT_S0_:
.LFB2321:
	.loc 1 27 6
	.cfi_startproc
	push	rbp	 #
	.seh_pushreg	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	 #,
	.seh_setframe	rbp, 0
	.cfi_def_cfa_register 6
	sub	rsp, 64	 #,
	.seh_stackalloc	64
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx	 # a, a
	mov	QWORD PTR 24[rbp], rdx	 # b, b
 # main1.cpp:29: 	clock_t time_res = 0;
	.loc 1 29 10
	mov	DWORD PTR -4[rbp], 0	 # time_res,
.LBB10:
 # main1.cpp:31: 	for (int i = 0; i < COUNT_RUN; i++)
	.loc 1 31 11
	mov	DWORD PTR -8[rbp], 0	 # i,
 # main1.cpp:31: 	for (int i = 0; i < COUNT_RUN; i++)
	.loc 1 31 2
	jmp	.L19	 #
.L20:
.LBB11:
 # main1.cpp:33: 		clock_t time_was = clock();
	.loc 1 33 27
	call	clock	 #
	mov	DWORD PTR -12[rbp], eax	 # time_was, tmp87
 # main1.cpp:34: 		c = a + b;
	.loc 1 34 7
	fld	QWORD PTR 16[rbp]	 # a
 # main1.cpp:34: 		c = a + b;
	.loc 1 34 11
	fld	QWORD PTR 24[rbp]	 # b
 # main1.cpp:34: 		c = a + b;
	.loc 1 34 9
	faddp	st(1), st	 #,
 # main1.cpp:34: 		c = a + b;
	.loc 1 34 5
	fstp	QWORD PTR -24[rbp]	 # c
 # main1.cpp:35: 		time_res += clock() - time_was;
	.loc 1 35 20
	call	clock	 #
 # main1.cpp:35: 		time_res += clock() - time_was;
	.loc 1 35 23 discriminator 1
	sub	eax, DWORD PTR -12[rbp]	 # _18, time_was
 # main1.cpp:35: 		time_res += clock() - time_was;
	.loc 1 35 12 discriminator 1
	add	DWORD PTR -4[rbp], eax	 # time_res, _18
.LBE11:
 # main1.cpp:31: 	for (int i = 0; i < COUNT_RUN; i++)
	.loc 1 31 2 discriminator 3
	add	DWORD PTR -8[rbp], 1	 # i,
.L19:
 # main1.cpp:31: 	for (int i = 0; i < COUNT_RUN; i++)
	.loc 1 31 20 discriminator 1
	cmp	DWORD PTR -8[rbp], 999999	 # i,
	jle	.L20	 #,
.LBE10:
 # main1.cpp:38: 	print_time(time_res, "Cpp sum ");
	.loc 1 38 12
	mov	eax, DWORD PTR -4[rbp]	 # tmp88, time_res
	lea	rdx, .LC12[rip]	 # tmp89,
	mov	ecx, eax	 #, tmp88
	call	_Z10print_timelPKc	 #
 # main1.cpp:39: }
	.loc 1 39 1
	nop	
	add	rsp, 64	 #,
	pop	rbp	 #
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2321:
	.seh_endproc
	.section	.text$_Z7sum_asmIdEvT_S0_,"x"
	.linkonce discard
	.globl	_Z7sum_asmIdEvT_S0_
	.def	_Z7sum_asmIdEvT_S0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z7sum_asmIdEvT_S0_
_Z7sum_asmIdEvT_S0_:
.LFB2322:
	.loc 1 59 6
	.cfi_startproc
	push	rbp	 #
	.seh_pushreg	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	 #,
	.seh_setframe	rbp, 0
	.cfi_def_cfa_register 6
	sub	rsp, 64	 #,
	.seh_stackalloc	64
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx	 # a, a
	mov	QWORD PTR 24[rbp], rdx	 # b, b
 # main1.cpp:61:     clock_t time_res = 0;
	.loc 1 61 13
	mov	DWORD PTR -4[rbp], 0	 # time_res,
.LBB12:
 # main1.cpp:63:     for (int i = 0; i < COUNT_RUN; i++)
	.loc 1 63 14
	mov	DWORD PTR -8[rbp], 0	 # i,
 # main1.cpp:63:     for (int i = 0; i < COUNT_RUN; i++)
	.loc 1 63 5
	jmp	.L22	 #
.L23:
.LBB13:
 # main1.cpp:65:         clock_t time_was = clock();
	.loc 1 65 33
	call	clock	 #
	mov	DWORD PTR -12[rbp], eax	 # time_was, tmp84
 # main1.cpp:66:         asm("fld %1\n\t" 				// a -> STACK (a)
	.loc 1 66 9
/APP
 # 66 "main1.cpp" 1
	fld QWORD PTR 16[rbp]	 # a
	fld QWORD PTR 24[rbp]	 # b
	faddp ST(1), ST(0)
	fstp QWORD PTR -24[rbp]	 # c
	
 # 0 "" 2
 # main1.cpp:72:         time_res += clock() - time_was;
	.loc 1 72 26
/NO_APP
	call	clock	 #
 # main1.cpp:72:         time_res += clock() - time_was;
	.loc 1 72 29 discriminator 1
	sub	eax, DWORD PTR -12[rbp]	 # _15, time_was
 # main1.cpp:72:         time_res += clock() - time_was;
	.loc 1 72 18 discriminator 1
	add	DWORD PTR -4[rbp], eax	 # time_res, _15
.LBE13:
 # main1.cpp:63:     for (int i = 0; i < COUNT_RUN; i++)
	.loc 1 63 5 discriminator 3
	add	DWORD PTR -8[rbp], 1	 # i,
.L22:
 # main1.cpp:63:     for (int i = 0; i < COUNT_RUN; i++)
	.loc 1 63 23 discriminator 1
	cmp	DWORD PTR -8[rbp], 999999	 # i,
	jle	.L23	 #,
.LBE12:
 # main1.cpp:74:     print_time(time_res, "Assembler sum ");
	.loc 1 74 15
	mov	eax, DWORD PTR -4[rbp]	 # tmp85, time_res
	lea	rdx, .LC13[rip]	 # tmp86,
	mov	ecx, eax	 #, tmp85
	call	_Z10print_timelPKc	 #
 # main1.cpp:75: }
	.loc 1 75 1
	nop	
	add	rsp, 64	 #,
	pop	rbp	 #
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2322:
	.seh_endproc
	.section	.text$_Z7mul_cppIdEvT_S0_,"x"
	.linkonce discard
	.globl	_Z7mul_cppIdEvT_S0_
	.def	_Z7mul_cppIdEvT_S0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z7mul_cppIdEvT_S0_
_Z7mul_cppIdEvT_S0_:
.LFB2323:
	.loc 1 43 6
	.cfi_startproc
	push	rbp	 #
	.seh_pushreg	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	 #,
	.seh_setframe	rbp, 0
	.cfi_def_cfa_register 6
	sub	rsp, 64	 #,
	.seh_stackalloc	64
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx	 # a, a
	mov	QWORD PTR 24[rbp], rdx	 # b, b
 # main1.cpp:45: 	clock_t time_res = 0;
	.loc 1 45 10
	mov	DWORD PTR -4[rbp], 0	 # time_res,
.LBB14:
 # main1.cpp:47: 	for (int i = 0; i < COUNT_RUN; i++)
	.loc 1 47 11
	mov	DWORD PTR -8[rbp], 0	 # i,
 # main1.cpp:47: 	for (int i = 0; i < COUNT_RUN; i++)
	.loc 1 47 2
	jmp	.L25	 #
.L26:
.LBB15:
 # main1.cpp:49: 		clock_t time_was = clock();
	.loc 1 49 27
	call	clock	 #
	mov	DWORD PTR -12[rbp], eax	 # time_was, tmp87
 # main1.cpp:50: 		c = a * b;
	.loc 1 50 7
	fld	QWORD PTR 16[rbp]	 # a
 # main1.cpp:50: 		c = a * b;
	.loc 1 50 11
	fld	QWORD PTR 24[rbp]	 # b
 # main1.cpp:50: 		c = a * b;
	.loc 1 50 9
	fmulp	st(1), st	 #,
 # main1.cpp:50: 		c = a * b;
	.loc 1 50 5
	fstp	QWORD PTR -24[rbp]	 # c
 # main1.cpp:51: 		time_res += clock() - time_was;
	.loc 1 51 20
	call	clock	 #
 # main1.cpp:51: 		time_res += clock() - time_was;
	.loc 1 51 23 discriminator 1
	sub	eax, DWORD PTR -12[rbp]	 # _18, time_was
 # main1.cpp:51: 		time_res += clock() - time_was;
	.loc 1 51 12 discriminator 1
	add	DWORD PTR -4[rbp], eax	 # time_res, _18
.LBE15:
 # main1.cpp:47: 	for (int i = 0; i < COUNT_RUN; i++)
	.loc 1 47 2 discriminator 3
	add	DWORD PTR -8[rbp], 1	 # i,
.L25:
 # main1.cpp:47: 	for (int i = 0; i < COUNT_RUN; i++)
	.loc 1 47 20 discriminator 1
	cmp	DWORD PTR -8[rbp], 999999	 # i,
	jle	.L26	 #,
.LBE14:
 # main1.cpp:54: 	print_time(time_res, "Cpp mul ");
	.loc 1 54 12
	mov	eax, DWORD PTR -4[rbp]	 # tmp88, time_res
	lea	rdx, .LC14[rip]	 # tmp89,
	mov	ecx, eax	 #, tmp88
	call	_Z10print_timelPKc	 #
 # main1.cpp:55: }
	.loc 1 55 1
	nop	
	add	rsp, 64	 #,
	pop	rbp	 #
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2323:
	.seh_endproc
	.section	.text$_Z7mul_asmIdEvT_S0_,"x"
	.linkonce discard
	.globl	_Z7mul_asmIdEvT_S0_
	.def	_Z7mul_asmIdEvT_S0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z7mul_asmIdEvT_S0_
_Z7mul_asmIdEvT_S0_:
.LFB2324:
	.loc 1 79 6
	.cfi_startproc
	push	rbp	 #
	.seh_pushreg	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	 #,
	.seh_setframe	rbp, 0
	.cfi_def_cfa_register 6
	sub	rsp, 64	 #,
	.seh_stackalloc	64
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx	 # a, a
	mov	QWORD PTR 24[rbp], rdx	 # b, b
 # main1.cpp:81:     clock_t time_res = 0;
	.loc 1 81 13
	mov	DWORD PTR -4[rbp], 0	 # time_res,
.LBB16:
 # main1.cpp:83:     for (int i = 0; i < COUNT_RUN; i++)
	.loc 1 83 14
	mov	DWORD PTR -8[rbp], 0	 # i,
 # main1.cpp:83:     for (int i = 0; i < COUNT_RUN; i++)
	.loc 1 83 5
	jmp	.L28	 #
.L29:
.LBB17:
 # main1.cpp:85:         clock_t time_was = clock();
	.loc 1 85 33
	call	clock	 #
	mov	DWORD PTR -12[rbp], eax	 # time_was, tmp84
 # main1.cpp:86:         asm("fld %1\n\t" 				// a -> STACK (a)
	.loc 1 86 9
/APP
 # 86 "main1.cpp" 1
	fld QWORD PTR 16[rbp]	 # a
	fld QWORD PTR 24[rbp]	 # b
	fmulp ST(1), ST(0)
	fstp QWORD PTR -24[rbp]	 # c
	
 # 0 "" 2
 # main1.cpp:92:         time_res += clock() - time_was;
	.loc 1 92 26
/NO_APP
	call	clock	 #
 # main1.cpp:92:         time_res += clock() - time_was;
	.loc 1 92 29 discriminator 1
	sub	eax, DWORD PTR -12[rbp]	 # _15, time_was
 # main1.cpp:92:         time_res += clock() - time_was;
	.loc 1 92 18 discriminator 1
	add	DWORD PTR -4[rbp], eax	 # time_res, _15
.LBE17:
 # main1.cpp:83:     for (int i = 0; i < COUNT_RUN; i++)
	.loc 1 83 5 discriminator 3
	add	DWORD PTR -8[rbp], 1	 # i,
.L28:
 # main1.cpp:83:     for (int i = 0; i < COUNT_RUN; i++)
	.loc 1 83 23 discriminator 1
	cmp	DWORD PTR -8[rbp], 999999	 # i,
	jle	.L29	 #,
.LBE16:
 # main1.cpp:94:     print_time(time_res, "Assembler mul ");
	.loc 1 94 15
	mov	eax, DWORD PTR -4[rbp]	 # tmp85, time_res
	lea	rdx, .LC15[rip]	 # tmp86,
	mov	ecx, eax	 #, tmp85
	call	_Z10print_timelPKc	 #
 # main1.cpp:95: }
	.loc 1 95 1
	nop	
	add	rsp, 64	 #,
	pop	rbp	 #
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2324:
	.seh_endproc
	.section .rdata,"dr"
_ZNSt8__detail30__integer_to_chars_is_unsignedIjEE:
	.byte	1
_ZNSt8__detail30__integer_to_chars_is_unsignedImEE:
	.byte	1
_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE:
	.byte	1
	.align 4
.LC6:
	.long	1078774989
	.align 4
.LC7:
	.long	1084667986
	.align 8
.LC9:
	.long	-1717986918
	.long	1074370969
	.align 8
.LC10:
	.long	1030792151
	.long	1075107594
	.text
.Letext0:
	.file 2 "C:/msys64/mingw64/x86_64-w64-mingw32/include/corecrt.h"
	.file 3 "C:/msys64/mingw64/x86_64-w64-mingw32/include/locale.h"
	.file 4 "C:/msys64/mingw64/x86_64-w64-mingw32/include/wchar.h"
	.file 5 "C:/msys64/mingw64/include/c++/13.2.0/cwchar"
	.file 6 "C:/msys64/mingw64/include/c++/13.2.0/x86_64-w64-mingw32/bits/c++config.h"
	.file 7 "C:/msys64/mingw64/include/c++/13.2.0/type_traits"
	.file 8 "C:/msys64/mingw64/include/c++/13.2.0/bits/exception_ptr.h"
	.file 9 "C:/msys64/mingw64/include/c++/13.2.0/bits/char_traits.h"
	.file 10 "C:/msys64/mingw64/include/c++/13.2.0/clocale"
	.file 11 "C:/msys64/mingw64/include/c++/13.2.0/cstdlib"
	.file 12 "C:/msys64/mingw64/include/c++/13.2.0/bits/std_abs.h"
	.file 13 "C:/msys64/mingw64/include/c++/13.2.0/debug/debug.h"
	.file 14 "C:/msys64/mingw64/include/c++/13.2.0/cstdio"
	.file 15 "C:/msys64/mingw64/include/c++/13.2.0/cstddef"
	.file 16 "C:/msys64/mingw64/include/c++/13.2.0/bits/memory_resource.h"
	.file 17 "C:/msys64/mingw64/include/c++/13.2.0/system_error"
	.file 18 "C:/msys64/mingw64/include/c++/13.2.0/cwctype"
	.file 19 "C:/msys64/mingw64/include/c++/13.2.0/bits/ostream.tcc"
	.file 20 "C:/msys64/mingw64/include/c++/13.2.0/ostream"
	.file 21 "C:/msys64/mingw64/include/c++/13.2.0/iosfwd"
	.file 22 "C:/msys64/mingw64/include/c++/13.2.0/ctime"
	.file 23 "C:/msys64/mingw64/include/c++/13.2.0/bits/charconv.h"
	.file 24 "C:/msys64/mingw64/x86_64-w64-mingw32/include/swprintf.inl"
	.file 25 "C:/msys64/mingw64/include/c++/13.2.0/bits/predefined_ops.h"
	.file 26 "C:/msys64/mingw64/x86_64-w64-mingw32/include/stddef.h"
	.file 27 "C:/msys64/mingw64/x86_64-w64-mingw32/include/stdio.h"
	.file 28 "C:/msys64/mingw64/x86_64-w64-mingw32/include/stdlib.h"
	.file 29 "C:/msys64/mingw64/include/c++/13.2.0/stdlib.h"
	.file 30 "C:/msys64/mingw64/x86_64-w64-mingw32/include/wctype.h"
	.file 31 "C:/msys64/mingw64/x86_64-w64-mingw32/include/time.h"
	.file 32 "C:/msys64/mingw64/include/c++/13.2.0/iostream"
	.section	.debug_info,"dr"
.Ldebug_info0:
	.long	0x33d7
	.word	0x5
	.byte	0x1
	.byte	0x8
	.secrel32	.Ldebug_abbrev0
	.uleb128 0x33
	.ascii "GNU C++17 13.2.0 -mno-sse -m80387 -masm=intel -mtune=generic -march=x86-64 -g -O0 -std=c++17\0"
	.byte	0x21
	.secrel32	.LASF0
	.secrel32	.LASF1
	.secrel32	.LLRL0
	.quad	0
	.secrel32	.Ldebug_line0
	.uleb128 0x34
	.byte	0x8
	.ascii "__builtin_va_list\0"
	.long	0x9b
	.uleb128 0x7
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.uleb128 0x10
	.long	0x9b
	.uleb128 0x11
	.ascii "size_t\0"
	.byte	0x2
	.byte	0x23
	.byte	0x2c
	.long	0xb7
	.uleb128 0x7
	.byte	0x8
	.byte	0x7
	.ascii "long long unsigned int\0"
	.uleb128 0x7
	.byte	0x8
	.byte	0x5
	.ascii "long long int\0"
	.uleb128 0x11
	.ascii "wint_t\0"
	.byte	0x2
	.byte	0x6a
	.byte	0x18
	.long	0xf1
	.uleb128 0x7
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.uleb128 0x11
	.ascii "wctype_t\0"
	.byte	0x2
	.byte	0x6b
	.byte	0x18
	.long	0xf1
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.ascii "long int\0"
	.uleb128 0x11
	.ascii "__time64_t\0"
	.byte	0x2
	.byte	0x7b
	.byte	0x23
	.long	0xd1
	.uleb128 0x11
	.ascii "time_t\0"
	.byte	0x2
	.byte	0x8a
	.byte	0x14
	.long	0x12b
	.uleb128 0x10
	.long	0x13e
	.uleb128 0x6
	.long	0x9b
	.uleb128 0x6
	.long	0x15c
	.uleb128 0x7
	.byte	0x2
	.byte	0x7
	.ascii "wchar_t\0"
	.uleb128 0x10
	.long	0x15c
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.ascii "long unsigned int\0"
	.uleb128 0x1d
	.ascii "lconv\0"
	.byte	0x98
	.byte	0x3
	.byte	0x2d
	.byte	0xa
	.long	0x41f
	.uleb128 0x4
	.ascii "decimal_point\0"
	.byte	0x3
	.byte	0x2e
	.byte	0xb
	.long	0x152
	.byte	0
	.uleb128 0x4
	.ascii "thousands_sep\0"
	.byte	0x3
	.byte	0x2f
	.byte	0xb
	.long	0x152
	.byte	0x8
	.uleb128 0x4
	.ascii "grouping\0"
	.byte	0x3
	.byte	0x30
	.byte	0xb
	.long	0x152
	.byte	0x10
	.uleb128 0x4
	.ascii "int_curr_symbol\0"
	.byte	0x3
	.byte	0x31
	.byte	0xb
	.long	0x152
	.byte	0x18
	.uleb128 0x4
	.ascii "currency_symbol\0"
	.byte	0x3
	.byte	0x32
	.byte	0xb
	.long	0x152
	.byte	0x20
	.uleb128 0x4
	.ascii "mon_decimal_point\0"
	.byte	0x3
	.byte	0x33
	.byte	0xb
	.long	0x152
	.byte	0x28
	.uleb128 0x4
	.ascii "mon_thousands_sep\0"
	.byte	0x3
	.byte	0x34
	.byte	0xb
	.long	0x152
	.byte	0x30
	.uleb128 0x4
	.ascii "mon_grouping\0"
	.byte	0x3
	.byte	0x35
	.byte	0xb
	.long	0x152
	.byte	0x38
	.uleb128 0x4
	.ascii "positive_sign\0"
	.byte	0x3
	.byte	0x36
	.byte	0xb
	.long	0x152
	.byte	0x40
	.uleb128 0x4
	.ascii "negative_sign\0"
	.byte	0x3
	.byte	0x37
	.byte	0xb
	.long	0x152
	.byte	0x48
	.uleb128 0x4
	.ascii "int_frac_digits\0"
	.byte	0x3
	.byte	0x38
	.byte	0xa
	.long	0x9b
	.byte	0x50
	.uleb128 0x4
	.ascii "frac_digits\0"
	.byte	0x3
	.byte	0x39
	.byte	0xa
	.long	0x9b
	.byte	0x51
	.uleb128 0x4
	.ascii "p_cs_precedes\0"
	.byte	0x3
	.byte	0x3a
	.byte	0xa
	.long	0x9b
	.byte	0x52
	.uleb128 0x4
	.ascii "p_sep_by_space\0"
	.byte	0x3
	.byte	0x3b
	.byte	0xa
	.long	0x9b
	.byte	0x53
	.uleb128 0x4
	.ascii "n_cs_precedes\0"
	.byte	0x3
	.byte	0x3c
	.byte	0xa
	.long	0x9b
	.byte	0x54
	.uleb128 0x4
	.ascii "n_sep_by_space\0"
	.byte	0x3
	.byte	0x3d
	.byte	0xa
	.long	0x9b
	.byte	0x55
	.uleb128 0x4
	.ascii "p_sign_posn\0"
	.byte	0x3
	.byte	0x3e
	.byte	0xa
	.long	0x9b
	.byte	0x56
	.uleb128 0x4
	.ascii "n_sign_posn\0"
	.byte	0x3
	.byte	0x3f
	.byte	0xa
	.long	0x9b
	.byte	0x57
	.uleb128 0x4
	.ascii "_W_decimal_point\0"
	.byte	0x3
	.byte	0x41
	.byte	0xe
	.long	0x157
	.byte	0x58
	.uleb128 0x4
	.ascii "_W_thousands_sep\0"
	.byte	0x3
	.byte	0x42
	.byte	0xe
	.long	0x157
	.byte	0x60
	.uleb128 0x4
	.ascii "_W_int_curr_symbol\0"
	.byte	0x3
	.byte	0x43
	.byte	0xe
	.long	0x157
	.byte	0x68
	.uleb128 0x4
	.ascii "_W_currency_symbol\0"
	.byte	0x3
	.byte	0x44
	.byte	0xe
	.long	0x157
	.byte	0x70
	.uleb128 0x4
	.ascii "_W_mon_decimal_point\0"
	.byte	0x3
	.byte	0x45
	.byte	0xe
	.long	0x157
	.byte	0x78
	.uleb128 0x4
	.ascii "_W_mon_thousands_sep\0"
	.byte	0x3
	.byte	0x46
	.byte	0xe
	.long	0x157
	.byte	0x80
	.uleb128 0x4
	.ascii "_W_positive_sign\0"
	.byte	0x3
	.byte	0x47
	.byte	0xe
	.long	0x157
	.byte	0x88
	.uleb128 0x4
	.ascii "_W_negative_sign\0"
	.byte	0x3
	.byte	0x48
	.byte	0xe
	.long	0x157
	.byte	0x90
	.byte	0
	.uleb128 0x6
	.long	0x191
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.uleb128 0x1d
	.ascii "_iobuf\0"
	.byte	0x30
	.byte	0x4
	.byte	0x2a
	.byte	0xa
	.long	0x4c5
	.uleb128 0x4
	.ascii "_ptr\0"
	.byte	0x4
	.byte	0x2b
	.byte	0xb
	.long	0x152
	.byte	0
	.uleb128 0x4
	.ascii "_cnt\0"
	.byte	0x4
	.byte	0x2c
	.byte	0x9
	.long	0x118
	.byte	0x8
	.uleb128 0x4
	.ascii "_base\0"
	.byte	0x4
	.byte	0x2d
	.byte	0xb
	.long	0x152
	.byte	0x10
	.uleb128 0x4
	.ascii "_flag\0"
	.byte	0x4
	.byte	0x2e
	.byte	0x9
	.long	0x118
	.byte	0x18
	.uleb128 0x4
	.ascii "_file\0"
	.byte	0x4
	.byte	0x2f
	.byte	0x9
	.long	0x118
	.byte	0x1c
	.uleb128 0x4
	.ascii "_charbuf\0"
	.byte	0x4
	.byte	0x30
	.byte	0x9
	.long	0x118
	.byte	0x20
	.uleb128 0x4
	.ascii "_bufsiz\0"
	.byte	0x4
	.byte	0x31
	.byte	0x9
	.long	0x118
	.byte	0x24
	.uleb128 0x4
	.ascii "_tmpfname\0"
	.byte	0x4
	.byte	0x32
	.byte	0xb
	.long	0x152
	.byte	0x28
	.byte	0
	.uleb128 0x11
	.ascii "FILE\0"
	.byte	0x4
	.byte	0x34
	.byte	0x19
	.long	0x435
	.uleb128 0x7
	.byte	0x2
	.byte	0x5
	.ascii "short int\0"
	.uleb128 0x26
	.ascii "tm\0"
	.byte	0x24
	.byte	0x4
	.word	0x567
	.byte	0xa
	.long	0x58d
	.uleb128 0x12
	.ascii "tm_sec\0"
	.byte	0x4
	.word	0x568
	.byte	0x9
	.long	0x118
	.byte	0
	.uleb128 0x12
	.ascii "tm_min\0"
	.byte	0x4
	.word	0x569
	.byte	0x9
	.long	0x118
	.byte	0x4
	.uleb128 0x12
	.ascii "tm_hour\0"
	.byte	0x4
	.word	0x56a
	.byte	0x9
	.long	0x118
	.byte	0x8
	.uleb128 0x12
	.ascii "tm_mday\0"
	.byte	0x4
	.word	0x56b
	.byte	0x9
	.long	0x118
	.byte	0xc
	.uleb128 0x12
	.ascii "tm_mon\0"
	.byte	0x4
	.word	0x56c
	.byte	0x9
	.long	0x118
	.byte	0x10
	.uleb128 0x12
	.ascii "tm_year\0"
	.byte	0x4
	.word	0x56d
	.byte	0x9
	.long	0x118
	.byte	0x14
	.uleb128 0x12
	.ascii "tm_wday\0"
	.byte	0x4
	.word	0x56e
	.byte	0x9
	.long	0x118
	.byte	0x18
	.uleb128 0x12
	.ascii "tm_yday\0"
	.byte	0x4
	.word	0x56f
	.byte	0x9
	.long	0x118
	.byte	0x1c
	.uleb128 0x12
	.ascii "tm_isdst\0"
	.byte	0x4
	.word	0x570
	.byte	0x9
	.long	0x118
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.long	0x4df
	.uleb128 0x18
	.ascii "mbstate_t\0"
	.byte	0x4
	.word	0x5a5
	.byte	0xf
	.long	0x118
	.uleb128 0x10
	.long	0x592
	.uleb128 0x27
	.ascii "std\0"
	.word	0x132
	.long	0x1769
	.uleb128 0x2
	.byte	0x5
	.byte	0x40
	.byte	0xb
	.long	0x592
	.uleb128 0x2
	.byte	0x5
	.byte	0x8d
	.byte	0xb
	.long	0xe2
	.uleb128 0x2
	.byte	0x5
	.byte	0x8f
	.byte	0xb
	.long	0x1769
	.uleb128 0x2
	.byte	0x5
	.byte	0x90
	.byte	0xb
	.long	0x1782
	.uleb128 0x2
	.byte	0x5
	.byte	0x91
	.byte	0xb
	.long	0x17a1
	.uleb128 0x2
	.byte	0x5
	.byte	0x92
	.byte	0xb
	.long	0x17c5
	.uleb128 0x2
	.byte	0x5
	.byte	0x93
	.byte	0xb
	.long	0x17e4
	.uleb128 0x2
	.byte	0x5
	.byte	0x94
	.byte	0xb
	.long	0x1808
	.uleb128 0x2
	.byte	0x5
	.byte	0x95
	.byte	0xb
	.long	0x1826
	.uleb128 0x2
	.byte	0x5
	.byte	0x96
	.byte	0xb
	.long	0x1848
	.uleb128 0x2
	.byte	0x5
	.byte	0x97
	.byte	0xb
	.long	0x1869
	.uleb128 0x2
	.byte	0x5
	.byte	0x98
	.byte	0xb
	.long	0x1882
	.uleb128 0x2
	.byte	0x5
	.byte	0x99
	.byte	0xb
	.long	0x1894
	.uleb128 0x2
	.byte	0x5
	.byte	0x9a
	.byte	0xb
	.long	0x18c2
	.uleb128 0x2
	.byte	0x5
	.byte	0x9b
	.byte	0xb
	.long	0x18ec
	.uleb128 0x2
	.byte	0x5
	.byte	0x9c
	.byte	0xb
	.long	0x190c
	.uleb128 0x2
	.byte	0x5
	.byte	0x9d
	.byte	0xb
	.long	0x193d
	.uleb128 0x2
	.byte	0x5
	.byte	0x9e
	.byte	0xb
	.long	0x195b
	.uleb128 0x2
	.byte	0x5
	.byte	0xa0
	.byte	0xb
	.long	0x1977
	.uleb128 0x2
	.byte	0x5
	.byte	0xa0
	.byte	0xb
	.long	0x1991
	.uleb128 0x2
	.byte	0x5
	.byte	0xa2
	.byte	0xb
	.long	0x19b0
	.uleb128 0x2
	.byte	0x5
	.byte	0xa3
	.byte	0xb
	.long	0x19d1
	.uleb128 0x2
	.byte	0x5
	.byte	0xa4
	.byte	0xb
	.long	0x19f1
	.uleb128 0x2
	.byte	0x5
	.byte	0xa6
	.byte	0xb
	.long	0x1a18
	.uleb128 0x2
	.byte	0x5
	.byte	0xa9
	.byte	0xb
	.long	0x1a3e
	.uleb128 0x2
	.byte	0x5
	.byte	0xa9
	.byte	0xb
	.long	0x1a5c
	.uleb128 0x2
	.byte	0x5
	.byte	0xac
	.byte	0xb
	.long	0x1a7f
	.uleb128 0x2
	.byte	0x5
	.byte	0xae
	.byte	0xb
	.long	0x1aa5
	.uleb128 0x2
	.byte	0x5
	.byte	0xb0
	.byte	0xb
	.long	0x1ac6
	.uleb128 0x2
	.byte	0x5
	.byte	0xb2
	.byte	0xb
	.long	0x1ae6
	.uleb128 0x2
	.byte	0x5
	.byte	0xb3
	.byte	0xb
	.long	0x1b0b
	.uleb128 0x2
	.byte	0x5
	.byte	0xb4
	.byte	0xb
	.long	0x1b2a
	.uleb128 0x2
	.byte	0x5
	.byte	0xb5
	.byte	0xb
	.long	0x1b49
	.uleb128 0x2
	.byte	0x5
	.byte	0xb6
	.byte	0xb
	.long	0x1b69
	.uleb128 0x2
	.byte	0x5
	.byte	0xb7
	.byte	0xb
	.long	0x1b88
	.uleb128 0x2
	.byte	0x5
	.byte	0xb8
	.byte	0xb
	.long	0x1ba8
	.uleb128 0x2
	.byte	0x5
	.byte	0xb9
	.byte	0xb
	.long	0x1bd8
	.uleb128 0x2
	.byte	0x5
	.byte	0xba
	.byte	0xb
	.long	0x1bf2
	.uleb128 0x2
	.byte	0x5
	.byte	0xbb
	.byte	0xb
	.long	0x1c17
	.uleb128 0x2
	.byte	0x5
	.byte	0xbc
	.byte	0xb
	.long	0x1c3c
	.uleb128 0x2
	.byte	0x5
	.byte	0xbd
	.byte	0xb
	.long	0x1c61
	.uleb128 0x2
	.byte	0x5
	.byte	0xbe
	.byte	0xb
	.long	0x1c92
	.uleb128 0x2
	.byte	0x5
	.byte	0xbf
	.byte	0xb
	.long	0x1cb1
	.uleb128 0x2
	.byte	0x5
	.byte	0xc1
	.byte	0xb
	.long	0x1cdf
	.uleb128 0x2
	.byte	0x5
	.byte	0xc3
	.byte	0xb
	.long	0x1d07
	.uleb128 0x2
	.byte	0x5
	.byte	0xc4
	.byte	0xb
	.long	0x1d26
	.uleb128 0x2
	.byte	0x5
	.byte	0xc5
	.byte	0xb
	.long	0x1d4a
	.uleb128 0x2
	.byte	0x5
	.byte	0xc6
	.byte	0xb
	.long	0x1d6f
	.uleb128 0x2
	.byte	0x5
	.byte	0xc7
	.byte	0xb
	.long	0x1d94
	.uleb128 0x2
	.byte	0x5
	.byte	0xc8
	.byte	0xb
	.long	0x1dad
	.uleb128 0x2
	.byte	0x5
	.byte	0xc9
	.byte	0xb
	.long	0x1dd2
	.uleb128 0x2
	.byte	0x5
	.byte	0xca
	.byte	0xb
	.long	0x1df7
	.uleb128 0x2
	.byte	0x5
	.byte	0xcb
	.byte	0xb
	.long	0x1e1d
	.uleb128 0x2
	.byte	0x5
	.byte	0xcc
	.byte	0xb
	.long	0x1e42
	.uleb128 0x2
	.byte	0x5
	.byte	0xcd
	.byte	0xb
	.long	0x1e5e
	.uleb128 0x2
	.byte	0x5
	.byte	0xce
	.byte	0xb
	.long	0x1e79
	.uleb128 0x2
	.byte	0x5
	.byte	0xcf
	.byte	0xb
	.long	0x1e98
	.uleb128 0x2
	.byte	0x5
	.byte	0xd0
	.byte	0xb
	.long	0x1eb8
	.uleb128 0x2
	.byte	0x5
	.byte	0xd1
	.byte	0xb
	.long	0x1ed8
	.uleb128 0x2
	.byte	0x5
	.byte	0xd2
	.byte	0xb
	.long	0x1ef7
	.uleb128 0xe
	.byte	0x5
	.word	0x10b
	.byte	0x16
	.long	0x1fe1
	.uleb128 0xe
	.byte	0x5
	.word	0x10c
	.byte	0x16
	.long	0x2010
	.uleb128 0xe
	.byte	0x5
	.word	0x10d
	.byte	0x16
	.long	0x2035
	.uleb128 0xe
	.byte	0x5
	.word	0x11b
	.byte	0xe
	.long	0x1cdf
	.uleb128 0xe
	.byte	0x5
	.word	0x11e
	.byte	0xe
	.long	0x1a18
	.uleb128 0xe
	.byte	0x5
	.word	0x121
	.byte	0xe
	.long	0x1a7f
	.uleb128 0xe
	.byte	0x5
	.word	0x124
	.byte	0xe
	.long	0x1ac6
	.uleb128 0xe
	.byte	0x5
	.word	0x128
	.byte	0xe
	.long	0x1fe1
	.uleb128 0xe
	.byte	0x5
	.word	0x129
	.byte	0xe
	.long	0x2010
	.uleb128 0xe
	.byte	0x5
	.word	0x12a
	.byte	0xe
	.long	0x2035
	.uleb128 0x18
	.ascii "size_t\0"
	.byte	0x6
	.word	0x134
	.byte	0x1a
	.long	0xb7
	.uleb128 0x28
	.ascii "__swappable_details\0"
	.word	0xab0
	.uleb128 0x28
	.ascii "__swappable_with_details\0"
	.word	0xb06
	.uleb128 0x21
	.ascii "__exception_ptr\0"
	.byte	0x8
	.byte	0x3d
	.byte	0xd
	.long	0xcf1
	.uleb128 0x35
	.secrel32	.LASF2
	.byte	0x8
	.byte	0x8
	.byte	0x61
	.byte	0xb
	.long	0xc9b
	.uleb128 0x4
	.ascii "_M_exception_object\0"
	.byte	0x8
	.byte	0x63
	.byte	0xd
	.long	0x20f1
	.byte	0
	.uleb128 0x36
	.secrel32	.LASF2
	.byte	0x8
	.byte	0x65
	.byte	0x10
	.ascii "_ZNSt15__exception_ptr13exception_ptrC4EPv\0"
	.long	0x8af
	.long	0x8ba
	.uleb128 0x9
	.long	0x20f3
	.uleb128 0x1
	.long	0x20f1
	.byte	0
	.uleb128 0x29
	.ascii "_M_addref\0"
	.byte	0x67
	.ascii "_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv\0"
	.long	0x900
	.long	0x906
	.uleb128 0x9
	.long	0x20f3
	.byte	0
	.uleb128 0x29
	.ascii "_M_release\0"
	.byte	0x68
	.ascii "_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv\0"
	.long	0x94f
	.long	0x955
	.uleb128 0x9
	.long	0x20f3
	.byte	0
	.uleb128 0x37
	.ascii "_M_get\0"
	.byte	0x8
	.byte	0x6a
	.byte	0xd
	.ascii "_ZNKSt15__exception_ptr13exception_ptr6_M_getEv\0"
	.long	0x20f1
	.long	0x99c
	.long	0x9a2
	.uleb128 0x9
	.long	0x20f8
	.byte	0
	.uleb128 0x1e
	.secrel32	.LASF2
	.byte	0x72
	.ascii "_ZNSt15__exception_ptr13exception_ptrC4Ev\0"
	.long	0x9da
	.long	0x9e0
	.uleb128 0x9
	.long	0x20f3
	.byte	0
	.uleb128 0x1e
	.secrel32	.LASF2
	.byte	0x74
	.ascii "_ZNSt15__exception_ptr13exception_ptrC4ERKS0_\0"
	.long	0xa1c
	.long	0xa27
	.uleb128 0x9
	.long	0x20f3
	.uleb128 0x1
	.long	0x20fd
	.byte	0
	.uleb128 0x1e
	.secrel32	.LASF2
	.byte	0x77
	.ascii "_ZNSt15__exception_ptr13exception_ptrC4EDn\0"
	.long	0xa60
	.long	0xa6b
	.uleb128 0x9
	.long	0x20f3
	.uleb128 0x1
	.long	0xd55
	.byte	0
	.uleb128 0x1e
	.secrel32	.LASF2
	.byte	0x7b
	.ascii "_ZNSt15__exception_ptr13exception_ptrC4EOS0_\0"
	.long	0xaa6
	.long	0xab1
	.uleb128 0x9
	.long	0x20f3
	.uleb128 0x1
	.long	0x2115
	.byte	0
	.uleb128 0x1a
	.secrel32	.LASF3
	.byte	0x8
	.byte	0x88
	.byte	0x7
	.ascii "_ZNSt15__exception_ptr13exception_ptraSERKS0_\0"
	.long	0x211b
	.long	0xaf3
	.long	0xafe
	.uleb128 0x9
	.long	0x20f3
	.uleb128 0x1
	.long	0x20fd
	.byte	0
	.uleb128 0x1a
	.secrel32	.LASF3
	.byte	0x8
	.byte	0x8c
	.byte	0x7
	.ascii "_ZNSt15__exception_ptr13exception_ptraSEOS0_\0"
	.long	0x211b
	.long	0xb3f
	.long	0xb4a
	.uleb128 0x9
	.long	0x20f3
	.uleb128 0x1
	.long	0x2115
	.byte	0
	.uleb128 0x2a
	.ascii "~exception_ptr\0"
	.byte	0x93
	.ascii "_ZNSt15__exception_ptr13exception_ptrD4Ev\0"
	.long	0xb8d
	.long	0xb98
	.uleb128 0x9
	.long	0x20f3
	.uleb128 0x9
	.long	0x118
	.byte	0
	.uleb128 0x2a
	.ascii "swap\0"
	.byte	0x96
	.ascii "_ZNSt15__exception_ptr13exception_ptr4swapERS0_\0"
	.long	0xbd7
	.long	0xbe2
	.uleb128 0x9
	.long	0x20f3
	.uleb128 0x1
	.long	0x211b
	.byte	0
	.uleb128 0x38
	.ascii "operator bool\0"
	.byte	0x8
	.byte	0xa2
	.byte	0x10
	.ascii "_ZNKSt15__exception_ptr13exception_ptrcvbEv\0"
	.long	0x20bd
	.byte	0x1
	.long	0xc2d
	.long	0xc33
	.uleb128 0x9
	.long	0x20f8
	.byte	0
	.uleb128 0x39
	.ascii "__cxa_exception_type\0"
	.byte	0x8
	.byte	0xb7
	.byte	0x7
	.ascii "_ZNKSt15__exception_ptr13exception_ptr20__cxa_exception_typeEv\0"
	.long	0x2120
	.byte	0x1
	.long	0xc94
	.uleb128 0x9
	.long	0x20f8
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x84a
	.uleb128 0x2
	.byte	0x8
	.byte	0x55
	.byte	0x10
	.long	0xcf9
	.uleb128 0x3a
	.ascii "swap\0"
	.byte	0x8
	.byte	0xe6
	.byte	0x5
	.ascii "_ZNSt15__exception_ptr4swapERNS_13exception_ptrES1_\0"
	.uleb128 0x1
	.long	0x211b
	.uleb128 0x1
	.long	0x211b
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x42
	.byte	0x1a
	.long	0x84a
	.uleb128 0x3b
	.ascii "rethrow_exception\0"
	.byte	0x8
	.byte	0x51
	.byte	0x8
	.ascii "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE\0"
	.long	0xd55
	.uleb128 0x1
	.long	0x84a
	.byte	0
	.uleb128 0x18
	.ascii "nullptr_t\0"
	.byte	0x6
	.word	0x138
	.byte	0x1d
	.long	0x2102
	.uleb128 0x3c
	.ascii "type_info\0"
	.uleb128 0x10
	.long	0xd68
	.uleb128 0x2
	.byte	0x8
	.byte	0xf3
	.byte	0x1a
	.long	0xca8
	.uleb128 0x26
	.ascii "char_traits<char>\0"
	.byte	0x1
	.byte	0x9
	.word	0x15b
	.byte	0xc
	.long	0x1165
	.uleb128 0x3d
	.ascii "assign\0"
	.byte	0x9
	.word	0x169
	.byte	0x7
	.ascii "_ZNSt11char_traitsIcE6assignERcRKc\0"
	.long	0xdda
	.uleb128 0x1
	.long	0x2125
	.uleb128 0x1
	.long	0x212a
	.byte	0
	.uleb128 0x18
	.ascii "char_type\0"
	.byte	0x9
	.word	0x15d
	.byte	0x21
	.long	0x9b
	.uleb128 0x10
	.long	0xdda
	.uleb128 0xf
	.ascii "eq\0"
	.byte	0x9
	.word	0x174
	.byte	0x7
	.ascii "_ZNSt11char_traitsIcE2eqERKcS2_\0"
	.long	0x20bd
	.long	0xe2d
	.uleb128 0x1
	.long	0x212a
	.uleb128 0x1
	.long	0x212a
	.byte	0
	.uleb128 0xf
	.ascii "lt\0"
	.byte	0x9
	.word	0x178
	.byte	0x7
	.ascii "_ZNSt11char_traitsIcE2ltERKcS2_\0"
	.long	0x20bd
	.long	0xe68
	.uleb128 0x1
	.long	0x212a
	.uleb128 0x1
	.long	0x212a
	.byte	0
	.uleb128 0xf
	.ascii "compare\0"
	.byte	0x9
	.word	0x180
	.byte	0x7
	.ascii "_ZNSt11char_traitsIcE7compareEPKcS2_y\0"
	.long	0x118
	.long	0xeb3
	.uleb128 0x1
	.long	0x212f
	.uleb128 0x1
	.long	0x212f
	.uleb128 0x1
	.long	0x7ef
	.byte	0
	.uleb128 0xf
	.ascii "length\0"
	.byte	0x9
	.word	0x193
	.byte	0x7
	.ascii "_ZNSt11char_traitsIcE6lengthEPKc\0"
	.long	0x7ef
	.long	0xeee
	.uleb128 0x1
	.long	0x212f
	.byte	0
	.uleb128 0xf
	.ascii "find\0"
	.byte	0x9
	.word	0x19d
	.byte	0x7
	.ascii "_ZNSt11char_traitsIcE4findEPKcyRS1_\0"
	.long	0x212f
	.long	0xf34
	.uleb128 0x1
	.long	0x212f
	.uleb128 0x1
	.long	0x7ef
	.uleb128 0x1
	.long	0x212a
	.byte	0
	.uleb128 0xf
	.ascii "move\0"
	.byte	0x9
	.word	0x1a9
	.byte	0x7
	.ascii "_ZNSt11char_traitsIcE4moveEPcPKcy\0"
	.long	0x2134
	.long	0xf78
	.uleb128 0x1
	.long	0x2134
	.uleb128 0x1
	.long	0x212f
	.uleb128 0x1
	.long	0x7ef
	.byte	0
	.uleb128 0xf
	.ascii "copy\0"
	.byte	0x9
	.word	0x1b5
	.byte	0x7
	.ascii "_ZNSt11char_traitsIcE4copyEPcPKcy\0"
	.long	0x2134
	.long	0xfbc
	.uleb128 0x1
	.long	0x2134
	.uleb128 0x1
	.long	0x212f
	.uleb128 0x1
	.long	0x7ef
	.byte	0
	.uleb128 0xf
	.ascii "assign\0"
	.byte	0x9
	.word	0x1c1
	.byte	0x7
	.ascii "_ZNSt11char_traitsIcE6assignEPcyc\0"
	.long	0x2134
	.long	0x1002
	.uleb128 0x1
	.long	0x2134
	.uleb128 0x1
	.long	0x7ef
	.uleb128 0x1
	.long	0xdda
	.byte	0
	.uleb128 0xf
	.ascii "to_char_type\0"
	.byte	0x9
	.word	0x1cd
	.byte	0x7
	.ascii "_ZNSt11char_traitsIcE12to_char_typeERKi\0"
	.long	0xdda
	.long	0x104a
	.uleb128 0x1
	.long	0x2139
	.byte	0
	.uleb128 0x18
	.ascii "int_type\0"
	.byte	0x9
	.word	0x15e
	.byte	0x21
	.long	0x118
	.uleb128 0x10
	.long	0x104a
	.uleb128 0xf
	.ascii "to_int_type\0"
	.byte	0x9
	.word	0x1d3
	.byte	0x7
	.ascii "_ZNSt11char_traitsIcE11to_int_typeERKc\0"
	.long	0x104a
	.long	0x10a7
	.uleb128 0x1
	.long	0x212a
	.byte	0
	.uleb128 0xf
	.ascii "eq_int_type\0"
	.byte	0x9
	.word	0x1d7
	.byte	0x7
	.ascii "_ZNSt11char_traitsIcE11eq_int_typeERKiS2_\0"
	.long	0x20bd
	.long	0x10f5
	.uleb128 0x1
	.long	0x2139
	.uleb128 0x1
	.long	0x2139
	.byte	0
	.uleb128 0x3e
	.ascii "eof\0"
	.byte	0x9
	.word	0x1dc
	.byte	0x7
	.ascii "_ZNSt11char_traitsIcE3eofEv\0"
	.long	0x104a
	.uleb128 0xf
	.ascii "not_eof\0"
	.byte	0x9
	.word	0x1e0
	.byte	0x7
	.ascii "_ZNSt11char_traitsIcE7not_eofERKi\0"
	.long	0x104a
	.long	0x115b
	.uleb128 0x1
	.long	0x2139
	.byte	0
	.uleb128 0x14
	.secrel32	.LASF5
	.long	0x9b
	.byte	0
	.uleb128 0x2
	.byte	0xa
	.byte	0x35
	.byte	0xb
	.long	0x191
	.uleb128 0x2
	.byte	0xa
	.byte	0x36
	.byte	0xb
	.long	0x2152
	.uleb128 0x2
	.byte	0xa
	.byte	0x37
	.byte	0xb
	.long	0x2173
	.uleb128 0x2
	.byte	0xb
	.byte	0x83
	.byte	0xb
	.long	0x21b2
	.uleb128 0x2
	.byte	0xb
	.byte	0x84
	.byte	0xb
	.long	0x21ed
	.uleb128 0x2
	.byte	0xb
	.byte	0x8a
	.byte	0xb
	.long	0x2249
	.uleb128 0x2
	.byte	0xb
	.byte	0x90
	.byte	0xb
	.long	0x2263
	.uleb128 0x2
	.byte	0xb
	.byte	0x91
	.byte	0xb
	.long	0x227b
	.uleb128 0x2
	.byte	0xb
	.byte	0x92
	.byte	0xb
	.long	0x2293
	.uleb128 0x2
	.byte	0xb
	.byte	0x93
	.byte	0xb
	.long	0x22ab
	.uleb128 0x2
	.byte	0xb
	.byte	0x95
	.byte	0xb
	.long	0x22f9
	.uleb128 0x2
	.byte	0xb
	.byte	0x98
	.byte	0xb
	.long	0x2315
	.uleb128 0x2
	.byte	0xb
	.byte	0x9a
	.byte	0xb
	.long	0x232f
	.uleb128 0x2
	.byte	0xb
	.byte	0x9d
	.byte	0xb
	.long	0x234c
	.uleb128 0x2
	.byte	0xb
	.byte	0x9e
	.byte	0xb
	.long	0x236a
	.uleb128 0x2
	.byte	0xb
	.byte	0x9f
	.byte	0xb
	.long	0x2390
	.uleb128 0x2
	.byte	0xb
	.byte	0xa1
	.byte	0xb
	.long	0x23b4
	.uleb128 0x2
	.byte	0xb
	.byte	0xa7
	.byte	0xb
	.long	0x23d7
	.uleb128 0x2
	.byte	0xb
	.byte	0xa9
	.byte	0xb
	.long	0x23e5
	.uleb128 0x2
	.byte	0xb
	.byte	0xaa
	.byte	0xb
	.long	0x23f9
	.uleb128 0x2
	.byte	0xb
	.byte	0xab
	.byte	0xb
	.long	0x2418
	.uleb128 0x2
	.byte	0xb
	.byte	0xac
	.byte	0xb
	.long	0x243c
	.uleb128 0x2
	.byte	0xb
	.byte	0xad
	.byte	0xb
	.long	0x2461
	.uleb128 0x2
	.byte	0xb
	.byte	0xaf
	.byte	0xb
	.long	0x247b
	.uleb128 0x2
	.byte	0xb
	.byte	0xb0
	.byte	0xb
	.long	0x24a1
	.uleb128 0x2
	.byte	0xb
	.byte	0xf4
	.byte	0x16
	.long	0x2238
	.uleb128 0x2
	.byte	0xb
	.byte	0xf9
	.byte	0x16
	.long	0x1f7f
	.uleb128 0x2
	.byte	0xb
	.byte	0xfa
	.byte	0x16
	.long	0x24c0
	.uleb128 0x2
	.byte	0xb
	.byte	0xfc
	.byte	0x16
	.long	0x24de
	.uleb128 0x2
	.byte	0xb
	.byte	0xfd
	.byte	0x16
	.long	0x2542
	.uleb128 0x2
	.byte	0xb
	.byte	0xfe
	.byte	0x16
	.long	0x24f7
	.uleb128 0x2
	.byte	0xb
	.byte	0xff
	.byte	0x16
	.long	0x251c
	.uleb128 0xe
	.byte	0xb
	.word	0x100
	.byte	0x16
	.long	0x2561
	.uleb128 0x16
	.ascii "abs\0"
	.byte	0xc
	.byte	0x4f
	.ascii "_ZSt3abse\0"
	.long	0x2001
	.long	0x128d
	.uleb128 0x1
	.long	0x2001
	.byte	0
	.uleb128 0x16
	.ascii "abs\0"
	.byte	0xc
	.byte	0x4b
	.ascii "_ZSt3absf\0"
	.long	0x1cfe
	.long	0x12ac
	.uleb128 0x1
	.long	0x1cfe
	.byte	0
	.uleb128 0x16
	.ascii "abs\0"
	.byte	0xc
	.byte	0x47
	.ascii "_ZSt3absd\0"
	.long	0x1cd0
	.long	0x12cb
	.uleb128 0x1
	.long	0x1cd0
	.byte	0
	.uleb128 0x16
	.ascii "abs\0"
	.byte	0xc
	.byte	0x3d
	.ascii "_ZSt3absx\0"
	.long	0xd1
	.long	0x12ea
	.uleb128 0x1
	.long	0xd1
	.byte	0
	.uleb128 0x16
	.ascii "abs\0"
	.byte	0xc
	.byte	0x38
	.ascii "_ZSt3absl\0"
	.long	0x11f
	.long	0x1309
	.uleb128 0x1
	.long	0x11f
	.byte	0
	.uleb128 0x16
	.ascii "div\0"
	.byte	0xb
	.byte	0xb5
	.ascii "_ZSt3divll\0"
	.long	0x21ed
	.long	0x132e
	.uleb128 0x1
	.long	0x11f
	.uleb128 0x1
	.long	0x11f
	.byte	0
	.uleb128 0x22
	.ascii "__debug\0"
	.byte	0xd
	.byte	0x32
	.byte	0xd
	.uleb128 0x2
	.byte	0xe
	.byte	0x62
	.byte	0xb
	.long	0x4c5
	.uleb128 0x2
	.byte	0xe
	.byte	0x63
	.byte	0xb
	.long	0x213e
	.uleb128 0x2
	.byte	0xe
	.byte	0x65
	.byte	0xb
	.long	0x2686
	.uleb128 0x2
	.byte	0xe
	.byte	0x66
	.byte	0xb
	.long	0x269d
	.uleb128 0x2
	.byte	0xe
	.byte	0x67
	.byte	0xb
	.long	0x26b7
	.uleb128 0x2
	.byte	0xe
	.byte	0x68
	.byte	0xb
	.long	0x26cf
	.uleb128 0x2
	.byte	0xe
	.byte	0x69
	.byte	0xb
	.long	0x26e9
	.uleb128 0x2
	.byte	0xe
	.byte	0x6a
	.byte	0xb
	.long	0x2703
	.uleb128 0x2
	.byte	0xe
	.byte	0x6b
	.byte	0xb
	.long	0x271c
	.uleb128 0x2
	.byte	0xe
	.byte	0x6c
	.byte	0xb
	.long	0x2741
	.uleb128 0x2
	.byte	0xe
	.byte	0x6d
	.byte	0xb
	.long	0x2764
	.uleb128 0x2
	.byte	0xe
	.byte	0x6e
	.byte	0xb
	.long	0x2782
	.uleb128 0x2
	.byte	0xe
	.byte	0x71
	.byte	0xb
	.long	0x27a3
	.uleb128 0x2
	.byte	0xe
	.byte	0x72
	.byte	0xb
	.long	0x27cb
	.uleb128 0x2
	.byte	0xe
	.byte	0x73
	.byte	0xb
	.long	0x27f0
	.uleb128 0x2
	.byte	0xe
	.byte	0x74
	.byte	0xb
	.long	0x2810
	.uleb128 0x2
	.byte	0xe
	.byte	0x75
	.byte	0xb
	.long	0x2833
	.uleb128 0x2
	.byte	0xe
	.byte	0x76
	.byte	0xb
	.long	0x2858
	.uleb128 0x2
	.byte	0xe
	.byte	0x78
	.byte	0xb
	.long	0x2871
	.uleb128 0x2
	.byte	0xe
	.byte	0x79
	.byte	0xb
	.long	0x2889
	.uleb128 0x2
	.byte	0xe
	.byte	0x7e
	.byte	0xb
	.long	0x289a
	.uleb128 0x2
	.byte	0xe
	.byte	0x7f
	.byte	0xb
	.long	0x28af
	.uleb128 0x2
	.byte	0xe
	.byte	0x83
	.byte	0xb
	.long	0x28ca
	.uleb128 0x2
	.byte	0xe
	.byte	0x84
	.byte	0xb
	.long	0x28e4
	.uleb128 0x2
	.byte	0xe
	.byte	0x85
	.byte	0xb
	.long	0x2903
	.uleb128 0x2
	.byte	0xe
	.byte	0x86
	.byte	0xb
	.long	0x2918
	.uleb128 0x2
	.byte	0xe
	.byte	0x87
	.byte	0xb
	.long	0x2932
	.uleb128 0x2
	.byte	0xe
	.byte	0x88
	.byte	0xb
	.long	0x294c
	.uleb128 0x2
	.byte	0xe
	.byte	0x89
	.byte	0xb
	.long	0x2976
	.uleb128 0x2
	.byte	0xe
	.byte	0x8a
	.byte	0xb
	.long	0x2997
	.uleb128 0x2
	.byte	0xe
	.byte	0x8b
	.byte	0xb
	.long	0x29b7
	.uleb128 0x2
	.byte	0xe
	.byte	0x8d
	.byte	0xb
	.long	0x29c8
	.uleb128 0x2
	.byte	0xe
	.byte	0x8f
	.byte	0xb
	.long	0x29e2
	.uleb128 0x2
	.byte	0xe
	.byte	0x90
	.byte	0xb
	.long	0x2a01
	.uleb128 0x2
	.byte	0xe
	.byte	0x91
	.byte	0xb
	.long	0x2a27
	.uleb128 0x2
	.byte	0xe
	.byte	0x92
	.byte	0xb
	.long	0x2a47
	.uleb128 0x2
	.byte	0xe
	.byte	0xb9
	.byte	0x16
	.long	0x2a6d
	.uleb128 0x2
	.byte	0xe
	.byte	0xba
	.byte	0x16
	.long	0x2a94
	.uleb128 0x2
	.byte	0xe
	.byte	0xbb
	.byte	0x16
	.long	0x2ab9
	.uleb128 0x2
	.byte	0xe
	.byte	0xbc
	.byte	0x16
	.long	0x2ad8
	.uleb128 0x2
	.byte	0xe
	.byte	0xbd
	.byte	0x16
	.long	0x2b04
	.uleb128 0x3f
	.ascii "__cxx11\0"
	.byte	0x6
	.word	0x155
	.byte	0x41
	.uleb128 0x2
	.byte	0xf
	.byte	0x3a
	.byte	0xb
	.long	0x20a7
	.uleb128 0x22
	.ascii "pmr\0"
	.byte	0x10
	.byte	0x35
	.byte	0xb
	.uleb128 0x40
	.ascii "_V2\0"
	.byte	0x11
	.byte	0x52
	.byte	0x1
	.uleb128 0x2
	.byte	0x12
	.byte	0x52
	.byte	0xb
	.long	0x2b29
	.uleb128 0x2
	.byte	0x12
	.byte	0x53
	.byte	0xb
	.long	0x107
	.uleb128 0x2
	.byte	0x12
	.byte	0x54
	.byte	0xb
	.long	0xe2
	.uleb128 0x2
	.byte	0x12
	.byte	0x5c
	.byte	0xb
	.long	0x2b3b
	.uleb128 0x2
	.byte	0x12
	.byte	0x65
	.byte	0xb
	.long	0x2b5c
	.uleb128 0x2
	.byte	0x12
	.byte	0x68
	.byte	0xb
	.long	0x2b7d
	.uleb128 0x2
	.byte	0x12
	.byte	0x69
	.byte	0xb
	.long	0x2b97
	.uleb128 0x41
	.ascii "basic_ostream<char, std::char_traits<char> >\0"
	.long	0x15be
	.uleb128 0x1a
	.secrel32	.LASF4
	.byte	0x13
	.byte	0x6e
	.byte	0x5
	.ascii "_ZNSolsEi\0"
	.long	0x2bb0
	.long	0x152f
	.long	0x153a
	.uleb128 0x9
	.long	0x2c9d
	.uleb128 0x1
	.long	0x118
	.byte	0
	.uleb128 0x42
	.ascii "__ostream_type\0"
	.byte	0x14
	.byte	0x49
	.byte	0x2f
	.long	0x14df
	.byte	0x1
	.uleb128 0x1a
	.secrel32	.LASF4
	.byte	0x14
	.byte	0x6e
	.byte	0x7
	.ascii "_ZNSolsEPFRSoS_E\0"
	.long	0x3252
	.long	0x1577
	.long	0x1582
	.uleb128 0x9
	.long	0x2c9d
	.uleb128 0x1
	.long	0x3257
	.byte	0
	.uleb128 0x1a
	.secrel32	.LASF4
	.byte	0x14
	.byte	0xa8
	.byte	0x7
	.ascii "_ZNSolsEl\0"
	.long	0x3252
	.long	0x15a0
	.long	0x15ab
	.uleb128 0x9
	.long	0x2c9d
	.uleb128 0x1
	.long	0x11f
	.byte	0
	.uleb128 0x14
	.secrel32	.LASF5
	.long	0x9b
	.uleb128 0x43
	.secrel32	.LASF7
	.long	0xd80
	.byte	0
	.uleb128 0x11
	.ascii "ostream\0"
	.byte	0x15
	.byte	0x8f
	.byte	0x21
	.long	0x14df
	.uleb128 0x44
	.ascii "cout\0"
	.byte	0x20
	.byte	0x3f
	.byte	0x12
	.ascii "_ZSt4cout\0"
	.long	0x15be
	.uleb128 0x2
	.byte	0x16
	.byte	0x3c
	.byte	0xb
	.long	0x2bb5
	.uleb128 0x2
	.byte	0x16
	.byte	0x3d
	.byte	0xb
	.long	0x13e
	.uleb128 0x2
	.byte	0x16
	.byte	0x3e
	.byte	0xb
	.long	0x4df
	.uleb128 0x2
	.byte	0x16
	.byte	0x40
	.byte	0xb
	.long	0x2bc5
	.uleb128 0x2
	.byte	0x16
	.byte	0x41
	.byte	0xb
	.long	0x2bd3
	.uleb128 0x2
	.byte	0x16
	.byte	0x42
	.byte	0xb
	.long	0x2bf2
	.uleb128 0x2
	.byte	0x16
	.byte	0x43
	.byte	0xb
	.long	0x2c11
	.uleb128 0x2
	.byte	0x16
	.byte	0x44
	.byte	0xb
	.long	0x2c2c
	.uleb128 0x2
	.byte	0x16
	.byte	0x45
	.byte	0xb
	.long	0x2c46
	.uleb128 0x2
	.byte	0x16
	.byte	0x46
	.byte	0xb
	.long	0x2c62
	.uleb128 0x2
	.byte	0x16
	.byte	0x47
	.byte	0xb
	.long	0x2c7a
	.uleb128 0x21
	.ascii "__detail\0"
	.byte	0x7
	.byte	0x91
	.byte	0xd
	.long	0x166a
	.uleb128 0x23
	.secrel32	.LASF6
	.long	0x20c5
	.uleb128 0x23
	.secrel32	.LASF6
	.long	0x20c5
	.uleb128 0x23
	.secrel32	.LASF6
	.long	0x20c5
	.byte	0
	.uleb128 0xf
	.ascii "endl<char, std::char_traits<char> >\0"
	.byte	0x14
	.word	0x2df
	.byte	0x5
	.ascii "_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_\0"
	.long	0x2bb0
	.long	0x16ee
	.uleb128 0x14
	.secrel32	.LASF5
	.long	0x9b
	.uleb128 0x14
	.secrel32	.LASF7
	.long	0xd80
	.uleb128 0x1
	.long	0x2bb0
	.byte	0
	.uleb128 0x45
	.ascii "operator<< <std::char_traits<char> >\0"
	.byte	0x14
	.word	0x296
	.byte	0x5
	.ascii "_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc\0"
	.long	0x2bb0
	.uleb128 0x14
	.secrel32	.LASF7
	.long	0xd80
	.uleb128 0x1
	.long	0x2bb0
	.uleb128 0x1
	.long	0x18b8
	.byte	0
	.byte	0
	.uleb128 0x3
	.ascii "btowc\0"
	.byte	0x4
	.word	0x5a9
	.byte	0x12
	.long	0xe2
	.long	0x1782
	.uleb128 0x1
	.long	0x118
	.byte	0
	.uleb128 0x3
	.ascii "fgetwc\0"
	.byte	0x4
	.word	0x313
	.byte	0x12
	.long	0xe2
	.long	0x179c
	.uleb128 0x1
	.long	0x179c
	.byte	0
	.uleb128 0x6
	.long	0x4c5
	.uleb128 0x3
	.ascii "fgetws\0"
	.byte	0x4
	.word	0x31c
	.byte	0x14
	.long	0x157
	.long	0x17c5
	.uleb128 0x1
	.long	0x157
	.uleb128 0x1
	.long	0x118
	.uleb128 0x1
	.long	0x179c
	.byte	0
	.uleb128 0x3
	.ascii "fputwc\0"
	.byte	0x4
	.word	0x315
	.byte	0x12
	.long	0xe2
	.long	0x17e4
	.uleb128 0x1
	.long	0x15c
	.uleb128 0x1
	.long	0x179c
	.byte	0
	.uleb128 0x3
	.ascii "fputws\0"
	.byte	0x4
	.word	0x31d
	.byte	0xf
	.long	0x118
	.long	0x1803
	.uleb128 0x1
	.long	0x1803
	.uleb128 0x1
	.long	0x179c
	.byte	0
	.uleb128 0x6
	.long	0x167
	.uleb128 0x3
	.ascii "fwide\0"
	.byte	0x4
	.word	0x5b8
	.byte	0xf
	.long	0x118
	.long	0x1826
	.uleb128 0x1
	.long	0x179c
	.uleb128 0x1
	.long	0x118
	.byte	0
	.uleb128 0x5
	.ascii "fwprintf\0"
	.byte	0x4
	.word	0x259
	.byte	0x5
	.long	0x118
	.long	0x1848
	.uleb128 0x1
	.long	0x179c
	.uleb128 0x1
	.long	0x1803
	.uleb128 0xd
	.byte	0
	.uleb128 0x5
	.ascii "fwscanf\0"
	.byte	0x4
	.word	0x235
	.byte	0x5
	.long	0x118
	.long	0x1869
	.uleb128 0x1
	.long	0x179c
	.uleb128 0x1
	.long	0x1803
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.ascii "getwc\0"
	.byte	0x4
	.word	0x317
	.byte	0x12
	.long	0xe2
	.long	0x1882
	.uleb128 0x1
	.long	0x179c
	.byte	0
	.uleb128 0x1f
	.ascii "getwchar\0"
	.byte	0x4
	.word	0x318
	.byte	0x12
	.long	0xe2
	.uleb128 0x3
	.ascii "mbrlen\0"
	.byte	0x4
	.word	0x5aa
	.byte	0x12
	.long	0xa8
	.long	0x18b8
	.uleb128 0x1
	.long	0x18b8
	.uleb128 0x1
	.long	0xa8
	.uleb128 0x1
	.long	0x18bd
	.byte	0
	.uleb128 0x6
	.long	0xa3
	.uleb128 0x6
	.long	0x592
	.uleb128 0x3
	.ascii "mbrtowc\0"
	.byte	0x4
	.word	0x5ab
	.byte	0x12
	.long	0xa8
	.long	0x18ec
	.uleb128 0x1
	.long	0x157
	.uleb128 0x1
	.long	0x18b8
	.uleb128 0x1
	.long	0xa8
	.uleb128 0x1
	.long	0x18bd
	.byte	0
	.uleb128 0x3
	.ascii "mbsinit\0"
	.byte	0x4
	.word	0x5bd
	.byte	0xf
	.long	0x118
	.long	0x1907
	.uleb128 0x1
	.long	0x1907
	.byte	0
	.uleb128 0x6
	.long	0x5a5
	.uleb128 0x3
	.ascii "mbsrtowcs\0"
	.byte	0x4
	.word	0x5ac
	.byte	0x12
	.long	0xa8
	.long	0x1938
	.uleb128 0x1
	.long	0x157
	.uleb128 0x1
	.long	0x1938
	.uleb128 0x1
	.long	0xa8
	.uleb128 0x1
	.long	0x18bd
	.byte	0
	.uleb128 0x6
	.long	0x18b8
	.uleb128 0x3
	.ascii "putwc\0"
	.byte	0x4
	.word	0x319
	.byte	0x12
	.long	0xe2
	.long	0x195b
	.uleb128 0x1
	.long	0x15c
	.uleb128 0x1
	.long	0x179c
	.byte	0
	.uleb128 0x3
	.ascii "putwchar\0"
	.byte	0x4
	.word	0x31a
	.byte	0x12
	.long	0xe2
	.long	0x1977
	.uleb128 0x1
	.long	0x15c
	.byte	0
	.uleb128 0x20
	.secrel32	.LASF8
	.byte	0x3e
	.long	0x118
	.long	0x1991
	.uleb128 0x1
	.long	0x157
	.uleb128 0x1
	.long	0x1803
	.uleb128 0xd
	.byte	0
	.uleb128 0x20
	.secrel32	.LASF8
	.byte	0x22
	.long	0x118
	.long	0x19b0
	.uleb128 0x1
	.long	0x157
	.uleb128 0x1
	.long	0xa8
	.uleb128 0x1
	.long	0x1803
	.uleb128 0xd
	.byte	0
	.uleb128 0x5
	.ascii "swscanf\0"
	.byte	0x4
	.word	0x21f
	.byte	0x5
	.long	0x118
	.long	0x19d1
	.uleb128 0x1
	.long	0x1803
	.uleb128 0x1
	.long	0x1803
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.ascii "ungetwc\0"
	.byte	0x4
	.word	0x31b
	.byte	0x12
	.long	0xe2
	.long	0x19f1
	.uleb128 0x1
	.long	0xe2
	.uleb128 0x1
	.long	0x179c
	.byte	0
	.uleb128 0x5
	.ascii "vfwprintf\0"
	.byte	0x4
	.word	0x26f
	.byte	0x5
	.long	0x118
	.long	0x1a18
	.uleb128 0x1
	.long	0x179c
	.uleb128 0x1
	.long	0x1803
	.uleb128 0x1
	.long	0x83
	.byte	0
	.uleb128 0x5
	.ascii "vfwscanf\0"
	.byte	0x4
	.word	0x24f
	.byte	0x5
	.long	0x118
	.long	0x1a3e
	.uleb128 0x1
	.long	0x179c
	.uleb128 0x1
	.long	0x1803
	.uleb128 0x1
	.long	0x83
	.byte	0
	.uleb128 0x20
	.secrel32	.LASF9
	.byte	0x33
	.long	0x118
	.long	0x1a5c
	.uleb128 0x1
	.long	0x157
	.uleb128 0x1
	.long	0x1803
	.uleb128 0x1
	.long	0x83
	.byte	0
	.uleb128 0x20
	.secrel32	.LASF9
	.byte	0x1b
	.long	0x118
	.long	0x1a7f
	.uleb128 0x1
	.long	0x157
	.uleb128 0x1
	.long	0xa8
	.uleb128 0x1
	.long	0x1803
	.uleb128 0x1
	.long	0x83
	.byte	0
	.uleb128 0x5
	.ascii "vswscanf\0"
	.byte	0x4
	.word	0x241
	.byte	0x5
	.long	0x118
	.long	0x1aa5
	.uleb128 0x1
	.long	0x1803
	.uleb128 0x1
	.long	0x1803
	.uleb128 0x1
	.long	0x83
	.byte	0
	.uleb128 0x5
	.ascii "vwprintf\0"
	.byte	0x4
	.word	0x276
	.byte	0x5
	.long	0x118
	.long	0x1ac6
	.uleb128 0x1
	.long	0x1803
	.uleb128 0x1
	.long	0x83
	.byte	0
	.uleb128 0x5
	.ascii "vwscanf\0"
	.byte	0x4
	.word	0x248
	.byte	0x5
	.long	0x118
	.long	0x1ae6
	.uleb128 0x1
	.long	0x1803
	.uleb128 0x1
	.long	0x83
	.byte	0
	.uleb128 0x3
	.ascii "wcrtomb\0"
	.byte	0x4
	.word	0x5ad
	.byte	0x12
	.long	0xa8
	.long	0x1b0b
	.uleb128 0x1
	.long	0x152
	.uleb128 0x1
	.long	0x15c
	.uleb128 0x1
	.long	0x18bd
	.byte	0
	.uleb128 0x3
	.ascii "wcscat\0"
	.byte	0x4
	.word	0x52b
	.byte	0x14
	.long	0x157
	.long	0x1b2a
	.uleb128 0x1
	.long	0x157
	.uleb128 0x1
	.long	0x1803
	.byte	0
	.uleb128 0x3
	.ascii "wcscmp\0"
	.byte	0x4
	.word	0x52d
	.byte	0xf
	.long	0x118
	.long	0x1b49
	.uleb128 0x1
	.long	0x1803
	.uleb128 0x1
	.long	0x1803
	.byte	0
	.uleb128 0x3
	.ascii "wcscoll\0"
	.byte	0x4
	.word	0x54e
	.byte	0xf
	.long	0x118
	.long	0x1b69
	.uleb128 0x1
	.long	0x1803
	.uleb128 0x1
	.long	0x1803
	.byte	0
	.uleb128 0x3
	.ascii "wcscpy\0"
	.byte	0x4
	.word	0x52e
	.byte	0x14
	.long	0x157
	.long	0x1b88
	.uleb128 0x1
	.long	0x157
	.uleb128 0x1
	.long	0x1803
	.byte	0
	.uleb128 0x3
	.ascii "wcscspn\0"
	.byte	0x4
	.word	0x52f
	.byte	0x12
	.long	0xa8
	.long	0x1ba8
	.uleb128 0x1
	.long	0x1803
	.uleb128 0x1
	.long	0x1803
	.byte	0
	.uleb128 0x3
	.ascii "wcsftime\0"
	.byte	0x4
	.word	0x57b
	.byte	0x12
	.long	0xa8
	.long	0x1bd3
	.uleb128 0x1
	.long	0x157
	.uleb128 0x1
	.long	0xa8
	.uleb128 0x1
	.long	0x1803
	.uleb128 0x1
	.long	0x1bd3
	.byte	0
	.uleb128 0x6
	.long	0x58d
	.uleb128 0x3
	.ascii "wcslen\0"
	.byte	0x4
	.word	0x530
	.byte	0x12
	.long	0xa8
	.long	0x1bf2
	.uleb128 0x1
	.long	0x1803
	.byte	0
	.uleb128 0x3
	.ascii "wcsncat\0"
	.byte	0x4
	.word	0x532
	.byte	0x14
	.long	0x157
	.long	0x1c17
	.uleb128 0x1
	.long	0x157
	.uleb128 0x1
	.long	0x1803
	.uleb128 0x1
	.long	0xa8
	.byte	0
	.uleb128 0x3
	.ascii "wcsncmp\0"
	.byte	0x4
	.word	0x533
	.byte	0xf
	.long	0x118
	.long	0x1c3c
	.uleb128 0x1
	.long	0x1803
	.uleb128 0x1
	.long	0x1803
	.uleb128 0x1
	.long	0xa8
	.byte	0
	.uleb128 0x3
	.ascii "wcsncpy\0"
	.byte	0x4
	.word	0x534
	.byte	0x14
	.long	0x157
	.long	0x1c61
	.uleb128 0x1
	.long	0x157
	.uleb128 0x1
	.long	0x1803
	.uleb128 0x1
	.long	0xa8
	.byte	0
	.uleb128 0x3
	.ascii "wcsrtombs\0"
	.byte	0x4
	.word	0x5ae
	.byte	0x12
	.long	0xa8
	.long	0x1c8d
	.uleb128 0x1
	.long	0x152
	.uleb128 0x1
	.long	0x1c8d
	.uleb128 0x1
	.long	0xa8
	.uleb128 0x1
	.long	0x18bd
	.byte	0
	.uleb128 0x6
	.long	0x1803
	.uleb128 0x3
	.ascii "wcsspn\0"
	.byte	0x4
	.word	0x538
	.byte	0x12
	.long	0xa8
	.long	0x1cb1
	.uleb128 0x1
	.long	0x1803
	.uleb128 0x1
	.long	0x1803
	.byte	0
	.uleb128 0x5
	.ascii "wcstod\0"
	.byte	0x4
	.word	0x4f0
	.byte	0x12
	.long	0x1cd0
	.long	0x1cd0
	.uleb128 0x1
	.long	0x1803
	.uleb128 0x1
	.long	0x1cda
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.byte	0x4
	.ascii "double\0"
	.uleb128 0x6
	.long	0x157
	.uleb128 0x5
	.ascii "wcstof\0"
	.byte	0x4
	.word	0x4f4
	.byte	0x11
	.long	0x1cfe
	.long	0x1cfe
	.uleb128 0x1
	.long	0x1803
	.uleb128 0x1
	.long	0x1cda
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.byte	0x4
	.ascii "float\0"
	.uleb128 0x3
	.ascii "wcstok\0"
	.byte	0x4
	.word	0x53d
	.byte	0x14
	.long	0x157
	.long	0x1d26
	.uleb128 0x1
	.long	0x157
	.uleb128 0x1
	.long	0x1803
	.byte	0
	.uleb128 0x3
	.ascii "wcstol\0"
	.byte	0x4
	.word	0x4ff
	.byte	0x10
	.long	0x11f
	.long	0x1d4a
	.uleb128 0x1
	.long	0x1803
	.uleb128 0x1
	.long	0x1cda
	.uleb128 0x1
	.long	0x118
	.byte	0
	.uleb128 0x3
	.ascii "wcstoul\0"
	.byte	0x4
	.word	0x501
	.byte	0x19
	.long	0x17c
	.long	0x1d6f
	.uleb128 0x1
	.long	0x1803
	.uleb128 0x1
	.long	0x1cda
	.uleb128 0x1
	.long	0x118
	.byte	0
	.uleb128 0x3
	.ascii "wcsxfrm\0"
	.byte	0x4
	.word	0x54c
	.byte	0x12
	.long	0xa8
	.long	0x1d94
	.uleb128 0x1
	.long	0x157
	.uleb128 0x1
	.long	0x1803
	.uleb128 0x1
	.long	0xa8
	.byte	0
	.uleb128 0x3
	.ascii "wctob\0"
	.byte	0x4
	.word	0x5af
	.byte	0xf
	.long	0x118
	.long	0x1dad
	.uleb128 0x1
	.long	0xe2
	.byte	0
	.uleb128 0x3
	.ascii "wmemcmp\0"
	.byte	0x4
	.word	0x5b4
	.byte	0xf
	.long	0x118
	.long	0x1dd2
	.uleb128 0x1
	.long	0x1803
	.uleb128 0x1
	.long	0x1803
	.uleb128 0x1
	.long	0xa8
	.byte	0
	.uleb128 0x3
	.ascii "wmemcpy\0"
	.byte	0x4
	.word	0x5b5
	.byte	0x14
	.long	0x157
	.long	0x1df7
	.uleb128 0x1
	.long	0x157
	.uleb128 0x1
	.long	0x1803
	.uleb128 0x1
	.long	0xa8
	.byte	0
	.uleb128 0x3
	.ascii "wmemmove\0"
	.byte	0x4
	.word	0x5b7
	.byte	0x14
	.long	0x157
	.long	0x1e1d
	.uleb128 0x1
	.long	0x157
	.uleb128 0x1
	.long	0x1803
	.uleb128 0x1
	.long	0xa8
	.byte	0
	.uleb128 0x3
	.ascii "wmemset\0"
	.byte	0x4
	.word	0x5b2
	.byte	0x14
	.long	0x157
	.long	0x1e42
	.uleb128 0x1
	.long	0x157
	.uleb128 0x1
	.long	0x15c
	.uleb128 0x1
	.long	0xa8
	.byte	0
	.uleb128 0x5
	.ascii "wprintf\0"
	.byte	0x4
	.word	0x264
	.byte	0x5
	.long	0x118
	.long	0x1e5e
	.uleb128 0x1
	.long	0x1803
	.uleb128 0xd
	.byte	0
	.uleb128 0x5
	.ascii "wscanf\0"
	.byte	0x4
	.word	0x22a
	.byte	0x5
	.long	0x118
	.long	0x1e79
	.uleb128 0x1
	.long	0x1803
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.ascii "wcschr\0"
	.byte	0x4
	.word	0x52c
	.byte	0x22
	.long	0x157
	.long	0x1e98
	.uleb128 0x1
	.long	0x1803
	.uleb128 0x1
	.long	0x15c
	.byte	0
	.uleb128 0x3
	.ascii "wcspbrk\0"
	.byte	0x4
	.word	0x536
	.byte	0x22
	.long	0x157
	.long	0x1eb8
	.uleb128 0x1
	.long	0x1803
	.uleb128 0x1
	.long	0x1803
	.byte	0
	.uleb128 0x3
	.ascii "wcsrchr\0"
	.byte	0x4
	.word	0x537
	.byte	0x22
	.long	0x157
	.long	0x1ed8
	.uleb128 0x1
	.long	0x1803
	.uleb128 0x1
	.long	0x15c
	.byte	0
	.uleb128 0x3
	.ascii "wcsstr\0"
	.byte	0x4
	.word	0x539
	.byte	0x22
	.long	0x157
	.long	0x1ef7
	.uleb128 0x1
	.long	0x1803
	.uleb128 0x1
	.long	0x1803
	.byte	0
	.uleb128 0x3
	.ascii "wmemchr\0"
	.byte	0x4
	.word	0x5b3
	.byte	0x22
	.long	0x157
	.long	0x1f1c
	.uleb128 0x1
	.long	0x1803
	.uleb128 0x1
	.long	0x15c
	.uleb128 0x1
	.long	0xa8
	.byte	0
	.uleb128 0x27
	.ascii "__gnu_cxx\0"
	.word	0x157
	.long	0x1fe1
	.uleb128 0x2
	.byte	0x5
	.byte	0xfb
	.byte	0xb
	.long	0x1fe1
	.uleb128 0xe
	.byte	0x5
	.word	0x104
	.byte	0xb
	.long	0x2010
	.uleb128 0xe
	.byte	0x5
	.word	0x105
	.byte	0xb
	.long	0x2035
	.uleb128 0x2
	.byte	0xb
	.byte	0xcc
	.byte	0xb
	.long	0x2238
	.uleb128 0x2
	.byte	0xb
	.byte	0xdc
	.byte	0xb
	.long	0x24c0
	.uleb128 0x2
	.byte	0xb
	.byte	0xe7
	.byte	0xb
	.long	0x24de
	.uleb128 0x2
	.byte	0xb
	.byte	0xe8
	.byte	0xb
	.long	0x24f7
	.uleb128 0x2
	.byte	0xb
	.byte	0xe9
	.byte	0xb
	.long	0x251c
	.uleb128 0x2
	.byte	0xb
	.byte	0xeb
	.byte	0xb
	.long	0x2542
	.uleb128 0x2
	.byte	0xb
	.byte	0xec
	.byte	0xb
	.long	0x2561
	.uleb128 0x16
	.ascii "div\0"
	.byte	0xb
	.byte	0xd9
	.ascii "_ZN9__gnu_cxx3divExx\0"
	.long	0x2238
	.long	0x1fae
	.uleb128 0x1
	.long	0xd1
	.uleb128 0x1
	.long	0xd1
	.byte	0
	.uleb128 0x22
	.ascii "__ops\0"
	.byte	0x19
	.byte	0x25
	.byte	0xb
	.uleb128 0x2
	.byte	0xe
	.byte	0xaf
	.byte	0xb
	.long	0x2a6d
	.uleb128 0x2
	.byte	0xe
	.byte	0xb0
	.byte	0xb
	.long	0x2a94
	.uleb128 0x2
	.byte	0xe
	.byte	0xb1
	.byte	0xb
	.long	0x2ab9
	.uleb128 0x2
	.byte	0xe
	.byte	0xb2
	.byte	0xb
	.long	0x2ad8
	.uleb128 0x2
	.byte	0xe
	.byte	0xb3
	.byte	0xb
	.long	0x2b04
	.byte	0
	.uleb128 0x3
	.ascii "wcstold\0"
	.byte	0x4
	.word	0x4fd
	.byte	0x17
	.long	0x2001
	.long	0x2001
	.uleb128 0x1
	.long	0x1803
	.uleb128 0x1
	.long	0x1cda
	.byte	0
	.uleb128 0x7
	.byte	0x10
	.byte	0x4
	.ascii "long double\0"
	.uleb128 0x3
	.ascii "wcstoll\0"
	.byte	0x4
	.word	0x5bf
	.byte	0x27
	.long	0xd1
	.long	0x2035
	.uleb128 0x1
	.long	0x1803
	.uleb128 0x1
	.long	0x1cda
	.uleb128 0x1
	.long	0x118
	.byte	0
	.uleb128 0x3
	.ascii "wcstoull\0"
	.byte	0x4
	.word	0x5c0
	.byte	0x30
	.long	0xb7
	.long	0x205b
	.uleb128 0x1
	.long	0x1803
	.uleb128 0x1
	.long	0x1cda
	.uleb128 0x1
	.long	0x118
	.byte	0
	.uleb128 0x46
	.byte	0x20
	.byte	0x10
	.byte	0x1a
	.word	0x1a8
	.byte	0x10
	.ascii "11max_align_t\0"
	.long	0x20a7
	.uleb128 0x2b
	.ascii "__max_align_ll\0"
	.word	0x1a9
	.byte	0xd
	.long	0xd1
	.byte	0x8
	.byte	0
	.uleb128 0x2b
	.ascii "__max_align_ld\0"
	.word	0x1aa
	.byte	0xf
	.long	0x2001
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x47
	.ascii "max_align_t\0"
	.byte	0x1a
	.word	0x1ab
	.byte	0x3
	.long	0x205b
	.byte	0x10
	.uleb128 0x7
	.byte	0x1
	.byte	0x2
	.ascii "bool\0"
	.uleb128 0x10
	.long	0x20bd
	.uleb128 0x7
	.byte	0x1
	.byte	0x6
	.ascii "signed char\0"
	.uleb128 0x7
	.byte	0x2
	.byte	0x10
	.ascii "char16_t\0"
	.uleb128 0x7
	.byte	0x4
	.byte	0x10
	.ascii "char32_t\0"
	.uleb128 0x48
	.byte	0x8
	.uleb128 0x6
	.long	0x84a
	.uleb128 0x6
	.long	0xc9b
	.uleb128 0x17
	.long	0xc9b
	.uleb128 0x49
	.ascii "decltype(nullptr)\0"
	.uleb128 0x4a
	.byte	0x8
	.long	0x84a
	.uleb128 0x17
	.long	0x84a
	.uleb128 0x6
	.long	0xd73
	.uleb128 0x17
	.long	0xdda
	.uleb128 0x17
	.long	0xded
	.uleb128 0x6
	.long	0xded
	.uleb128 0x6
	.long	0xdda
	.uleb128 0x17
	.long	0x105c
	.uleb128 0x11
	.ascii "fpos_t\0"
	.byte	0x1b
	.byte	0x73
	.byte	0x25
	.long	0xd1
	.uleb128 0x10
	.long	0x213e
	.uleb128 0x1b
	.ascii "setlocale\0"
	.byte	0x3
	.byte	0x5a
	.byte	0x11
	.long	0x152
	.long	0x2173
	.uleb128 0x1
	.long	0x118
	.uleb128 0x1
	.long	0x18b8
	.byte	0
	.uleb128 0x2c
	.ascii "localeconv\0"
	.byte	0x3
	.byte	0x5b
	.byte	0x21
	.long	0x41f
	.uleb128 0x1d
	.ascii "_div_t\0"
	.byte	0x8
	.byte	0x1c
	.byte	0x3c
	.byte	0x12
	.long	0x21b2
	.uleb128 0x4
	.ascii "quot\0"
	.byte	0x1c
	.byte	0x3d
	.byte	0x9
	.long	0x118
	.byte	0
	.uleb128 0x4
	.ascii "rem\0"
	.byte	0x1c
	.byte	0x3e
	.byte	0x9
	.long	0x118
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.ascii "div_t\0"
	.byte	0x1c
	.byte	0x3f
	.byte	0x5
	.long	0x2186
	.uleb128 0x1d
	.ascii "_ldiv_t\0"
	.byte	0x8
	.byte	0x1c
	.byte	0x41
	.byte	0x12
	.long	0x21ed
	.uleb128 0x4
	.ascii "quot\0"
	.byte	0x1c
	.byte	0x42
	.byte	0xa
	.long	0x11f
	.byte	0
	.uleb128 0x4
	.ascii "rem\0"
	.byte	0x1c
	.byte	0x43
	.byte	0xa
	.long	0x11f
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.ascii "ldiv_t\0"
	.byte	0x1c
	.byte	0x44
	.byte	0x5
	.long	0x21c0
	.uleb128 0x6
	.long	0x2201
	.uleb128 0x4b
	.uleb128 0x6
	.long	0x152
	.uleb128 0x4c
	.byte	0x10
	.byte	0x1c
	.word	0x2d4
	.byte	0x12
	.ascii "7lldiv_t\0"
	.long	0x2238
	.uleb128 0x12
	.ascii "quot\0"
	.byte	0x1c
	.word	0x2d4
	.byte	0x30
	.long	0xd1
	.byte	0
	.uleb128 0x12
	.ascii "rem\0"
	.byte	0x1c
	.word	0x2d4
	.byte	0x36
	.long	0xd1
	.byte	0x8
	.byte	0
	.uleb128 0x18
	.ascii "lldiv_t\0"
	.byte	0x1c
	.word	0x2d4
	.byte	0x3d
	.long	0x2207
	.uleb128 0x3
	.ascii "atexit\0"
	.byte	0x1c
	.word	0x1a9
	.byte	0xf
	.long	0x118
	.long	0x2263
	.uleb128 0x1
	.long	0x21fc
	.byte	0
	.uleb128 0x3
	.ascii "atof\0"
	.byte	0x1c
	.word	0x1af
	.byte	0x12
	.long	0x1cd0
	.long	0x227b
	.uleb128 0x1
	.long	0x18b8
	.byte	0
	.uleb128 0x3
	.ascii "atoi\0"
	.byte	0x1c
	.word	0x1b2
	.byte	0xf
	.long	0x118
	.long	0x2293
	.uleb128 0x1
	.long	0x18b8
	.byte	0
	.uleb128 0x3
	.ascii "atol\0"
	.byte	0x1c
	.word	0x1b4
	.byte	0x10
	.long	0x11f
	.long	0x22ab
	.uleb128 0x1
	.long	0x18b8
	.byte	0
	.uleb128 0x3
	.ascii "bsearch\0"
	.byte	0x1c
	.word	0x1b8
	.byte	0x11
	.long	0x20f1
	.long	0x22da
	.uleb128 0x1
	.long	0x22da
	.uleb128 0x1
	.long	0x22da
	.uleb128 0x1
	.long	0xa8
	.uleb128 0x1
	.long	0xa8
	.uleb128 0x1
	.long	0x22e0
	.byte	0
	.uleb128 0x6
	.long	0x22df
	.uleb128 0x4d
	.uleb128 0x6
	.long	0x22e5
	.uleb128 0x2d
	.long	0x118
	.long	0x22f9
	.uleb128 0x1
	.long	0x22da
	.uleb128 0x1
	.long	0x22da
	.byte	0
	.uleb128 0x3
	.ascii "div\0"
	.byte	0x1c
	.word	0x1be
	.byte	0x11
	.long	0x21b2
	.long	0x2315
	.uleb128 0x1
	.long	0x118
	.uleb128 0x1
	.long	0x118
	.byte	0
	.uleb128 0x3
	.ascii "getenv\0"
	.byte	0x1c
	.word	0x1bf
	.byte	0x11
	.long	0x152
	.long	0x232f
	.uleb128 0x1
	.long	0x18b8
	.byte	0
	.uleb128 0x3
	.ascii "ldiv\0"
	.byte	0x1c
	.word	0x1c9
	.byte	0x12
	.long	0x21ed
	.long	0x234c
	.uleb128 0x1
	.long	0x11f
	.uleb128 0x1
	.long	0x11f
	.byte	0
	.uleb128 0x3
	.ascii "mblen\0"
	.byte	0x1c
	.word	0x1cb
	.byte	0xf
	.long	0x118
	.long	0x236a
	.uleb128 0x1
	.long	0x18b8
	.uleb128 0x1
	.long	0xa8
	.byte	0
	.uleb128 0x3
	.ascii "mbstowcs\0"
	.byte	0x1c
	.word	0x1d3
	.byte	0x12
	.long	0xa8
	.long	0x2390
	.uleb128 0x1
	.long	0x157
	.uleb128 0x1
	.long	0x18b8
	.uleb128 0x1
	.long	0xa8
	.byte	0
	.uleb128 0x3
	.ascii "mbtowc\0"
	.byte	0x1c
	.word	0x1d1
	.byte	0xf
	.long	0x118
	.long	0x23b4
	.uleb128 0x1
	.long	0x157
	.uleb128 0x1
	.long	0x18b8
	.uleb128 0x1
	.long	0xa8
	.byte	0
	.uleb128 0x19
	.ascii "qsort\0"
	.byte	0x1c
	.word	0x1b9
	.long	0x23d7
	.uleb128 0x1
	.long	0x20f1
	.uleb128 0x1
	.long	0xa8
	.uleb128 0x1
	.long	0xa8
	.uleb128 0x1
	.long	0x22e0
	.byte	0
	.uleb128 0x1f
	.ascii "rand\0"
	.byte	0x1c
	.word	0x1d6
	.byte	0xf
	.long	0x118
	.uleb128 0x19
	.ascii "srand\0"
	.byte	0x1c
	.word	0x1d8
	.long	0x23f9
	.uleb128 0x1
	.long	0x16c
	.byte	0
	.uleb128 0x5
	.ascii "strtod\0"
	.byte	0x1c
	.word	0x1e4
	.byte	0x20
	.long	0x1cd0
	.long	0x2418
	.uleb128 0x1
	.long	0x18b8
	.uleb128 0x1
	.long	0x2202
	.byte	0
	.uleb128 0x3
	.ascii "strtol\0"
	.byte	0x1c
	.word	0x207
	.byte	0x10
	.long	0x11f
	.long	0x243c
	.uleb128 0x1
	.long	0x18b8
	.uleb128 0x1
	.long	0x2202
	.uleb128 0x1
	.long	0x118
	.byte	0
	.uleb128 0x3
	.ascii "strtoul\0"
	.byte	0x1c
	.word	0x209
	.byte	0x19
	.long	0x17c
	.long	0x2461
	.uleb128 0x1
	.long	0x18b8
	.uleb128 0x1
	.long	0x2202
	.uleb128 0x1
	.long	0x118
	.byte	0
	.uleb128 0x3
	.ascii "system\0"
	.byte	0x1c
	.word	0x20d
	.byte	0xf
	.long	0x118
	.long	0x247b
	.uleb128 0x1
	.long	0x18b8
	.byte	0
	.uleb128 0x3
	.ascii "wcstombs\0"
	.byte	0x1c
	.word	0x212
	.byte	0x12
	.long	0xa8
	.long	0x24a1
	.uleb128 0x1
	.long	0x152
	.uleb128 0x1
	.long	0x1803
	.uleb128 0x1
	.long	0xa8
	.byte	0
	.uleb128 0x3
	.ascii "wctomb\0"
	.byte	0x1c
	.word	0x210
	.byte	0xf
	.long	0x118
	.long	0x24c0
	.uleb128 0x1
	.long	0x152
	.uleb128 0x1
	.long	0x15c
	.byte	0
	.uleb128 0x3
	.ascii "lldiv\0"
	.byte	0x1c
	.word	0x2d6
	.byte	0x25
	.long	0x2238
	.long	0x24de
	.uleb128 0x1
	.long	0xd1
	.uleb128 0x1
	.long	0xd1
	.byte	0
	.uleb128 0x3
	.ascii "atoll\0"
	.byte	0x1c
	.word	0x2e1
	.byte	0x28
	.long	0xd1
	.long	0x24f7
	.uleb128 0x1
	.long	0x18b8
	.byte	0
	.uleb128 0x3
	.ascii "strtoll\0"
	.byte	0x1c
	.word	0x2dd
	.byte	0x28
	.long	0xd1
	.long	0x251c
	.uleb128 0x1
	.long	0x18b8
	.uleb128 0x1
	.long	0x2202
	.uleb128 0x1
	.long	0x118
	.byte	0
	.uleb128 0x3
	.ascii "strtoull\0"
	.byte	0x1c
	.word	0x2de
	.byte	0x31
	.long	0xb7
	.long	0x2542
	.uleb128 0x1
	.long	0x18b8
	.uleb128 0x1
	.long	0x2202
	.uleb128 0x1
	.long	0x118
	.byte	0
	.uleb128 0x5
	.ascii "strtof\0"
	.byte	0x1c
	.word	0x1eb
	.byte	0x1f
	.long	0x1cfe
	.long	0x2561
	.uleb128 0x1
	.long	0x18b8
	.uleb128 0x1
	.long	0x2202
	.byte	0
	.uleb128 0x3
	.ascii "strtold\0"
	.byte	0x1c
	.word	0x1f6
	.byte	0x27
	.long	0x2001
	.long	0x2581
	.uleb128 0x1
	.long	0x18b8
	.uleb128 0x1
	.long	0x2202
	.byte	0
	.uleb128 0x2
	.byte	0x1d
	.byte	0x27
	.byte	0xc
	.long	0x2249
	.uleb128 0x2
	.byte	0x1d
	.byte	0x36
	.byte	0xc
	.long	0x21b2
	.uleb128 0x2
	.byte	0x1d
	.byte	0x37
	.byte	0xc
	.long	0x21ed
	.uleb128 0x2
	.byte	0x1d
	.byte	0x39
	.byte	0xc
	.long	0x126e
	.uleb128 0x2
	.byte	0x1d
	.byte	0x39
	.byte	0xc
	.long	0x128d
	.uleb128 0x2
	.byte	0x1d
	.byte	0x39
	.byte	0xc
	.long	0x12ac
	.uleb128 0x2
	.byte	0x1d
	.byte	0x39
	.byte	0xc
	.long	0x12cb
	.uleb128 0x2
	.byte	0x1d
	.byte	0x39
	.byte	0xc
	.long	0x12ea
	.uleb128 0x2
	.byte	0x1d
	.byte	0x3a
	.byte	0xc
	.long	0x2263
	.uleb128 0x2
	.byte	0x1d
	.byte	0x3b
	.byte	0xc
	.long	0x227b
	.uleb128 0x2
	.byte	0x1d
	.byte	0x3c
	.byte	0xc
	.long	0x2293
	.uleb128 0x2
	.byte	0x1d
	.byte	0x3d
	.byte	0xc
	.long	0x22ab
	.uleb128 0x2
	.byte	0x1d
	.byte	0x3f
	.byte	0xc
	.long	0x1f7f
	.uleb128 0x2
	.byte	0x1d
	.byte	0x3f
	.byte	0xc
	.long	0x1309
	.uleb128 0x2
	.byte	0x1d
	.byte	0x3f
	.byte	0xc
	.long	0x22f9
	.uleb128 0x2
	.byte	0x1d
	.byte	0x41
	.byte	0xc
	.long	0x2315
	.uleb128 0x2
	.byte	0x1d
	.byte	0x43
	.byte	0xc
	.long	0x232f
	.uleb128 0x2
	.byte	0x1d
	.byte	0x46
	.byte	0xc
	.long	0x234c
	.uleb128 0x2
	.byte	0x1d
	.byte	0x47
	.byte	0xc
	.long	0x236a
	.uleb128 0x2
	.byte	0x1d
	.byte	0x48
	.byte	0xc
	.long	0x2390
	.uleb128 0x2
	.byte	0x1d
	.byte	0x4a
	.byte	0xc
	.long	0x23b4
	.uleb128 0x2
	.byte	0x1d
	.byte	0x4b
	.byte	0xc
	.long	0x23d7
	.uleb128 0x2
	.byte	0x1d
	.byte	0x4d
	.byte	0xc
	.long	0x23e5
	.uleb128 0x2
	.byte	0x1d
	.byte	0x4e
	.byte	0xc
	.long	0x23f9
	.uleb128 0x2
	.byte	0x1d
	.byte	0x4f
	.byte	0xc
	.long	0x2418
	.uleb128 0x2
	.byte	0x1d
	.byte	0x50
	.byte	0xc
	.long	0x243c
	.uleb128 0x2
	.byte	0x1d
	.byte	0x51
	.byte	0xc
	.long	0x2461
	.uleb128 0x2
	.byte	0x1d
	.byte	0x53
	.byte	0xc
	.long	0x247b
	.uleb128 0x2
	.byte	0x1d
	.byte	0x54
	.byte	0xc
	.long	0x24a1
	.uleb128 0x21
	.ascii "__gnu_debug\0"
	.byte	0xd
	.byte	0x38
	.byte	0xb
	.long	0x2686
	.uleb128 0x2e
	.byte	0xd
	.byte	0x3a
	.byte	0x18
	.long	0x132e
	.byte	0
	.uleb128 0x19
	.ascii "clearerr\0"
	.byte	0x1b
	.word	0x262
	.long	0x269d
	.uleb128 0x1
	.long	0x179c
	.byte	0
	.uleb128 0x3
	.ascii "fclose\0"
	.byte	0x1b
	.word	0x263
	.byte	0xf
	.long	0x118
	.long	0x26b7
	.uleb128 0x1
	.long	0x179c
	.byte	0
	.uleb128 0x3
	.ascii "feof\0"
	.byte	0x1b
	.word	0x26a
	.byte	0xf
	.long	0x118
	.long	0x26cf
	.uleb128 0x1
	.long	0x179c
	.byte	0
	.uleb128 0x3
	.ascii "ferror\0"
	.byte	0x1b
	.word	0x26b
	.byte	0xf
	.long	0x118
	.long	0x26e9
	.uleb128 0x1
	.long	0x179c
	.byte	0
	.uleb128 0x3
	.ascii "fflush\0"
	.byte	0x1b
	.word	0x26c
	.byte	0xf
	.long	0x118
	.long	0x2703
	.uleb128 0x1
	.long	0x179c
	.byte	0
	.uleb128 0x3
	.ascii "fgetc\0"
	.byte	0x1b
	.word	0x26d
	.byte	0xf
	.long	0x118
	.long	0x271c
	.uleb128 0x1
	.long	0x179c
	.byte	0
	.uleb128 0x3
	.ascii "fgetpos\0"
	.byte	0x1b
	.word	0x26f
	.byte	0xf
	.long	0x118
	.long	0x273c
	.uleb128 0x1
	.long	0x179c
	.uleb128 0x1
	.long	0x273c
	.byte	0
	.uleb128 0x6
	.long	0x213e
	.uleb128 0x3
	.ascii "fgets\0"
	.byte	0x1b
	.word	0x271
	.byte	0x11
	.long	0x152
	.long	0x2764
	.uleb128 0x1
	.long	0x152
	.uleb128 0x1
	.long	0x118
	.uleb128 0x1
	.long	0x179c
	.byte	0
	.uleb128 0x3
	.ascii "fopen\0"
	.byte	0x1b
	.word	0x278
	.byte	0x11
	.long	0x179c
	.long	0x2782
	.uleb128 0x1
	.long	0x18b8
	.uleb128 0x1
	.long	0x18b8
	.byte	0
	.uleb128 0x5
	.ascii "fprintf\0"
	.byte	0x1b
	.word	0x165
	.byte	0x5
	.long	0x118
	.long	0x27a3
	.uleb128 0x1
	.long	0x179c
	.uleb128 0x1
	.long	0x18b8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.ascii "fread\0"
	.byte	0x1b
	.word	0x27d
	.byte	0x12
	.long	0xa8
	.long	0x27cb
	.uleb128 0x1
	.long	0x20f1
	.uleb128 0x1
	.long	0xa8
	.uleb128 0x1
	.long	0xa8
	.uleb128 0x1
	.long	0x179c
	.byte	0
	.uleb128 0x3
	.ascii "freopen\0"
	.byte	0x1b
	.word	0x27e
	.byte	0x11
	.long	0x179c
	.long	0x27f0
	.uleb128 0x1
	.long	0x18b8
	.uleb128 0x1
	.long	0x18b8
	.uleb128 0x1
	.long	0x179c
	.byte	0
	.uleb128 0x5
	.ascii "fscanf\0"
	.byte	0x1b
	.word	0x138
	.byte	0x5
	.long	0x118
	.long	0x2810
	.uleb128 0x1
	.long	0x179c
	.uleb128 0x1
	.long	0x18b8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.ascii "fseek\0"
	.byte	0x1b
	.word	0x281
	.byte	0xf
	.long	0x118
	.long	0x2833
	.uleb128 0x1
	.long	0x179c
	.uleb128 0x1
	.long	0x11f
	.uleb128 0x1
	.long	0x118
	.byte	0
	.uleb128 0x3
	.ascii "fsetpos\0"
	.byte	0x1b
	.word	0x27f
	.byte	0xf
	.long	0x118
	.long	0x2853
	.uleb128 0x1
	.long	0x179c
	.uleb128 0x1
	.long	0x2853
	.byte	0
	.uleb128 0x6
	.long	0x214d
	.uleb128 0x3
	.ascii "ftell\0"
	.byte	0x1b
	.word	0x282
	.byte	0x10
	.long	0x11f
	.long	0x2871
	.uleb128 0x1
	.long	0x179c
	.byte	0
	.uleb128 0x3
	.ascii "getc\0"
	.byte	0x1b
	.word	0x2ac
	.byte	0xf
	.long	0x118
	.long	0x2889
	.uleb128 0x1
	.long	0x179c
	.byte	0
	.uleb128 0x1f
	.ascii "getchar\0"
	.byte	0x1b
	.word	0x2ad
	.byte	0xf
	.long	0x118
	.uleb128 0x19
	.ascii "perror\0"
	.byte	0x1b
	.word	0x2b3
	.long	0x28af
	.uleb128 0x1
	.long	0x18b8
	.byte	0
	.uleb128 0x5
	.ascii "printf\0"
	.byte	0x1b
	.word	0x170
	.byte	0x5
	.long	0x118
	.long	0x28ca
	.uleb128 0x1
	.long	0x18b8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.ascii "remove\0"
	.byte	0x1b
	.word	0x2c3
	.byte	0xf
	.long	0x118
	.long	0x28e4
	.uleb128 0x1
	.long	0x18b8
	.byte	0
	.uleb128 0x3
	.ascii "rename\0"
	.byte	0x1b
	.word	0x2c4
	.byte	0xf
	.long	0x118
	.long	0x2903
	.uleb128 0x1
	.long	0x18b8
	.uleb128 0x1
	.long	0x18b8
	.byte	0
	.uleb128 0x19
	.ascii "rewind\0"
	.byte	0x1b
	.word	0x2ca
	.long	0x2918
	.uleb128 0x1
	.long	0x179c
	.byte	0
	.uleb128 0x5
	.ascii "scanf\0"
	.byte	0x1b
	.word	0x12d
	.byte	0x5
	.long	0x118
	.long	0x2932
	.uleb128 0x1
	.long	0x18b8
	.uleb128 0xd
	.byte	0
	.uleb128 0x19
	.ascii "setbuf\0"
	.byte	0x1b
	.word	0x2cc
	.long	0x294c
	.uleb128 0x1
	.long	0x179c
	.uleb128 0x1
	.long	0x152
	.byte	0
	.uleb128 0x3
	.ascii "setvbuf\0"
	.byte	0x1b
	.word	0x2d0
	.byte	0xf
	.long	0x118
	.long	0x2976
	.uleb128 0x1
	.long	0x179c
	.uleb128 0x1
	.long	0x152
	.uleb128 0x1
	.long	0x118
	.uleb128 0x1
	.long	0xa8
	.byte	0
	.uleb128 0x5
	.ascii "sprintf\0"
	.byte	0x1b
	.word	0x18c
	.byte	0x5
	.long	0x118
	.long	0x2997
	.uleb128 0x1
	.long	0x152
	.uleb128 0x1
	.long	0x18b8
	.uleb128 0xd
	.byte	0
	.uleb128 0x5
	.ascii "sscanf\0"
	.byte	0x1b
	.word	0x122
	.byte	0x5
	.long	0x118
	.long	0x29b7
	.uleb128 0x1
	.long	0x18b8
	.uleb128 0x1
	.long	0x18b8
	.uleb128 0xd
	.byte	0
	.uleb128 0x1f
	.ascii "tmpfile\0"
	.byte	0x1b
	.word	0x2f3
	.byte	0x11
	.long	0x179c
	.uleb128 0x3
	.ascii "tmpnam\0"
	.byte	0x1b
	.word	0x2f4
	.byte	0x11
	.long	0x152
	.long	0x29e2
	.uleb128 0x1
	.long	0x152
	.byte	0
	.uleb128 0x3
	.ascii "ungetc\0"
	.byte	0x1b
	.word	0x2f5
	.byte	0xf
	.long	0x118
	.long	0x2a01
	.uleb128 0x1
	.long	0x118
	.uleb128 0x1
	.long	0x179c
	.byte	0
	.uleb128 0x5
	.ascii "vfprintf\0"
	.byte	0x1b
	.word	0x199
	.byte	0x5
	.long	0x118
	.long	0x2a27
	.uleb128 0x1
	.long	0x179c
	.uleb128 0x1
	.long	0x18b8
	.uleb128 0x1
	.long	0x83
	.byte	0
	.uleb128 0x5
	.ascii "vprintf\0"
	.byte	0x1b
	.word	0x1a0
	.byte	0x5
	.long	0x118
	.long	0x2a47
	.uleb128 0x1
	.long	0x18b8
	.uleb128 0x1
	.long	0x83
	.byte	0
	.uleb128 0x5
	.ascii "vsprintf\0"
	.byte	0x1b
	.word	0x1a7
	.byte	0x5
	.long	0x118
	.long	0x2a6d
	.uleb128 0x1
	.long	0x152
	.uleb128 0x1
	.long	0x18b8
	.uleb128 0x1
	.long	0x83
	.byte	0
	.uleb128 0x5
	.ascii "snprintf\0"
	.byte	0x1b
	.word	0x1c3
	.byte	0x5
	.long	0x118
	.long	0x2a94
	.uleb128 0x1
	.long	0x152
	.uleb128 0x1
	.long	0xa8
	.uleb128 0x1
	.long	0x18b8
	.uleb128 0xd
	.byte	0
	.uleb128 0x5
	.ascii "vfscanf\0"
	.byte	0x1b
	.word	0x157
	.byte	0x5
	.long	0x118
	.long	0x2ab9
	.uleb128 0x1
	.long	0x179c
	.uleb128 0x1
	.long	0x18b8
	.uleb128 0x1
	.long	0x83
	.byte	0
	.uleb128 0x5
	.ascii "vscanf\0"
	.byte	0x1b
	.word	0x150
	.byte	0x5
	.long	0x118
	.long	0x2ad8
	.uleb128 0x1
	.long	0x18b8
	.uleb128 0x1
	.long	0x83
	.byte	0
	.uleb128 0x5
	.ascii "vsnprintf\0"
	.byte	0x1b
	.word	0x1d0
	.byte	0x5
	.long	0x118
	.long	0x2b04
	.uleb128 0x1
	.long	0x152
	.uleb128 0x1
	.long	0xa8
	.uleb128 0x1
	.long	0x18b8
	.uleb128 0x1
	.long	0x83
	.byte	0
	.uleb128 0x5
	.ascii "vsscanf\0"
	.byte	0x1b
	.word	0x149
	.byte	0x5
	.long	0x118
	.long	0x2b29
	.uleb128 0x1
	.long	0x18b8
	.uleb128 0x1
	.long	0x18b8
	.uleb128 0x1
	.long	0x83
	.byte	0
	.uleb128 0x11
	.ascii "wctrans_t\0"
	.byte	0x1e
	.byte	0xb0
	.byte	0x13
	.long	0x15c
	.uleb128 0x3
	.ascii "iswctype\0"
	.byte	0x4
	.word	0x110
	.byte	0xf
	.long	0x118
	.long	0x2b5c
	.uleb128 0x1
	.long	0xe2
	.uleb128 0x1
	.long	0x107
	.byte	0
	.uleb128 0x1b
	.ascii "towctrans\0"
	.byte	0x1e
	.byte	0xb1
	.byte	0x12
	.long	0xe2
	.long	0x2b7d
	.uleb128 0x1
	.long	0xe2
	.uleb128 0x1
	.long	0x2b29
	.byte	0
	.uleb128 0x1b
	.ascii "wctrans\0"
	.byte	0x1e
	.byte	0xb2
	.byte	0x15
	.long	0x2b29
	.long	0x2b97
	.uleb128 0x1
	.long	0x18b8
	.byte	0
	.uleb128 0x1b
	.ascii "wctype\0"
	.byte	0x1e
	.byte	0xb3
	.byte	0x14
	.long	0x107
	.long	0x2bb0
	.uleb128 0x1
	.long	0x18b8
	.byte	0
	.uleb128 0x17
	.long	0x14df
	.uleb128 0x11
	.ascii "clock_t\0"
	.byte	0x1f
	.byte	0x3f
	.byte	0x10
	.long	0x11f
	.uleb128 0x2c
	.ascii "clock\0"
	.byte	0x1f
	.byte	0x8f
	.byte	0x13
	.long	0x2bb5
	.uleb128 0x1c
	.ascii "difftime\0"
	.byte	0xfa
	.byte	0x22
	.long	0x1cd0
	.long	0x2bf2
	.uleb128 0x1
	.long	0x13e
	.uleb128 0x1
	.long	0x13e
	.byte	0
	.uleb128 0x5
	.ascii "mktime\0"
	.byte	0x1f
	.word	0x101
	.byte	0x22
	.long	0x13e
	.long	0x2c0c
	.uleb128 0x1
	.long	0x2c0c
	.byte	0
	.uleb128 0x6
	.long	0x4df
	.uleb128 0x1c
	.ascii "time\0"
	.byte	0xf6
	.byte	0x22
	.long	0x13e
	.long	0x2c27
	.uleb128 0x1
	.long	0x2c27
	.byte	0
	.uleb128 0x6
	.long	0x13e
	.uleb128 0x1b
	.ascii "asctime\0"
	.byte	0x1f
	.byte	0x8b
	.byte	0x11
	.long	0x152
	.long	0x2c46
	.uleb128 0x1
	.long	0x1bd3
	.byte	0
	.uleb128 0x1c
	.ascii "ctime\0"
	.byte	0xff
	.byte	0x21
	.long	0x152
	.long	0x2c5d
	.uleb128 0x1
	.long	0x2c5d
	.byte	0
	.uleb128 0x6
	.long	0x14d
	.uleb128 0x1c
	.ascii "gmtime\0"
	.byte	0xfd
	.byte	0x26
	.long	0x2c0c
	.long	0x2c7a
	.uleb128 0x1
	.long	0x2c5d
	.byte	0
	.uleb128 0x1c
	.ascii "localtime\0"
	.byte	0xfb
	.byte	0x26
	.long	0x2c0c
	.long	0x2c95
	.uleb128 0x1
	.long	0x2c5d
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.byte	0xc
	.byte	0x11
	.long	0x5aa
	.uleb128 0x6
	.long	0x14df
	.uleb128 0x10
	.long	0x2c9d
	.uleb128 0x24
	.long	0x164e
	.uleb128 0x24
	.long	0x1657
	.uleb128 0x24
	.long	0x1660
	.uleb128 0x13
	.ascii "mul_asm<double>\0"
	.byte	0x4f
	.ascii "_Z7mul_asmIdEvT_S0_\0"
	.quad	.LFB2324
	.quad	.LFE2324-.LFB2324
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d6a
	.uleb128 0x15
	.ascii "T\0"
	.long	0x1cd0
	.uleb128 0xa
	.ascii "a\0"
	.byte	0x4f
	.byte	0x10
	.long	0x1cd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xa
	.ascii "b\0"
	.byte	0x4f
	.byte	0x15
	.long	0x1cd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xb
	.secrel32	.LASF10
	.byte	0x51
	.byte	0xd
	.long	0x2bb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.ascii "c\0"
	.byte	0x52
	.byte	0x7
	.long	0x1cd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x8
	.ascii "i\0"
	.byte	0x53
	.byte	0xe
	.long	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xc
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0xb
	.secrel32	.LASF11
	.byte	0x55
	.byte	0x11
	.long	0x2bb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.ascii "mul_cpp<double>\0"
	.byte	0x2b
	.ascii "_Z7mul_cppIdEvT_S0_\0"
	.quad	.LFB2323
	.quad	.LFE2323-.LFB2323
	.uleb128 0x1
	.byte	0x9c
	.long	0x2e1e
	.uleb128 0x15
	.ascii "T\0"
	.long	0x1cd0
	.uleb128 0xa
	.ascii "a\0"
	.byte	0x2b
	.byte	0x10
	.long	0x1cd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xa
	.ascii "b\0"
	.byte	0x2b
	.byte	0x15
	.long	0x1cd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xb
	.secrel32	.LASF10
	.byte	0x2d
	.byte	0xa
	.long	0x2bb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.ascii "c\0"
	.byte	0x2e
	.byte	0x4
	.long	0x1cd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x8
	.ascii "i\0"
	.byte	0x2f
	.byte	0xb
	.long	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xc
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0xb
	.secrel32	.LASF11
	.byte	0x31
	.byte	0xb
	.long	0x2bb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.ascii "sum_asm<double>\0"
	.byte	0x3b
	.ascii "_Z7sum_asmIdEvT_S0_\0"
	.quad	.LFB2322
	.quad	.LFE2322-.LFB2322
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ed2
	.uleb128 0x15
	.ascii "T\0"
	.long	0x1cd0
	.uleb128 0xa
	.ascii "a\0"
	.byte	0x3b
	.byte	0x10
	.long	0x1cd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xa
	.ascii "b\0"
	.byte	0x3b
	.byte	0x15
	.long	0x1cd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xb
	.secrel32	.LASF10
	.byte	0x3d
	.byte	0xd
	.long	0x2bb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.ascii "c\0"
	.byte	0x3e
	.byte	0x7
	.long	0x1cd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x8
	.ascii "i\0"
	.byte	0x3f
	.byte	0xe
	.long	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xc
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0xb
	.secrel32	.LASF11
	.byte	0x41
	.byte	0x11
	.long	0x2bb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.ascii "sum_cpp<double>\0"
	.byte	0x1b
	.ascii "_Z7sum_cppIdEvT_S0_\0"
	.quad	.LFB2321
	.quad	.LFE2321-.LFB2321
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f86
	.uleb128 0x15
	.ascii "T\0"
	.long	0x1cd0
	.uleb128 0xa
	.ascii "a\0"
	.byte	0x1b
	.byte	0x10
	.long	0x1cd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xa
	.ascii "b\0"
	.byte	0x1b
	.byte	0x15
	.long	0x1cd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xb
	.secrel32	.LASF10
	.byte	0x1d
	.byte	0xa
	.long	0x2bb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.ascii "c\0"
	.byte	0x1e
	.byte	0x4
	.long	0x1cd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x8
	.ascii "i\0"
	.byte	0x1f
	.byte	0xb
	.long	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xc
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0xb
	.secrel32	.LASF11
	.byte	0x21
	.byte	0xb
	.long	0x2bb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.ascii "mul_asm<float>\0"
	.byte	0x4f
	.ascii "_Z7mul_asmIfEvT_S0_\0"
	.quad	.LFB2320
	.quad	.LFE2320-.LFB2320
	.uleb128 0x1
	.byte	0x9c
	.long	0x3039
	.uleb128 0x15
	.ascii "T\0"
	.long	0x1cfe
	.uleb128 0xa
	.ascii "a\0"
	.byte	0x4f
	.byte	0x10
	.long	0x1cfe
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xa
	.ascii "b\0"
	.byte	0x4f
	.byte	0x15
	.long	0x1cfe
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xb
	.secrel32	.LASF10
	.byte	0x51
	.byte	0xd
	.long	0x2bb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.ascii "c\0"
	.byte	0x52
	.byte	0x7
	.long	0x1cfe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xc
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x8
	.ascii "i\0"
	.byte	0x53
	.byte	0xe
	.long	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xc
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0xb
	.secrel32	.LASF11
	.byte	0x55
	.byte	0x11
	.long	0x2bb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.ascii "mul_cpp<float>\0"
	.byte	0x2b
	.ascii "_Z7mul_cppIfEvT_S0_\0"
	.quad	.LFB2319
	.quad	.LFE2319-.LFB2319
	.uleb128 0x1
	.byte	0x9c
	.long	0x30ec
	.uleb128 0x15
	.ascii "T\0"
	.long	0x1cfe
	.uleb128 0xa
	.ascii "a\0"
	.byte	0x2b
	.byte	0x10
	.long	0x1cfe
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xa
	.ascii "b\0"
	.byte	0x2b
	.byte	0x15
	.long	0x1cfe
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xb
	.secrel32	.LASF10
	.byte	0x2d
	.byte	0xa
	.long	0x2bb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.ascii "c\0"
	.byte	0x2e
	.byte	0x4
	.long	0x1cfe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xc
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x8
	.ascii "i\0"
	.byte	0x2f
	.byte	0xb
	.long	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xc
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0xb
	.secrel32	.LASF11
	.byte	0x31
	.byte	0xb
	.long	0x2bb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.ascii "sum_asm<float>\0"
	.byte	0x3b
	.ascii "_Z7sum_asmIfEvT_S0_\0"
	.quad	.LFB2318
	.quad	.LFE2318-.LFB2318
	.uleb128 0x1
	.byte	0x9c
	.long	0x319f
	.uleb128 0x15
	.ascii "T\0"
	.long	0x1cfe
	.uleb128 0xa
	.ascii "a\0"
	.byte	0x3b
	.byte	0x10
	.long	0x1cfe
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xa
	.ascii "b\0"
	.byte	0x3b
	.byte	0x15
	.long	0x1cfe
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xb
	.secrel32	.LASF10
	.byte	0x3d
	.byte	0xd
	.long	0x2bb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.ascii "c\0"
	.byte	0x3e
	.byte	0x7
	.long	0x1cfe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xc
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x8
	.ascii "i\0"
	.byte	0x3f
	.byte	0xe
	.long	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xc
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0xb
	.secrel32	.LASF11
	.byte	0x41
	.byte	0x11
	.long	0x2bb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.ascii "sum_cpp<float>\0"
	.byte	0x1b
	.ascii "_Z7sum_cppIfEvT_S0_\0"
	.quad	.LFB2317
	.quad	.LFE2317-.LFB2317
	.uleb128 0x1
	.byte	0x9c
	.long	0x3252
	.uleb128 0x15
	.ascii "T\0"
	.long	0x1cfe
	.uleb128 0xa
	.ascii "a\0"
	.byte	0x1b
	.byte	0x10
	.long	0x1cfe
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xa
	.ascii "b\0"
	.byte	0x1b
	.byte	0x15
	.long	0x1cfe
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xb
	.secrel32	.LASF10
	.byte	0x1d
	.byte	0xa
	.long	0x2bb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.ascii "c\0"
	.byte	0x1e
	.byte	0x4
	.long	0x1cfe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xc
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x8
	.ascii "i\0"
	.byte	0x1f
	.byte	0xb
	.long	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xc
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0xb
	.secrel32	.LASF11
	.byte	0x21
	.byte	0xb
	.long	0x2bb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	0x153a
	.uleb128 0x6
	.long	0x325c
	.uleb128 0x2d
	.long	0x3252
	.long	0x326b
	.uleb128 0x1
	.long	0x3252
	.byte	0
	.uleb128 0x2f
	.long	0x1552
	.long	0x3278
	.long	0x328f
	.uleb128 0x30
	.ascii "this\0"
	.long	0x2ca2
	.uleb128 0x31
	.ascii "__pf\0"
	.byte	0x6e
	.byte	0x24
	.long	0x3257
	.byte	0
	.uleb128 0x32
	.long	0x166a
	.long	0x32b8
	.uleb128 0x14
	.secrel32	.LASF5
	.long	0x9b
	.uleb128 0x14
	.secrel32	.LASF7
	.long	0xd80
	.uleb128 0x25
	.ascii "__os\0"
	.word	0x2df
	.byte	0x2a
	.long	0x2bb0
	.byte	0
	.uleb128 0x2f
	.long	0x1582
	.long	0x32c5
	.long	0x32db
	.uleb128 0x30
	.ascii "this\0"
	.long	0x2ca2
	.uleb128 0x31
	.ascii "__n\0"
	.byte	0xa8
	.byte	0x17
	.long	0x11f
	.byte	0
	.uleb128 0x32
	.long	0x16ee
	.long	0x3308
	.uleb128 0x14
	.secrel32	.LASF7
	.long	0xd80
	.uleb128 0x25
	.ascii "__out\0"
	.word	0x296
	.byte	0x2e
	.long	0x2bb0
	.uleb128 0x25
	.ascii "__s\0"
	.word	0x296
	.byte	0x41
	.long	0x18b8
	.byte	0
	.uleb128 0x4e
	.ascii "main\0"
	.byte	0x1
	.byte	0x62
	.byte	0x5
	.long	0x118
	.quad	.LFB2057
	.quad	.LFE2057-.LFB2057
	.uleb128 0x1
	.byte	0x9c
	.long	0x3360
	.uleb128 0x8
	.ascii "fa\0"
	.byte	0x65
	.byte	0x8
	.long	0x1cfe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.ascii "fb\0"
	.byte	0x66
	.byte	0x8
	.long	0x1cfe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.ascii "da\0"
	.byte	0x6d
	.byte	0x9
	.long	0x1cd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x8
	.ascii "db\0"
	.byte	0x6e
	.byte	0x9
	.long	0x1cd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x13
	.ascii "print_time\0"
	.byte	0xf
	.ascii "_Z10print_timelPKc\0"
	.quad	.LFB2052
	.quad	.LFE2052-.LFB2052
	.uleb128 0x1
	.byte	0x9c
	.long	0x33b9
	.uleb128 0xa
	.ascii "time\0"
	.byte	0xf
	.byte	0x19
	.long	0x2bb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xa
	.ascii "help_str\0"
	.byte	0xf
	.byte	0x2b
	.long	0x18b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x7
	.byte	0x10
	.byte	0x5
	.ascii "__int128\0"
	.uleb128 0x7
	.byte	0x10
	.byte	0x7
	.ascii "__int128 unsigned\0"
	.byte	0
	.section	.debug_abbrev,"dr"
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x8
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x8
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2f
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2f
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x10
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 16
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x32
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 31
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 7
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x32
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 24
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x39
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x39
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 23
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 48
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 20
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1c
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x6c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 20
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x39
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 11
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x39
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 7
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 12
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 7
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x32
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 26
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x88
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x3a
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 20
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x2
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x63
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x63
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x2
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0x39
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x89
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0x39
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x89
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0x2
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x42
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x32
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x43
	.uleb128 0x2f
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1e
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x44
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x45
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x46
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x88
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x47
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x88
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x48
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x49
	.uleb128 0x3b
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x4a
	.uleb128 0x42
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4b
	.uleb128 0x15
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4c
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4d
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"dr"
	.long	0xac
	.word	0x2
	.secrel32	.Ldebug_info0
	.byte	0x8
	.byte	0
	.word	0
	.word	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	.LFB2317
	.quad	.LFE2317-.LFB2317
	.quad	.LFB2318
	.quad	.LFE2318-.LFB2318
	.quad	.LFB2319
	.quad	.LFE2319-.LFB2319
	.quad	.LFB2320
	.quad	.LFE2320-.LFB2320
	.quad	.LFB2321
	.quad	.LFE2321-.LFB2321
	.quad	.LFB2322
	.quad	.LFE2322-.LFB2322
	.quad	.LFB2323
	.quad	.LFE2323-.LFB2323
	.quad	.LFB2324
	.quad	.LFE2324-.LFB2324
	.quad	0
	.quad	0
	.section	.debug_rnglists,"dr"
.Ldebug_ranges0:
	.long	.Ldebug_ranges3-.Ldebug_ranges2
.Ldebug_ranges2:
	.word	0x5
	.byte	0x8
	.byte	0
	.long	0
.LLRL0:
	.byte	0x7
	.quad	.Ltext0
	.uleb128 .Letext0-.Ltext0
	.byte	0x7
	.quad	.LFB2317
	.uleb128 .LFE2317-.LFB2317
	.byte	0x7
	.quad	.LFB2318
	.uleb128 .LFE2318-.LFB2318
	.byte	0x7
	.quad	.LFB2319
	.uleb128 .LFE2319-.LFB2319
	.byte	0x7
	.quad	.LFB2320
	.uleb128 .LFE2320-.LFB2320
	.byte	0x7
	.quad	.LFB2321
	.uleb128 .LFE2321-.LFB2321
	.byte	0x7
	.quad	.LFB2322
	.uleb128 .LFE2322-.LFB2322
	.byte	0x7
	.quad	.LFB2323
	.uleb128 .LFE2323-.LFB2323
	.byte	0x7
	.quad	.LFB2324
	.uleb128 .LFE2324-.LFB2324
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"dr"
.Ldebug_line0:
	.section	.debug_str,"dr"
.LASF5:
	.ascii "_CharT\0"
.LASF9:
	.ascii "vswprintf\0"
.LASF10:
	.ascii "time_res\0"
.LASF3:
	.ascii "operator=\0"
.LASF11:
	.ascii "time_was\0"
.LASF8:
	.ascii "swprintf\0"
.LASF2:
	.ascii "exception_ptr\0"
.LASF6:
	.ascii "__integer_to_chars_is_unsigned\0"
.LASF7:
	.ascii "_Traits\0"
.LASF4:
	.ascii "operator<<\0"
	.section	.debug_line_str,"dr"
.LASF1:
	.ascii "C:\\assembly\\lab8_vsc\0"
.LASF0:
	.ascii "main1.cpp\0"
	.ident	"GCC: (GNU) 13.2.0"
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEl;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEi;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEPFRSoS_E;	.scl	2;	.type	32;	.endef
	.def	clock;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, "dr"
	.globl	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	.linkonce	discard
.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_:
	.quad	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout
