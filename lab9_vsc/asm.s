	.file	"main.cpp"
	.intel_syntax noprefix
 # GNU C++17 (GCC) version 13.2.0 (x86_64-w64-mingw32)
 #	compiled by GNU C version 13.2.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version none
 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed: -masm=intel -mtune=generic -march=x86-64 -g -O0 -std=c++17
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "C:/assembly/lab9_vsc" "main.cpp"
	.section	.text$_Z5scanfPKcz,"x"
	.linkonce discard
	.globl	_Z5scanfPKcz
	.def	_Z5scanfPKcz;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z5scanfPKcz
_Z5scanfPKcz:
.LFB2:
	.file 1 "C:/msys64/mingw64/x86_64-w64-mingw32/include/stdio.h"
	.loc 1 302 1
	.cfi_startproc
	push	rbp	 #
	.seh_pushreg	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	rbx	 #
	.seh_pushreg	rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	sub	rsp, 56	 #,
	.seh_stackalloc	56
	.cfi_def_cfa_offset 80
	lea	rbp, 48[rsp]	 #,
	.seh_setframe	rbp, 48
	.cfi_def_cfa 6, 32
	.seh_endprologue
	mov	QWORD PTR 32[rbp], rcx	 # __format, __format
	mov	QWORD PTR 40[rbp], rdx	 #,
	mov	QWORD PTR 48[rbp], r8	 #,
	mov	QWORD PTR 56[rbp], r9	 #,
 # C:/msys64/mingw64/x86_64-w64-mingw32/include/stdio.h:304:   __builtin_va_list __local_argv; __builtin_va_start( __local_argv, __format );
	.loc 1 304 53
	lea	rax, 40[rbp]	 # tmp87,
	mov	QWORD PTR -16[rbp], rax	 # MEM[(char * *)&__local_argv], tmp87
 # C:/msys64/mingw64/x86_64-w64-mingw32/include/stdio.h:305:   __retval = __mingw_vfscanf( stdin, __format, __local_argv );
	.loc 1 305 29
	mov	rbx, QWORD PTR -16[rbp]	 # __local_argv.4_1, __local_argv
	mov	ecx, 0	 #,
	mov	rax, QWORD PTR __imp___acrt_iob_func[rip]	 # tmp88,
	call	rax	 # tmp88
.LVL0:
	mov	rcx, rax	 # _2,
 # C:/msys64/mingw64/x86_64-w64-mingw32/include/stdio.h:305:   __retval = __mingw_vfscanf( stdin, __format, __local_argv );
	.loc 1 305 29 is_stmt 0 discriminator 1
	mov	rax, QWORD PTR 32[rbp]	 # tmp89, __format
	mov	r8, rbx	 #, __local_argv.4_1
	mov	rdx, rax	 #, tmp89
	call	__mingw_vfscanf	 #
 # C:/msys64/mingw64/x86_64-w64-mingw32/include/stdio.h:305:   __retval = __mingw_vfscanf( stdin, __format, __local_argv );
	.loc 1 305 29 discriminator 2
	mov	DWORD PTR -4[rbp], eax	 # __retval, _10
 # C:/msys64/mingw64/x86_64-w64-mingw32/include/stdio.h:307:   return __retval;
	.loc 1 307 10 is_stmt 1
	mov	eax, DWORD PTR -4[rbp]	 # _13, __retval
 # C:/msys64/mingw64/x86_64-w64-mingw32/include/stdio.h:308: }
	.loc 1 308 1
	add	rsp, 56	 #,
	pop	rbx	 #
	.cfi_restore 3
	pop	rbp	 #
	.cfi_restore 6
	.cfi_def_cfa 7, -40
	ret	
	.cfi_endproc
.LFE2:
	.seh_endproc
	.section	.text$_Z6printfPKcz,"x"
	.linkonce discard
	.globl	_Z6printfPKcz
	.def	_Z6printfPKcz;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z6printfPKcz
_Z6printfPKcz:
.LFB8:
	.loc 1 369 1
	.cfi_startproc
	push	rbp	 #
	.seh_pushreg	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	rbx	 #
	.seh_pushreg	rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	sub	rsp, 56	 #,
	.seh_stackalloc	56
	.cfi_def_cfa_offset 80
	lea	rbp, 48[rsp]	 #,
	.seh_setframe	rbp, 48
	.cfi_def_cfa 6, 32
	.seh_endprologue
	mov	QWORD PTR 32[rbp], rcx	 # __format, __format
	mov	QWORD PTR 40[rbp], rdx	 #,
	mov	QWORD PTR 48[rbp], r8	 #,
	mov	QWORD PTR 56[rbp], r9	 #,
 # C:/msys64/mingw64/x86_64-w64-mingw32/include/stdio.h:371:   __builtin_va_list __local_argv; __builtin_va_start( __local_argv, __format );
	.loc 1 371 53
	lea	rax, 40[rbp]	 # tmp86,
	mov	QWORD PTR -16[rbp], rax	 # MEM[(char * *)&__local_argv], tmp86
 # C:/msys64/mingw64/x86_64-w64-mingw32/include/stdio.h:372:   __retval = __mingw_vfprintf( stdout, __format, __local_argv );
	.loc 1 372 30
	mov	rbx, QWORD PTR -16[rbp]	 # __local_argv.2_1, __local_argv
	mov	ecx, 1	 #,
	mov	rax, QWORD PTR __imp___acrt_iob_func[rip]	 # tmp87,
	call	rax	 # tmp87
.LVL1:
	mov	rcx, rax	 # _2,
 # C:/msys64/mingw64/x86_64-w64-mingw32/include/stdio.h:372:   __retval = __mingw_vfprintf( stdout, __format, __local_argv );
	.loc 1 372 30 is_stmt 0 discriminator 1
	mov	rax, QWORD PTR 32[rbp]	 # tmp88, __format
	mov	r8, rbx	 #, __local_argv.2_1
	mov	rdx, rax	 #, tmp88
	call	__mingw_vfprintf	 #
	mov	DWORD PTR -4[rbp], eax	 # __retval, tmp89
 # C:/msys64/mingw64/x86_64-w64-mingw32/include/stdio.h:374:   return __retval;
	.loc 1 374 10 is_stmt 1
	mov	eax, DWORD PTR -4[rbp]	 # _11, __retval
 # C:/msys64/mingw64/x86_64-w64-mingw32/include/stdio.h:375: }
	.loc 1 375 1
	add	rsp, 56	 #,
	pop	rbx	 #
	.cfi_restore 3
	pop	rbp	 #
	.cfi_restore 6
	.cfi_def_cfa 7, -40
	ret	
	.cfi_endproc
.LFE8:
	.seh_endproc
	.text
	.globl	_Z9clean_bufv
	.def	_Z9clean_bufv;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z9clean_bufv
_Z9clean_bufv:
.LFB2543:
	.file 2 "main.cpp"
	.loc 2 16 1
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
 # main.cpp:18:     while ((c = getchar()) != '\n' && c != EOF);
	.loc 2 18 5
	nop	
.L8:
 # main.cpp:18:     while ((c = getchar()) != '\n' && c != EOF);
	.loc 2 18 24 discriminator 7
	call	getchar	 #
	mov	DWORD PTR -4[rbp], eax	 # c, _5
 # main.cpp:18:     while ((c = getchar()) != '\n' && c != EOF);
	.loc 2 18 36 discriminator 7
	cmp	DWORD PTR -4[rbp], 10	 # c,
	je	.L6	 #,
 # main.cpp:18:     while ((c = getchar()) != '\n' && c != EOF);
	.loc 2 18 36 is_stmt 0 discriminator 1
	cmp	DWORD PTR -4[rbp], -1	 # c,
	je	.L6	 #,
 # main.cpp:18:     while ((c = getchar()) != '\n' && c != EOF);
	.loc 2 18 36 discriminator 3
	mov	eax, 1	 # iftmp.1_1,
 # main.cpp:18:     while ((c = getchar()) != '\n' && c != EOF);
	.loc 2 18 36
	jmp	.L7	 #
.L6:
 # main.cpp:18:     while ((c = getchar()) != '\n' && c != EOF);
	.loc 2 18 36 discriminator 4
	mov	eax, 0	 # iftmp.1_1,
.L7:
 # main.cpp:18:     while ((c = getchar()) != '\n' && c != EOF);
	.loc 2 18 36 discriminator 6
	test	al, al	 # iftmp.1_1
	jne	.L8	 #,
 # main.cpp:19: }
	.loc 2 19 1 is_stmt 1
	nop	
	nop	
	add	rsp, 48	 #,
	pop	rbp	 #
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2543:
	.seh_endproc
	.section .rdata,"dr"
.LC0:
	.ascii "%s\0"
.LC1:
	.ascii " %f\0"
.LC2:
	.ascii "\12\0"
	.text
	.globl	_Z9print_vecPfiPKc
	.def	_Z9print_vecPfiPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z9print_vecPfiPKc
_Z9print_vecPfiPKc:
.LFB2544:
	.loc 2 22 1
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
	mov	QWORD PTR 16[rbp], rcx	 # vec, vec
	mov	DWORD PTR 24[rbp], edx	 # n, n
	mov	QWORD PTR 32[rbp], r8	 # str_help, str_help
 # main.cpp:23:     printf("%s", str_help);
	.loc 2 23 11
	mov	rax, QWORD PTR 32[rbp]	 # tmp87, str_help
	mov	rdx, rax	 #, tmp87
	lea	rax, .LC0[rip]	 # tmp88,
	mov	rcx, rax	 #, tmp88
	call	_Z6printfPKcz	 #
.LBB2:
 # main.cpp:24:     for (int i = 0; i < n; i++)
	.loc 2 24 14
	mov	DWORD PTR -4[rbp], 0	 # i,
 # main.cpp:24:     for (int i = 0; i < n; i++)
	.loc 2 24 5
	jmp	.L10	 #
.L11:
 # main.cpp:25:         printf(" %f", vec[i]);
	.loc 2 25 27
	mov	eax, DWORD PTR -4[rbp]	 # tmp89, i
	cdqe
 # main.cpp:25:         printf(" %f", vec[i]);
	.loc 2 25 28
	lea	rdx, 0[0+rax*4]	 # _2,
	mov	rax, QWORD PTR 16[rbp]	 # tmp90, vec
	add	rax, rdx	 # _3, _2
	movss	xmm0, DWORD PTR [rax]	 # _4, *_3
 # main.cpp:25:         printf(" %f", vec[i]);
	.loc 2 25 15
	cvtss2sd	xmm0, xmm0	 # _5, _4
	movq	rax, xmm0	 # tmp91, _5
	mov	rdx, rax	 # tmp92, tmp91
	movq	xmm0, rdx	 # tmp94, tmp92
	movapd	xmm1, xmm0	 #, tmp94
	mov	rdx, rax	 #, tmp95
	lea	rax, .LC1[rip]	 # tmp96,
	mov	rcx, rax	 #, tmp96
	call	_Z6printfPKcz	 #
 # main.cpp:24:     for (int i = 0; i < n; i++)
	.loc 2 24 5 discriminator 3
	add	DWORD PTR -4[rbp], 1	 # i,
.L10:
 # main.cpp:24:     for (int i = 0; i < n; i++)
	.loc 2 24 23 discriminator 1
	mov	eax, DWORD PTR -4[rbp]	 # tmp97, i
	cmp	eax, DWORD PTR 24[rbp]	 # tmp97, n
	jl	.L11	 #,
.LBE2:
 # main.cpp:26:     printf("\n");
	.loc 2 26 11
	lea	rax, .LC2[rip]	 # tmp98,
	mov	rcx, rax	 #, tmp98
	call	_Z6printfPKcz	 #
 # main.cpp:27: }
	.loc 2 27 1
	nop	
	add	rsp, 48	 #,
	pop	rbp	 #
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2544:
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC3:
	.ascii "Input, %s please (integer number): \0"
.LC4:
	.ascii "%d\0"
	.align 8
.LC5:
	.ascii "Error with input. Repeat input, please.\12\0"
	.align 8
.LC6:
	.ascii "Size must be positive. Repeat input, please.\12\0"
	.text
	.globl	_Z10input_sizePiPKc
	.def	_Z10input_sizePiPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z10input_sizePiPKc
_Z10input_sizePiPKc:
.LFB2545:
	.loc 2 30 1
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
	mov	QWORD PTR 16[rbp], rcx	 # n, n
	mov	QWORD PTR 24[rbp], rdx	 # str_help, str_help
 # main.cpp:31:     int flag = NOT_YET;
	.loc 2 31 9
	mov	DWORD PTR -4[rbp], -1	 # flag,
 # main.cpp:32:     while (flag == NOT_YET)
	.loc 2 32 5
	jmp	.L13	 #
.L17:
 # main.cpp:34:         printf("Input, %s please (integer number): ", str_help);
	.loc 2 34 15
	mov	rax, QWORD PTR 24[rbp]	 # tmp85, str_help
	mov	rdx, rax	 #, tmp85
	lea	rax, .LC3[rip]	 # tmp86,
	mov	rcx, rax	 #, tmp86
	call	_Z6printfPKcz	 #
 # main.cpp:35:         if (scanf("%d", n) != 1)
	.loc 2 35 18
	mov	rax, QWORD PTR 16[rbp]	 # tmp87, n
	mov	rdx, rax	 #, tmp87
	lea	rax, .LC4[rip]	 # tmp88,
	mov	rcx, rax	 #, tmp88
	call	_Z5scanfPKcz	 #
 # main.cpp:35:         if (scanf("%d", n) != 1)
	.loc 2 35 28 discriminator 1
	cmp	eax, 1	 # _1,
	setne	al	 #, retval.3_12
 # main.cpp:35:         if (scanf("%d", n) != 1)
	.loc 2 35 9 discriminator 1
	test	al, al	 # retval.3_12
	je	.L14	 #,
 # main.cpp:36:             printf("Error with input. Repeat input, please.\n");
	.loc 2 36 19
	lea	rax, .LC5[rip]	 # tmp89,
	mov	rcx, rax	 #, tmp89
	call	_Z6printfPKcz	 #
	jmp	.L13	 #
.L14:
 # main.cpp:37:         else if (*n <= 0)
	.loc 2 37 18
	mov	rax, QWORD PTR 16[rbp]	 # tmp90, n
	mov	eax, DWORD PTR [rax]	 # _2, *n_9(D)
 # main.cpp:37:         else if (*n <= 0)
	.loc 2 37 14
	test	eax, eax	 # _2
	jg	.L16	 #,
 # main.cpp:38:             printf("Size must be positive. Repeat input, please.\n");
	.loc 2 38 19
	lea	rax, .LC6[rip]	 # tmp91,
	mov	rcx, rax	 #, tmp91
	call	_Z6printfPKcz	 #
	jmp	.L13	 #
.L16:
 # main.cpp:40:             flag = DONE;
	.loc 2 40 18
	mov	DWORD PTR -4[rbp], 1	 # flag,
.L13:
 # main.cpp:32:     while (flag == NOT_YET)
	.loc 2 32 17
	cmp	DWORD PTR -4[rbp], -1	 # flag,
	je	.L17	 #,
 # main.cpp:42: }
	.loc 2 42 1
	nop	
	nop	
	add	rsp, 48	 #,
	pop	rbp	 #
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2545:
	.seh_endproc
	.section .rdata,"dr"
.LC7:
	.ascii "%f\0"
	.text
	.globl	_Z11input_floatPf
	.def	_Z11input_floatPf;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z11input_floatPf
_Z11input_floatPf:
.LFB2546:
	.loc 2 45 1
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
	mov	QWORD PTR 16[rbp], rcx	 # n, n
 # main.cpp:46:     int flag = NOT_YET;
	.loc 2 46 9
	mov	DWORD PTR -4[rbp], -1	 # flag,
 # main.cpp:47:     while (flag == NOT_YET)
	.loc 2 47 5
	jmp	.L19	 #
.L22:
 # main.cpp:49:         if (scanf("%f", n) != 1)
	.loc 2 49 18
	mov	rax, QWORD PTR 16[rbp]	 # tmp84, n
	mov	rdx, rax	 #, tmp84
	lea	rax, .LC7[rip]	 # tmp85,
	mov	rcx, rax	 #, tmp85
	call	_Z5scanfPKcz	 #
 # main.cpp:49:         if (scanf("%f", n) != 1)
	.loc 2 49 28 discriminator 1
	cmp	eax, 1	 # _1,
	setne	al	 #, retval.5_9
 # main.cpp:49:         if (scanf("%f", n) != 1)
	.loc 2 49 9 discriminator 1
	test	al, al	 # retval.5_9
	je	.L20	 #,
 # main.cpp:50:             printf("Error with input. Repeat input, please.\n");
	.loc 2 50 19
	lea	rax, .LC5[rip]	 # tmp86,
	mov	rcx, rax	 #, tmp86
	call	_Z6printfPKcz	 #
	jmp	.L19	 #
.L20:
 # main.cpp:52:             flag = DONE;
	.loc 2 52 18
	mov	DWORD PTR -4[rbp], 1	 # flag,
.L19:
 # main.cpp:47:     while (flag == NOT_YET)
	.loc 2 47 17
	cmp	DWORD PTR -4[rbp], -1	 # flag,
	je	.L22	 #,
 # main.cpp:54: }
	.loc 2 54 1
	nop	
	nop	
	add	rsp, 48	 #,
	pop	rbp	 #
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2546:
	.seh_endproc
	.section .rdata,"dr"
.LC8:
	.ascii "(L)\0"
.LC9:
	.ascii "(M)\0"
.LC10:
	.ascii "(N)\0"
	.text
	.globl	_Z10read_sizesPiS_S_
	.def	_Z10read_sizesPiS_S_;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z10read_sizesPiS_S_
_Z10read_sizesPiS_S_:
.LFB2547:
	.loc 2 57 1
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
	mov	QWORD PTR 16[rbp], rcx	 # l, l
	mov	QWORD PTR 24[rbp], rdx	 # m, m
	mov	QWORD PTR 32[rbp], r8	 # n, n
 # main.cpp:58:     input_size(l, "(L)");
	.loc 2 58 15
	mov	rax, QWORD PTR 16[rbp]	 # tmp82, l
	lea	rdx, .LC8[rip]	 # tmp83,
	mov	rcx, rax	 #, tmp82
	call	_Z10input_sizePiPKc	 #
 # main.cpp:59:     input_size(m, "(M)");
	.loc 2 59 15
	mov	rax, QWORD PTR 24[rbp]	 # tmp84, m
	lea	rdx, .LC9[rip]	 # tmp85,
	mov	rcx, rax	 #, tmp84
	call	_Z10input_sizePiPKc	 #
 # main.cpp:60:     input_size(n, "(N)");
	.loc 2 60 15
	mov	rax, QWORD PTR 32[rbp]	 # tmp86, n
	lea	rdx, .LC10[rip]	 # tmp87,
	mov	rcx, rax	 #, tmp86
	call	_Z10input_sizePiPKc	 #
 # main.cpp:61:     clean_buf();
	.loc 2 61 14
	call	_Z9clean_bufv	 #
 # main.cpp:62: }
	.loc 2 62 1
	nop	
	add	rsp, 32	 #,
	pop	rbp	 #
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2547:
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC11:
	.ascii "Input elements of matrix #%d, please:\12\0"
	.text
	.globl	_Z11read_matrixiii
	.def	_Z11read_matrixiii;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z11read_matrixiii
