# GNU C11 (Homebrew gcc HEAD) version 6.0.0 20160331 (experimental) (x86_64-apple-darwin15.4.0)
#	compiled by GNU C version 6.0.0 20160331 (experimental), GMP version 6.1.0, MPFR version 3.1.3-p2, MPC version 1.0.3, isl version 0.15
	.text
	.align 4,0x90
	.globl _pa2s
_pa2s:
LFB3:
	testq	%rdx, %rdx	# n
	je	L19	#,
	leaq	8(%rsp), %r10	#,
LCFI0:
	leaq	-32(%rdx), %rcx	#, tmp161
	andq	$-32, %rsp	#,
	shrq	$5, %rcx	#, tmp162
	pushq	-8(%r10)	#
	leaq	-1(%rdx), %r11	#, tmp163
	pushq	%rbp	#
	addq	$1, %rcx	#, bnd.4
	movq	%rcx, %rax	# bnd.4, ratio_mult_vf.5
	salq	$5, %rax	#, ratio_mult_vf.5
LCFI1:
	movq	%rsp, %rbp	#,
	pushq	%r10	#
LCFI2:
	pushq	%rbx	#
LCFI3:
	movq	(%rdi), %r8	# *pa_8(D).r, pretmp_37
	movq	8(%rdi), %r9	# *pa_8(D).g, pretmp_39
	movq	16(%rdi), %r10	# *pa_8(D).b, pretmp_41
	movq	24(%rdi), %rdi	# *pa_8(D).a, pretmp_43
	cmpq	$30, %r11	#, tmp163
	jbe	L9	#,
	xorl	%r11d, %r11d	# ivtmp.34
	xorl	%ebx, %ebx	# ivtmp.32
L4:
	vmovdqu	(%r10,%r11), %ymm1	# MEM[base: pretmp_41, index: ivtmp.34_51, offset: 0B], MEM[base: pretmp_41, index: ivtmp.34_51, offset: 0B]
	vmovdqu	(%r8,%r11), %ymm4	# MEM[base: pretmp_37, index: ivtmp.34_51, offset: 0B], MEM[base: pretmp_37, index: ivtmp.34_51, offset: 0B]
	addq	$1, %rbx	#, ivtmp.32
	vmovdqu	(%r9,%r11), %ymm3	# MEM[base: pretmp_39, index: ivtmp.34_51, offset: 0B], MEM[base: pretmp_39, index: ivtmp.34_51, offset: 0B]
	vmovdqu	(%rdi,%r11), %ymm5	# MEM[base: pretmp_43, index: ivtmp.34_51, offset: 0B], MEM[base: pretmp_43, index: ivtmp.34_51, offset: 0B]
	vpunpcklbw	%ymm1, %ymm4, %ymm0	# MEM[base: pretmp_41, index: ivtmp.34_51, offset: 0B], MEM[base: pretmp_37, index: ivtmp.34_51, offset: 0B], tmp168
	vpunpckhbw	%ymm1, %ymm4, %ymm4	# MEM[base: pretmp_41, index: ivtmp.34_51, offset: 0B], MEM[base: pretmp_37, index: ivtmp.34_51, offset: 0B], tmp169
	vpunpcklbw	%ymm5, %ymm3, %ymm1	# MEM[base: pretmp_43, index: ivtmp.34_51, offset: 0B], MEM[base: pretmp_39, index: ivtmp.34_51, offset: 0B], tmp174
	vpunpckhbw	%ymm5, %ymm3, %ymm3	# MEM[base: pretmp_43, index: ivtmp.34_51, offset: 0B], MEM[base: pretmp_39, index: ivtmp.34_51, offset: 0B], tmp175
	vperm2i128	$32, %ymm4, %ymm0, %ymm2	#, tmp169, tmp168, tmp170
	vperm2i128	$49, %ymm4, %ymm0, %ymm0	#, tmp169, tmp168, tmp173
	vperm2i128	$32, %ymm3, %ymm1, %ymm4	#, tmp175, tmp174, tmp176
	vperm2i128	$49, %ymm3, %ymm1, %ymm1	#, tmp175, tmp174, tmp179
	vpunpcklbw	%ymm4, %ymm2, %ymm3	# tmp176, tmp170, tmp181
	vpunpckhbw	%ymm4, %ymm2, %ymm2	# tmp176, tmp170, tmp182
	vperm2i128	$32, %ymm2, %ymm3, %ymm4	#, tmp182, tmp181, tmp183
	vperm2i128	$49, %ymm2, %ymm3, %ymm2	#, tmp182, tmp181, tmp187
	vmovdqu	%ymm2, 32(%rsi,%r11,4)	# tmp187, MEM[base: s_6(D), index: ivtmp.34_51, step: 4, offset: 32B]
	vpunpcklbw	%ymm1, %ymm0, %ymm2	# tmp179, tmp173, tmp189
	vpunpckhbw	%ymm1, %ymm0, %ymm0	# tmp179, tmp173, tmp190
	vperm2i128	$32, %ymm0, %ymm2, %ymm1	#, tmp190, tmp189, tmp191
	vperm2i128	$49, %ymm0, %ymm2, %ymm0	#, tmp190, tmp189, tmp195
	vmovdqu	%ymm4, (%rsi,%r11,4)	# tmp183, MEM[base: s_6(D), index: ivtmp.34_51, step: 4, offset: 0B]
	vmovdqu	%ymm1, 64(%rsi,%r11,4)	# tmp191, MEM[base: s_6(D), index: ivtmp.34_51, step: 4, offset: 64B]
	vmovdqu	%ymm0, 96(%rsi,%r11,4)	# tmp195, MEM[base: s_6(D), index: ivtmp.34_51, step: 4, offset: 96B]
	addq	$32, %r11	#, ivtmp.34
	cmpq	%rbx, %rcx	# ivtmp.32, bnd.4
	ja	L4	#,
	cmpq	%rax, %rdx	# ratio_mult_vf.5, n
	je	L22	#,
	vzeroupper
	.align 4,0x90
