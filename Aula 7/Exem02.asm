ORG 0000H

LJMP START
ORG 0003H
;As interrup��es tem no maximo 8 bits, s�o escritas entre 3 e A, ent�o � uma boa pratica usar escrever a instru��o em outro lugar e pular para l�

	LJMP INT_EXT0
	ORG 0100H

START:
	SETB EX0
	SETB IT0 ;Programa��o por borda
	SETB EA	
	SJMP $

	ORG 0200H

INT_EXT0:
	CPL P1.0
	RETI