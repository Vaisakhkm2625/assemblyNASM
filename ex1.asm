global _start
_start:
	mov eax, 1  
	mov ebx, 43  ; value in ebx register will be the exit status
	int 0x80  ;int is intrrupt handler, here it is used for syscalls,
                  ; sys calles are performed by value of eax register 


