.data
array: .space 72

.text
main:
    la t0, array
    li t1, 0
    li t2, 18

read_loop:
    bge t1, t2, finish
    li a7, 5
    ecall
    beqz a0, finish

    sw a0, 0(t0)
    addi t0, t0, 4
    addi t1, t1, 1
    j read_loop

finish:
    li a7, 10
    ecall