_Z11read_matrixiii:
.LFB2548:
	.loc 2 65 1
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
	mov	DWORD PTR 16[rbp], ecx	 # n, n
	mov	DWORD PTR 24[rbp], edx	 # m, m
	mov	DWORD PTR 32[rbp], r8d	 # num, num
 # main.cpp:66:     float *mat = (float *) calloc(n * m, sizeof(float));
	.loc 2 66 37
	mov	eax, DWORD PTR 16[rbp]	 # tmp91, n
	imul	eax, DWORD PTR 24[rbp]	 # _1, m
 # main.cpp:66:     float *mat = (float *) calloc(n * m, sizeof(float));
	.loc 2 66 34
	cdqe
	mov	edx, 4	 #,
	mov	rcx, rax	 #, _2
	call	calloc	 #
	mov	QWORD PTR -16[rbp], rax	 # mat, tmp92
 # main.cpp:67:     printf("Input elements of matrix #%d, please:\n", num);
	.loc 2 67 11
	mov	eax, DWORD PTR 32[rbp]	 # tmp93, num
	mov	edx, eax	 #, tmp93
	lea	rax, .LC11[rip]	 # tmp94,
	mov	rcx, rax	 #, tmp94
	call	_Z6printfPKcz	 #
.LBB3:
 # main.cpp:68:     for (int i = 0; i < n; i++)
	.loc 2 68 14
	mov	DWORD PTR -4[rbp], 0	 # i,
 # main.cpp:68:     for (int i = 0; i < n; i++)
	.loc 2 68 5
	jmp	.L25	 #
.L28:
.LBB4:
.LBB5:
 # main.cpp:69:         for (int j = 0; j < m; j++)
	.loc 2 69 18
	mov	DWORD PTR -8[rbp], 0	 # j,
 # main.cpp:69:         for (int j = 0; j < m; j++)
	.loc 2 69 9
	jmp	.L26	 #
.L27:
 # main.cpp:70:             input_float(&(mat[i * m + j]));
	.loc 2 70 33
	mov	eax, DWORD PTR -4[rbp]	 # tmp95, i
	imul	eax, DWORD PTR 24[rbp]	 # tmp95, m
	mov	edx, eax	 # _3, tmp95
 # main.cpp:70:             input_float(&(mat[i * m + j]));
	.loc 2 70 37
	mov	eax, DWORD PTR -8[rbp]	 # tmp96, j
	add	eax, edx	 # _4, _3
	cdqe
 # main.cpp:70:             input_float(&(mat[i * m + j]));
	.loc 2 70 40
	lea	rdx, 0[0+rax*4]	 # _6,
 # main.cpp:70:             input_float(&(mat[i * m + j]));
	.loc 2 70 24
	mov	rax, QWORD PTR -16[rbp]	 # tmp97, mat
	add	rax, rdx	 # _7, _6
	mov	rcx, rax	 #, _7
	call	_Z11input_floatPf	 #
 # main.cpp:69:         for (int j = 0; j < m; j++)
	.loc 2 69 9 discriminator 3
	add	DWORD PTR -8[rbp], 1	 # j,
.L26:
 # main.cpp:69:         for (int j = 0; j < m; j++)
	.loc 2 69 27 discriminator 1
	mov	eax, DWORD PTR -8[rbp]	 # tmp98, j
	cmp	eax, DWORD PTR 24[rbp]	 # tmp98, m
	jl	.L27	 #,
.LBE5:
.LBE4:
 # main.cpp:68:     for (int i = 0; i < n; i++)
	.loc 2 68 5 discriminator 2
	add	DWORD PTR -4[rbp], 1	 # i,
.L25:
 # main.cpp:68:     for (int i = 0; i < n; i++)
	.loc 2 68 23 discriminator 1
	mov	eax, DWORD PTR -4[rbp]	 # tmp99, i
	cmp	eax, DWORD PTR 16[rbp]	 # tmp99, n
	jl	.L28	 #,
.LBE3:
 # main.cpp:71:     return mat;
	.loc 2 71 12
	mov	rax, QWORD PTR -16[rbp]	 # _20, mat
 # main.cpp:72: }
	.loc 2 72 1
	add	rsp, 48	 #,
	pop	rbp	 #
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2548:
	.seh_endproc
	.section .rdata,"dr"
.LC12:
	.ascii "Empty matrix\0"
.LC13:
	.ascii "Matrix:\12\0"
.LC14:
	.ascii "%f \0"
	.text
	.globl	_Z12print_matrixPfii
	.def	_Z12print_matrixPfii;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z12print_matrixPfii
_Z12print_matrixPfii:
.LFB2549:
	.loc 2 75 1
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
	mov	QWORD PTR 16[rbp], rcx	 # mat, mat
	mov	DWORD PTR 24[rbp], edx	 # n, n
	mov	DWORD PTR 32[rbp], r8d	 # m, m
.LBB6:
 # main.cpp:76:     if (n == 0 || m == 0)
	.loc 2 76 5
	cmp	DWORD PTR 24[rbp], 0	 # n,
	je	.L31	 #,
 # main.cpp:76:     if (n == 0 || m == 0)
	.loc 2 76 16 discriminator 1
	cmp	DWORD PTR 32[rbp], 0	 # m,
	jne	.L32	 #,
.L31:
 # main.cpp:77:         printf("Empty matrix");
	.loc 2 77 15
	lea	rax, .LC12[rip]	 # tmp89,
	mov	rcx, rax	 #, tmp89
	call	_Z6printfPKcz	 #
	jmp	.L33	 #
.L32:
.LBB7:
 # main.cpp:80:         printf("Matrix:\n");
	.loc 2 80 15
	lea	rax, .LC13[rip]	 # tmp90,
	mov	rcx, rax	 #, tmp90
	call	_Z6printfPKcz	 #
.LBB8:
 # main.cpp:81:         for (int i = 0; i < n; i++)
	.loc 2 81 18
	mov	DWORD PTR -4[rbp], 0	 # i,
 # main.cpp:81:         for (int i = 0; i < n; i++)
	.loc 2 81 9
	jmp	.L34	 #
.L37:
.LBB9:
.LBB10:
 # main.cpp:83:             for (int j = 0; j < m; j++)
	.loc 2 83 22
	mov	DWORD PTR -8[rbp], 0	 # j,
 # main.cpp:83:             for (int j = 0; j < m; j++)
	.loc 2 83 13
	jmp	.L35	 #
.L36:
 # main.cpp:84:                 printf("%f ", mat[i * m + j]);
	.loc 2 84 37
	mov	eax, DWORD PTR -4[rbp]	 # tmp91, i
	imul	eax, DWORD PTR 32[rbp]	 # tmp91, m
	mov	edx, eax	 # _1, tmp91
 # main.cpp:84:                 printf("%f ", mat[i * m + j]);
	.loc 2 84 41
	mov	eax, DWORD PTR -8[rbp]	 # tmp92, j
	add	eax, edx	 # _2, _1
	cdqe
 # main.cpp:84:                 printf("%f ", mat[i * m + j]);
	.loc 2 84 44
	lea	rdx, 0[0+rax*4]	 # _4,
	mov	rax, QWORD PTR 16[rbp]	 # tmp93, mat
	add	rax, rdx	 # _5, _4
	movss	xmm0, DWORD PTR [rax]	 # _6, *_5
 # main.cpp:84:                 printf("%f ", mat[i * m + j]);
	.loc 2 84 23
	cvtss2sd	xmm0, xmm0	 # _7, _6
	movq	rax, xmm0	 # tmp94, _7
	mov	rdx, rax	 # tmp95, tmp94
	movq	xmm0, rdx	 # tmp97, tmp95
	movapd	xmm1, xmm0	 #, tmp97
	mov	rdx, rax	 #, tmp98
	lea	rax, .LC14[rip]	 # tmp99,
	mov	rcx, rax	 #, tmp99
	call	_Z6printfPKcz	 #
 # main.cpp:83:             for (int j = 0; j < m; j++)
	.loc 2 83 13 discriminator 3
	add	DWORD PTR -8[rbp], 1	 # j,
.L35:
 # main.cpp:83:             for (int j = 0; j < m; j++)
	.loc 2 83 31 discriminator 1
	mov	eax, DWORD PTR -8[rbp]	 # tmp100, j
	cmp	eax, DWORD PTR 32[rbp]	 # tmp100, m
	jl	.L36	 #,
.LBE10:
 # main.cpp:85:             printf("\n");
	.loc 2 85 19
	lea	rax, .LC2[rip]	 # tmp101,
	mov	rcx, rax	 #, tmp101
	call	_Z6printfPKcz	 #
.LBE9:
 # main.cpp:81:         for (int i = 0; i < n; i++)
	.loc 2 81 9 discriminator 2
	add	DWORD PTR -4[rbp], 1	 # i,
.L34:
 # main.cpp:81:         for (int i = 0; i < n; i++)
	.loc 2 81 27 discriminator 1
	mov	eax, DWORD PTR -4[rbp]	 # tmp102, i
	cmp	eax, DWORD PTR 24[rbp]	 # tmp102, n
	jl	.L37	 #,
.LBE8:
.LBE7:
.LBE6:
 # main.cpp:88: }
	.loc 2 88 1
	nop	
.L33:
	nop	
	add	rsp, 48	 #,
	pop	rbp	 #
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2549:
	.seh_endproc
	.globl	_Z12make_vec_rowPfii
	.def	_Z12make_vec_rowPfii;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z12make_vec_rowPfii
_Z12make_vec_rowPfii:
.LFB2550:
	.loc 2 108 1
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
	mov	QWORD PTR 16[rbp], rcx	 # mat, mat
	mov	DWORD PTR 24[rbp], edx	 # row, row
	mov	DWORD PTR 32[rbp], r8d	 # count_col, count_col
 # main.cpp:109:     int size = count_col + (COUNT_PACK - count_col % COUNT_PACK);
	.loc 2 109 26
	mov	eax, DWORD PTR 32[rbp]	 # count_col.6_1, count_col
 # main.cpp:109:     int size = count_col + (COUNT_PACK - count_col % COUNT_PACK);
	.loc 2 109 42
	mov	edx, DWORD PTR 32[rbp]	 # tmp101, count_col
	movsx	rdx, edx	 # _2, tmp101
 # main.cpp:109:     int size = count_col + (COUNT_PACK - count_col % COUNT_PACK);
	.loc 2 109 52
	and	edx, 15	 # _3,
 # main.cpp:109:     int size = count_col + (COUNT_PACK - count_col % COUNT_PACK);
	.loc 2 109 54
	shr	rdx, 2	 # _4,
 # main.cpp:109:     int size = count_col + (COUNT_PACK - count_col % COUNT_PACK);
	.loc 2 109 26
	sub	eax, edx	 # _6, _5
	add	eax, 4	 # _7,
 # main.cpp:109:     int size = count_col + (COUNT_PACK - count_col % COUNT_PACK);
	.loc 2 109 9
	mov	DWORD PTR -8[rbp], eax	 # size, _7
 # main.cpp:110:     float *vec = (float *) calloc(size, sizeof(float));
	.loc 2 110 34
	mov	eax, DWORD PTR -8[rbp]	 # tmp102, size
	cdqe
	mov	edx, 4	 #,
	mov	rcx, rax	 #, _8
	call	calloc	 #
	mov	QWORD PTR -16[rbp], rax	 # vec, tmp103
.LBB11:
 # main.cpp:111:     for (int i = 0; i < count_col; i++)
	.loc 2 111 14
	mov	DWORD PTR -4[rbp], 0	 # i,
 # main.cpp:111:     for (int i = 0; i < count_col; i++)
	.loc 2 111 5
	jmp	.L39	 #
.L40:
 # main.cpp:112:         vec[i] = mat[row * count_col + i];
	.loc 2 112 26
	mov	eax, DWORD PTR 24[rbp]	 # tmp104, row
	imul	eax, DWORD PTR 32[rbp]	 # tmp104, count_col
	mov	edx, eax	 # _9, tmp104
 # main.cpp:112:         vec[i] = mat[row * count_col + i];
	.loc 2 112 38
	mov	eax, DWORD PTR -4[rbp]	 # tmp105, i
	add	eax, edx	 # _10, _9
	cdqe
 # main.cpp:112:         vec[i] = mat[row * count_col + i];
	.loc 2 112 41
	lea	rdx, 0[0+rax*4]	 # _12,
	mov	rax, QWORD PTR 16[rbp]	 # tmp106, mat
	add	rdx, rax	 # _13, tmp106
 # main.cpp:112:         vec[i] = mat[row * count_col + i];
	.loc 2 112 13
	mov	eax, DWORD PTR -4[rbp]	 # tmp107, i
	cdqe
 # main.cpp:112:         vec[i] = mat[row * count_col + i];
	.loc 2 112 14
	lea	rcx, 0[0+rax*4]	 # _15,
	mov	rax, QWORD PTR -16[rbp]	 # tmp108, vec
	add	rax, rcx	 # _16, _15
 # main.cpp:112:         vec[i] = mat[row * count_col + i];
	.loc 2 112 41
	movss	xmm0, DWORD PTR [rdx]	 # _17, *_13
 # main.cpp:112:         vec[i] = mat[row * count_col + i];
	.loc 2 112 16
	movss	DWORD PTR [rax], xmm0	 # *_16, _17
 # main.cpp:111:     for (int i = 0; i < count_col; i++)
	.loc 2 111 5 discriminator 3
	add	DWORD PTR -4[rbp], 1	 # i,
.L39:
 # main.cpp:111:     for (int i = 0; i < count_col; i++)
	.loc 2 111 23 discriminator 1
	mov	eax, DWORD PTR -4[rbp]	 # tmp109, i
	cmp	eax, DWORD PTR 32[rbp]	 # tmp109, count_col
	jl	.L40	 #,
.LBE11:
 # main.cpp:113:     return vec;
	.loc 2 113 12
	mov	rax, QWORD PTR -16[rbp]	 # _26, vec
 # main.cpp:114: }
	.loc 2 114 1
	add	rsp, 48	 #,
	pop	rbp	 #
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2550:
	.seh_endproc
	.globl	_Z12make_vec_colPfiii
	.def	_Z12make_vec_colPfiii;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z12make_vec_colPfiii
_Z12make_vec_colPfiii:
.LFB2551:
	.loc 2 117 1
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
	mov	QWORD PTR 16[rbp], rcx	 # mat, mat
	mov	DWORD PTR 24[rbp], edx	 # col, col
	mov	DWORD PTR 32[rbp], r8d	 # count_row, count_row
	mov	DWORD PTR 40[rbp], r9d	 # count_col, count_col
 # main.cpp:118:     int size = count_row + (COUNT_PACK - count_row % COUNT_PACK);
	.loc 2 118 26
	mov	eax, DWORD PTR 32[rbp]	 # count_row.7_1, count_row
 # main.cpp:118:     int size = count_row + (COUNT_PACK - count_row % COUNT_PACK);
	.loc 2 118 42
	mov	edx, DWORD PTR 32[rbp]	 # tmp101, count_row
	movsx	rdx, edx	 # _2, tmp101
 # main.cpp:118:     int size = count_row + (COUNT_PACK - count_row % COUNT_PACK);
	.loc 2 118 52
	and	edx, 15	 # _3,
 # main.cpp:118:     int size = count_row + (COUNT_PACK - count_row % COUNT_PACK);
	.loc 2 118 54
	shr	rdx, 2	 # _4,
 # main.cpp:118:     int size = count_row + (COUNT_PACK - count_row % COUNT_PACK);
	.loc 2 118 26
	sub	eax, edx	 # _6, _5
	add	eax, 4	 # _7,
 # main.cpp:118:     int size = count_row + (COUNT_PACK - count_row % COUNT_PACK);
	.loc 2 118 9
	mov	DWORD PTR -8[rbp], eax	 # size, _7
 # main.cpp:119:     float *vec = (float *) calloc(size, sizeof(float));
	.loc 2 119 34
	mov	eax, DWORD PTR -8[rbp]	 # tmp102, size
	cdqe
	mov	edx, 4	 #,
	mov	rcx, rax	 #, _8
	call	calloc	 #
	mov	QWORD PTR -16[rbp], rax	 # vec, tmp103
.LBB12:
 # main.cpp:120:     for (int i = 0; i < count_row; i++)
	.loc 2 120 14
	mov	DWORD PTR -4[rbp], 0	 # i,
 # main.cpp:120:     for (int i = 0; i < count_row; i++)
	.loc 2 120 5
	jmp	.L43	 #
.L44:
 # main.cpp:121:         vec[i] = mat[i * count_col + col];
	.loc 2 121 24
	mov	eax, DWORD PTR -4[rbp]	 # tmp104, i
	imul	eax, DWORD PTR 40[rbp]	 # tmp104, count_col
	mov	edx, eax	 # _9, tmp104
 # main.cpp:121:         vec[i] = mat[i * count_col + col];
	.loc 2 121 36
	mov	eax, DWORD PTR 24[rbp]	 # tmp105, col
	add	eax, edx	 # _10, _9
	cdqe
 # main.cpp:121:         vec[i] = mat[i * count_col + col];
	.loc 2 121 41
	lea	rdx, 0[0+rax*4]	 # _12,
	mov	rax, QWORD PTR 16[rbp]	 # tmp106, mat
	add	rdx, rax	 # _13, tmp106
 # main.cpp:121:         vec[i] = mat[i * count_col + col];
	.loc 2 121 13
	mov	eax, DWORD PTR -4[rbp]	 # tmp107, i
	cdqe
 # main.cpp:121:         vec[i] = mat[i * count_col + col];
	.loc 2 121 14
	lea	rcx, 0[0+rax*4]	 # _15,
	mov	rax, QWORD PTR -16[rbp]	 # tmp108, vec
	add	rax, rcx	 # _16, _15
 # main.cpp:121:         vec[i] = mat[i * count_col + col];
	.loc 2 121 41
	movss	xmm0, DWORD PTR [rdx]	 # _17, *_13
 # main.cpp:121:         vec[i] = mat[i * count_col + col];
	.loc 2 121 16
	movss	DWORD PTR [rax], xmm0	 # *_16, _17
 # main.cpp:120:     for (int i = 0; i < count_row; i++)
	.loc 2 120 5 discriminator 3
	add	DWORD PTR -4[rbp], 1	 # i,
.L43:
 # main.cpp:120:     for (int i = 0; i < count_row; i++)
	.loc 2 120 23 discriminator 1
	mov	eax, DWORD PTR -4[rbp]	 # tmp109, i
	cmp	eax, DWORD PTR 32[rbp]	 # tmp109, count_row
	jl	.L44	 #,
.LBE12:
 # main.cpp:122:     return vec;
	.loc 2 122 12
	mov	rax, QWORD PTR -16[rbp]	 # _26, vec
 # main.cpp:123: }
	.loc 2 123 1
	add	rsp, 48	 #,
	pop	rbp	 #
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2551:
	.seh_endproc
	.globl	_Z12multy_matrixPfS_iii
	.def	_Z12multy_matrixPfS_iii;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z12multy_matrixPfS_iii
