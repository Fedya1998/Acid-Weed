all: acid

acid: acid.asm acid.c 
	-rm ../1.jpg
	cp original.jpg ../1.jpg
	nasm -f elf64 acid.asm
	gcc -c acid.c -o acidc.o
	gcc -static acid.o acidc.o -o acid 
	rm *.o
clean:
	-rm *.o acid
