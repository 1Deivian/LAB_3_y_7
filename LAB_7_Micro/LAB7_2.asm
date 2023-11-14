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

    # Mostrar el resultado de la multiplicación (decenas)
    li t3, 10        # Valor para dividir y obtener las decenas
    divu a1, t0, t3   # a1 tiene las decenas
    remu t0, t0, t3   # t0 tiene las unidades

    addi a0, a1, 48
    li a7, 11
    ecall

    # Mostrar el resultado de la multiplicación (unidades)
    addi a0, t0, 48
    li a7, 11
    ecall

    li a0, 10
    ecall

    # División de X por Y
    divu a1, t1, t2   # Usar divu en lugar de div para división sin signo
    remu t6, t1, t2   # t6 tiene el residuo

    # Mostrar el resultado de la división (decenas)
    li t3, 10
    divu a2, a1, t3  # a2 tiene las decenas
    addi a0, a2, 48
    li a7, 11
    ecall

    # Mostrar el resultado de la división (unidades)
    addi a0, a1, 48
    li a7, 11
    ecall
    li a0, 10
    ecall

    # Mostrar el residuo (asegurar dos dígitos)
    addi a0, a2, 48
    li a7, 11
    ecall

    addi a0, t6, 48
    li a7, 11
    ecall

    li a0, 10
    ecall

    # Salir del programa
    li a7, 10
    ecall