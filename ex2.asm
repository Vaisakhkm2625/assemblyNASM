global _start


section .data			      ; for diclearing data 
	msg db "Hello, world", 0x0a   ; creating a double byte called msg,    0x0a=10,newline charector
	len equ $ - msg               ; storing the lenght of string


section .text                         ; here the code live
_start: 
	mov eax, 4   ;sys_write syscall 
	mov ebx, 1   ;stdout file descripter
	mov ecx, msg ;bytes to write, ecx holds the string pointer
	mov edx, len ;no. of bytes to write
	int 0x80     ; systemcall
	mov eax, 1   ;sys_exit systemcall
	mov ebx, 0   ;exit status 0
	int 0x80     ;exiting... 
	



	;mov ebx, 123 ; ebx =123
	;mov eax, ebx ; ebx = eax
	;add ebx, eax ; ebx += eax
	;sub ebx, eax ; ebx -= eax
	;mul ebx      ; always mul with eax reg.
	;div ebx      ; always div with eax reg.
