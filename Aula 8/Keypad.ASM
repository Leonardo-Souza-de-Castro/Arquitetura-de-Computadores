           ORG 0000H
           LJMP INICIO
				 TESTE EQU 0016	
           ORG 0100H
INICIO:
           MOV TESTE,#0FFH

VOLTA:
           CALL TECLADO
           SJMP VOLTA     

TECLADO:
				MOV R0, #1 ; Limpa o R0 pois a primeira tecla é o 0

				; Le a linha 3
				SETB P0.0 ; Set linha 3
				CLR P0.3 ; Limpa a leitura da linha 0
				CALL colScan ; chama a rotina de leitura de coluna

          ; Le a linha 2
				SETB P0.3 ; Set a linha 0
				CLR P0.2 ; Limpa a linha 1
				CALL colScan ; chama a rotina de leitura de coluna

				; Le a linha 1
				SETB P0.2 ; Set a linha 1
				CLR P0.1 ; Limpa a linha 2
          CALL colScan ; chama a rotina de leitura de coluna

				; Le a linha 0		
				SETB P0.1 ; Set a linha 2
				CLR P0.0 ; Limpa a linha 3
				CALL colScan ; chama a rotina de leitura de coluna
				
				CJNE R0,#0DH,SAI
          MOV TESTE,#0FFH
SAI:
				RET
          
          colScan:
				JNB P0.6, gotKey ; se a coluna 0 esta como 0 alguma tecla foi pressionada
				INC R0; se deu errado move para a proxima tecla
				JNB P0.5, gotKey ; se a coluna 1 esta como 0 alguma tecla foi pressionada
				INC R0; se deu errado move para a proxima tecla
				JNB P0.4, gotKey ; se a coluna 2 esta como 0 alguma tecla foi pressionada
				INC R0 ; se deu errado move para a proxima tecla
				RET ; Volta para a subrotina do teclado caso não encontre tecla

gotKey:
				MOV TESTE,R0 ;move o valor lido da tecla pra memoria
				CJNE R0, #0BH, SAI
				AJMP SetZero
				RET

SetZero:
	MOV TESTE, #00H
	RET

