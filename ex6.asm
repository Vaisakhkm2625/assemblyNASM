global _start
section .data
	addr db "yellow"

section .text
_start:
	mov [addr], byte 'H'
	mov [addr+5], byte '!'
				; this will change yellow to Hello! ;)
	
	mov eax, 4 ; sys_write system call
	mov ebx, 1 ; stdout file description
	mov ecx, addr ; bytes to write
	mov edx, 6; number of bytes to write
	int 0x80
	mov eax, 1 ;syscall for exiting
	mov ebx, 0 ; retuning 0;
	int 0x80
