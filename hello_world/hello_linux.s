data:
	.asciz	"世界，您好"
.globl	main
main:
	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$16,	%rsp
	movl	%edi,	-8(%rbp)
	leaq	data(%rip),	%rdi
	movb	$0,		%al
	callq	puts
	addq	$16,	%rsp
	popq	%rbp
	retq
