.global _start

.text

_start:
	mov $3, %eax
	mov $3, %ebx
	mov $3, %ecx # 3 means 4 
	#call power
	#0x7ffffffee2c0
	#0x7ffffffee2b8

power:
	dec %ecx
	imul %eax, %ebx
	mov $3, %eax
	jnz power
	ret
