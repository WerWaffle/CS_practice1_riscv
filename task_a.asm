.text
main:
    li a7, 5
    ecall

    li t0, 2
    li t1, 0
    bne a0, t0, print_result
    li t1, 1

print_result:
    mv a0, t1
    li a7, 1
    ecall

    li a0, 10
    li a7, 11
    ecall

    li a7, 10
    ecall
