	ORG 0000H
	LJMP INICIO

	ORG 0080H
INICIO:
	CLR A
	MOV R0, #20H
	MOV R7, #00
	ACALL COLOCA

	JMP $
	

COLOCA:
	MOV @R0, #07H
	INC R0
	INC R7

	CJNE R7, #80, COLOCA
	RET
	
