test: assemble link

assemble:
	nasm -f macho64 -o ./test.o test.asm

link:
	ld test.o -o test -e _main -no_pie -macosx_version_min 10.9 -lSystem
clean:
	rm -rf *.o test
