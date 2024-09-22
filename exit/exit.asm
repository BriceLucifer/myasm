; Program: Exit
; Executes the exit system call
; no input 
; output: only the status

segment .text 
global _start

_start: 
	mov eax, 1 ; 1 is the exit system call number
	mov ebx, 5 ; 5 is the return number 
	int 0x80   ; excute a system call 

