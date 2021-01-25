all:
	gcc -nostdlib -static -g mine-clean-asm.s -o mine-clean-asm.bin
	gcc -nostdlib -static -g clean-asm.s -o clean-asm.bin
	gcc -g clean-c-1.c -o clean-c-1.bin 
	gcc -g clean-c.c -o clean-c.bin
	./mine-clean-asm.bin


clean:
	rm mine-clean-asm.bin clean-c.bin  clean-asm.bin || true
