	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_pa2s
	.align	4, 0x90
_pa2s:                                  ## @pa2s
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp0:
	.cfi_def_cfa_offset 16
Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp2:
	.cfi_def_cfa_register %rbp
	testq	%rdx, %rdx
	je	LBB0_3
## BB#1:                                ## %.lr.ph
	movq	(%rdi), %r8
	movq	8(%rdi), %r9
	movq	16(%rdi), %rax
	movq	24(%rdi), %rdi
	addq	$3, %rsi
	.align	4, 0x90
LBB0_2:                                 ## =>This Inner Loop Header: Depth=1
	movb	(%r8), %cl
	movb	%cl, -3(%rsi)
	movb	(%r9), %cl
	movb	%cl, -2(%rsi)
	movb	(%rax), %cl
	movb	%cl, -1(%rsi)
	movb	(%rdi), %cl
	movb	%cl, (%rsi)
	incq	%r8
	incq	%r9
	incq	%rax
	incq	%rdi
	addq	$4, %rsi
	decq	%rdx
	jne	LBB0_2
LBB0_3:                                 ## %._crit_edge
	popq	%rbp
	retq
	.cfi_endproc


.subsections_via_symbols
