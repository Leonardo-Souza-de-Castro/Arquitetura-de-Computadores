ORG 0000H
LJMP 0030H
ORG 0030H

;Move o digito do RA para a possição em memória
MOV 31H, #2
MOV 32H, #2
MOV 33H, #1
MOV 34H, #2
MOV 35H, #3
MOV 36H, #1
MOV 37H, #1
MOV 38H, #4
MOV 39H, #5

;Faz a somatória dos números do RA
ADD A, 31H
ADD A, 32H
ADD A, 33H
ADD A, 34H
ADD A, 35H
ADD A, 36H
ADD A, 37H
ADD A, 38H
ADD A, 39H

;Seleciona o banco 1 utilizando o setbit do RS0 do PSW
SETB RS0
;Move o valor da somatoria para o R0 do banco 1
MOV R0, A

;Limpa o bit do RS0
CLR RS0
;Seta o bit do RS1
SETB RS1

;Passa o divisor para o contador B
MOV B, #9H
;Realiza a divisão
DIV AB

;O resultado move para o R0 do banco 2
MOV R0, A

JMP $

