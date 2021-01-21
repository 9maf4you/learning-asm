all:
	gcc -nostdlib -static -g hello.s -o mine-clean-asm.bin
	gcc -nostdlib -static -g bla.s -o clean-asm.bin
	gcc -g bla.c -o clean-c.bin


clean:
	rm mine-clean-asm.bin clean-c.bin  clean-asm.bin