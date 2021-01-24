global _start:

_start:
	mov ebx,42   ;setting exit code to 42
	mov eax, 1   ;sys_call for exitingl
	jmp skip     ;jump to "skip" label
	mov ebx, 13  ;if jmp not work,this will set exit status to 13
skip:
	int 0x80

;this is an exapmle for unconditional jump

