.global _start

_start:
    mov $3, %rax
    mov $2, %rbx
_work:
    mov %rax, %rdi
    mul %rax
    dec %rbx
    jnz _work
    
    mov $60, %rax
    syscall

