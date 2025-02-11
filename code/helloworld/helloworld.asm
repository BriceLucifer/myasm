section .data
    ; 定义数据
    helloworld: db "hello world_64",10 ; 要输出的文字
    len: equ $-helloworld           ; 文字长度

section .bss ; 未初始化数据
    ; 此时没有
section .text

global _start

_start:
    mov eax,4
    mov ebx,1
    mov ecx,helloworld
    mov edx,len
    int 80H
    mov eax,1
    mov ebx,0
    int 80H

