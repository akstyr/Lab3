format ELF64

public proverka

section '.proverka' executable

proverka:
	mov rcx, rdi ;element
	mov rax, 0 ;hranenie elementa
	.main:		
		mov rax, rcx
		cmp rax, 1
		jl .next
		mov rax, 0
		ret
	.next:
		mov rax, 1
		ret