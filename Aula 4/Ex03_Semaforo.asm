	ORG 0000H
	LJMP INICIO

	ORG 0100H
INICIO:

	MOV P1, #00000001B ;Apartir do P1 e de cada bit dele vamos controlar nosso semáforo
	MOV R4, #10 ; Usaremos R4 para fazer nosso delay
	ACALL DELAY
	MOV P1, #00000001B
	MOV R4, #10
	ACALL DELAY
	MOV P1, #00000001B
	MOV R4, #10
	ACALL DELAY
	JMP INICIO
	

DELAY:
NEXT: MOV R5, #255
AGAIN: DJNZ R5, AGAIN
		 DJNZ R4, NEXT
		 RET
	
	