_Z12multy_matrixPfS_iii:
.LFB2552:
	.loc 2 126 1
	.cfi_startproc
	push	rbp	 #
	.seh_pushreg	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	 #,
	.seh_setframe	rbp, 0
	.cfi_def_cfa_register 6
	sub	rsp, 96	 #,
	.seh_stackalloc	96
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx	 # mat1, mat1
	mov	QWORD PTR 24[rbp], rdx	 # mat2, mat2
	mov	DWORD PTR 32[rbp], r8d	 # l, l
	mov	DWORD PTR 40[rbp], r9d	 # m, m
 # main.cpp:127:     float *mat_res = (float *) calloc(l * n, sizeof(float));
	.loc 2 127 41
	mov	eax, DWORD PTR 32[rbp]	 # tmp107, l
	imul	eax, DWORD PTR 48[rbp]	 # _1, n
 # main.cpp:127:     float *mat_res = (float *) calloc(l * n, sizeof(float));
	.loc 2 127 38
	cdqe
	mov	edx, 4	 #,
	mov	rcx, rax	 #, _2
	call	calloc	 #
	mov	QWORD PTR -24[rbp], rax	 # mat_res, tmp108
.LBB13:
 # main.cpp:128:     for (int i = 0; i < l; i++)
	.loc 2 128 14
	mov	DWORD PTR -4[rbp], 0	 # i,
 # main.cpp:128:     for (int i = 0; i < l; i++)
	.loc 2 128 5
	jmp	.L47	 #
.L52:
.LBB14:
.LBB15:
 # main.cpp:129:         for (int j = 0; j < n; j++)
	.loc 2 129 18
	mov	DWORD PTR -8[rbp], 0	 # j,
 # main.cpp:129:         for (int j = 0; j < n; j++)
	.loc 2 129 9
	jmp	.L48	 #
.L51:
.LBB16:
 # main.cpp:131:             float *vec_row = make_vec_row(mat1, i, m);
	.loc 2 131 42
	mov	ecx, DWORD PTR 40[rbp]	 # tmp109, m
	mov	edx, DWORD PTR -4[rbp]	 # tmp110, i
	mov	rax, QWORD PTR 16[rbp]	 # tmp111, mat1
	mov	r8d, ecx	 #, tmp109
	mov	rcx, rax	 #, tmp111
	call	_Z12make_vec_rowPfii	 #
	mov	QWORD PTR -32[rbp], rax	 # vec_row, tmp112
 # main.cpp:132:             float *vec_col = make_vec_col(mat2, j, m, n);
	.loc 2 132 42
	mov	r8d, DWORD PTR 48[rbp]	 # tmp113, n
	mov	ecx, DWORD PTR 40[rbp]	 # tmp114, m
	mov	edx, DWORD PTR -8[rbp]	 # tmp115, j
	mov	rax, QWORD PTR 24[rbp]	 # tmp116, mat2
	mov	r9d, r8d	 #, tmp113
	mov	r8d, ecx	 #, tmp114
	mov	rcx, rax	 #, tmp116
	call	_Z12make_vec_colPfiii	 #
	mov	QWORD PTR -40[rbp], rax	 # vec_col, tmp117
.LBB17:
 # main.cpp:133:             for (int k = 0; k < m; k += COUNT_PACK)
	.loc 2 133 22
	mov	DWORD PTR -12[rbp], 0	 # k,
 # main.cpp:133:             for (int k = 0; k < m; k += COUNT_PACK)
	.loc 2 133 13
	jmp	.L49	 #
.L50:
.LBB18:
 # main.cpp:136:                 __m128 *row_ptr = (__m128 *)(vec_row + k);
	.loc 2 136 56
	mov	eax, DWORD PTR -12[rbp]	 # tmp118, k
	cdqe
 # main.cpp:136:                 __m128 *row_ptr = (__m128 *)(vec_row + k);
	.loc 2 136 54
	lea	rdx, 0[0+rax*4]	 # _4,
	mov	rax, QWORD PTR -32[rbp]	 # tmp119, vec_row
	add	rax, rdx	 # _5, _4
 # main.cpp:136:                 __m128 *row_ptr = (__m128 *)(vec_row + k);
	.loc 2 136 25
	mov	QWORD PTR -56[rbp], rax	 # row_ptr, _5
 # main.cpp:137:                 __m128 *col_ptr = (__m128 *)(vec_col + k);
	.loc 2 137 56
	mov	eax, DWORD PTR -12[rbp]	 # tmp120, k
	cdqe
 # main.cpp:137:                 __m128 *col_ptr = (__m128 *)(vec_col + k);
	.loc 2 137 54
	lea	rdx, 0[0+rax*4]	 # _7,
	mov	rax, QWORD PTR -40[rbp]	 # tmp121, vec_col
	add	rax, rdx	 # _8, _7
 # main.cpp:137:                 __m128 *col_ptr = (__m128 *)(vec_col + k);
	.loc 2 137 25
	mov	QWORD PTR -64[rbp], rax	 # col_ptr, _8
 # main.cpp:138:                 __asm__(
	.loc 2 138 17
/APP
 # 138 "main.cpp" 1
	movdqu xmm0, QWORD PTR -56[rbp]	 # row_ptr
	movups xmm1, QWORD PTR -64[rbp]	 # col_ptr
	mulps xmm0, xmm1
	haddps xmm0, xmm0
	haddps xmm0, xmm0
	movss DWORD PTR -44[rbp], xmm0	 # sum
	
 # 0 "" 2
 # main.cpp:150:                 mat_res[i * n + j] += sum;
	.loc 2 150 34
/NO_APP
	mov	eax, DWORD PTR -4[rbp]	 # tmp122, i
	imul	eax, DWORD PTR 48[rbp]	 # tmp122, n
	mov	edx, eax	 # _9, tmp122
	mov	eax, DWORD PTR -8[rbp]	 # tmp123, j
	add	eax, edx	 # _10, _9
	cdqe
	lea	rdx, 0[0+rax*4]	 # _12,
	mov	rax, QWORD PTR -24[rbp]	 # tmp124, mat_res
	add	rax, rdx	 # _13, _12
	movss	xmm1, DWORD PTR [rax]	 # _14, *_13
 # main.cpp:150:                 mat_res[i * n + j] += sum;
	.loc 2 150 36
	movss	xmm0, DWORD PTR -44[rbp]	 # sum.8_15, sum
 # main.cpp:150:                 mat_res[i * n + j] += sum;
	.loc 2 150 34
	mov	eax, DWORD PTR -4[rbp]	 # tmp125, i
	imul	eax, DWORD PTR 48[rbp]	 # tmp125, n
	mov	edx, eax	 # _16, tmp125
	mov	eax, DWORD PTR -8[rbp]	 # tmp126, j
	add	eax, edx	 # _17, _16
	cdqe
	lea	rdx, 0[0+rax*4]	 # _19,
	mov	rax, QWORD PTR -24[rbp]	 # tmp127, mat_res
	add	rax, rdx	 # _20, _19
 # main.cpp:150:                 mat_res[i * n + j] += sum;
	.loc 2 150 36
	addss	xmm0, xmm1	 # _21, _14
	movss	DWORD PTR [rax], xmm0	 # *_20, _21
.LBE18:
 # main.cpp:133:             for (int k = 0; k < m; k += COUNT_PACK)
	.loc 2 133 38 discriminator 3
	mov	eax, DWORD PTR -12[rbp]	 # k.9_22, k
	add	eax, 4	 # _23,
	mov	DWORD PTR -12[rbp], eax	 # k, _23
.L49:
 # main.cpp:133:             for (int k = 0; k < m; k += COUNT_PACK)
	.loc 2 133 31 discriminator 1
	mov	eax, DWORD PTR -12[rbp]	 # tmp128, k
	cmp	eax, DWORD PTR 40[rbp]	 # tmp128, m
	jl	.L50	 #,
.LBE17:
 # main.cpp:152:             free(vec_row);
	.loc 2 152 17
	mov	rax, QWORD PTR -32[rbp]	 # tmp129, vec_row
	mov	rcx, rax	 #, tmp129
	call	free	 #
 # main.cpp:153:             free(vec_col);
	.loc 2 153 17
	mov	rax, QWORD PTR -40[rbp]	 # tmp130, vec_col
	mov	rcx, rax	 #, tmp130
	call	free	 #
.LBE16:
 # main.cpp:129:         for (int j = 0; j < n; j++)
	.loc 2 129 9 discriminator 2
	add	DWORD PTR -8[rbp], 1	 # j,
.L48:
 # main.cpp:129:         for (int j = 0; j < n; j++)
	.loc 2 129 27 discriminator 1
	mov	eax, DWORD PTR -8[rbp]	 # tmp131, j
	cmp	eax, DWORD PTR 48[rbp]	 # tmp131, n
	jl	.L51	 #,
.LBE15:
.LBE14:
 # main.cpp:128:     for (int i = 0; i < l; i++)
	.loc 2 128 5 discriminator 2
	add	DWORD PTR -4[rbp], 1	 # i,
.L47:
 # main.cpp:128:     for (int i = 0; i < l; i++)
	.loc 2 128 23 discriminator 1
	mov	eax, DWORD PTR -4[rbp]	 # tmp132, i
	cmp	eax, DWORD PTR 32[rbp]	 # tmp132, l
	jl	.L52	 #,
.LBE13:
 # main.cpp:155:     return mat_res;
	.loc 2 155 12
	mov	rax, QWORD PTR -24[rbp]	 # _36, mat_res
 # main.cpp:156: }
	.loc 2 156 1
	add	rsp, 96	 #,
	pop	rbp	 #
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2552:
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB2553:
	.loc 2 160 1
	.cfi_startproc
	push	rbp	 #
	.seh_pushreg	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	 #,
	.seh_setframe	rbp, 0
	.cfi_def_cfa_register 6
	sub	rsp, 96	 #,
	.seh_stackalloc	96
	.seh_endprologue
 # main.cpp:160: {
	.loc 2 160 1
	call	__main	 #
 # main.cpp:162:     read_sizes(&l, &m, &n);
	.loc 2 162 15
	lea	rcx, -36[rbp]	 # tmp95,
	lea	rdx, -32[rbp]	 # tmp96,
	lea	rax, -28[rbp]	 # tmp97,
	mov	r8, rcx	 #, tmp95
	mov	rcx, rax	 #, tmp97
	call	_Z10read_sizesPiS_S_	 #
 # main.cpp:163:     float *mat1 = read_matrix(l, m, 1);
	.loc 2 163 30
	mov	edx, DWORD PTR -32[rbp]	 # m.10_1, m
	mov	eax, DWORD PTR -28[rbp]	 # l.11_2, l
	mov	r8d, 1	 #,
	mov	ecx, eax	 #, l.11_2
	call	_Z11read_matrixiii	 #
 # main.cpp:163:     float *mat1 = read_matrix(l, m, 1);
	.loc 2 163 30 is_stmt 0 discriminator 1
	mov	QWORD PTR -8[rbp], rax	 # mat1, _14
 # main.cpp:164:     float *mat2 = read_matrix(m, n, 2);
	.loc 2 164 30 is_stmt 1
	mov	edx, DWORD PTR -36[rbp]	 # n.12_3, n
	mov	eax, DWORD PTR -32[rbp]	 # m.13_4, m
	mov	r8d, 2	 #,
	mov	ecx, eax	 #, m.13_4
	call	_Z11read_matrixiii	 #
 # main.cpp:164:     float *mat2 = read_matrix(m, n, 2);
	.loc 2 164 30 is_stmt 0 discriminator 1
	mov	QWORD PTR -16[rbp], rax	 # mat2, _17
 # main.cpp:165:     float *mat_res = multy_matrix(mat1, mat2, l, m, n);
	.loc 2 165 34 is_stmt 1
	mov	ecx, DWORD PTR -36[rbp]	 # n.14_5, n
	mov	r9d, DWORD PTR -32[rbp]	 # m.15_6, m
	mov	r8d, DWORD PTR -28[rbp]	 # l.16_7, l
	mov	rdx, QWORD PTR -16[rbp]	 # tmp98, mat2
	mov	rax, QWORD PTR -8[rbp]	 # tmp99, mat1
	mov	DWORD PTR 32[rsp], ecx	 #, n.14_5
	mov	rcx, rax	 #, tmp99
	call	_Z12multy_matrixPfS_iii	 #
	mov	QWORD PTR -24[rbp], rax	 # mat_res, tmp100
 # main.cpp:166:     print_matrix(mat_res, l, n);
	.loc 2 166 17
	mov	ecx, DWORD PTR -36[rbp]	 # n.17_8, n
	mov	edx, DWORD PTR -28[rbp]	 # l.18_9, l
	mov	rax, QWORD PTR -24[rbp]	 # tmp101, mat_res
	mov	r8d, ecx	 #, n.17_8
	mov	rcx, rax	 #, tmp101
	call	_Z12print_matrixPfii	 #
 # main.cpp:167:     free(mat1);
	.loc 2 167 9
	mov	rax, QWORD PTR -8[rbp]	 # tmp102, mat1
	mov	rcx, rax	 #, tmp102
	call	free	 #
 # main.cpp:168:     free(mat2);
	.loc 2 168 9
	mov	rax, QWORD PTR -16[rbp]	 # tmp103, mat2
	mov	rcx, rax	 #, tmp103
	call	free	 #
 # main.cpp:169:     free(mat_res);
	.loc 2 169 9
	mov	rax, QWORD PTR -24[rbp]	 # tmp104, mat_res
	mov	rcx, rax	 #, tmp104
	call	free	 #
 # main.cpp:170: 	return OK;
	.loc 2 170 9
	mov	eax, 0	 # _25,
 # main.cpp:171: }
	.loc 2 171 1
	add	rsp, 96	 #,
	pop	rbp	 #
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2553:
	.seh_endproc
	.section .rdata,"dr"
_ZNSt8__detail30__integer_to_chars_is_unsignedIjEE:
	.byte	1
_ZNSt8__detail30__integer_to_chars_is_unsignedImEE:
	.byte	1
_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE:
	.byte	1
	.text
.Letext0:
	.file 3 "C:/msys64/mingw64/x86_64-w64-mingw32/include/vadefs.h"
	.file 4 "C:/msys64/mingw64/x86_64-w64-mingw32/include/corecrt.h"
	.file 5 "C:/msys64/mingw64/x86_64-w64-mingw32/include/locale.h"
	.file 6 "C:/msys64/mingw64/x86_64-w64-mingw32/include/stdlib.h"
	.file 7 "C:/msys64/mingw64/include/c++/13.2.0/cstdlib"
	.file 8 "C:/msys64/mingw64/include/c++/13.2.0/bits/std_abs.h"
	.file 9 "C:/msys64/mingw64/include/c++/13.2.0/cwchar"
	.file 10 "C:/msys64/mingw64/include/c++/13.2.0/type_traits"
	.file 11 "C:/msys64/mingw64/include/c++/13.2.0/x86_64-w64-mingw32/bits/c++config.h"
	.file 12 "C:/msys64/mingw64/include/c++/13.2.0/bits/exception_ptr.h"
	.file 13 "C:/msys64/mingw64/include/c++/13.2.0/clocale"
	.file 14 "C:/msys64/mingw64/include/c++/13.2.0/debug/debug.h"
	.file 15 "C:/msys64/mingw64/include/c++/13.2.0/cstdio"
	.file 16 "C:/msys64/mingw64/include/c++/13.2.0/cstddef"
	.file 17 "C:/msys64/mingw64/include/c++/13.2.0/bits/memory_resource.h"
	.file 18 "C:/msys64/mingw64/include/c++/13.2.0/system_error"
	.file 19 "C:/msys64/mingw64/include/c++/13.2.0/cwctype"
	.file 20 "C:/msys64/mingw64/include/c++/13.2.0/bits/charconv.h"
	.file 21 "C:/msys64/mingw64/include/c++/13.2.0/bits/predefined_ops.h"
	.file 22 "C:/msys64/mingw64/include/c++/13.2.0/stdlib.h"
	.file 23 "C:/msys64/mingw64/x86_64-w64-mingw32/include/wchar.h"
	.file 24 "C:/msys64/mingw64/x86_64-w64-mingw32/include/swprintf.inl"
	.file 25 "C:/msys64/mingw64/x86_64-w64-mingw32/include/stddef.h"
	.file 26 "C:/msys64/mingw64/x86_64-w64-mingw32/include/wctype.h"
	.file 27 "C:/msys64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/xmmintrin.h"
	.section	.debug_info,"dr"
