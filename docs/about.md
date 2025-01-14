1. In makefile i use 
```shell 
yasm -f elf64 -g dwarf2 -l exit.lst exit.asm 

# if your asm file use _start as your progrom start point, please use: 
ld exit.o -o exit 

# if you use main as your program start point, please use:
gcc exit.o -o exit 
```
2. check for different way to compile :
```shell 
du -sh exit
```
As you can see, _start is much smaller than main, _start in my linux machine is 8kb, main is about 16kb.
