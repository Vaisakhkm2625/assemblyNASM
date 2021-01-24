global _start

section .text
_start:
	mov ebx, 1  ; start ebx at 1
	mov ecx, 4  ; number iterations
label:
	add ebx,ebx ; duobling ebx
	dec ecx     ; dec is used for decriment,inc for incriment
	cmp ecx, 0  ; compareing ecx with 0
	jg label    ; jump to label if greater than
	mov eax, 1  ; syscall for exiting 
	int 0x80    ; exiting

