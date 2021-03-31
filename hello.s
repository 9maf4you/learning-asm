.global _start

.text

_start:
	mov $3, %rax
	mov $8, %rbx

power:
	imul %rax, %rax
	mov %rax, %rcx  #result $of imul 2 * 2
	dec %rbx #how many time we imul %eax
	test %rbx, 11111111 #test if ebx (4 here ) was set to zero. ALSO set ZF flag
	jnz power
	retq
