	ORG 0000H

	LJMP INICIO

	ORG 0060H

	DB -10
	
	ORG 0100H

	INICIO:

	MOV DPTR, #1000H

	MOVC A, @A+DPTR

	ADD A, #0FH

	MOV R1, A
	
	SJMP $