L6:
	movzbl	(%r8,%rax), %ecx	# MEM[base: pretmp_37, index: i_35, offset: 0B], MEM[base: pretmp_37, index: i_35, offset: 0B]
	movb	%cl, (%rsi,%rax,4)	# MEM[base: pretmp_37, index: i_35, offset: 0B], MEM[base: s_6(D), index: i_35, step: 4, offset: 0B]
	movzbl	(%r9,%rax), %ecx	# MEM[base: pretmp_39, index: i_35, offset: 0B], MEM[base: pretmp_39, index: i_35, offset: 0B]
	movb	%cl, 1(%rsi,%rax,4)	# MEM[base: pretmp_39, index: i_35, offset: 0B], MEM[base: s_6(D), index: i_35, step: 4, offset: 1B]
	movzbl	(%r10,%rax), %ecx	# MEM[base: pretmp_41, index: i_35, offset: 0B], MEM[base: pretmp_41, index: i_35, offset: 0B]
	movb	%cl, 2(%rsi,%rax,4)	# MEM[base: pretmp_41, index: i_35, offset: 0B], MEM[base: s_6(D), index: i_35, step: 4, offset: 2B]
	movzbl	(%rdi,%rax), %ecx	# MEM[base: pretmp_43, index: i_35, offset: 0B], MEM[base: pretmp_43, index: i_35, offset: 0B]
	movb	%cl, 3(%rsi,%rax,4)	# MEM[base: pretmp_43, index: i_35, offset: 0B], MEM[base: s_6(D), index: i_35, step: 4, offset: 3B]
	addq	$1, %rax	#, ratio_mult_vf.5
	cmpq	%rax, %rdx	# ratio_mult_vf.5, n
	ja	L6	#,
	popq	%rbx	#
LCFI4:
	popq	%r10	#
LCFI5:
	popq	%rbp	#
LCFI6:
	leaq	-8(%r10), %rsp	#,
LCFI7:
L19:
	ret
	.align 4,0x90
L22:
LCFI8:
	vzeroupper
	popq	%rbx	#
LCFI9:
	popq	%r10	#
LCFI10:
	popq	%rbp	#
LCFI11:
	leaq	-8(%r10), %rsp	#,
LCFI12:
	jmp	L19	#
	.align 4,0x90
L9:
LCFI13:
	xorl	%eax, %eax	# ratio_mult_vf.5
	jmp	L6	#
LFE3:
	.section __TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame1:
	.set L$set$0,LECIE1-LSCIE1
	.long L$set$0
LSCIE1:
	.long	0
	.byte	0x1
	.ascii "zR\0"
	.byte	0x1
	.byte	0x78
	.byte	0x10
	.byte	0x1
	.byte	0x10
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.byte	0x90
	.byte	0x1
	.align 3
LECIE1:
LSFDE1:
	.set L$set$1,LEFDE1-LASFDE1
	.long L$set$1
LASFDE1:
	.long	LASFDE1-EH_frame1
	.quad	LFB3-.
	.set L$set$2,LFE3-LFB3
	.quad L$set$2
	.byte	0
	.byte	0x4
	.set L$set$3,LCFI0-LFB3
	.long L$set$3
	.byte	0xc
	.byte	0xa
	.byte	0
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0x10
	.byte	0x6
	.byte	0x2
	.byte	0x76
	.byte	0
	.byte	0x4
	.set L$set$5,LCFI2-LCFI1
	.long L$set$5
	.byte	0xf
	.byte	0x3
	.byte	0x76
	.byte	0x78
	.byte	0x6
	.byte	0x4
	.set L$set$6,LCFI3-LCFI2
	.long L$set$6
	.byte	0x10
	.byte	0x3
	.byte	0x2
	.byte	0x76
	.byte	0x70
	.byte	0x4
	.set L$set$7,LCFI4-LCFI3
	.long L$set$7
	.byte	0xc3
	.byte	0x4
	.set L$set$8,LCFI5-LCFI4
	.long L$set$8
	.byte	0xca
	.byte	0xc
	.byte	0xa
	.byte	0
	.byte	0x4
	.set L$set$9,LCFI6-LCFI5
	.long L$set$9
	.byte	0xc6
	.byte	0x4
	.set L$set$10,LCFI7-LCFI6
	.long L$set$10
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.byte	0x4
	.set L$set$11,LCFI8-LCFI7
	.long L$set$11
	.byte	0xf
	.byte	0x3
	.byte	0x76
	.byte	0x78
	.byte	0x6
	.byte	0x10
	.byte	0x3
	.byte	0x2
	.byte	0x76
	.byte	0x70
	.byte	0x10
	.byte	0x6
	.byte	0x2
	.byte	0x76
	.byte	0
	.byte	0x4
	.set L$set$12,LCFI9-LCFI8
	.long L$set$12
	.byte	0xa
	.byte	0xc3
	.byte	0x4
	.set L$set$13,LCFI10-LCFI9
	.long L$set$13
	.byte	0xca
	.byte	0xc
	.byte	0xa
	.byte	0
	.byte	0x4
	.set L$set$14,LCFI11-LCFI10
	.long L$set$14
	.byte	0xc6
	.byte	0x4
	.set L$set$15,LCFI12-LCFI11
	.long L$set$15
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.byte	0x4
	.set L$set$16,LCFI13-LCFI12
	.long L$set$16
	.byte	0xb
	.align 3
LEFDE1:
	.subsections_via_symbols
