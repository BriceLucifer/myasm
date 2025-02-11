; icalc.asm
extern printf

section .data
	number1 dq 128
	number2 dq 19
	neg_num dq -12 ;用于符号拓展
	fmt db "The numbers are %ld and %ld", 10, 0
	fmtint db "%s %ld", 10, 0
	sumi db "The sum is", 0
	difi db "The difference is", 0
	inci db "Number 1 Incremented:", 0
	deci db "Number 1 Decremented:", 0
	sali db "Number 1 Shift left 2 (x4):", 0
	sari db "Number 1 Shift right 2 (/4):", 0
	sariex db "Number 1 Shift right (/4) with "
	       db "sign extension:", 0
	multi db "The product is", 0
	divi db "The Integer quotient is", 0
	remi db "The modulo is", 0
section .bss
	resulti resq 1 
	modulo resq 1 
section .text
	global main 

main:
	push rbp
	mov rbp, rsp
	; 显示数字
		mov rdi, fmt
		mov rsi, [number1]
		mov rdx, [number2]
		mov rax, 0
		call printf 
	; 加法 -----------------------------------------------
	mov rax, [number1]
	add rax, [number1] ; 从rax中加上number1 
	mov [resulti], rax
	; 显示结果
		mov rdi, fmtint
		mov rsi, sumi
		mov rdx, [resulti]
		mov rax, 0 ; 与浮点数无关
		call printf
	; 减法 -----------------------------------------------
	mov rax, [number1]
	sub rax, [number2] ;从rax中减去number2 
	mov [resulti], rax 
	; 显示结果
		mov rdi, fmtint
		mov rsi, difi
		mov rdx, [resulti]
		mov rax, 0
		call printf
	; 递增 ------------------------------------------------
	mov rax, [number1]
	inc rax ; rax递增
	mov [resulti], rax 
	; 显示结果
		mov rdi, fmtint
		mov rsi, inci
		mov rdx, [resulti]
		mov rax, 0
		call printf
	; 递减 -------------------------------------------------
	mov rax, [number1]
	dec rax 
	mov [resulti], rax
	; 显示结果
		mov rdi, fmtint 
		mov rsi, deci
		mov rdx, [resulti]
		mov rax, 0
		call printf
	; 左移运算 -----------------------------------------------
	mov rax, [number1]
	sal rax, 2 
	mov [resulti], rax
	; 显示结果
		mov rdi, fmtint
		mov rsi, sali
		mov rdx, [resulti]
		mov rax, 0
		call printf
	; 右移运算 ------------------------------------------------
	mov rax, [number1]
	sar rax, 2 
	mov [resulti], rax 
	; 显示结果
		mov rdi, fmtint
		mov rsi, sari
		mov rdx, [resulti]
		mov rax, 0
		call printf
	; 带符号扩展的右移运算 --------------------------------------
	mov rax, [neg_num]
	sar rax, 2 
	mov [resulti], rax 
	; 显示结果
		mov rdi, fmtint
		mov rsi, sariex 
		mov rdx, [resulti]
		mov rax, 0
		call printf 
	; 乘法
	mov rax, [number1]
	imul qword [number2] ; 将rax和number2相乘
	mov [resulti], rax 
	; 显示结果
		mov rdi, fmtint 
		mov rsi, multi
		mov rdx, [resulti]
		mov rax, 0
		call printf
	; 除法
	mov rax, [number1]
	mov rdx, 0 ; rdx 需要在执行除法之前为0
	idiv qword [number2] 
	mov [resulti], rax
	mov [modulo], rdx
	; 显示结果 商
		mov rdi, fmtint
		mov rsi, divi
		mov rdx, [resulti]
		mov rax, 0
		call printf
	; 显示结果 余
		mov rdi, fmtint
		mov rsi, remi
		mov rdx, [modulo]
		mov rax, 0
		call printf
	; 退出栈帧
	mov rsp, rbp 
	pop rbp
	ret 
