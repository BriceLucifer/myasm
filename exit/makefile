exit:
	yasm -f elf64 -g dwarf2 -l exit.lst exit.asm 
	ld exit.o -o exit
	# if start with main rather than _start: use gcc exit.o -o exit
clean:
	rm -rf exit.lst exit.o exit
