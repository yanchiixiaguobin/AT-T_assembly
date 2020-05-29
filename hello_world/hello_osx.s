data:
	.asciz	"Hello, World\n"
.globl	_main
_main:
	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$16,	%rsp
	movl	%edi,	-8(%rbp)
	leaq	data(%rip),	%rdi
	movb	$0,		%al
	callq	_printf
	addq	$16,	%rsp
	popq	%rbp
	retq
