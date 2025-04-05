ORG 0000H

LJMP START
ORG 0003H
;As interrupções tem no maximo 8 bits, são escritas entre 3 e A, então é uma boa pratica usar escrever a instrução em outro lugar e pular para lá

	LJMP INT_EXT0
	ORG 0100H

START:
	SETB EX0
	SETB IT0 ;Programação por borda
	SETB EA	
	SJMP $

	ORG 0200H

INT_EXT0:
	CPL P1.0
	RETI