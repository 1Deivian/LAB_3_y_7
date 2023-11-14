.data
    a: .word 10         # Valor de a
    b: .word 3          # Valor de b

    result_mul: .word 0  # Almacenar el resultado de la multiplicación
    result_div: .word 0  # Almacenar el resultado de la división
    result_rem: .word 0  # Almacenar el resultado del residuo

.global programa
.text
programa:
    li t1, 3  # X
    li t2, 2  # Y

    # Multiplicación de X por Y
    mul t0, t1, t2  # Resultado en t0

    # Mostrar el resultado de la multiplicación
    addi a0, t0, 48 
    li a7, 11
    ecall
    li a0, 10
    ecall

    # División de X por Y
    divu t3, t1, t2   # Usar divu en lugar de div para división sin signo
    remu a1, t1, t2   # Obtener el residuo con remu

    # Mostrar el resultado de la división
    addi a0, t3, 48
    li a7, 11
    ecall
    li a0, 10
    ecall

    # Mostrar el residuo
    addi a0, a1, 48
    li a7, 11
    ecall
    li a0, 10
    ecall

    # Salir del programa
    li a7, 10
    ecall