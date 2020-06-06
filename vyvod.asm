format ELF64

public vyvod

section '.vyvod' executable

vyvod:
	mov rcx, rdi ;element
	mov rax, 0 ;hranenie elementa
	.main:		
		mov rax, rcx
		ret