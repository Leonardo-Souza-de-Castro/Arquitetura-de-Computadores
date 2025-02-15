	ORG 0000H
	LJMP INICIO

	ORG 0100H
INICIO:
	
	;Instru��es aritm�ticas
	;CLR C ;Da um clear no PSW (carry)

	; Adi��o
	;MOV A, #11000001B ;Indicamos que � um binario (B)
	;MOV R0, #11111110B
	;ADD A, #03h
	;ADD A, R0
	;ADD A, @R1

	;Adi��o com carry (vai 1)
	;ADDC A,R0
	ADDC A, #03h
	ADDC A, @R1
	

	;Subtra��o
	;Limpar carry antes de dar um subb para ele n�o intervir na conta
	CLR C
	SUBB A, #10H

	;Multiplica��o
	MOV A, #0AAH
	MOV B, #0AH
	MUL AB

	;Divis�o
	MOV A, #0AH
	MOV B, #03H
	DIV AB
	; O B recebe o resto da conta
	; O A fica com o resultado inteiro


	;Instru��es L�gicas

	;AND
	;ANL A, #10H
	;ANL 20h, #00H

	;OU
	ORL A, #10H 
	ORL 20h, #00H


	JMP $