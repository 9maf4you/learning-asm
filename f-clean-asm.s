.global _start

.text

_start:
	mov $3, %eax
	mov $3, %ebx
	mov $3, %ecx # 3 means 4 
	#push %rsp
	#push %rip
	call power
	mov %ebx, %edi
	mov $60, %eax
	syscall
	
	#0x7ffffffee2c0
	
power:
	dec %ecx
	imul %eax, %ebx
	mov $3, %eax
	jnz power
	ret
