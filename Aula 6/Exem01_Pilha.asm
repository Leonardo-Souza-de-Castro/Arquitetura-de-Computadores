	ORG 0000H

	LJMP INICIO

	ORG 0000H
INICIO:

	MOV A, #0Fh

ROT:
	PUSH Acc
	DEC A
	JNZ ROT