stack: stack.o
	gcc stack.o -o stack -no-pie
stack.o: stack.asm
	nasm -f elf64 -g -F dwarf stack.asm -l stack.lst
clean:
	rm -rf stack.o stack stack.lst
