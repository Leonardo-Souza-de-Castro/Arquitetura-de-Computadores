	ORG 0000H

	LJMP INICIO

	ORG 0050H
	;EQU -> Define constantes
	;Podemos indicar ou um endereço de memória para a constante ou um valor
	VALOR EQU 10H

	DB 10 ; DB ->	é uma diretiva não um comando
	; A função do DB é gravar dados na memória de código (memória flash)
	; É similar a uma variavel pois sempre que eu rodar o programa os dados serão escritos
	DB "MARCO"
	DB 20
	DB -5
	
	ORG 0100H

	INICIO:
	; O DPTR é um valor de 16 bits
	; Para montar ele precisamos indicar a parte mais significativa (DPH)
	; E depois a menos significativa (DPL)
	MOV DPH, #00H
	MOV DPL, #50H

	CLR A

	MOVC A, @A+DPTR ;Move o valor da memória de código para algum lugar
	MOV R0, A

	MOV A, #06
	MOVC A, @A+DPTR

	ADD A, R0
	MOV R0, A
	
	MOV VALOR, #10H
	;Se a constante é um valor colocamos # na frente
	;Para acessar somente o valor no endereço de memória da constante usamos somente o nome da const
	MOV A, VALOR
	SJMP $