.Ldebug_info0:
	.long	0x2dfc
	.word	0x5
	.byte	0x1
	.byte	0x8
	.secrel32	.Ldebug_abbrev0
	.uleb128 0x2c
	.ascii "GNU C++17 13.2.0 -masm=intel -mtune=generic -march=x86-64 -g -O0 -std=c++17\0"
	.byte	0x21
	.secrel32	.LASF0
	.secrel32	.LASF1
	.secrel32	.LLRL0
	.quad	0
	.secrel32	.Ldebug_line0
	.uleb128 0xe
	.ascii "__gnuc_va_list\0"
	.byte	0x3
	.byte	0x18
	.byte	0x1d
	.long	0x89
	.uleb128 0x2d
	.byte	0x8
	.ascii "__builtin_va_list\0"
	.long	0xa1
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.uleb128 0x10
	.long	0xa1
	.uleb128 0xe
	.ascii "va_list\0"
	.byte	0x3
	.byte	0x1f
	.byte	0x1a
	.long	0x72
	.uleb128 0xe
	.ascii "size_t\0"
	.byte	0x4
	.byte	0x23
	.byte	0x2c
	.long	0xcd
	.uleb128 0x8
	.byte	0x8
	.byte	0x7
	.ascii "long long unsigned int\0"
	.uleb128 0x8
	.byte	0x8
	.byte	0x5
	.ascii "long long int\0"
	.uleb128 0xe
	.ascii "wint_t\0"
	.byte	0x4
	.byte	0x6a
	.byte	0x18
	.long	0x107
	.uleb128 0x8
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.uleb128 0xe
	.ascii "wctype_t\0"
	.byte	0x4
	.byte	0x6b
	.byte	0x18
	.long	0x107
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.ascii "long int\0"
	.uleb128 0x6
	.long	0xa1
	.uleb128 0x6
	.long	0x14b
	.uleb128 0x8
	.byte	0x2
	.byte	0x7
	.ascii "wchar_t\0"
	.uleb128 0x10
	.long	0x14b
	.uleb128 0x6
	.long	0x12e
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.ascii "long unsigned int\0"
	.uleb128 0x15
	.ascii "lconv\0"
	.byte	0x98
	.byte	0x5
	.byte	0x2d
	.byte	0xa
	.long	0x413
	.uleb128 0x4
	.ascii "decimal_point\0"
	.byte	0x5
	.byte	0x2e
	.byte	0xb
	.long	0x141
	.byte	0
	.uleb128 0x4
	.ascii "thousands_sep\0"
	.byte	0x5
	.byte	0x2f
	.byte	0xb
	.long	0x141
	.byte	0x8
	.uleb128 0x4
	.ascii "grouping\0"
	.byte	0x5
	.byte	0x30
	.byte	0xb
	.long	0x141
	.byte	0x10
	.uleb128 0x4
	.ascii "int_curr_symbol\0"
	.byte	0x5
	.byte	0x31
	.byte	0xb
	.long	0x141
	.byte	0x18
	.uleb128 0x4
	.ascii "currency_symbol\0"
	.byte	0x5
	.byte	0x32
	.byte	0xb
	.long	0x141
	.byte	0x20
	.uleb128 0x4
	.ascii "mon_decimal_point\0"
	.byte	0x5
	.byte	0x33
	.byte	0xb
	.long	0x141
	.byte	0x28
	.uleb128 0x4
	.ascii "mon_thousands_sep\0"
	.byte	0x5
	.byte	0x34
	.byte	0xb
	.long	0x141
	.byte	0x30
	.uleb128 0x4
	.ascii "mon_grouping\0"
	.byte	0x5
	.byte	0x35
	.byte	0xb
	.long	0x141
	.byte	0x38
	.uleb128 0x4
	.ascii "positive_sign\0"
	.byte	0x5
	.byte	0x36
	.byte	0xb
	.long	0x141
	.byte	0x40
	.uleb128 0x4
	.ascii "negative_sign\0"
	.byte	0x5
	.byte	0x37
	.byte	0xb
	.long	0x141
	.byte	0x48
	.uleb128 0x4
	.ascii "int_frac_digits\0"
	.byte	0x5
	.byte	0x38
	.byte	0xa
	.long	0xa1
	.byte	0x50
	.uleb128 0x4
	.ascii "frac_digits\0"
	.byte	0x5
	.byte	0x39
	.byte	0xa
	.long	0xa1
	.byte	0x51
	.uleb128 0x4
	.ascii "p_cs_precedes\0"
	.byte	0x5
	.byte	0x3a
	.byte	0xa
	.long	0xa1
	.byte	0x52
	.uleb128 0x4
	.ascii "p_sep_by_space\0"
	.byte	0x5
	.byte	0x3b
	.byte	0xa
	.long	0xa1
	.byte	0x53
	.uleb128 0x4
	.ascii "n_cs_precedes\0"
	.byte	0x5
	.byte	0x3c
	.byte	0xa
	.long	0xa1
	.byte	0x54
	.uleb128 0x4
	.ascii "n_sep_by_space\0"
	.byte	0x5
	.byte	0x3d
	.byte	0xa
	.long	0xa1
	.byte	0x55
	.uleb128 0x4
	.ascii "p_sign_posn\0"
	.byte	0x5
	.byte	0x3e
	.byte	0xa
	.long	0xa1
	.byte	0x56
	.uleb128 0x4
	.ascii "n_sign_posn\0"
	.byte	0x5
	.byte	0x3f
	.byte	0xa
	.long	0xa1
	.byte	0x57
	.uleb128 0x4
	.ascii "_W_decimal_point\0"
	.byte	0x5
	.byte	0x41
	.byte	0xe
	.long	0x146
	.byte	0x58
	.uleb128 0x4
	.ascii "_W_thousands_sep\0"
	.byte	0x5
	.byte	0x42
	.byte	0xe
	.long	0x146
	.byte	0x60
	.uleb128 0x4
	.ascii "_W_int_curr_symbol\0"
	.byte	0x5
	.byte	0x43
	.byte	0xe
	.long	0x146
	.byte	0x68
	.uleb128 0x4
	.ascii "_W_currency_symbol\0"
	.byte	0x5
	.byte	0x44
	.byte	0xe
	.long	0x146
	.byte	0x70
	.uleb128 0x4
	.ascii "_W_mon_decimal_point\0"
	.byte	0x5
	.byte	0x45
	.byte	0xe
	.long	0x146
	.byte	0x78
	.uleb128 0x4
	.ascii "_W_mon_thousands_sep\0"
	.byte	0x5
	.byte	0x46
	.byte	0xe
	.long	0x146
	.byte	0x80
	.uleb128 0x4
	.ascii "_W_positive_sign\0"
	.byte	0x5
	.byte	0x47
	.byte	0xe
	.long	0x146
	.byte	0x88
	.uleb128 0x4
	.ascii "_W_negative_sign\0"
	.byte	0x5
	.byte	0x48
	.byte	0xe
	.long	0x146
	.byte	0x90
	.byte	0
	.uleb128 0x6
	.long	0x185
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.uleb128 0x15
	.ascii "_iobuf\0"
	.byte	0x30
	.byte	0x1
	.byte	0x21
	.byte	0xa
	.long	0x4b9
	.uleb128 0x4
	.ascii "_ptr\0"
	.byte	0x1
	.byte	0x25
	.byte	0xb
	.long	0x141
	.byte	0
	.uleb128 0x4
	.ascii "_cnt\0"
	.byte	0x1
	.byte	0x26
	.byte	0x9
	.long	0x12e
	.byte	0x8
	.uleb128 0x4
	.ascii "_base\0"
	.byte	0x1
	.byte	0x27
	.byte	0xb
	.long	0x141
	.byte	0x10
	.uleb128 0x4
	.ascii "_flag\0"
	.byte	0x1
	.byte	0x28
	.byte	0x9
	.long	0x12e
	.byte	0x18
	.uleb128 0x4
	.ascii "_file\0"
	.byte	0x1
	.byte	0x29
	.byte	0x9
	.long	0x12e
	.byte	0x1c
	.uleb128 0x4
	.ascii "_charbuf\0"
	.byte	0x1
	.byte	0x2a
	.byte	0x9
	.long	0x12e
	.byte	0x20
	.uleb128 0x4
	.ascii "_bufsiz\0"
	.byte	0x1
	.byte	0x2b
	.byte	0x9
	.long	0x12e
	.byte	0x24
	.uleb128 0x4
	.ascii "_tmpfname\0"
	.byte	0x1
	.byte	0x2c
	.byte	0xb
	.long	0x141
	.byte	0x28
	.byte	0
	.uleb128 0xe
	.ascii "FILE\0"
	.byte	0x1
	.byte	0x2f
	.byte	0x19
	.long	0x429
	.uleb128 0xe
	.ascii "fpos_t\0"
	.byte	0x1
	.byte	0x73
	.byte	0x25
	.long	0xe7
	.uleb128 0x10
	.long	0x4c6
	.uleb128 0x15
	.ascii "_div_t\0"
	.byte	0x8
	.byte	0x6
	.byte	0x3c
	.byte	0x12
	.long	0x506
	.uleb128 0x4
	.ascii "quot\0"
	.byte	0x6
	.byte	0x3d
	.byte	0x9
	.long	0x12e
	.byte	0
	.uleb128 0x4
	.ascii "rem\0"
	.byte	0x6
	.byte	0x3e
	.byte	0x9
	.long	0x12e
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.ascii "div_t\0"
	.byte	0x6
	.byte	0x3f
	.byte	0x5
	.long	0x4da
	.uleb128 0x15
	.ascii "_ldiv_t\0"
	.byte	0x8
	.byte	0x6
	.byte	0x41
	.byte	0x12
	.long	0x541
	.uleb128 0x4
	.ascii "quot\0"
	.byte	0x6
	.byte	0x42
	.byte	0xa
	.long	0x135
	.byte	0
	.uleb128 0x4
	.ascii "rem\0"
	.byte	0x6
	.byte	0x43
	.byte	0xa
	.long	0x135
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.ascii "ldiv_t\0"
	.byte	0x6
	.byte	0x44
	.byte	0x5
	.long	0x514
	.uleb128 0x8
	.byte	0x8
	.byte	0x4
	.ascii "double\0"
	.uleb128 0x8
	.byte	0x4
	.byte	0x4
	.ascii "float\0"
	.uleb128 0x8
	.byte	0x10
	.byte	0x4
	.ascii "long double\0"
	.uleb128 0x6
	.long	0x577
	.uleb128 0x2e
	.uleb128 0x6
	.long	0x156
	.uleb128 0x6
	.long	0x141
	.uleb128 0x6
	.long	0x146
	.uleb128 0x2f
	.byte	0x10
	.byte	0x6
	.word	0x2d4
	.byte	0x12
	.ascii "7lldiv_t\0"
	.long	0x5b8
	.uleb128 0xf
	.ascii "quot\0"
	.byte	0x6
	.word	0x2d4
	.byte	0x30
	.long	0xe7
	.byte	0
	.uleb128 0xf
	.ascii "rem\0"
	.byte	0x6
	.word	0x2d4
	.byte	0x36
	.long	0xe7
	.byte	0x8
	.byte	0
	.uleb128 0x1d
	.ascii "lldiv_t\0"
	.byte	0x6
	.word	0x2d4
	.byte	0x3d
	.long	0x587
	.uleb128 0x21
	.ascii "std\0"
	.word	0x132
	.long	0x112f
	.uleb128 0x2
	.byte	0x7
	.byte	0x83
	.byte	0xb
	.long	0x506
	.uleb128 0x2
	.byte	0x7
	.byte	0x84
	.byte	0xb
	.long	0x541
	.uleb128 0x2
	.byte	0x7
	.byte	0x8a
	.byte	0xb
	.long	0x112f
	.uleb128 0x2
	.byte	0x7
	.byte	0x90
	.byte	0xb
	.long	0x1149
	.uleb128 0x2
	.byte	0x7
	.byte	0x91
	.byte	0xb
	.long	0x1166
	.uleb128 0x2
	.byte	0x7
	.byte	0x92
	.byte	0xb
	.long	0x117e
	.uleb128 0x2
	.byte	0x7
	.byte	0x93
	.byte	0xb
	.long	0x1196
	.uleb128 0x2
	.byte	0x7
	.byte	0x95
	.byte	0xb
	.long	0x11e6
	.uleb128 0x2
	.byte	0x7
	.byte	0x98
	.byte	0xb
	.long	0x1202
	.uleb128 0x2
	.byte	0x7
	.byte	0x9a
	.byte	0xb
	.long	0x121c
	.uleb128 0x2
	.byte	0x7
	.byte	0x9d
	.byte	0xb
	.long	0x1239
	.uleb128 0x2
	.byte	0x7
	.byte	0x9e
	.byte	0xb
	.long	0x1257
	.uleb128 0x2
	.byte	0x7
	.byte	0x9f
	.byte	0xb
	.long	0x127d
	.uleb128 0x2
	.byte	0x7
	.byte	0xa1
	.byte	0xb
	.long	0x12a1
	.uleb128 0x2
	.byte	0x7
	.byte	0xa7
	.byte	0xb
	.long	0x12c4
	.uleb128 0x2
	.byte	0x7
	.byte	0xa9
	.byte	0xb
	.long	0x12d2
	.uleb128 0x2
	.byte	0x7
	.byte	0xaa
	.byte	0xb
	.long	0x12e6
	.uleb128 0x2
	.byte	0x7
	.byte	0xab
	.byte	0xb
	.long	0x1304
	.uleb128 0x2
	.byte	0x7
	.byte	0xac
	.byte	0xb
	.long	0x1328
	.uleb128 0x2
	.byte	0x7
	.byte	0xad
	.byte	0xb
	.long	0x134d
	.uleb128 0x2
	.byte	0x7
	.byte	0xaf
	.byte	0xb
	.long	0x1367
	.uleb128 0x2
	.byte	0x7
	.byte	0xb0
	.byte	0xb
	.long	0x138d
	.uleb128 0x2
	.byte	0x7
	.byte	0xf4
	.byte	0x16
	.long	0x5b8
	.uleb128 0x2
	.byte	0x7
	.byte	0xf9
	.byte	0x16
	.long	0x13f5
	.uleb128 0x2
	.byte	0x7
	.byte	0xfa
	.byte	0x16
	.long	0x1471
	.uleb128 0x2
	.byte	0x7
	.byte	0xfc
	.byte	0x16
	.long	0x148f
	.uleb128 0x2
	.byte	0x7
	.byte	0xfd
	.byte	0x16
	.long	0x14f3
	.uleb128 0x2
	.byte	0x7
	.byte	0xfe
	.byte	0x16
	.long	0x14a8
	.uleb128 0x2
	.byte	0x7
	.byte	0xff
	.byte	0x16
	.long	0x14cd
	.uleb128 0xb
	.byte	0x7
	.word	0x100
	.byte	0x16
	.long	0x1511
	.uleb128 0x11
	.ascii "abs\0"
	.byte	0x8
	.byte	0x4f
	.ascii "_ZSt3abse\0"
	.long	0x563
	.long	0x6e4
	.uleb128 0x1
	.long	0x563
	.byte	0
	.uleb128 0x11
	.ascii "abs\0"
	.byte	0x8
	.byte	0x4b
	.ascii "_ZSt3absf\0"
	.long	0x55a
	.long	0x703
	.uleb128 0x1
	.long	0x55a
	.byte	0
	.uleb128 0x11
	.ascii "abs\0"
	.byte	0x8
	.byte	0x47
	.ascii "_ZSt3absd\0"
	.long	0x550
	.long	0x722
	.uleb128 0x1
	.long	0x550
	.byte	0
	.uleb128 0x11
	.ascii "abs\0"
	.byte	0x8
	.byte	0x3d
	.ascii "_ZSt3absx\0"
	.long	0xe7
	.long	0x741
	.uleb128 0x1
	.long	0xe7
	.byte	0
	.uleb128 0x11
	.ascii "abs\0"
	.byte	0x8
	.byte	0x38
	.ascii "_ZSt3absl\0"
	.long	0x135
	.long	0x760
	.uleb128 0x1
	.long	0x135
	.byte	0
	.uleb128 0x11
	.ascii "div\0"
	.byte	0x7
	.byte	0xb5
	.ascii "_ZSt3divll\0"
	.long	0x541
	.long	0x785
	.uleb128 0x1
	.long	0x135
	.uleb128 0x1
	.long	0x135
	.byte	0
	.uleb128 0x2
	.byte	0x9
	.byte	0x40
	.byte	0xb
	.long	0x16d9
	.uleb128 0x2
	.byte	0x9
	.byte	0x8d
	.byte	0xb
	.long	0xf8
	.uleb128 0x2
	.byte	0x9
	.byte	0x8f
	.byte	0xb
	.long	0x16f1
	.uleb128 0x2
	.byte	0x9
	.byte	0x90
	.byte	0xb
	.long	0x170a
	.uleb128 0x2
	.byte	0x9
	.byte	0x91
	.byte	0xb
	.long	0x1729
	.uleb128 0x2
	.byte	0x9
	.byte	0x92
	.byte	0xb
	.long	0x174d
	.uleb128 0x2
	.byte	0x9
	.byte	0x93
	.byte	0xb
	.long	0x176c
	.uleb128 0x2
	.byte	0x9
	.byte	0x94
	.byte	0xb
	.long	0x178b
	.uleb128 0x2
	.byte	0x9
	.byte	0x95
	.byte	0xb
	.long	0x17a9
	.uleb128 0x2
	.byte	0x9
	.byte	0x96
	.byte	0xb
	.long	0x17cb
	.uleb128 0x2
	.byte	0x9
	.byte	0x97
	.byte	0xb
	.long	0x17ec
	.uleb128 0x2
	.byte	0x9
	.byte	0x98
	.byte	0xb
	.long	0x1805
	.uleb128 0x2
	.byte	0x9
	.byte	0x99
	.byte	0xb
	.long	0x1817
	.uleb128 0x2
	.byte	0x9
	.byte	0x9a
	.byte	0xb
	.long	0x1840
	.uleb128 0x2
	.byte	0x9
	.byte	0x9b
	.byte	0xb
	.long	0x186a
	.uleb128 0x2
	.byte	0x9
	.byte	0x9c
	.byte	0xb
	.long	0x188a
	.uleb128 0x2
	.byte	0x9
	.byte	0x9d
	.byte	0xb
	.long	0x18bb
	.uleb128 0x2
	.byte	0x9
	.byte	0x9e
	.byte	0xb
	.long	0x18d9
	.uleb128 0x2
	.byte	0x9
	.byte	0xa0
	.byte	0xb
	.long	0x18f5
	.uleb128 0x2
	.byte	0x9
	.byte	0xa0
	.byte	0xb
	.long	0x190f
	.uleb128 0x2
	.byte	0x9
	.byte	0xa2
	.byte	0xb
	.long	0x192e
	.uleb128 0x2
	.byte	0x9
	.byte	0xa3
	.byte	0xb
	.long	0x194f
	.uleb128 0x2
	.byte	0x9
	.byte	0xa4
	.byte	0xb
	.long	0x196f
	.uleb128 0x2
	.byte	0x9
	.byte	0xa6
	.byte	0xb
	.long	0x1996
	.uleb128 0x2
	.byte	0x9
	.byte	0xa9
	.byte	0xb
	.long	0x19bc
	.uleb128 0x2
	.byte	0x9
	.byte	0xa9
	.byte	0xb
	.long	0x19da
	.uleb128 0x2
	.byte	0x9
	.byte	0xac
	.byte	0xb
	.long	0x19fd
	.uleb128 0x2
	.byte	0x9
	.byte	0xae
	.byte	0xb
	.long	0x1a23
	.uleb128 0x2
	.byte	0x9
	.byte	0xb0
	.byte	0xb
	.long	0x1a44
	.uleb128 0x2
	.byte	0x9
	.byte	0xb2
	.byte	0xb
	.long	0x1a64
	.uleb128 0x2
	.byte	0x9
	.byte	0xb3
	.byte	0xb
	.long	0x1a89
	.uleb128 0x2
	.byte	0x9
	.byte	0xb4
	.byte	0xb
	.long	0x1aa8
	.uleb128 0x2
	.byte	0x9
	.byte	0xb5
	.byte	0xb
	.long	0x1ac7
	.uleb128 0x2
	.byte	0x9
	.byte	0xb6
	.byte	0xb
	.long	0x1ae7
	.uleb128 0x2
	.byte	0x9
	.byte	0xb7
	.byte	0xb
	.long	0x1b06
	.uleb128 0x2
	.byte	0x9
	.byte	0xb8
	.byte	0xb
	.long	0x1b26
	.uleb128 0x2
	.byte	0x9
	.byte	0xb9
	.byte	0xb
	.long	0x1b56
	.uleb128 0x2
	.byte	0x9
	.byte	0xba
	.byte	0xb
	.long	0x1b70
	.uleb128 0x2
	.byte	0x9
	.byte	0xbb
	.byte	0xb
	.long	0x1b95
	.uleb128 0x2
	.byte	0x9
	.byte	0xbc
	.byte	0xb
	.long	0x1bba
	.uleb128 0x2
	.byte	0x9
	.byte	0xbd
	.byte	0xb
	.long	0x1bdf
	.uleb128 0x2
	.byte	0x9
	.byte	0xbe
	.byte	0xb
	.long	0x1c10
	.uleb128 0x2
	.byte	0x9
	.byte	0xbf
	.byte	0xb
	.long	0x1c2f
	.uleb128 0x2
	.byte	0x9
	.byte	0xc1
	.byte	0xb
	.long	0x1c4d
	.uleb128 0x2
	.byte	0x9
	.byte	0xc3
	.byte	0xb
	.long	0x1c6b
	.uleb128 0x2
	.byte	0x9
	.byte	0xc4
	.byte	0xb
	.long	0x1c8a
	.uleb128 0x2
	.byte	0x9
	.byte	0xc5
	.byte	0xb
	.long	0x1cae
	.uleb128 0x2
	.byte	0x9
	.byte	0xc6
	.byte	0xb
	.long	0x1cd3
	.uleb128 0x2
	.byte	0x9
	.byte	0xc7
	.byte	0xb
	.long	0x1cf8
	.uleb128 0x2
	.byte	0x9
	.byte	0xc8
	.byte	0xb
	.long	0x1d11
	.uleb128 0x2
	.byte	0x9
	.byte	0xc9
	.byte	0xb
	.long	0x1d36
	.uleb128 0x2
	.byte	0x9
	.byte	0xca
	.byte	0xb
	.long	0x1d5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xcb
	.byte	0xb
	.long	0x1d81
	.uleb128 0x2
	.byte	0x9
	.byte	0xcc
	.byte	0xb
	.long	0x1da6
	.uleb128 0x2
	.byte	0x9
	.byte	0xcd
	.byte	0xb
	.long	0x1dc2
	.uleb128 0x2
	.byte	0x9
	.byte	0xce
	.byte	0xb
	.long	0x1ddd
	.uleb128 0x2
	.byte	0x9
	.byte	0xcf
	.byte	0xb
	.long	0x1dfc
	.uleb128 0x2
	.byte	0x9
	.byte	0xd0
	.byte	0xb
	.long	0x1e1c
	.uleb128 0x2
	.byte	0x9
	.byte	0xd1
	.byte	0xb
	.long	0x1e3c
	.uleb128 0x2
	.byte	0x9
	.byte	0xd2
	.byte	0xb
	.long	0x1e5b
	.uleb128 0xb
	.byte	0x9
	.word	0x10b
	.byte	0x16
	.long	0x1e80
	.uleb128 0xb
	.byte	0x9
	.word	0x10c
	.byte	0x16
	.long	0x1ea0
	.uleb128 0xb
	.byte	0x9
	.word	0x10d
	.byte	0x16
	.long	0x1ec5
	.uleb128 0xb
	.byte	0x9
	.word	0x11b
	.byte	0xe
	.long	0x1c4d
	.uleb128 0xb
	.byte	0x9
	.word	0x11e
	.byte	0xe
	.long	0x1996
	.uleb128 0xb
	.byte	0x9
	.word	0x121
	.byte	0xe
	.long	0x19fd
	.uleb128 0xb
	.byte	0x9
	.word	0x124
	.byte	0xe
	.long	0x1a44
	.uleb128 0xb
	.byte	0x9
	.word	0x128
	.byte	0xe
	.long	0x1e80
	.uleb128 0xb
	.byte	0x9
	.word	0x129
	.byte	0xe
	.long	0x1ea0
	.uleb128 0xb
	.byte	0x9
	.word	0x12a
	.byte	0xe
	.long	0x1ec5
	.uleb128 0x22
	.ascii "__swappable_details\0"
	.word	0xab0
	.uleb128 0x22
	.ascii "__swappable_with_details\0"
	.word	0xb06
	.uleb128 0x23
	.ascii "__exception_ptr\0"
	.byte	0xc
	.byte	0x3d
	.byte	0xd
	.long	0xead
	.uleb128 0x30
	.secrel32	.LASF2
	.byte	0x8
	.byte	0xc
	.byte	0x61
	.byte	0xb
	.long	0xe57
	.uleb128 0x4
	.ascii "_M_exception_object\0"
	.byte	0xc
	.byte	0x63
	.byte	0xd
	.long	0x11c5
	.byte	0
	.uleb128 0x31
	.secrel32	.LASF2
	.byte	0xc
	.byte	0x65
	.byte	0x10
	.ascii "_ZNSt15__exception_ptr13exception_ptrC4EPv\0"
	.long	0xa6f
	.long	0xa7a
	.uleb128 0xa
	.long	0x1f81
	.uleb128 0x1
	.long	0x11c5
	.byte	0
	.uleb128 0x24
	.ascii "_M_addref\0"
	.byte	0x67
	.ascii "_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv\0"
	.long	0xac0
	.long	0xac6
	.uleb128 0xa
	.long	0x1f81
	.byte	0
	.uleb128 0x24
	.ascii "_M_release\0"
	.byte	0x68
	.ascii "_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv\0"
	.long	0xb0f
	.long	0xb15
	.uleb128 0xa
	.long	0x1f81
	.byte	0
	.uleb128 0x32
	.ascii "_M_get\0"
	.byte	0xc
	.byte	0x6a
	.byte	0xd
	.ascii "_ZNKSt15__exception_ptr13exception_ptr6_M_getEv\0"
	.long	0x11c5
	.long	0xb5c
	.long	0xb62
	.uleb128 0xa
	.long	0x1f86
	.byte	0
	.uleb128 0x16
	.secrel32	.LASF2
	.byte	0x72
	.ascii "_ZNSt15__exception_ptr13exception_ptrC4Ev\0"
	.long	0xb9a
	.long	0xba0
	.uleb128 0xa
	.long	0x1f81
	.byte	0
	.uleb128 0x16
	.secrel32	.LASF2
	.byte	0x74
	.ascii "_ZNSt15__exception_ptr13exception_ptrC4ERKS0_\0"
	.long	0xbdc
	.long	0xbe7
	.uleb128 0xa
	.long	0x1f81
	.uleb128 0x1
	.long	0x1f8b
	.byte	0
	.uleb128 0x16
	.secrel32	.LASF2
	.byte	0x77
	.ascii "_ZNSt15__exception_ptr13exception_ptrC4EDn\0"
	.long	0xc20
	.long	0xc2b
	.uleb128 0xa
	.long	0x1f81
	.uleb128 0x1
	.long	0xf11
	.byte	0
	.uleb128 0x16
	.secrel32	.LASF2
	.byte	0x7b
	.ascii "_ZNSt15__exception_ptr13exception_ptrC4EOS0_\0"
	.long	0xc66
	.long	0xc71
	.uleb128 0xa
	.long	0x1f81
	.uleb128 0x1
	.long	0x1fa3
	.byte	0
	.uleb128 0x25
	.secrel32	.LASF3
	.byte	0x88
	.ascii "_ZNSt15__exception_ptr13exception_ptraSERKS0_\0"
	.long	0x1fa9
	.long	0xcb1
	.long	0xcbc
	.uleb128 0xa
	.long	0x1f81
	.uleb128 0x1
	.long	0x1f8b
	.byte	0
	.uleb128 0x25
	.secrel32	.LASF3
	.byte	0x8c
	.ascii "_ZNSt15__exception_ptr13exception_ptraSEOS0_\0"
	.long	0x1fa9
	.long	0xcfb
	.long	0xd06
	.uleb128 0xa
	.long	0x1f81
	.uleb128 0x1
	.long	0x1fa3
	.byte	0
	.uleb128 0x26
	.ascii "~exception_ptr\0"
	.byte	0x93
	.ascii "_ZNSt15__exception_ptr13exception_ptrD4Ev\0"
	.long	0xd49
	.long	0xd54
	.uleb128 0xa
	.long	0x1f81
	.uleb128 0xa
	.long	0x12e
	.byte	0
	.uleb128 0x26
	.ascii "swap\0"
	.byte	0x96
	.ascii "_ZNSt15__exception_ptr13exception_ptr4swapERS0_\0"
	.long	0xd93
	.long	0xd9e
	.uleb128 0xa
	.long	0x1f81
	.uleb128 0x1
	.long	0x1fa9
	.byte	0
	.uleb128 0x33
	.ascii "operator bool\0"
	.byte	0xc
	.byte	0xa2
	.byte	0x10
	.ascii "_ZNKSt15__exception_ptr13exception_ptrcvbEv\0"
	.long	0x1f4d
	.byte	0x1
	.long	0xde9
	.long	0xdef
	.uleb128 0xa
	.long	0x1f86
	.byte	0
	.uleb128 0x34
	.ascii "__cxa_exception_type\0"
	.byte	0xc
	.byte	0xb7
	.byte	0x7
	.ascii "_ZNKSt15__exception_ptr13exception_ptr20__cxa_exception_typeEv\0"
	.long	0x1fae
	.byte	0x1
	.long	0xe50
	.uleb128 0xa
	.long	0x1f86
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0xa0a
	.uleb128 0x2
	.byte	0xc
	.byte	0x55
	.byte	0x10
	.long	0xeb5
	.uleb128 0x35
	.ascii "swap\0"
	.byte	0xc
	.byte	0xe6
	.byte	0x5
	.ascii "_ZNSt15__exception_ptr4swapERNS_13exception_ptrES1_\0"
	.uleb128 0x1
	.long	0x1fa9
	.uleb128 0x1
	.long	0x1fa9
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0xc
	.byte	0x42
	.byte	0x1a
	.long	0xa0a
	.uleb128 0x36
	.ascii "rethrow_exception\0"
	.byte	0xc
	.byte	0x51
	.byte	0x8
	.ascii "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE\0"
	.long	0xf11
	.uleb128 0x1
	.long	0xa0a
	.byte	0
	.uleb128 0x1d
	.ascii "nullptr_t\0"
	.byte	0xb
	.word	0x138
	.byte	0x1d
	.long	0x1f90
	.uleb128 0x37
	.ascii "type_info\0"
	.uleb128 0x10
	.long	0xf24
	.uleb128 0x2
	.byte	0xc
	.byte	0xf3
	.byte	0x1a
	.long	0xe64
	.uleb128 0x2
	.byte	0xd
	.byte	0x35
	.byte	0xb
	.long	0x185
	.uleb128 0x2
	.byte	0xd
	.byte	0x36
	.byte	0xb
	.long	0x1fb3
	.uleb128 0x2
	.byte	0xd
	.byte	0x37
	.byte	0xb
	.long	0x1fd4
	.uleb128 0x1e
	.ascii "__debug\0"
	.byte	0xe
	.byte	0x32
	.byte	0xd
	.uleb128 0x2
	.byte	0xf
	.byte	0x62
	.byte	0xb
	.long	0x4b9
	.uleb128 0x2
	.byte	0xf
	.byte	0x63
	.byte	0xb
	.long	0x4c6
	.uleb128 0x2
	.byte	0xf
	.byte	0x65
	.byte	0xb
	.long	0x2004
	.uleb128 0x2
	.byte	0xf
	.byte	0x66
	.byte	0xb
	.long	0x201b
	.uleb128 0x2
	.byte	0xf
	.byte	0x67
	.byte	0xb
	.long	0x2035
	.uleb128 0x2
	.byte	0xf
	.byte	0x68
	.byte	0xb
	.long	0x204d
	.uleb128 0x2
	.byte	0xf
	.byte	0x69
	.byte	0xb
	.long	0x2067
	.uleb128 0x2
	.byte	0xf
	.byte	0x6a
	.byte	0xb
	.long	0x2081
	.uleb128 0x2
	.byte	0xf
	.byte	0x6b
	.byte	0xb
	.long	0x209a
	.uleb128 0x2
	.byte	0xf
	.byte	0x6c
	.byte	0xb
	.long	0x20bf
	.uleb128 0x2
	.byte	0xf
	.byte	0x6d
	.byte	0xb
	.long	0x20e2
	.uleb128 0x2
	.byte	0xf
	.byte	0x6e
	.byte	0xb
	.long	0x2100
	.uleb128 0x2
	.byte	0xf
	.byte	0x71
	.byte	0xb
	.long	0x2136
	.uleb128 0x2
	.byte	0xf
	.byte	0x72
	.byte	0xb
	.long	0x215e
	.uleb128 0x2
	.byte	0xf
	.byte	0x73
	.byte	0xb
	.long	0x2183
	.uleb128 0x2
	.byte	0xf
	.byte	0x74
	.byte	0xb
	.long	0x21b7
	.uleb128 0x2
	.byte	0xf
	.byte	0x75
	.byte	0xb
	.long	0x21da
	.uleb128 0x2
	.byte	0xf
	.byte	0x76
	.byte	0xb
	.long	0x21ff
	.uleb128 0x2
	.byte	0xf
	.byte	0x78
	.byte	0xb
	.long	0x2218
	.uleb128 0x2
	.byte	0xf
	.byte	0x79
	.byte	0xb
	.long	0x2230
	.uleb128 0x2
	.byte	0xf
	.byte	0x7e
	.byte	0xb
	.long	0x2241
	.uleb128 0x2
	.byte	0xf
	.byte	0x7f
	.byte	0xb
	.long	0x2256
	.uleb128 0x2
	.byte	0xf
	.byte	0x83
	.byte	0xb
	.long	0x22c5
	.uleb128 0x2
	.byte	0xf
	.byte	0x84
	.byte	0xb
	.long	0x22df
	.uleb128 0x2
	.byte	0xf
	.byte	0x85
	.byte	0xb
	.long	0x22fe
	.uleb128 0x2
	.byte	0xf
	.byte	0x86
	.byte	0xb
	.long	0x2313
	.uleb128 0x2
	.byte	0xf
	.byte	0x87
	.byte	0xb
	.long	0x2380
	.uleb128 0x2
	.byte	0xf
	.byte	0x88
	.byte	0xb
	.long	0x239a
	.uleb128 0x2
	.byte	0xf
	.byte	0x89
	.byte	0xb
	.long	0x23c4
	.uleb128 0x2
	.byte	0xf
	.byte	0x8a
	.byte	0xb
	.long	0x23f4
	.uleb128 0x2
	.byte	0xf
	.byte	0x8b
	.byte	0xb
	.long	0x2423
	.uleb128 0x2
	.byte	0xf
	.byte	0x8d
	.byte	0xb
	.long	0x2434
	.uleb128 0x2
	.byte	0xf
	.byte	0x8f
	.byte	0xb
	.long	0x244e
	.uleb128 0x2
	.byte	0xf
	.byte	0x90
	.byte	0xb
	.long	0x246d
	.uleb128 0x2
	.byte	0xf
	.byte	0x91
	.byte	0xb
	.long	0x24aa
	.uleb128 0x2
	.byte	0xf
	.byte	0x92
	.byte	0xb
	.long	0x24d8
	.uleb128 0x2
	.byte	0xf
	.byte	0xb9
	.byte	0x16
	.long	0x250f
	.uleb128 0x2
	.byte	0xf
	.byte	0xba
	.byte	0x16
	.long	0x2547
	.uleb128 0x2
	.byte	0xf
	.byte	0xbb
	.byte	0x16
	.long	0x2582
	.uleb128 0x2
	.byte	0xf
	.byte	0xbc
	.byte	0x16
	.long	0x25ae
	.uleb128 0x2
	.byte	0xf
	.byte	0xbd
	.byte	0x16
	.long	0x25ed
	.uleb128 0x38
	.ascii "__cxx11\0"
	.byte	0xb
	.word	0x155
	.byte	0x41
	.uleb128 0x2
	.byte	0x10
	.byte	0x3a
	.byte	0xb
	.long	0x1f37
	.uleb128 0x1e
	.ascii "pmr\0"
	.byte	0x11
	.byte	0x35
	.byte	0xb
	.uleb128 0x39
	.ascii "_V2\0"
	.byte	0x12
	.byte	0x52
	.byte	0x1
	.uleb128 0x2
	.byte	0x13
	.byte	0x52
	.byte	0xb
	.long	0x2623
	.uleb128 0x2
	.byte	0x13
	.byte	0x53
	.byte	0xb
	.long	0x11d
	.uleb128 0x2
	.byte	0x13
	.byte	0x54
	.byte	0xb
	.long	0xf8
	.uleb128 0x2
	.byte	0x13
	.byte	0x5c
	.byte	0xb
	.long	0x2635
	.uleb128 0x2
	.byte	0x13
	.byte	0x65
	.byte	0xb
	.long	0x2656
	.uleb128 0x2
	.byte	0x13
	.byte	0x68
	.byte	0xb
	.long	0x2677
	.uleb128 0x2
	.byte	0x13
	.byte	0x69
	.byte	0xb
	.long	0x2691
	.uleb128 0x3a
	.ascii "__detail\0"
	.byte	0xa
	.byte	0x91
	.byte	0xd
	.uleb128 0x1f
	.secrel32	.LASF4
	.long	0x1f55
	.uleb128 0x1f
	.secrel32	.LASF4
	.long	0x1f55
	.uleb128 0x1f
	.secrel32	.LASF4
	.long	0x1f55
	.byte	0
	.byte	0
	.uleb128 0x3
	.ascii "atexit\0"
	.byte	0x6
	.word	0x1a9
	.byte	0xf
	.long	0x12e
	.long	0x1149
	.uleb128 0x1
	.long	0x572
	.byte	0
	.uleb128 0x3
	.ascii "atof\0"
	.byte	0x6
	.word	0x1af
	.byte	0x12
	.long	0x550
	.long	0x1161
	.uleb128 0x1
	.long	0x1161
	.byte	0
	.uleb128 0x6
	.long	0xa9
	.uleb128 0x3
	.ascii "atoi\0"
	.byte	0x6
	.word	0x1b2
	.byte	0xf
	.long	0x12e
	.long	0x117e
	.uleb128 0x1
	.long	0x1161
	.byte	0
	.uleb128 0x3
	.ascii "atol\0"
	.byte	0x6
	.word	0x1b4
	.byte	0x10
	.long	0x135
	.long	0x1196
	.uleb128 0x1
	.long	0x1161
	.byte	0
	.uleb128 0x3
	.ascii "bsearch\0"
	.byte	0x6
	.word	0x1b8
	.byte	0x11
	.long	0x11c5
	.long	0x11c5
	.uleb128 0x1
	.long	0x11c7
	.uleb128 0x1
	.long	0x11c7
	.uleb128 0x1
	.long	0xbe
	.uleb128 0x1
	.long	0xbe
	.uleb128 0x1
	.long	0x11cd
	.byte	0
	.uleb128 0x3b
	.byte	0x8
	.uleb128 0x6
	.long	0x11cc
	.uleb128 0x3c
	.uleb128 0x6
	.long	0x11d2
	.uleb128 0x3d
	.long	0x12e
	.long	0x11e6
	.uleb128 0x1
	.long	0x11c7
	.uleb128 0x1
	.long	0x11c7
	.byte	0
	.uleb128 0x3
	.ascii "div\0"
	.byte	0x6
	.word	0x1be
	.byte	0x11
	.long	0x506
	.long	0x1202
	.uleb128 0x1
	.long	0x12e
	.uleb128 0x1
	.long	0x12e
	.byte	0
	.uleb128 0x3
	.ascii "getenv\0"
	.byte	0x6
	.word	0x1bf
	.byte	0x11
	.long	0x141
	.long	0x121c
	.uleb128 0x1
	.long	0x1161
	.byte	0
	.uleb128 0x3
	.ascii "ldiv\0"
	.byte	0x6
	.word	0x1c9
	.byte	0x12
	.long	0x541
	.long	0x1239
	.uleb128 0x1
	.long	0x135
	.uleb128 0x1
	.long	0x135
	.byte	0
	.uleb128 0x3
	.ascii "mblen\0"
	.byte	0x6
	.word	0x1cb
	.byte	0xf
	.long	0x12e
	.long	0x1257
	.uleb128 0x1
	.long	0x1161
	.uleb128 0x1
	.long	0xbe
	.byte	0
	.uleb128 0x3
	.ascii "mbstowcs\0"
	.byte	0x6
	.word	0x1d3
	.byte	0x12
	.long	0xbe
	.long	0x127d
	.uleb128 0x1
	.long	0x146
	.uleb128 0x1
	.long	0x1161
	.uleb128 0x1
	.long	0xbe
	.byte	0
	.uleb128 0x3
	.ascii "mbtowc\0"
	.byte	0x6
	.word	0x1d1
	.byte	0xf
	.long	0x12e
	.long	0x12a1
	.uleb128 0x1
	.long	0x146
	.uleb128 0x1
	.long	0x1161
	.uleb128 0x1
	.long	0xbe
	.byte	0
	.uleb128 0x12
	.ascii "qsort\0"
	.byte	0x6
	.word	0x1b9
	.long	0x12c4
	.uleb128 0x1
	.long	0x11c5
	.uleb128 0x1
	.long	0xbe
	.uleb128 0x1
	.long	0xbe
	.uleb128 0x1
	.long	0x11cd
	.byte	0
	.uleb128 0x17
	.ascii "rand\0"
	.byte	0x6
	.word	0x1d6
	.byte	0xf
	.long	0x12e
	.uleb128 0x12
	.ascii "srand\0"
	.byte	0x6
	.word	0x1d8
	.long	0x12e6
	.uleb128 0x1
	.long	0x160
	.byte	0
	.uleb128 0x18
	.ascii "strtod\0"
	.word	0x1e4
	.byte	0x20
	.long	0x550
	.long	0x1304
	.uleb128 0x1
	.long	0x1161
	.uleb128 0x1
	.long	0x57d
	.byte	0
	.uleb128 0x3
	.ascii "strtol\0"
	.byte	0x6
	.word	0x207
	.byte	0x10
	.long	0x135
	.long	0x1328
	.uleb128 0x1
	.long	0x1161
	.uleb128 0x1
	.long	0x57d
	.uleb128 0x1
	.long	0x12e
	.byte	0
	.uleb128 0x3
	.ascii "strtoul\0"
	.byte	0x6
	.word	0x209
	.byte	0x19
	.long	0x170
	.long	0x134d
	.uleb128 0x1
	.long	0x1161
	.uleb128 0x1
	.long	0x57d
	.uleb128 0x1
	.long	0x12e
	.byte	0
	.uleb128 0x3
	.ascii "system\0"
	.byte	0x6
	.word	0x20d
	.byte	0xf
	.long	0x12e
	.long	0x1367
	.uleb128 0x1
	.long	0x1161
	.byte	0
	.uleb128 0x3
	.ascii "wcstombs\0"
	.byte	0x6
	.word	0x212
	.byte	0x12
	.long	0xbe
	.long	0x138d
	.uleb128 0x1
	.long	0x141
	.uleb128 0x1
	.long	0x578
	.uleb128 0x1
	.long	0xbe
	.byte	0
	.uleb128 0x3
	.ascii "wctomb\0"
	.byte	0x6
	.word	0x210
	.byte	0xf
	.long	0x12e
	.long	0x13ac
	.uleb128 0x1
	.long	0x141
	.uleb128 0x1
	.long	0x14b
	.byte	0
	.uleb128 0x21
	.ascii "__gnu_cxx\0"
	.word	0x157
	.long	0x1471
	.uleb128 0x2
	.byte	0x7
	.byte	0xcc
	.byte	0xb
	.long	0x5b8
	.uleb128 0x2
	.byte	0x7
	.byte	0xdc
	.byte	0xb
	.long	0x1471
	.uleb128 0x2
	.byte	0x7
	.byte	0xe7
	.byte	0xb
	.long	0x148f
	.uleb128 0x2
	.byte	0x7
	.byte	0xe8
	.byte	0xb
	.long	0x14a8
	.uleb128 0x2
	.byte	0x7
	.byte	0xe9
	.byte	0xb
	.long	0x14cd
	.uleb128 0x2
	.byte	0x7
	.byte	0xeb
	.byte	0xb
	.long	0x14f3
	.uleb128 0x2
	.byte	0x7
	.byte	0xec
	.byte	0xb
	.long	0x1511
	.uleb128 0x11
	.ascii "div\0"
	.byte	0x7
	.byte	0xd9
	.ascii "_ZN9__gnu_cxx3divExx\0"
	.long	0x5b8
	.long	0x1424
	.uleb128 0x1
	.long	0xe7
	.uleb128 0x1
	.long	0xe7
	.byte	0
	.uleb128 0x2
	.byte	0x9
	.byte	0xfb
	.byte	0xb
	.long	0x1e80
	.uleb128 0xb
	.byte	0x9
	.word	0x104
	.byte	0xb
	.long	0x1ea0
	.uleb128 0xb
	.byte	0x9
	.word	0x105
	.byte	0xb
	.long	0x1ec5
	.uleb128 0x1e
	.ascii "__ops\0"
	.byte	0x15
	.byte	0x25
	.byte	0xb
	.uleb128 0x2
	.byte	0xf
	.byte	0xaf
	.byte	0xb
	.long	0x250f
	.uleb128 0x2
	.byte	0xf
	.byte	0xb0
	.byte	0xb
	.long	0x2547
	.uleb128 0x2
	.byte	0xf
	.byte	0xb1
	.byte	0xb
	.long	0x2582
	.uleb128 0x2
	.byte	0xf
	.byte	0xb2
	.byte	0xb
	.long	0x25ae
	.uleb128 0x2
	.byte	0xf
	.byte	0xb3
	.byte	0xb
	.long	0x25ed
	.byte	0
	.uleb128 0x3
	.ascii "lldiv\0"
	.byte	0x6
	.word	0x2d6
	.byte	0x25
	.long	0x5b8
	.long	0x148f
	.uleb128 0x1
	.long	0xe7
	.uleb128 0x1
	.long	0xe7
	.byte	0
	.uleb128 0x3
	.ascii "atoll\0"
	.byte	0x6
	.word	0x2e1
	.byte	0x28
	.long	0xe7
	.long	0x14a8
	.uleb128 0x1
	.long	0x1161
	.byte	0
	.uleb128 0x3
	.ascii "strtoll\0"
	.byte	0x6
	.word	0x2dd
	.byte	0x28
	.long	0xe7
	.long	0x14cd
	.uleb128 0x1
	.long	0x1161
	.uleb128 0x1
	.long	0x57d
	.uleb128 0x1
	.long	0x12e
	.byte	0
	.uleb128 0x3
	.ascii "strtoull\0"
	.byte	0x6
	.word	0x2de
	.byte	0x31
	.long	0xcd
	.long	0x14f3
	.uleb128 0x1
	.long	0x1161
	.uleb128 0x1
	.long	0x57d
	.uleb128 0x1
	.long	0x12e
	.byte	0
	.uleb128 0x18
	.ascii "strtof\0"
	.word	0x1eb
	.byte	0x1f
	.long	0x55a
	.long	0x1511
	.uleb128 0x1
	.long	0x1161
	.uleb128 0x1
	.long	0x57d
	.byte	0
	.uleb128 0x3
	.ascii "strtold\0"
	.byte	0x6
	.word	0x1f6
	.byte	0x27
	.long	0x563
	.long	0x1531
	.uleb128 0x1
	.long	0x1161
	.uleb128 0x1
	.long	0x57d
	.byte	0
	.uleb128 0x2
	.byte	0x16
	.byte	0x27
	.byte	0xc
	.long	0x112f
	.uleb128 0x2
	.byte	0x16
	.byte	0x36
	.byte	0xc
	.long	0x506
	.uleb128 0x2
	.byte	0x16
	.byte	0x37
	.byte	0xc
	.long	0x541
	.uleb128 0x2
	.byte	0x16
	.byte	0x39
	.byte	0xc
	.long	0x6c5
	.uleb128 0x2
	.byte	0x16
	.byte	0x39
	.byte	0xc
	.long	0x6e4
	.uleb128 0x2
	.byte	0x16
	.byte	0x39
	.byte	0xc
	.long	0x703
	.uleb128 0x2
	.byte	0x16
	.byte	0x39
	.byte	0xc
	.long	0x722
	.uleb128 0x2
	.byte	0x16
	.byte	0x39
	.byte	0xc
	.long	0x741
	.uleb128 0x2
	.byte	0x16
	.byte	0x3a
	.byte	0xc
	.long	0x1149
	.uleb128 0x2
	.byte	0x16
	.byte	0x3b
	.byte	0xc
	.long	0x1166
	.uleb128 0x2
	.byte	0x16
	.byte	0x3c
	.byte	0xc
	.long	0x117e
	.uleb128 0x2
	.byte	0x16
	.byte	0x3d
	.byte	0xc
	.long	0x1196
	.uleb128 0x2
	.byte	0x16
	.byte	0x3f
	.byte	0xc
	.long	0x13f5
	.uleb128 0x2
	.byte	0x16
	.byte	0x3f
	.byte	0xc
	.long	0x760
	.uleb128 0x2
	.byte	0x16
	.byte	0x3f
	.byte	0xc
	.long	0x11e6
	.uleb128 0x2
	.byte	0x16
	.byte	0x41
	.byte	0xc
	.long	0x1202
	.uleb128 0x2
	.byte	0x16
	.byte	0x43
	.byte	0xc
	.long	0x121c
	.uleb128 0x2
	.byte	0x16
	.byte	0x46
	.byte	0xc
	.long	0x1239
	.uleb128 0x2
	.byte	0x16
	.byte	0x47
	.byte	0xc
	.long	0x1257
	.uleb128 0x2
	.byte	0x16
	.byte	0x48
	.byte	0xc
	.long	0x127d
	.uleb128 0x2
	.byte	0x16
	.byte	0x4a
	.byte	0xc
	.long	0x12a1
	.uleb128 0x2
	.byte	0x16
	.byte	0x4b
	.byte	0xc
	.long	0x12c4
	.uleb128 0x2
	.byte	0x16
	.byte	0x4d
	.byte	0xc
	.long	0x12d2
	.uleb128 0x2
	.byte	0x16
	.byte	0x4e
	.byte	0xc
	.long	0x12e6
	.uleb128 0x2
	.byte	0x16
	.byte	0x4f
	.byte	0xc
	.long	0x1304
	.uleb128 0x2
	.byte	0x16
	.byte	0x50
	.byte	0xc
	.long	0x1328
	.uleb128 0x2
	.byte	0x16
	.byte	0x51
	.byte	0xc
	.long	0x134d
	.uleb128 0x2
	.byte	0x16
	.byte	0x53
	.byte	0xc
	.long	0x1367
	.uleb128 0x2
	.byte	0x16
	.byte	0x54
	.byte	0xc
	.long	0x138d
	.uleb128 0x8
	.byte	0x2
	.byte	0x5
	.ascii "short int\0"
	.uleb128 0x3e
	.ascii "tm\0"
	.byte	0x24
	.byte	0x17
	.word	0x567
	.byte	0xa
	.long	0x16d4
	.uleb128 0xf
	.ascii "tm_sec\0"
	.byte	0x17
	.word	0x568
	.byte	0x9
	.long	0x12e
	.byte	0
	.uleb128 0xf
	.ascii "tm_min\0"
	.byte	0x17
	.word	0x569
	.byte	0x9
	.long	0x12e
	.byte	0x4
	.uleb128 0xf
	.ascii "tm_hour\0"
	.byte	0x17
	.word	0x56a
	.byte	0x9
	.long	0x12e
	.byte	0x8
	.uleb128 0xf
	.ascii "tm_mday\0"
	.byte	0x17
	.word	0x56b
	.byte	0x9
	.long	0x12e
	.byte	0xc
	.uleb128 0xf
	.ascii "tm_mon\0"
	.byte	0x17
	.word	0x56c
	.byte	0x9
	.long	0x12e
	.byte	0x10
	.uleb128 0xf
	.ascii "tm_year\0"
	.byte	0x17
	.word	0x56d
	.byte	0x9
	.long	0x12e
	.byte	0x14
	.uleb128 0xf
	.ascii "tm_wday\0"
	.byte	0x17
	.word	0x56e
	.byte	0x9
	.long	0x12e
	.byte	0x18
	.uleb128 0xf
	.ascii "tm_yday\0"
	.byte	0x17
	.word	0x56f
	.byte	0x9
	.long	0x12e
	.byte	0x1c
	.uleb128 0xf
	.ascii "tm_isdst\0"
	.byte	0x17
	.word	0x570
	.byte	0x9
	.long	0x12e
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.long	0x1626
	.uleb128 0x1d
	.ascii "mbstate_t\0"
	.byte	0x17
	.word	0x5a5
	.byte	0xf
	.long	0x12e
	.uleb128 0x10
	.long	0x16d9
	.uleb128 0x3
	.ascii "btowc\0"
	.byte	0x17
	.word	0x5a9
	.byte	0x12
	.long	0xf8
	.long	0x170a
	.uleb128 0x1
	.long	0x12e
	.byte	0
	.uleb128 0x3
	.ascii "fgetwc\0"
	.byte	0x1
	.word	0x4f8
	.byte	0x12
	.long	0xf8
	.long	0x1724
	.uleb128 0x1
	.long	0x1724
	.byte	0
	.uleb128 0x6
	.long	0x4b9
	.uleb128 0x3
	.ascii "fgetws\0"
	.byte	0x1
	.word	0x501
	.byte	0x14
	.long	0x146
	.long	0x174d
	.uleb128 0x1
	.long	0x146
	.uleb128 0x1
	.long	0x12e
	.uleb128 0x1
	.long	0x1724
	.byte	0
	.uleb128 0x3
	.ascii "fputwc\0"
	.byte	0x1
	.word	0x4fa
	.byte	0x12
	.long	0xf8
	.long	0x176c
	.uleb128 0x1
	.long	0x14b
	.uleb128 0x1
	.long	0x1724
	.byte	0
	.uleb128 0x3
	.ascii "fputws\0"
	.byte	0x1
	.word	0x502
	.byte	0xf
	.long	0x12e
	.long	0x178b
	.uleb128 0x1
	.long	0x578
	.uleb128 0x1
	.long	0x1724
	.byte	0
	.uleb128 0x3
	.ascii "fwide\0"
	.byte	0x17
	.word	0x5b8
	.byte	0xf
	.long	0x12e
	.long	0x17a9
	.uleb128 0x1
	.long	0x1724
	.uleb128 0x1
	.long	0x12e
	.byte	0
	.uleb128 0x3
	.ascii "fwprintf\0"
	.byte	0x1
	.word	0x42c
	.byte	0x5
	.long	0x12e
	.long	0x17cb
	.uleb128 0x1
	.long	0x1724
	.uleb128 0x1
	.long	0x578
	.uleb128 0x9
	.byte	0
	.uleb128 0x3
	.ascii "fwscanf\0"
	.byte	0x1
	.word	0x408
	.byte	0x5
	.long	0x12e
	.long	0x17ec
	.uleb128 0x1
	.long	0x1724
	.uleb128 0x1
	.long	0x578
	.uleb128 0x9
	.byte	0
	.uleb128 0x3
	.ascii "getwc\0"
	.byte	0x1
	.word	0x4fc
	.byte	0x12
	.long	0xf8
	.long	0x1805
	.uleb128 0x1
	.long	0x1724
	.byte	0
	.uleb128 0x17
	.ascii "getwchar\0"
	.byte	0x1
	.word	0x4fd
	.byte	0x12
	.long	0xf8
	.uleb128 0x3
	.ascii "mbrlen\0"
	.byte	0x17
	.word	0x5aa
	.byte	0x12
	.long	0xbe
	.long	0x183b
	.uleb128 0x1
	.long	0x1161
	.uleb128 0x1
	.long	0xbe
	.uleb128 0x1
	.long	0x183b
	.byte	0
	.uleb128 0x6
	.long	0x16d9
	.uleb128 0x3
	.ascii "mbrtowc\0"
	.byte	0x17
	.word	0x5ab
	.byte	0x12
	.long	0xbe
	.long	0x186a
	.uleb128 0x1
	.long	0x146
	.uleb128 0x1
	.long	0x1161
	.uleb128 0x1
	.long	0xbe
	.uleb128 0x1
	.long	0x183b
	.byte	0
	.uleb128 0x3
	.ascii "mbsinit\0"
	.byte	0x17
	.word	0x5bd
	.byte	0xf
	.long	0x12e
	.long	0x1885
	.uleb128 0x1
	.long	0x1885
	.byte	0
	.uleb128 0x6
	.long	0x16ec
	.uleb128 0x3
	.ascii "mbsrtowcs\0"
	.byte	0x17
	.word	0x5ac
	.byte	0x12
	.long	0xbe
	.long	0x18b6
	.uleb128 0x1
	.long	0x146
	.uleb128 0x1
	.long	0x18b6
	.uleb128 0x1
	.long	0xbe
	.uleb128 0x1
	.long	0x183b
	.byte	0
	.uleb128 0x6
	.long	0x1161
	.uleb128 0x3
	.ascii "putwc\0"
	.byte	0x1
	.word	0x4fe
	.byte	0x12
	.long	0xf8
	.long	0x18d9
	.uleb128 0x1
	.long	0x14b
	.uleb128 0x1
	.long	0x1724
	.byte	0
	.uleb128 0x3
	.ascii "putwchar\0"
	.byte	0x1
	.word	0x4ff
	.byte	0x12
	.long	0xf8
	.long	0x18f5
	.uleb128 0x1
	.long	0x14b
	.byte	0
	.uleb128 0x19
	.secrel32	.LASF5
	.byte	0x3e
	.long	0x12e
	.long	0x190f
	.uleb128 0x1
	.long	0x146
	.uleb128 0x1
	.long	0x578
	.uleb128 0x9
	.byte	0
	.uleb128 0x19
	.secrel32	.LASF5
	.byte	0x22
	.long	0x12e
	.long	0x192e
	.uleb128 0x1
	.long	0x146
	.uleb128 0x1
	.long	0xbe
	.uleb128 0x1
	.long	0x578
	.uleb128 0x9
	.byte	0
	.uleb128 0x3
	.ascii "swscanf\0"
	.byte	0x1
	.word	0x3f2
	.byte	0x5
	.long	0x12e
	.long	0x194f
	.uleb128 0x1
	.long	0x578
	.uleb128 0x1
	.long	0x578
	.uleb128 0x9
	.byte	0
	.uleb128 0x3
	.ascii "ungetwc\0"
	.byte	0x1
	.word	0x500
	.byte	0x12
	.long	0xf8
	.long	0x196f
	.uleb128 0x1
	.long	0xf8
	.uleb128 0x1
	.long	0x1724
	.byte	0
	.uleb128 0x3
	.ascii "vfwprintf\0"
	.byte	0x1
	.word	0x442
	.byte	0x5
	.long	0x12e
	.long	0x1996
	.uleb128 0x1
	.long	0x1724
	.uleb128 0x1
	.long	0x578
	.uleb128 0x1
	.long	0x89
	.byte	0
	.uleb128 0x3
	.ascii "vfwscanf\0"
	.byte	0x1
	.word	0x422
	.byte	0x5
	.long	0x12e
	.long	0x19bc
	.uleb128 0x1
	.long	0x1724
	.uleb128 0x1
	.long	0x578
	.uleb128 0x1
	.long	0x89
	.byte	0
	.uleb128 0x19
	.secrel32	.LASF6
	.byte	0x33
	.long	0x12e
	.long	0x19da
	.uleb128 0x1
	.long	0x146
	.uleb128 0x1
	.long	0x578
	.uleb128 0x1
	.long	0x89
	.byte	0
	.uleb128 0x19
	.secrel32	.LASF6
	.byte	0x1b
	.long	0x12e
	.long	0x19fd
	.uleb128 0x1
	.long	0x146
	.uleb128 0x1
	.long	0xbe
	.uleb128 0x1
	.long	0x578
	.uleb128 0x1
	.long	0x89
	.byte	0
	.uleb128 0x3
	.ascii "vswscanf\0"
	.byte	0x1
	.word	0x414
	.byte	0x5
	.long	0x12e
	.long	0x1a23
	.uleb128 0x1
	.long	0x578
	.uleb128 0x1
	.long	0x578
	.uleb128 0x1
	.long	0x89
	.byte	0
	.uleb128 0x3
	.ascii "vwprintf\0"
	.byte	0x1
	.word	0x449
	.byte	0x5
	.long	0x12e
	.long	0x1a44
	.uleb128 0x1
	.long	0x578
	.uleb128 0x1
	.long	0x89
	.byte	0
	.uleb128 0x3
	.ascii "vwscanf\0"
	.byte	0x1
	.word	0x41b
	.byte	0x5
	.long	0x12e
	.long	0x1a64
	.uleb128 0x1
	.long	0x578
	.uleb128 0x1
	.long	0x89
	.byte	0
	.uleb128 0x3
	.ascii "wcrtomb\0"
	.byte	0x17
	.word	0x5ad
	.byte	0x12
	.long	0xbe
	.long	0x1a89
	.uleb128 0x1
	.long	0x141
	.uleb128 0x1
	.long	0x14b
	.uleb128 0x1
	.long	0x183b
	.byte	0
	.uleb128 0x3
	.ascii "wcscat\0"
	.byte	0x17
	.word	0x52b
	.byte	0x14
	.long	0x146
	.long	0x1aa8
	.uleb128 0x1
	.long	0x146
	.uleb128 0x1
	.long	0x578
	.byte	0
	.uleb128 0x3
	.ascii "wcscmp\0"
	.byte	0x17
	.word	0x52d
	.byte	0xf
	.long	0x12e
	.long	0x1ac7
	.uleb128 0x1
	.long	0x578
	.uleb128 0x1
	.long	0x578
	.byte	0
	.uleb128 0x3
	.ascii "wcscoll\0"
	.byte	0x17
	.word	0x54e
	.byte	0xf
	.long	0x12e
	.long	0x1ae7
	.uleb128 0x1
	.long	0x578
	.uleb128 0x1
	.long	0x578
	.byte	0
	.uleb128 0x3
	.ascii "wcscpy\0"
	.byte	0x17
	.word	0x52e
	.byte	0x14
	.long	0x146
	.long	0x1b06
	.uleb128 0x1
	.long	0x146
	.uleb128 0x1
	.long	0x578
	.byte	0
	.uleb128 0x3
	.ascii "wcscspn\0"
	.byte	0x17
	.word	0x52f
	.byte	0x12
	.long	0xbe
	.long	0x1b26
	.uleb128 0x1
	.long	0x578
	.uleb128 0x1
	.long	0x578
	.byte	0
	.uleb128 0x3
	.ascii "wcsftime\0"
	.byte	0x17
	.word	0x57b
	.byte	0x12
	.long	0xbe
	.long	0x1b51
	.uleb128 0x1
	.long	0x146
	.uleb128 0x1
	.long	0xbe
	.uleb128 0x1
	.long	0x578
	.uleb128 0x1
	.long	0x1b51
	.byte	0
	.uleb128 0x6
	.long	0x16d4
	.uleb128 0x3
	.ascii "wcslen\0"
	.byte	0x17
	.word	0x530
	.byte	0x12
	.long	0xbe
	.long	0x1b70
	.uleb128 0x1
	.long	0x578
	.byte	0
	.uleb128 0x3
	.ascii "wcsncat\0"
	.byte	0x17
	.word	0x532
	.byte	0x14
	.long	0x146
	.long	0x1b95
	.uleb128 0x1
	.long	0x146
	.uleb128 0x1
	.long	0x578
	.uleb128 0x1
	.long	0xbe
	.byte	0
	.uleb128 0x3
	.ascii "wcsncmp\0"
	.byte	0x17
	.word	0x533
	.byte	0xf
	.long	0x12e
	.long	0x1bba
	.uleb128 0x1
	.long	0x578
	.uleb128 0x1
	.long	0x578
	.uleb128 0x1
	.long	0xbe
	.byte	0
	.uleb128 0x3
	.ascii "wcsncpy\0"
	.byte	0x17
	.word	0x534
	.byte	0x14
	.long	0x146
	.long	0x1bdf
	.uleb128 0x1
	.long	0x146
	.uleb128 0x1
	.long	0x578
	.uleb128 0x1
	.long	0xbe
	.byte	0
	.uleb128 0x3
	.ascii "wcsrtombs\0"
	.byte	0x17
	.word	0x5ae
	.byte	0x12
	.long	0xbe
	.long	0x1c0b
	.uleb128 0x1
	.long	0x141
	.uleb128 0x1
	.long	0x1c0b
	.uleb128 0x1
	.long	0xbe
	.uleb128 0x1
	.long	0x183b
	.byte	0
	.uleb128 0x6
	.long	0x578
	.uleb128 0x3
	.ascii "wcsspn\0"
	.byte	0x17
	.word	0x538
	.byte	0x12
	.long	0xbe
	.long	0x1c2f
	.uleb128 0x1
	.long	0x578
	.uleb128 0x1
	.long	0x578
	.byte	0
	.uleb128 0x18
	.ascii "wcstod\0"
	.word	0x232
	.byte	0x12
	.long	0x550
	.long	0x1c4d
	.uleb128 0x1
	.long	0x578
	.uleb128 0x1
	.long	0x582
	.byte	0
	.uleb128 0x18
	.ascii "wcstof\0"
	.word	0x236
	.byte	0x11
	.long	0x55a
	.long	0x1c6b
	.uleb128 0x1
	.long	0x578
	.uleb128 0x1
	.long	0x582
	.byte	0
	.uleb128 0x3
	.ascii "wcstok\0"
	.byte	0x17
	.word	0x53d
	.byte	0x14
	.long	0x146
	.long	0x1c8a
	.uleb128 0x1
	.long	0x146
	.uleb128 0x1
	.long	0x578
	.byte	0
	.uleb128 0x3
	.ascii "wcstol\0"
	.byte	0x6
	.word	0x242
	.byte	0x10
	.long	0x135
	.long	0x1cae
	.uleb128 0x1
	.long	0x578
	.uleb128 0x1
	.long	0x582
	.uleb128 0x1
	.long	0x12e
	.byte	0
	.uleb128 0x3
	.ascii "wcstoul\0"
	.byte	0x6
	.word	0x244
	.byte	0x19
	.long	0x170
	.long	0x1cd3
	.uleb128 0x1
	.long	0x578
	.uleb128 0x1
	.long	0x582
	.uleb128 0x1
	.long	0x12e
	.byte	0
	.uleb128 0x3
	.ascii "wcsxfrm\0"
	.byte	0x17
	.word	0x54c
	.byte	0x12
	.long	0xbe
	.long	0x1cf8
	.uleb128 0x1
	.long	0x146
	.uleb128 0x1
	.long	0x578
	.uleb128 0x1
	.long	0xbe
	.byte	0
	.uleb128 0x3
	.ascii "wctob\0"
	.byte	0x17
	.word	0x5af
	.byte	0xf
	.long	0x12e
	.long	0x1d11
	.uleb128 0x1
	.long	0xf8
	.byte	0
	.uleb128 0x3
	.ascii "wmemcmp\0"
	.byte	0x17
	.word	0x5b4
	.byte	0xf
	.long	0x12e
	.long	0x1d36
	.uleb128 0x1
	.long	0x578
	.uleb128 0x1
	.long	0x578
	.uleb128 0x1
	.long	0xbe
	.byte	0
	.uleb128 0x3
	.ascii "wmemcpy\0"
	.byte	0x17
	.word	0x5b5
	.byte	0x14
	.long	0x146
	.long	0x1d5b
	.uleb128 0x1
	.long	0x146
	.uleb128 0x1
	.long	0x578
	.uleb128 0x1
	.long	0xbe
	.byte	0
	.uleb128 0x3
	.ascii "wmemmove\0"
	.byte	0x17
	.word	0x5b7
	.byte	0x14
	.long	0x146
	.long	0x1d81
	.uleb128 0x1
	.long	0x146
	.uleb128 0x1
	.long	0x578
	.uleb128 0x1
	.long	0xbe
	.byte	0
	.uleb128 0x3
	.ascii "wmemset\0"
	.byte	0x17
	.word	0x5b2
	.byte	0x14
	.long	0x146
	.long	0x1da6
	.uleb128 0x1
	.long	0x146
	.uleb128 0x1
	.long	0x14b
	.uleb128 0x1
	.long	0xbe
	.byte	0
	.uleb128 0x3
	.ascii "wprintf\0"
	.byte	0x1
	.word	0x437
	.byte	0x5
	.long	0x12e
	.long	0x1dc2
	.uleb128 0x1
	.long	0x578
	.uleb128 0x9
	.byte	0
	.uleb128 0x3
	.ascii "wscanf\0"
	.byte	0x1
	.word	0x3fd
	.byte	0x5
	.long	0x12e
	.long	0x1ddd
	.uleb128 0x1
	.long	0x578
	.uleb128 0x9
	.byte	0
	.uleb128 0x3
	.ascii "wcschr\0"
	.byte	0x17
	.word	0x52c
	.byte	0x22
	.long	0x146
	.long	0x1dfc
	.uleb128 0x1
	.long	0x578
	.uleb128 0x1
	.long	0x14b
	.byte	0
	.uleb128 0x3
	.ascii "wcspbrk\0"
	.byte	0x17
	.word	0x536
	.byte	0x22
	.long	0x146
	.long	0x1e1c
	.uleb128 0x1
	.long	0x578
	.uleb128 0x1
	.long	0x578
	.byte	0
	.uleb128 0x3
	.ascii "wcsrchr\0"
	.byte	0x17
	.word	0x537
	.byte	0x22
	.long	0x146
	.long	0x1e3c
	.uleb128 0x1
	.long	0x578
	.uleb128 0x1
	.long	0x14b
	.byte	0
	.uleb128 0x3
	.ascii "wcsstr\0"
	.byte	0x17
	.word	0x539
	.byte	0x22
	.long	0x146
	.long	0x1e5b
	.uleb128 0x1
	.long	0x578
	.uleb128 0x1
	.long	0x578
	.byte	0
	.uleb128 0x3
	.ascii "wmemchr\0"
	.byte	0x17
	.word	0x5b3
	.byte	0x22
	.long	0x146
	.long	0x1e80
	.uleb128 0x1
	.long	0x578
	.uleb128 0x1
	.long	0x14b
	.uleb128 0x1
	.long	0xbe
	.byte	0
	.uleb128 0x3
	.ascii "wcstold\0"
	.byte	0x6
	.word	0x23f
	.byte	0x17
	.long	0x563
	.long	0x1ea0
	.uleb128 0x1
	.long	0x578
	.uleb128 0x1
	.long	0x582
	.byte	0
	.uleb128 0x3
	.ascii "wcstoll\0"
	.byte	0x17
	.word	0x5bf
	.byte	0x27
	.long	0xe7
	.long	0x1ec5
	.uleb128 0x1
	.long	0x578
	.uleb128 0x1
	.long	0x582
	.uleb128 0x1
	.long	0x12e
	.byte	0
	.uleb128 0x3
	.ascii "wcstoull\0"
	.byte	0x17
	.word	0x5c0
	.byte	0x30
	.long	0xcd
	.long	0x1eeb
	.uleb128 0x1
	.long	0x578
	.uleb128 0x1
	.long	0x582
	.uleb128 0x1
	.long	0x12e
	.byte	0
	.uleb128 0x3f
	.byte	0x20
	.byte	0x10
	.byte	0x19
	.word	0x1a8
	.byte	0x10
	.ascii "11max_align_t\0"
	.long	0x1f37
	.uleb128 0x27
	.ascii "__max_align_ll\0"
	.word	0x1a9
	.byte	0xd
	.long	0xe7
	.byte	0x8
	.byte	0
	.uleb128 0x27
	.ascii "__max_align_ld\0"
	.word	0x1aa
	.byte	0xf
	.long	0x563
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x40
	.ascii "max_align_t\0"
	.byte	0x19
	.word	0x1ab
	.byte	0x3
	.long	0x1eeb
	.byte	0x10
	.uleb128 0x8
	.byte	0x1
	.byte	0x2
	.ascii "bool\0"
	.uleb128 0x10
	.long	0x1f4d
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
	.ascii "signed char\0"
	.uleb128 0x8
	.byte	0x2
	.byte	0x10
	.ascii "char16_t\0"
	.uleb128 0x8
	.byte	0x4
	.byte	0x10
	.ascii "char32_t\0"
	.uleb128 0x6
	.long	0xa0a
	.uleb128 0x6
	.long	0xe57
	.uleb128 0x28
	.long	0xe57
	.uleb128 0x41
	.ascii "decltype(nullptr)\0"
	.uleb128 0x42
	.byte	0x8
	.long	0xa0a
	.uleb128 0x28
	.long	0xa0a
	.uleb128 0x6
	.long	0xf2f
	.uleb128 0x13
	.ascii "setlocale\0"
	.byte	0x5
	.byte	0x5a
	.byte	0x11
	.long	0x141
	.long	0x1fd4
	.uleb128 0x1
	.long	0x12e
	.uleb128 0x1
	.long	0x1161
	.byte	0
	.uleb128 0x43
	.ascii "localeconv\0"
	.byte	0x5
	.byte	0x5b
	.byte	0x21
	.long	0x413
	.uleb128 0x23
	.ascii "__gnu_debug\0"
	.byte	0xe
	.byte	0x38
	.byte	0xb
	.long	0x2004
	.uleb128 0x44
	.byte	0xe
	.byte	0x3a
	.byte	0x18
	.long	0xf54
	.byte	0
	.uleb128 0x12
	.ascii "clearerr\0"
	.byte	0x1
	.word	0x262
	.long	0x201b
	.uleb128 0x1
	.long	0x1724
	.byte	0
	.uleb128 0x3
	.ascii "fclose\0"
	.byte	0x1
	.word	0x263
	.byte	0xf
	.long	0x12e
	.long	0x2035
	.uleb128 0x1
	.long	0x1724
	.byte	0
	.uleb128 0x3
	.ascii "feof\0"
	.byte	0x1
	.word	0x26a
	.byte	0xf
	.long	0x12e
	.long	0x204d
	.uleb128 0x1
	.long	0x1724
	.byte	0
	.uleb128 0x3
	.ascii "ferror\0"
	.byte	0x1
	.word	0x26b
	.byte	0xf
	.long	0x12e
	.long	0x2067
	.uleb128 0x1
	.long	0x1724
	.byte	0
	.uleb128 0x3
	.ascii "fflush\0"
	.byte	0x1
	.word	0x26c
	.byte	0xf
	.long	0x12e
	.long	0x2081
	.uleb128 0x1
	.long	0x1724
	.byte	0
	.uleb128 0x3
	.ascii "fgetc\0"
	.byte	0x1
	.word	0x26d
	.byte	0xf
	.long	0x12e
	.long	0x209a
	.uleb128 0x1
	.long	0x1724
	.byte	0
	.uleb128 0x3
	.ascii "fgetpos\0"
	.byte	0x1
	.word	0x26f
	.byte	0xf
	.long	0x12e
	.long	0x20ba
	.uleb128 0x1
	.long	0x1724
	.uleb128 0x1
	.long	0x20ba
	.byte	0
	.uleb128 0x6
	.long	0x4c6
	.uleb128 0x3
	.ascii "fgets\0"
	.byte	0x1
	.word	0x271
	.byte	0x11
	.long	0x141
	.long	0x20e2
	.uleb128 0x1
	.long	0x141
	.uleb128 0x1
	.long	0x12e
	.uleb128 0x1
	.long	0x1724
	.byte	0
	.uleb128 0x3
	.ascii "fopen\0"
	.byte	0x1
	.word	0x278
	.byte	0x11
	.long	0x1724
	.long	0x2100
	.uleb128 0x1
	.long	0x1161
	.uleb128 0x1
	.long	0x1161
	.byte	0
	.uleb128 0xc
	.ascii "fprintf\0"
	.word	0x165
	.ascii "_Z7fprintfP6_iobufPKcz\0"
	.long	0x12e
	.long	0x2136
	.uleb128 0x1
	.long	0x1724
	.uleb128 0x1
	.long	0x1161
	.uleb128 0x9
	.byte	0
	.uleb128 0x3
	.ascii "fread\0"
	.byte	0x1
	.word	0x27d
	.byte	0x12
	.long	0xbe
	.long	0x215e
	.uleb128 0x1
	.long	0x11c5
	.uleb128 0x1
	.long	0xbe
	.uleb128 0x1
	.long	0xbe
	.uleb128 0x1
	.long	0x1724
	.byte	0
	.uleb128 0x3
	.ascii "freopen\0"
	.byte	0x1
	.word	0x27e
	.byte	0x11
	.long	0x1724
	.long	0x2183
	.uleb128 0x1
	.long	0x1161
	.uleb128 0x1
	.long	0x1161
	.uleb128 0x1
	.long	0x1724
	.byte	0
	.uleb128 0xc
	.ascii "fscanf\0"
	.word	0x138
	.ascii "_Z6fscanfP6_iobufPKcz\0"
	.long	0x12e
	.long	0x21b7
	.uleb128 0x1
	.long	0x1724
	.uleb128 0x1
	.long	0x1161
	.uleb128 0x9
	.byte	0
	.uleb128 0x3
	.ascii "fseek\0"
	.byte	0x1
	.word	0x281
	.byte	0xf
	.long	0x12e
	.long	0x21da
	.uleb128 0x1
	.long	0x1724
	.uleb128 0x1
	.long	0x135
	.uleb128 0x1
	.long	0x12e
	.byte	0
	.uleb128 0x3
	.ascii "fsetpos\0"
	.byte	0x1
	.word	0x27f
	.byte	0xf
	.long	0x12e
	.long	0x21fa
	.uleb128 0x1
	.long	0x1724
	.uleb128 0x1
	.long	0x21fa
	.byte	0
	.uleb128 0x6
	.long	0x4d5
	.uleb128 0x3
	.ascii "ftell\0"
	.byte	0x1
	.word	0x282
	.byte	0x10
	.long	0x135
	.long	0x2218
	.uleb128 0x1
	.long	0x1724
	.byte	0
	.uleb128 0x3
	.ascii "getc\0"
	.byte	0x1
	.word	0x2ac
	.byte	0xf
	.long	0x12e
	.long	0x2230
	.uleb128 0x1
	.long	0x1724
	.byte	0
	.uleb128 0x17
	.ascii "getchar\0"
	.byte	0x1
	.word	0x2ad
	.byte	0xf
	.long	0x12e
	.uleb128 0x12
	.ascii "perror\0"
	.byte	0x1
	.word	0x2b3
	.long	0x2256
	.uleb128 0x1
	.long	0x1161
	.byte	0
	.uleb128 0x29
	.ascii "printf\0"
	.word	0x170
	.ascii "_Z6printfPKcz\0"
	.long	0x12e
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x22c5
	.uleb128 0x9
	.uleb128 0x2a
	.secrel32	.LASF9
	.word	0x170
	.byte	0x19
	.long	0x1161
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x9
	.uleb128 0x1a
	.secrel32	.LASF7
	.word	0x172
	.byte	0x7
	.long	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1a
	.secrel32	.LASF8
	.word	0x173
	.byte	0x15
	.long	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.quad	.LVL1
	.long	0x275f
	.byte	0
	.uleb128 0x3
	.ascii "remove\0"
	.byte	0x1
	.word	0x2c3
	.byte	0xf
	.long	0x12e
	.long	0x22df
	.uleb128 0x1
	.long	0x1161
	.byte	0
	.uleb128 0x3
	.ascii "rename\0"
	.byte	0x1
	.word	0x2c4
	.byte	0xf
	.long	0x12e
	.long	0x22fe
	.uleb128 0x1
	.long	0x1161
	.uleb128 0x1
	.long	0x1161
	.byte	0
	.uleb128 0x12
	.ascii "rewind\0"
	.byte	0x1
	.word	0x2ca
	.long	0x2313
	.uleb128 0x1
	.long	0x1724
	.byte	0
	.uleb128 0x29
	.ascii "scanf\0"
	.word	0x12d
	.ascii "_Z5scanfPKcz\0"
	.long	0x12e
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x2380
	.uleb128 0x9
	.uleb128 0x2a
	.secrel32	.LASF9
	.word	0x12d
	.byte	0x17
	.long	0x1161
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x9
	.uleb128 0x1a
	.secrel32	.LASF7
	.word	0x12f
	.byte	0x7
	.long	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1a
	.secrel32	.LASF8
	.word	0x130
	.byte	0x15
	.long	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.quad	.LVL0
	.long	0x275f
	.byte	0
	.uleb128 0x12
	.ascii "setbuf\0"
	.byte	0x1
	.word	0x2cc
	.long	0x239a
	.uleb128 0x1
	.long	0x1724
	.uleb128 0x1
	.long	0x141
	.byte	0
	.uleb128 0x3
	.ascii "setvbuf\0"
	.byte	0x1
	.word	0x2d0
	.byte	0xf
	.long	0x12e
	.long	0x23c4
	.uleb128 0x1
	.long	0x1724
	.uleb128 0x1
	.long	0x141
	.uleb128 0x1
	.long	0x12e
	.uleb128 0x1
	.long	0xbe
	.byte	0
	.uleb128 0xc
	.ascii "sprintf\0"
	.word	0x18c
	.ascii "_Z7sprintfPcPKcz\0"
	.long	0x12e
	.long	0x23f4
	.uleb128 0x1
	.long	0x141
	.uleb128 0x1
	.long	0x1161
	.uleb128 0x9
	.byte	0
	.uleb128 0xc
	.ascii "sscanf\0"
	.word	0x122
	.ascii "_Z6sscanfPKcS0_z\0"
	.long	0x12e
	.long	0x2423
	.uleb128 0x1
	.long	0x1161
	.uleb128 0x1
	.long	0x1161
	.uleb128 0x9
	.byte	0
	.uleb128 0x17
	.ascii "tmpfile\0"
	.byte	0x1
	.word	0x2f3
	.byte	0x11
	.long	0x1724
	.uleb128 0x3
	.ascii "tmpnam\0"
	.byte	0x1
	.word	0x2f4
	.byte	0x11
	.long	0x141
	.long	0x244e
	.uleb128 0x1
	.long	0x141
	.byte	0
	.uleb128 0x3
	.ascii "ungetc\0"
	.byte	0x1
	.word	0x2f5
	.byte	0xf
	.long	0x12e
	.long	0x246d
	.uleb128 0x1
	.long	0x12e
	.uleb128 0x1
	.long	0x1724
	.byte	0
	.uleb128 0xc
	.ascii "vfprintf\0"
	.word	0x199
	.ascii "_Z8vfprintfP6_iobufPKcPc\0"
	.long	0x12e
	.long	0x24aa
	.uleb128 0x1
	.long	0x1724
	.uleb128 0x1
	.long	0x1161
	.uleb128 0x1
	.long	0x89
	.byte	0
	.uleb128 0xc
	.ascii "vprintf\0"
	.word	0x1a0
	.ascii "_Z7vprintfPKcPc\0"
	.long	0x12e
	.long	0x24d8
	.uleb128 0x1
	.long	0x1161
	.uleb128 0x1
	.long	0x89
	.byte	0
	.uleb128 0xc
	.ascii "vsprintf\0"
	.word	0x1a7
	.ascii "_Z8vsprintfPcPKcS_\0"
	.long	0x12e
	.long	0x250f
	.uleb128 0x1
	.long	0x141
	.uleb128 0x1
	.long	0x1161
	.uleb128 0x1
	.long	0x89
	.byte	0
	.uleb128 0xc
	.ascii "snprintf\0"
	.word	0x1c3
	.ascii "_Z8snprintfPcyPKcz\0"
	.long	0x12e
	.long	0x2547
	.uleb128 0x1
	.long	0x141
	.uleb128 0x1
	.long	0xbe
	.uleb128 0x1
	.long	0x1161
	.uleb128 0x9
	.byte	0
	.uleb128 0xc
	.ascii "vfscanf\0"
	.word	0x157
	.ascii "_Z7vfscanfP6_iobufPKcPc\0"
	.long	0x12e
	.long	0x2582
	.uleb128 0x1
	.long	0x1724
	.uleb128 0x1
	.long	0x1161
	.uleb128 0x1
	.long	0x89
	.byte	0
	.uleb128 0xc
	.ascii "vscanf\0"
	.word	0x150
	.ascii "_Z6vscanfPKcPc\0"
	.long	0x12e
	.long	0x25ae
	.uleb128 0x1
	.long	0x1161
	.uleb128 0x1
	.long	0x89
	.byte	0
	.uleb128 0xc
	.ascii "vsnprintf\0"
	.word	0x1d0
	.ascii "_Z9vsnprintfPcyPKcS_\0"
	.long	0x12e
	.long	0x25ed
	.uleb128 0x1
	.long	0x141
	.uleb128 0x1
	.long	0xbe
	.uleb128 0x1
	.long	0x1161
	.uleb128 0x1
	.long	0x89
	.byte	0
	.uleb128 0xc
	.ascii "vsscanf\0"
	.word	0x149
	.ascii "_Z7vsscanfPKcS0_Pc\0"
	.long	0x12e
	.long	0x2623
	.uleb128 0x1
	.long	0x1161
	.uleb128 0x1
	.long	0x1161
	.uleb128 0x1
	.long	0x89
	.byte	0
	.uleb128 0xe
	.ascii "wctrans_t\0"
	.byte	0x1a
	.byte	0xb0
	.byte	0x13
	.long	0x14b
	.uleb128 0x3
	.ascii "iswctype\0"
	.byte	0x17
	.word	0x110
	.byte	0xf
	.long	0x12e
	.long	0x2656
	.uleb128 0x1
	.long	0xf8
	.uleb128 0x1
	.long	0x11d
	.byte	0
	.uleb128 0x13
	.ascii "towctrans\0"
	.byte	0x1a
	.byte	0xb1
	.byte	0x12
	.long	0xf8
	.long	0x2677
	.uleb128 0x1
	.long	0xf8
	.uleb128 0x1
	.long	0x2623
	.byte	0
	.uleb128 0x13
	.ascii "wctrans\0"
	.byte	0x1a
	.byte	0xb2
	.byte	0x15
	.long	0x2623
	.long	0x2691
	.uleb128 0x1
	.long	0x1161
	.byte	0
	.uleb128 0x13
	.ascii "wctype\0"
	.byte	0x1a
	.byte	0xb3
	.byte	0x14
	.long	0x11d
	.long	0x26aa
	.uleb128 0x1
	.long	0x1161
	.byte	0
	.uleb128 0xe
	.ascii "__m128\0"
	.byte	0x1b
	.byte	0x48
	.byte	0xf
	.long	0x26b9
	.uleb128 0x45
	.long	0x55a
	.long	0x26c5
	.uleb128 0x46
	.byte	0x3
	.byte	0
	.uleb128 0x20
	.long	0x1112
	.uleb128 0x20
	.long	0x111b
	.uleb128 0x20
	.long	0x1124
	.uleb128 0x12
	.ascii "free\0"
	.byte	0x6
	.word	0x218
	.long	0x26e7
	.uleb128 0x1
	.long	0x11c5
	.byte	0
	.uleb128 0x3
	.ascii "calloc\0"
	.byte	0x6
	.word	0x217
	.byte	0x11
	.long	0x11c5
	.long	0x2706
	.uleb128 0x1
	.long	0xbe
	.uleb128 0x1
	.long	0xbe
	.byte	0
	.uleb128 0x13
	.ascii "__mingw_vfscanf\0"
	.byte	0x1
	.byte	0xad
	.byte	0xf
	.long	0x12e
	.long	0x2732
	.uleb128 0x1
	.long	0x1724
	.uleb128 0x1
	.long	0x1161
	.uleb128 0x1
	.long	0xae
	.byte	0
	.uleb128 0x13
	.ascii "__mingw_vfprintf\0"
	.byte	0x1
	.byte	0xc1
	.byte	0xf
	.long	0x12e
	.long	0x275f
	.uleb128 0x1
	.long	0x1724
	.uleb128 0x1
	.long	0x1161
	.uleb128 0x1
	.long	0xae
	.byte	0
	.uleb128 0x13
	.ascii "__acrt_iob_func\0"
	.byte	0x17
	.byte	0x38
	.byte	0x17
	.long	0x1724
	.long	0x2781
	.uleb128 0x1
	.long	0x160
	.byte	0
	.uleb128 0x47
	.ascii "main\0"
	.byte	0x2
	.byte	0x9f
	.byte	0x5
	.long	0x12e
	.quad	.LFB2553
	.quad	.LFE2553-.LFB2553
	.uleb128 0x1
	.byte	0x9c
	.long	0x27f9
	.uleb128 0x5
	.ascii "l\0"
	.byte	0xa1
	.byte	0x9
	.long	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x5
	.ascii "m\0"
	.byte	0xa1
	.byte	0xc
	.long	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.ascii "n\0"
	.byte	0xa1
	.byte	0xf
	.long	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x5
	.ascii "mat1\0"
	.byte	0xa3
	.byte	0xc
	.long	0x27f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.ascii "mat2\0"
	.byte	0xa4
	.byte	0xc
	.long	0x27f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.ascii "mat_res\0"
	.byte	0xa5
	.byte	0xc
	.long	0x27f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x6
	.long	0x55a
	.uleb128 0x1b
	.ascii "multy_matrix\0"
	.byte	0x7d
	.ascii "_Z12multy_matrixPfS_iii\0"
	.long	0x27f9
	.quad	.LFB2552
	.quad	.LFE2552-.LFB2552
	.uleb128 0x1
	.byte	0x9c
	.long	0x296a
	.uleb128 0x7
	.ascii "mat1\0"
	.byte	0x7d
	.byte	0x1c
	.long	0x27f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x7
	.ascii "mat2\0"
	.byte	0x7d
	.byte	0x29
	.long	0x27f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x7
	.ascii "l\0"
	.byte	0x7d
	.byte	0x33
	.long	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x7
	.ascii "m\0"
	.byte	0x7d
	.byte	0x3a
	.long	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x7
	.ascii "n\0"
	.byte	0x7d
	.byte	0x41
	.long	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x5
	.ascii "mat_res\0"
	.byte	0x7f
	.byte	0xc
	.long	0x27f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x5
	.ascii "i\0"
	.byte	0x80
	.byte	0xe
	.long	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x5
	.ascii "j\0"
	.byte	0x81
	.byte	0x12
	.long	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x5
	.ascii "vec_row\0"
	.byte	0x83
	.byte	0x14
	.long	0x27f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.ascii "vec_col\0"
	.byte	0x84
	.byte	0x14
	.long	0x27f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xd
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x5
	.ascii "k\0"
	.byte	0x85
	.byte	0x16
	.long	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xd
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x5
	.ascii "sum\0"
	.byte	0x87
	.byte	0x17
	.long	0x55a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x5
	.ascii "row_ptr\0"
	.byte	0x88
	.byte	0x19
	.long	0x296a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x5
	.ascii "col_ptr\0"
	.byte	0x89
	.byte	0x19
	.long	0x296a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.long	0x26aa
	.uleb128 0x1b
	.ascii "make_vec_col\0"
	.byte	0x74
	.ascii "_Z12make_vec_colPfiii\0"
	.long	0x27f9
	.quad	.LFB2551
	.quad	.LFE2551-.LFB2551
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a28
	.uleb128 0x7
	.ascii "mat\0"
	.byte	0x74
	.byte	0x1c
	.long	0x27f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x7
	.ascii "col\0"
	.byte	0x74
	.byte	0x25
	.long	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x7
	.ascii "count_row\0"
	.byte	0x74
	.byte	0x2e
	.long	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1c
	.secrel32	.LASF10
	.byte	0x74
	.byte	0x3d
	.long	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x5
	.ascii "size\0"
	.byte	0x76
	.byte	0x9
	.long	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.ascii "vec\0"
	.byte	0x77
	.byte	0xc
	.long	0x27f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xd
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x5
	.ascii "i\0"
	.byte	0x78
	.byte	0xe
	.long	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x1b
	.ascii "make_vec_row\0"
	.byte	0x6b
	.ascii "_Z12make_vec_rowPfii\0"
	.long	0x27f9
	.quad	.LFB2550
	.quad	.LFE2550-.LFB2550
	.uleb128 0x1
	.byte	0x9c
	.long	0x2acc
	.uleb128 0x7
	.ascii "mat\0"
	.byte	0x6b
	.byte	0x1c
	.long	0x27f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x7
	.ascii "row\0"
	.byte	0x6b
	.byte	0x25
	.long	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1c
	.secrel32	.LASF10
	.byte	0x6b
	.byte	0x2e
	.long	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x5
	.ascii "size\0"
	.byte	0x6d
	.byte	0x9
	.long	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.ascii "vec\0"
	.byte	0x6e
	.byte	0xc
	.long	0x27f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xd
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x5
	.ascii "i\0"
	.byte	0x6f
	.byte	0xe
	.long	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x14
	.ascii "print_matrix\0"
	.byte	0x4a
	.ascii "_Z12print_matrixPfii\0"
	.quad	.LFB2549
	.quad	.LFE2549-.LFB2549
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b69
	.uleb128 0x7
	.ascii "mat\0"
	.byte	0x4a
	.byte	0x1a
	.long	0x27f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x7
	.ascii "n\0"
	.byte	0x4a
	.byte	0x23
	.long	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x7
	.ascii "m\0"
	.byte	0x4a
	.byte	0x2a
	.long	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0xd
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x5
	.ascii "i\0"
	.byte	0x51
	.byte	0x12
	.long	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x5
	.ascii "j\0"
	.byte	0x53
	.byte	0x16
	.long	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.ascii "read_matrix\0"
	.byte	0x40
	.ascii "_Z11read_matrixiii\0"
	.long	0x27f9
	.quad	.LFB2548
	.quad	.LFE2548-.LFB2548
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c15
	.uleb128 0x7
	.ascii "n\0"
	.byte	0x40
	.byte	0x18
	.long	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x7
	.ascii "m\0"
	.byte	0x40
	.byte	0x1f
	.long	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x7
	.ascii "num\0"
	.byte	0x40
	.byte	0x26
	.long	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x5
	.ascii "mat\0"
	.byte	0x42
	.byte	0xc
	.long	0x27f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xd
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x5
	.ascii "i\0"
	.byte	0x44
	.byte	0xe
	.long	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x5
	.ascii "j\0"
	.byte	0x45
	.byte	0x12
	.long	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.ascii "read_sizes\0"
	.byte	0x38
	.ascii "_Z10read_sizesPiS_S_\0"
	.quad	.LFB2547
	.quad	.LFE2547-.LFB2547
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c72
	.uleb128 0x7
	.ascii "l\0"
	.byte	0x38
	.byte	0x16
	.long	0x15b
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x7
	.ascii "m\0"
	.byte	0x38
	.byte	0x1e
	.long	0x15b
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x7
	.ascii "n\0"
	.byte	0x38
	.byte	0x26
	.long	0x15b
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.uleb128 0x14
	.ascii "input_float\0"
	.byte	0x2c
	.ascii "_Z11input_floatPf\0"
	.quad	.LFB2546
	.quad	.LFE2546-.LFB2546
	.uleb128 0x1
	.byte	0x9c
	.long	0x2cc4
	.uleb128 0x7
	.ascii "n\0"
	.byte	0x2c
	.byte	0x19
	.long	0x27f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x5
	.ascii "flag\0"
	.byte	0x2e
	.byte	0x9
	.long	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x14
	.ascii "input_size\0"
	.byte	0x1d
	.ascii "_Z10input_sizePiPKc\0"
	.quad	.LFB2545
	.quad	.LFE2545-.LFB2545
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d25
	.uleb128 0x7
	.ascii "n\0"
	.byte	0x1d
	.byte	0x16
	.long	0x15b
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.secrel32	.LASF11
	.byte	0x1d
	.byte	0x25
	.long	0x1161
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x5
	.ascii "flag\0"
	.byte	0x1f
	.byte	0x9
	.long	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x14
	.ascii "print_vec\0"
	.byte	0x15
	.ascii "_Z9print_vecPfiPKc\0"
	.quad	.LFB2544
	.quad	.LFE2544-.LFB2544
	.uleb128 0x1
	.byte	0x9c
	.long	0x2da1
	.uleb128 0x7
	.ascii "vec\0"
	.byte	0x15
	.byte	0x17
	.long	0x27f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x7
	.ascii "n\0"
	.byte	0x15
	.byte	0x20
	.long	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1c
	.secrel32	.LASF11
	.byte	0x15
	.byte	0x2f
	.long	0x1161
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0xd
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x5
	.ascii "i\0"
	.byte	0x18
	.byte	0xe
	.long	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x14
	.ascii "clean_buf\0"
	.byte	0xf
	.ascii "_Z9clean_bufv\0"
	.quad	.LFB2543
	.quad	.LFE2543-.LFB2543
	.uleb128 0x1
	.byte	0x9c
	.long	0x2dde
	.uleb128 0x5
	.ascii "c\0"
	.byte	0x11
	.byte	0x9
	.long	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.byte	0x10
	.byte	0x5
	.ascii "__int128\0"
	.uleb128 0x8
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 5
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
	.uleb128 0xd
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 12
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x6e
	.uleb128 0x8
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
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 20
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
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x39
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 11
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 11
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
	.uleb128 0x21
	.sleb128 10
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 12
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
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 12
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 7
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
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 12
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
	.uleb128 0x27
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 25
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
	.uleb128 0x28
	.uleb128 0x10
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
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
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x6e
	.uleb128 0x8
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
	.uleb128 0x2a
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x15
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0x2
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
	.uleb128 0x3b
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x42
	.uleb128 0x42
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x43
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
	.uleb128 0x44
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
	.uleb128 0x45
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x2107
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x46
	.uleb128 0x21
	.byte	0
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x47
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
	.long	0x4c
	.word	0x2
	.secrel32	.Ldebug_info0
	.byte	0x8
	.byte	0
	.word	0
	.word	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.quad	.LFB8
	.quad	.LFE8-.LFB8
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
	.quad	.LFB2
	.uleb128 .LFE2-.LFB2
	.byte	0x7
	.quad	.LFB8
	.uleb128 .LFE8-.LFB8
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"dr"
.Ldebug_line0:
	.section	.debug_str,"dr"
.LASF6:
	.ascii "vswprintf\0"
.LASF3:
	.ascii "operator=\0"
.LASF5:
	.ascii "swprintf\0"
.LASF2:
	.ascii "exception_ptr\0"
.LASF8:
	.ascii "__local_argv\0"
.LASF10:
	.ascii "count_col\0"
.LASF7:
	.ascii "__retval\0"
.LASF4:
	.ascii "__integer_to_chars_is_unsigned\0"
.LASF9:
	.ascii "__format\0"
.LASF11:
	.ascii "str_help\0"
	.section	.debug_line_str,"dr"
.LASF1:
	.ascii "C:\\assembly\\lab9_vsc\0"
.LASF0:
	.ascii "main.cpp\0"
	.ident	"GCC: (GNU) 13.2.0"
	.def	__mingw_vfscanf;	.scl	2;	.type	32;	.endef
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	getchar;	.scl	2;	.type	32;	.endef
	.def	calloc;	.scl	2;	.type	32;	.endef
	.def	free;	.scl	2;	.type	32;	.endef
