sandbox:newsandbox.o
	ld -m elf_x86_64 newsandbox.o -o sandbox
newsandbox.o:newsandbox.asm
	nasm -f elf64 -g -F stabs newsandbox.asm -l newsandbox.lst
clean:
	rm -rf *.o