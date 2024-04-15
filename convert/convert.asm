section .bss

section .data
    kangroo: db "KANGAROO",10
    kangroolen: equ $-kangroo
    before: db "before:"
    beforelen: equ $-before
    after: db "after:"
    afterlen: equ $-after

section .text

global _start

_start:
    ;写入输出 
    mov eax,4
    mov ebx,1
    mov ecx,before
    mov edx,beforelen
    int 80H

    mov eax,4
    mov ebx,1
    mov ecx,kangroo
    mov edx,kangroolen
    int 80H

    ;转换大转小
    mov ebx,kangroo
    mov ecx,kangroolen-1
    convert:
        add byte [ebx],32
        inc ebx                 ;ebx其实是一个偏移指针 inc ebx 向右移动
        loop convert            ;循环 暗中执行:dec ecx 当ecx == 0时 跳出
    
    ;输出转换
    mov eax,4
    mov ebx,1
    mov ecx,after
    mov edx,afterlen
    int 80H

    mov eax,4
    mov ebx,1
    mov ecx,kangroo
    mov edx,kangroolen

    int 80H
    mov eax,1       ;设置退出
    mov ebx,0       ;返回0
    int 80H
