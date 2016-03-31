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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$0, -32(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jae	LBB0_4
## BB#2:                                ##   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movb	(%rcx,%rax), %dl
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movb	%dl, (%rcx,%rax,4)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movb	(%rcx,%rax), %dl
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movb	%dl, 1(%rcx,%rax,4)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rcx
	movb	(%rcx,%rax), %dl
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movb	%dl, 2(%rcx,%rax,4)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	movb	(%rcx,%rax), %dl
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movb	%dl, 3(%rcx,%rax,4)
## BB#3:                                ##   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	LBB0_1
LBB0_4:
	popq	%rbp
	retq
	.cfi_endproc


.subsections_via_symbols
