betterloop: betterloop.o
	gcc betterloop.o -o betterloop -no-pie
betterloop.o: betterloop.asm
	nasm -f elf64 -g -F dwarf betterloop.asm -l betterloop.lst
clean:
	rm -rf betterloop.o betterloop betterloop.lst
