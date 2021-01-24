global _start:

_start:
	mov ecx,99
	mov ebx,42   ;setting exit code to 42
	mov eax, 1   ;sys_call for exitingl
	cmp ecx,100  ; set flags on background-- 
	jl skip     ;jump less than
	mov ebx, 13  ;if jmp not work,this will set exit status to 13
skip:
	int 0x80

;this is an exapmle for conditional jump

;je  A,B ; jump if Equal
;jne A,B ; jump if Not Equal
;jg  A,B ; jump if Greater
;jge A,B ; jump if Greater or Equal
;jl  A,B ; jump if Less 
;jle A,B ; jump if Less or Equal
