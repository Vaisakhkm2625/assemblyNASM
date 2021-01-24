global main  ;here we need to use gcc instead of ld as we are going to use C functions 

extern printf

section .data
	msg db "Testing %i...", 0x0a, 0x00

main:
	push ebp
	mov ebp, esp
	push 123
	push msg
	call printf
	mov eax, 0
	mov esp, ebp
	pop ebp
	;ret
