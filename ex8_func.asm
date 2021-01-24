;call will

; push EIP to stack
; Preforms ajump

global _start

_start:
	call func
	mov eax, 1
	int 0x80


func:
	mov ebp, esp      ; storing top of stack to ebp so that at the end we can return there
	

	sub esp, 2
	mov [esp], byte 'H'
	mov [esp+1], byte 'i'

	mov eax, 4
	mov ebx, 1
	mov ecx, esp
	mov edx, 2
	int 0x80

	mov ebx, 0
	mov esp, ebp 
	ret 
		;pop eax
		;jmp eax 
