# asm_work
关于汇编语言在linux环境下的工程

- 使用环境linux (我使用的是Ubuntu linux或者类unix都可以)
- 使用编译器 gcc nasm
    > 安装:(ubuntu apt包管理器)  
    ```sudo apt install build-essential nasm```  
    

## 使用方法:  
### 1.先使用nasm编译成为.o object文件  
```[32位]编译：nasm -f elf -g -F stabs xxx.asm -o xxx.o -l xxx.lst```  
```[64位]编译：nasm -f elf64 -g -F stabs xxx.asm -o xxx.o xxx.lst```  
    
参数解析：  
-f 文件类型 elf(32位) elf64(64位)  
-g 添加调试信息  
-F stabs 以stabs方式添加调试  
-o output输出  
-l lst文件类型输出

### 2.然后链接.o 文件使用linux 自带的ld  

使用方式：   
```[32位] ld -m elf xxx.o -o xxx```  
```[64位] ld -m elf_x86_64 xxx.o -o xxx```

### 3.推荐使用Makefile编译
```make安装:sudo apt install make```


