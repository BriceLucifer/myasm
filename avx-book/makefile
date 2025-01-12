jumploop: jumploop.o
	gcc jumploop.o -o jumploop -no-pie
jumploop.o: jumploop.asm
	nasm -f elf64 -g -F dwarf jumploop.asm -l jumploop.lst
clean:
	rm -rf jumploop.o jumploop jumploop.lst
