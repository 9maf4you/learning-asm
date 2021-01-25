.global _start

.text

_start:
	mov $3, %eax
	mov $3, %ebx
	mov $3, %ecx # 3 means 4 
	push %rsp
	#push %rip

power:
	dec %ecx
	imul %eax, %ebx
	mov $3, %eax
	jnz power
	ret
