	ORG 0000H
	LJMP INICIO

	ORG 0100H
INICIO:
	CLR A
	MOV R0, #127

LABEL:
	MOV @R0, A
	DJNZ R0, LABEL

	SJMP $

