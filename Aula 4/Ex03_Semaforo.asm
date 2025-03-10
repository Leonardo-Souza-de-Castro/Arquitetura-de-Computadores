	ORG 0000H
	LJMP INICIO

	ORG 0100H
INICIO:

	JNB P1.3, CONTINUA ; Se o botão não estiver pressionado, continua normalmente
;Vermelho 
	
;Validar btn pressionado	
	ACALL BTN_PRESS
	CONTINUA:
	MOV P1, #00100100B ; Apartir do P1 e de cada bit dele vamos controlar nosso semáforo
	MOV R4, #1 ; Usaremos R4 para fazer nosso delay
	ACALL DELAY

;Verde
	JNB P1.3, CONTINUA2

;Valida btn pressionado
	ACALL BTN_PRESS
	CONTINUA2:
	MOV P1, #00100001B
	MOV R4, #1
	ACALL DELAY

	JNB P1.3, CONTINUA3
;Amarelo

;Valida btn pressionado
	ACALL BTN_PRESS
	CONTINUA3:
	MOV P1, #00100010B	
	MOV R4, #1
	ACALL DELAY
	JMP INICIO
	

DELAY:
NEXT: MOV R5, #255
AGAIN: DJNZ R5, AGAIN
		 DJNZ R4, NEXT
		 RET

;Verifica qual o estado atual do farol para chamar a subrotina correta
BTN_PRESS:
	JB P1.0, Verde
	JB P1.1, Amarelo
	JB P1.2, Vermelho
	RET

;Se estiver no vermelho executa essa
Vermelho:
	MOV P1, #00010100B ;Liga o farol do pedestre e define o o farol como vermelho 
	MOV R4, #1 ;Deixa um tempo ligado
	ACALL DELAY
	RET

;Se estiver no amarelo executa essa
Amarelo:
	MOV P1, #00010010B
	MOV R4, #1 ;Deixa um tempo ligado
	ACALL DELAY
	MOV P1, #00010100B ;Liga o farol do pedestre e define o o farol como vermelho 
	MOV R4, #1 ;Deixa um tempo ligado
	ACALL DELAY
	MOV P1, #00100001B ;Desliga o farol de pedestre e liga o normal
	RET

;Se estiver no verde executa essa
Verde:
	MOV P1, #00010001B
	MOV R4, #1 ;Deixa um tempo ligado
	ACALL DELAY
	MOV P1, #00010010B
	MOV R4, #1 ;Deixa um tempo ligado
	ACALL DELAY
	MOV P1, #00010100B ;Liga o farol do pedestre e define o o farol como vermelho 
	MOV R4, #1 ;Deixa um tempo ligado
	ACALL DELAY
	MOV P1, #00100001B ;Desliga o farol de pedestre e liga o normal
	RET
