	ORG 0000H

	LJMP INICIO

	ORG 0000H
INICIO:

;Esse programa escreve o mesmo valor varias vezes na RAM
	
	MOV A, #0Fh
	MOV 030h, #0FFh
ROT:
	PUSH 030h
	DEC A
	JNZ ROT