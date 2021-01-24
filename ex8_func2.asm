;call will

; push EIP to stack
; Preforms ajump

global _start

_start:
	call func
	mov eax, 1
	int 0x80


func:

	;prolog
	mov ebp, esp      ; storing top of stack to ebp so that at the end we can return there
	;but this will create a problem if system calls other function ,as ebp values will change
	; so we can use another technique
	; means we can push the value of ebp to stack 
	push ebp


	sub esp, 2
	mov [esp], byte 'H'
	mov [esp+1], byte 'i'

	mov eax, 4
	mov ebx, 1
	mov ecx, esp
	mov edx, 2
	int 0x80

	;epolog
	mov ebx, 0
	mov esp, ebp 
	pop ebp   ; here it will be poped so that the place remain intact
	ret 
		;pop eax
		;jmp eax 
