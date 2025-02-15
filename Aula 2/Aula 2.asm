	ORG 0000H
	LJMP INICIO

	ORG 0100H
INICIO:
	
	;Instruções aritméticas
	;CLR C ;Da um clear no PSW (carry)

	; Adição
	;MOV A, #11000001B ;Indicamos que é um binario (B)
	;MOV R0, #11111110B
	;ADD A, #03h
	;ADD A, R0
	;ADD A, @R1

	;Adição com carry (vai 1)
	;ADDC A,R0
	ADDC A, #03h
	ADDC A, @R1
	

	;Subtração
	;Limpar carry antes de dar um subb para ele não intervir na conta
	CLR C
	SUBB A, #10H

	;Multiplicação
	MOV A, #0AAH
	MOV B, #0AH
	MUL AB

	;Divisão
	MOV A, #0AH
	MOV B, #03H
	DIV AB
	; O B recebe o resto da conta
	; O A fica com o resultado inteiro


	;Instruções Lógicas

	;AND
	;ANL A, #10H
	;ANL 20h, #00H

	;OU
	ORL A, #10H 
	ORL 20h, #00H


	JMP $