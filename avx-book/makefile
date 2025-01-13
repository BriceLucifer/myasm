icalc: icalc.o
	gcc icalc.o -o icalc -no-pie
icalc.o: icalc.asm
	nasm -f elf64 -g -F dwarf icalc.asm -l icalc.lst
clean:
	rm -rf icalc.o icalc icalc.lst
