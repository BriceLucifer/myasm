section .data       ;定义数据
section .bss        ;未初始化数据

section .text       ;文字段

global _start       ;开头

_start:             ;代码开始编写
    
    nop 
    ; 实验内容可以放在 nop之间  
    
    ; 实验内容可以放在 nop之间
    nop
    ; 实验内容 不能被完美运行 如果编译过后 使用程序会 segmentation fault