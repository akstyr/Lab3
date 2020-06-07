format ELF64

public vyvod

section '.vyvod' executable

vyvod:
	mov rcx, rdi ;element
	.main:		
		mov rax, rcx
		ret