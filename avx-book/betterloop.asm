;betterloop.asm

extern printf

section .data
	number dq 5
	fmt db "The sum from 0 to %ld is %ld", 10, 0
section .bss
section .text
	global main 

main:
	push rbp
	mov rbp, rsp
	mov rcx, [number] ;initialize the rcx with number
	mov rax, 0

bloop:
	add rax, rcx 
	loop bloop
	; every time when having a loop 
	; rcx -= 1 until rcx == 0
	; printf
	mov rdi, fmt 
	mov rsi, [number]
	mov rdx, rax 
	mov rax, 0 ; no floating number 
	call printf 
	; exit
	mov rsp, rbp 
	pop rbp 
	ret
