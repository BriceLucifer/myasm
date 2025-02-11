; stack.asm
extern printf
section .data
	strng db "ABCDE", 0
	strnglen equ $ - strng-1
	fmt1 db "The original string: %s", 10, 0
	fmt2 db "The reversed string: %s", 10, 0
section .bss
section .text
	global main
main:
push rbp
mov rbp, rsp
	; 打印原始数组
	mov rdi, fmt1 
	mov rsi, strng 
	mov rax, 0
	call printf
	; 将字符串逐个压入
	xor rax, rax 
	mov rbx, strng
	mov rcx, strnglen
	mov r12, 0
	pushloop:
		mov al, byte [rbx+r12]; 把字符移动到rax
		push rax
		inc r12 
		loop pushloop ; loop的时候rcx会递减
	; 反转
	mov rbx, strng ;strng地址放入rbx
	mov rcx, strnglen
	mov r12, 0 
	poploop:
		pop rax
		mov byte [rbx+r12], al
		inc r12 
		loop poploop 	
	mov byte [rbx+r12], 0 ; 使用0终止符

	; 打印反转
	mov rdi, fmt2 
	mov rsi, strng 
	mov rax, 0
	call printf

	mov rsp, rbp
	pop rbp
	ret
