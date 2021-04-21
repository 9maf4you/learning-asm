all:
	#gcc -nostdlib -static -g mine-clean-asm.s -o mine-clean-asm.bin
	#gcc -nostdlib -static -g clean-asm.s -o clean-asm.bin
	#gcc -g clean-c-1.c -o clean-c-1.bin 
	#gcc -g clean-c.c -o clean-c.bin
	#gcc -nostdlib -static -g ./stp/2.5.s -o 2.5.bin; 
	#gcc -nostdlib -static -g ./stp/2.6.s -o 2.6.bin; 
	gcc -nostdlib -static -g ./stp/2.7.s -o 2.7.bin; 


clean:
	rm ./*.bin || true
