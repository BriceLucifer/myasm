betterloop: betterloop.o
	gcc -o betterloop betterloop.o -no-pie
betterloop.o:
	nasm -f elf64 -g -F dwarf betterloop.asm -l betterloop.lst 
jumploop: jumploop.o
	gcc -o jumploop jumploop.o -no-pie
jumploop.o:
	nasm -f elf64 -g -F dwarf jumploop.asm -l jumploop.lst 
clean:
	rm -rf jumploop.o jumploop jumploop.lst betterloop.lst betterloop.o betterloop
