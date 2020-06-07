format ELF64

public proverka

section '.proverka' executable

proverka:
	mov rax, rdi ;element
	.main:
		cmp rax, 1
		jl .next
		mov rax, 0
		ret
	.next:
		mov rax, 1
		ret