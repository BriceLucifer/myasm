helloworld:helloworld.o
	ld -m elf_x86_64 helloworld.o -o helloworld 
	# -m 是为了区分架构 我这里使用了elf_x86_64格式 如果强调可能是32位
	# 支持的仿真： elf_x86_64 elf32_x86_64 elf_i386 elf_iamcu elf_l1om elf_k1om i386pep i386pe
helloworld.o:helloworld.asm
	nasm -f elf64 helloworld.asm -l helloworld.lst
	# nasm -f elf64 -g -F stabs helloworld.asm -l helloworld.lst 
	#		格式   包含调试  调试信息按照stabs格式	-l为了打印出内容列表 包括地址
clean:
	rm -rf *.o *.lst
