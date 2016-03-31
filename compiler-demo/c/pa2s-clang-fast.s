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
	pushq	%rbx
Ltmp3:
	.cfi_offset %rbx, -24
	testq	%rdx, %rdx
	je	LBB0_7
## BB#1:                                ## %.lr.ph
	movq	(%rdi), %r8
	movq	8(%rdi), %r9
	movq	16(%rdi), %r11
	movq	24(%rdi), %rdi
	leaq	-1(%rdx), %r10
	xorl	%ebx, %ebx
	testb	$3, %dl
	je	LBB0_4
## BB#2:                                ## %.preheader
	movl	%edx, %ecx
	andl	$3, %ecx
	xorl	%ebx, %ebx
	.align	4, 0x90
LBB0_3:                                 ## =>This Inner Loop Header: Depth=1
	movb	(%r8,%rbx), %al
	movb	%al, (%rsi,%rbx,4)
	movb	(%r9,%rbx), %al
	movb	%al, 1(%rsi,%rbx,4)
	movb	(%r11,%rbx), %al
	movb	%al, 2(%rsi,%rbx,4)
	movb	(%rdi,%rbx), %al
	movb	%al, 3(%rsi,%rbx,4)
	addq	$1, %rbx
	cmpq	%rbx, %rcx
	jne	LBB0_3
LBB0_4:                                 ## %.lr.ph.split
	cmpq	$3, %r10
	jb	LBB0_7
## BB#5:                                ## %.lr.ph.split.split
	subq	%rbx, %rdx
	leaq	15(%rsi,%rbx,4), %rcx
	leaq	3(%rdi,%rbx), %r10
	leaq	3(%r11,%rbx), %r11
	leaq	3(%r9,%rbx), %rax
	leaq	3(%r8,%rbx), %rsi
	xorl	%edi, %edi
	.align	4, 0x90
LBB0_6:                                 ## =>This Inner Loop Header: Depth=1
	movb	-3(%rsi,%rdi), %bl
	movb	%bl, -15(%rcx,%rdi,4)
	movb	-3(%rax,%rdi), %bl
	movb	%bl, -14(%rcx,%rdi,4)
	movb	-3(%r11,%rdi), %bl
	movb	%bl, -13(%rcx,%rdi,4)
	movb	-3(%r10,%rdi), %bl
	movb	%bl, -12(%rcx,%rdi,4)
	movb	-2(%rsi,%rdi), %bl
	movb	%bl, -11(%rcx,%rdi,4)
	movb	-2(%rax,%rdi), %bl
	movb	%bl, -10(%rcx,%rdi,4)
	movb	-2(%r11,%rdi), %bl
	movb	%bl, -9(%rcx,%rdi,4)
	movb	-2(%r10,%rdi), %bl
	movb	%bl, -8(%rcx,%rdi,4)
	movb	-1(%rsi,%rdi), %bl
	movb	%bl, -7(%rcx,%rdi,4)
	movb	-1(%rax,%rdi), %bl
	movb	%bl, -6(%rcx,%rdi,4)
	movb	-1(%r11,%rdi), %bl
	movb	%bl, -5(%rcx,%rdi,4)
	movb	-1(%r10,%rdi), %bl
	movb	%bl, -4(%rcx,%rdi,4)
	movb	(%rsi,%rdi), %bl
	movb	%bl, -3(%rcx,%rdi,4)
	movb	(%rax,%rdi), %bl
	movb	%bl, -2(%rcx,%rdi,4)
	movb	(%r11,%rdi), %bl
	movb	%bl, -1(%rcx,%rdi,4)
	movb	(%r10,%rdi), %bl
	movb	%bl, (%rcx,%rdi,4)
	addq	$4, %rdi
	cmpq	%rdi, %rdx
	jne	LBB0_6
LBB0_7:                                 ## %._crit_edge
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc


.subsections_via_symbols
