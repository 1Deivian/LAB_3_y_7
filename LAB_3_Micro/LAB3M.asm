TITLE "LAB 3 Micro"
.MODEL SMALL
.STACK 64 ;Declaracion de segmento de stack
.DATA ;Declaracion de segmento de datos

Nombre    DB   'David Rodriguez',24H

.386
.CODE ;Declaracion de segmento de codigo
MAIN	PROC FAR
		MOV AX, @DATA
		MOV DS,AX
		MOV ES, AX
BEGIN:  
        MOV DX,OFFSET Nombre ;Mover la dirección del mensaje a DX
        MOV AH,9 ;Cargar la función queremos realizar en AH
        INT 21H ;Ejecutar rutina 9h de la interrupción 21h
        MOV AH,4CH ;Carga la función 4CH en AX para cerra el programa
        INT 21H ;Ejecuta la interrupción
MAIN    ENDP
        END MAIN