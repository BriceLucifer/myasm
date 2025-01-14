---
outline: deep
---
# Get Started
关于汇编语言在linux环境下的工程

> [!TIP] 
> - 使用环境linux (我使用的是Ubuntu linux或者类unix都可以)
> - 使用编译器 gcc nasm
> - 安装: (ubuntu apt包管理器)  
```shell
sudo apt install build-essential nasm
```  
    

## 使用方法:  
### 1.先使用nasm编译成为.o object文件  
```shell
#[32位]编译：
nasm -f elf -g -F stabs xxx.asm -o xxx.o -l xxx.lst
```  
```shell
#[64位]编译：
nasm -f elf64 -g -F stabs xxx.asm -o xxx.o xxx.lst
```  
>[!TIP]    
> - 参数解析：  
>     - -f 文件类型 elf(32位) elf64(64-位)  
>     - -g 添加调试信息  
>     - -F stabs 以stabs方式添加调试  
>     - -o output输出  
>     - -l lst文件类型输出

### 2.然后链接.o 文件使用linux 自带的ld  

使用方式：   
```shell
[32位] ld -m elf xxx.o -o xxx
```  

```shell
[64位] ld -m elf_x86_64 xxx.o -o xxx
```

### 3.推荐使用Makefile编译
```shell
# make安装:
sudo apt install make build-essential gdb ddd
```

### 4.对于.c文件
使用gcc编译
```shell
gcc xxx.c -o xxx 
# 编译c文件 直接输出 

# 如果直接
gcc xxx.c
# 生成 -> a.out
# 然后执行 ./a.out

# 基本编译流程
# 1.预编译 生成预编译文件
```shell
gcc -E xxx.c -o xxx.i
# 2.编译 生成汇编文件 .s或者.asm都可以
gcc -S xxx.i -o xxx.s
# 3.汇编 生成目标文件
gcc -c xxx.s -o xxx.o
# 4.链接 生成可执行文件
gcc xxx.o -o xxx
```
