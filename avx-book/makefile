move: move.o
	gcc move.o -o move -no-pie
move.o: move.asm
	nasm -f elf64 -g -F dwarf move.asm -l move.lst
clean:
	rm -rf move.o move move.lst
