	ORG 0000H ;Indicamos que o programa sera organizado na linha 0000h
	LJMP 0100H ; Da um salto longo em mem�ria at� a pos 0100H
	ORG 0100H

	MOV A, #04H; Move o valor 04 em hexadecimal para o acumulador A

	MOV 010H, 020H
	MOV A, 010H
	SJMP $ ; Adicionamos para que ele fique voltando a mesma linha ent�o utilizamos um salto curto