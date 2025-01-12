memory: memory.o
	gcc memory.o -o memory -no-pie
memory.o: memory.asm
	nasm -f elf64 -g -F dwarf memory.asm -l memory.lst
clean:
	rm -rf memory.o memory memory.lst
