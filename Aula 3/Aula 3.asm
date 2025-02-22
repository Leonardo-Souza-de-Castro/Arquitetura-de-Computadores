	ORG 0000H

	LJMP INICIO

	ORG 0050H
	;EQU -> Define constantes
	;Podemos indicar ou um endere�o de mem�ria para a constante ou um valor
	VALOR EQU 10H

	DB 10 ; DB ->	� uma diretiva n�o um comando
	; A fun��o do DB � gravar dados na mem�ria de c�digo (mem�ria flash)
	; � similar a uma variavel pois sempre que eu rodar o programa os dados ser�o escritos
	DB "MARCO"
	DB 20
	DB -5
	
	ORG 0100H

	INICIO:
	; O DPTR � um valor de 16 bits
	; Para montar ele precisamos indicar a parte mais significativa (DPH)
	; E depois a menos significativa (DPL)
	MOV DPH, #00H
	MOV DPL, #50H

	CLR A

	MOVC A, @A+DPTR ;Move o valor da mem�ria de c�digo para algum lugar
	MOV R0, A

	MOV A, #06
	MOVC A, @A+DPTR

	ADD A, R0
	MOV R0, A
	
	MOV VALOR, #10H
	;Se a constante � um valor colocamos # na frente
	;Para acessar somente o valor no endere�o de mem�ria da constante usamos somente o nome da const
	MOV A, VALOR
	SJMP $


