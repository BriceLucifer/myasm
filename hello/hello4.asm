;hello4.asm
extern printf; 声明外部函数

section .data
	msg db "Hello, World!", 0;
	fmtstr db "This is our string: %s", 10, 0;
section .bss
section .text
	global main

main:
	push rbp;
	mov rbp, rsp;
	mov rdi, fmtstr;
	mov rsi, msg;
	mov rax, 0;
	call printf;
	mov rsp, rbp;
	pop rbp;
	mov rax, 60;
	mov rdi, 110;
	syscall;