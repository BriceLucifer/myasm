convertc:convert.c
	gcc convert.c -o convertc

convert.o:convert.asm
	nasm -f elf64 -g -F stabs convert.asm -l convert.lst

convert:convert.o
	ld -m elf_x86_64 convert.o -o convert

clean:
	rm -rf *.o