	ORG 0000H
	LJMP INICIO

	ORG 0100H
INICIO:

ENDER_UM EQU 00H ;Definimos o primeiro endere�o de memoria
ENDER_DOIS EQU 01H ;Definimos o segundo endere�o
CONTADOR EQU 3AH

	;Configurando array
	MOV 00H, #30H ;Para 00 movemos o inicio do nosso array
	MOV 01H, #10 ;Para 01 movemos a quantidade de posi��es do nosso array

	;Configurando as posi��es de mem�ria
	MOV R0, ENDER_UM ; R0 vai receber nosso endere�o de mem�ria 1 (pos inicial do array)
	MOV R1, ENDER_DOIS ;R1 vai receber nosso endere�o de memoria 2 (qtde de termos do array)
	
	;Limpa o contador
	MOV R3, #00H

	;Lendo o primeiro valor do array
	MOV A, @R0
	MOV R6, A

	;Fazendo a leitura dos demais
	ACALL LER ;Chamamos a sub-rotina para escrever

	;Movendo a contagem de valores iguais para a posi��o do enunciado
	MOV CONTADOR, R3
	SJMP $

;Fazendo a leitura do array
LER:
	MOV B, @R0 ;Move para a posi��o de mem�ria apontada por R0 o valor de A
	INC R0 ;Incrementa R0
	ACALL MAIN
	DJNZ R1, LER ;Decrementa R1, at� ele se tornar 0 vai ficar chamando a fun��o escrever

;Exemplo de como escrever em arrays
;ESCREVER:
	;MOV @R0, A ;Move para a posi��o de mem�ria apontada por R0 o valor de A
	;INC A ;Incrementa A
	;INC R0 ;Incrementa R0	
	;DJNZ R1, ESCREVER ;Decrementa R1, at� ele se tornar 0 vai ficar chamando a fun��o escrever

;Sub-rotina para fazer as compara��es
MAIN:
	MOV PSW, #00000000B
	SUBB A, B
	
	JZ IGUAL
	JC Ah_MENOR
	JNC Be_MENOR

IGUAL:
	INC R3
	MOV A, R6
	RET

Ah_MENOR:
	MOV A, R6
	RET

Be_MENOR:
	MOV R3, #00H
	MOV A, B
	MOV R6, B
	RET
