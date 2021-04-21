.global _start 


.data
    msg:
        .ascii "Hello, world!\n"


.text
_start:
    mov $1, %rax # номер сискола - это 1 = write
    mov $1, %rdi # fd - куда писать, 1 - стандартный вывод
    mov $msg, %rsi # начало строки Hello, world
    mov $14, %rdx # ee длина
    syscall

    mov $60, %rax # syscall exit
    xor %rdi, %rdi
    syscall