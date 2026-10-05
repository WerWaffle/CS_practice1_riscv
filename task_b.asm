.text
main:
    li a7, 5
    ecall
    mv t0, a0
    li t1, 118
    li t2, 2

    ble t0, t1, print_value
    mv t3, t0
    mv t0, t1
    mv t1, t3

print_value:
    mv a0, t0
    li a7, 1
    ecall

    sub t3, t1, t0
    bltu t3, t2, finish
    li a0, 32
    li a7, 11
    ecall

    addi t0, t0, 2
    j print_value

finish:
    li a0, 10
    li a7, 11
    ecall

    li a7, 10
    ecall
