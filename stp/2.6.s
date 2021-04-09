# Проверить поместится ли сумма двух заданных беззнаковых чисел в 32 битовый регистр. 
# Числа поступают на вход в регистрах %eax и %edx. 
# Если сумма чисел не поместится в 32 битный регистр запишите в регистр %eax значение 0, 
# если сумма поместится в 32 битный регистр, то запишите 1


# gcc x32
.global _start
.data

.text

_carry_exit:
    # exits when carry flag is up
    mov $60, %eax
    mov $99, %edi
    syscall

_start:
    mov $4294967295, %eax
    mov $1, %edx
    add %eax, %edx

    jc _carry_exit

    # exit
    mov $60, %eax
    mov $0, %edi
    syscall
