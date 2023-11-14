.global programa
.data
	
		nombre:
		.string "David Rodríguez"

.text
#segmento de codigo
programa:

	la a0, nombre
	li a7, 4
	
		ecall
		
#finalizar programa
li a7, 10
ecall