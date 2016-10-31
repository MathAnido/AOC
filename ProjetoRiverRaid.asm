.data
	ySpeed:				.word 1				#velocidade do aviao em Y
	score:				.word 0				#pontuacao
	backgroundColor:	.word 0x0000ff00	#cor do fundo
	blueColor:			.word 0x0012fff7	#cor do rio
	greyColor:			.word 0x00aaaaaa	#cor do barrra inferior
	planeColor: 		.word 0x00ffff00	#cor do aviao
	xPlane:				.word 30			#posicao inicial do aviao

.text
NewGame:
	jal ClearBoard
	RIVERRAID:
		li $a0, 10							#Poricao em x
		li $a1, 10							#Posicao Y inicial
		lw $a2, blueColor 					#Carrega a cor
		li $a3, 16							#Posicao Y final
		jal DrawVerticalLine
		
		li $a0, 16
		jal DrawVerticalLine
		
		li $a0, 24
		jal DrawVerticalLine
		
		li $a0, 36
		jal DrawVerticalLine
		
		li $a0, 42
		jal DrawVerticalLine
		
		li $a0, 46
		jal DrawVerticalLine
		
		li $a0, 48
		jal DrawVerticalLine
		
		li $a0, 50
		jal DrawVerticalLine
		
		li $a0, 14
		li $a3, 12
		jal DrawVerticalLine
		
		li $a1, 14
		li $a3, 16
		jal DrawVerticalLine
		
		li $a0, 40
		jal DrawVerticalLine
		
		li $a1, 10
		li $a3, 12
		jal DrawVerticalLine
		
		li $a0, 18
		li $a3, 14
		jal DrawVerticalLine
		
		li $a0, 22
		li $a1, 10
		li $a3, 14
		jal DrawVerticalLine
		
		li $a0, 29
		li $a1, 10
		li $a3, 16
		jal DrawVerticalLine
		
		li $a0, 33
		li $a3, 12
		jal DrawVerticalLine
		
		li $a1, 14
		li $a3, 16
		jal DrawVerticalLine
		
		li $a0, 53
		li $a1, 11
		li $a3, 15
		jal DrawVerticalLine
		
		li $a0, 9
		li $a1, 8
		li $a3, 54
		jal DrawHorizontalLine

		li $a1, 18
		li $a3, 54
		jal DrawHorizontalLine
		
		li $a0, 10
		li $a1, 10
		li $a3, 13
		jal DrawHorizontalLine
		
		li $a1, 13
		jal DrawHorizontalLine
		
		li $a1, 10
		li $a0, 29
		li $a3, 32
		jal DrawHorizontalLine
		
		li $a1, 13
		jal DrawHorizontalLine
		
		li $a1, 10
		li $a0, 36
		li $a3, 39
		jal DrawHorizontalLine
		
		li $a1, 13
		jal DrawHorizontalLine
		
		li $a1, 10
		li $a0, 24
		li $a3, 27
		jal DrawHorizontalLine
		
		li $a1, 13
		jal DrawHorizontalLine
		
		li $a1, 16
		jal DrawHorizontalLine
		
		li $a1, 10
		li $a0, 43
		li $a3, 45
		jal DrawHorizontalLine 
		
		li $a1, 13
		jal DrawHorizontalLine
						
		li $a1, 10
		li $a0, 50
		li $a3, 52
		jal DrawHorizontalLine
		
		li $a1, 16
		jal DrawHorizontalLine

		li $a0, 20
		jal DrawPoint
			
		li $a0, 19
		li $a1, 15
		jal DrawPoint
		
		li $a0, 21
		jal DrawPoint
	
	Press1or2:
		li $a0, 35
		li $a1, 25
		li $a3, 29
		jal DrawVerticalLine
		
		li $a0, 17
		jal DrawVerticalLine
		
		li $a0, 19
		jal DrawVerticalLine
		
		li $a0, 21
		jal DrawVerticalLine
		
		li $a0, 39
		jal DrawVerticalLine
		
		li $a0, 41
		jal DrawVerticalLine
		
		li $a0, 43
		jal DrawVerticalLine
		
		li $a0, 45
		jal DrawVerticalLine
		
		li $a0, 12
		jal DrawVerticalLine
		
		li $a3, 15
		jal DrawHorizontalLine
		
		li $a1, 27
		jal DrawHorizontalLine
		
		li $a0, 15
		li $a1, 26
		li $a3, 27
		jal DrawVerticalLine
		
		li $a0, 18
		li $a1, 25
		li $a3, 27
		jal DrawVerticalLine
		
		li $a0, 22
		li $a1, 27
		jal DrawPoint
		
		li $a1, 29
		jal DrawPoint
		
		li $a1, 25
		jal DrawPoint
		
		li $a0, 24 
		li $a1, 29
		li $a3, 26
		jal DrawHorizontalLine
		
		li $a0, 24
		li $a1, 27
		jal DrawHorizontalLine
		
		li $a1, 25
		jal DrawHorizontalLine
		
		li $a1, 26
		jal DrawPoint
		
		li $a0, 26
		li $a1, 28
		jal DrawPoint
		
		li $a0, 22
		li $a1, 25
		jal DrawPoint
		
		li $a0, 34
		li $a1, 26
		jal DrawPoint
		
		li $a1, 29
		li $a3, 36
		jal DrawHorizontalLine

		li $a0, 40
		jal DrawPoint
		
		li $a1, 25
		jal DrawPoint

		li $a0, 44
		li $a3, 27
		jal DrawVerticalLine
			
		li $a0, 49
		li $a1, 25
		li $a3, 50
		jal DrawHorizontalLine
	
		li $a1, 28
		jal DrawPoint
	
		li $a0, 50
		li $a1, 29
		jal DrawPoint
		
		li $a1, 27
		jal DrawPoint
	
		li $a0, 51
		li $a1, 26
		jal DrawPoint
	
		li $a0, 48
		jal DrawPoint
		
		li $a1, 29
		li $a3, 51
		jal DrawHorizontalLine

		li $a0, 28
		li $a3, 30
		jal DrawHorizontalLine
	
		li $a1, 27
		jal DrawHorizontalLine
		
		li $a1, 25
		li $a3, 30
		jal DrawHorizontalLine
	
		li $a1, 26
		jal DrawPoint
	
		li $a0, 30
		li $a1, 28
		jal DrawPoint
		
		li $a1, 26
		lw $a2, backgroundColor
		jal DrawPoint
		
		li $a0, 19
		li $a1, 27
		jal DrawPoint
		
		li $a0, 45
		jal DrawPoint
		
		li $a0, 44
		li $a1, 26
		jal DrawPoint
		
		li $a0, 18
		jal DrawPoint
	PressStart:
		lw $t1, 0xFFFF0004					#Verifica qual tecla foi pressionada
		beq $t1, 0x00000031, BeginGame 		#Branch se apertar 1
		
		li $a0, 250							#
		li $v0, 32							#Espera 250milisegundos
		syscall								#
		
		j PressStart    					#Loop

	BeginGame:								#Setar configuracoes do jogo
		sw $zero, 0xFFFF0004				#Reseta a tecla pressionada
		jal ClearBoard
		jal BarraInferior
		lw $a2, planeColor
		jal DrawAviao						#Desenha o aviao
		lw $s0, xPlane						#Carrega posicao inicial do aviao
		li $s1, 0							#Flag tiro
		li $s2, 43							#Y tiro
		li $s4, 0							#X tiro
GameLoop:
		lw $t1, 0xFFFF0004					#Verifica qual tecla foi pressionada
		beq $t1, 0x00000031, MoveEsquerda 	#Branch se apertar 1
		beq $t1, 0x00000032, MoveDireita 	#Branch se apertar 2			
		beq $t1, 0x00000033, DisparaTiro	#Branch se apertar 3
		li $a0, 10							#
		li $v0, 32							#Espera 10milisegundos
		syscall								#
		jal AtualizaTiro
		j GameLoop
		
	DisparaTiro:
		sw $zero, 0xFFFF0004				#Apaga tecla pressionada
		beq $s1, 1, GameLoop				#Volta para o GameLoop se já existe um tiro na tela
		li $s1, 1
		addi $s4, $s0, 0
		j GameLoop
			
	AtualizaTiro:
		beq $s1, 1, tiro
		jr $ra
		tiro:
			sw $ra, 0($sp)
			lw $a2, backgroundColor
			jal DrawTiro
			subi $s2, $s2, 1
			subi $s3, $s3, 1
			lw $a2, planeColor 				#Carrega a cor
			beq $s2, 0, someTiro
			jal DrawTiro
			lw $ra, 0($sp)
			jr $ra
		someTiro:
			li $s1, 0
			li $s2, 40
			lw $ra, 0($sp)
			jr $ra
		
	MoveDireita:
		beq $s0, 59, GameLoop
		sw $zero, 0xFFFF0004
		lw $a2, backgroundColor
		jal DrawAviao
		lw $a2, planeColor 					#Carrega a cor
		addi $s0, $s0, 1
		j GameLoop

	MoveEsquerda:
		beq $s0, 4, GameLoop
		sw $zero, 0xFFFF0004
		lw $a2, backgroundColor
		jal DrawAviao
		lw $a2, planeColor 					#Carrega a cor
		subi $s0, $s0, 1
		j GameLoop
		
ClearBoard:
		lw $t0, backgroundColor				#Carrega a cor
		li $t1, 32768 						#Numero de pixels no display
	StartCLoop:
		subi $t1, $t1, 4
		addu $t2, $t1, $gp			
		sw $t0, 0($t2)
		beqz $t1, EndCLoop
		j StartCLoop
	EndCLoop:
		jr $ra
BarraInferior:
		addi $sp, $sp, -4
		sw $ra, 0($sp)
		
		li $a0, 0
		li $a1, 55
		lw $a2, greyColor
		li $a3, 63
		jal DrawHorizontalLine
		
		addi $a1, $a1, 1
		jal DrawHorizontalLine
		
		addi $a1, $a1, 1
		jal DrawHorizontalLine
		
		addi $a1, $a1, 1
		jal DrawHorizontalLine
		
		addi $a1, $a1, 1
		jal DrawHorizontalLine
		
		addi $a1, $a1, 1
		jal DrawHorizontalLine
		
		addi $a1, $a1, 1
		jal DrawHorizontalLine
		
		addi $a1, $a1, 1
		jal DrawHorizontalLine
		
		lw $ra, 0($sp)
		addi $sp, $sp, 4
		jr $ra
		
DrawTiro:
		addi $sp, $sp, -4
		sw $ra, 0($sp)
		addi $a0, $s4, 0
		addi $a1, $s2, 0
		addi $a3, $s2, 3
		jal DrawVerticalLine
		lw $ra, 0($sp)
		addi $sp, $sp, 4
		jr $ra
	
DrawAviao:
		addi $sp, $sp, -4
		sw $ra, 0($sp)
		add $a0, $s0, 0
		li $a1, 45	
		li $a3, 53				
		jal DrawVerticalLine
		
		addi $a0, $a0, 1
		li $a1, 47
		li $a3, 49
		jal DrawVerticalLine
		
		subi $a0, $a0, 2
		jal DrawVerticalLine
		
		subi $a0, $a0, 1
		li $a1, 48
		li $a3, 50
		jal DrawVerticalLine
		
		addi $a0, $a0, 4
		jal DrawVerticalLine
		
		addi $a0, $a0, 1
		li $a1, 49
		li $a3, 51
		jal DrawVerticalLine
		
		subi $a0, $a0, 6
		jal DrawVerticalLine
		
		addi $a0, $a0, 2
		li $a1, 52
		jal DrawPoint
		
		addi $a0, $a0, 2
		jal DrawPoint
		
		addi $a0, $a0, 1
		li $a1, 53
		jal DrawPoint
		
		subi $a0, $a0, 4
		jal DrawPoint
		
		lw $ra, 0($sp)
		addi $sp, $sp, 4
		jr $ra
				
# $a0 - posicao em x
# $a1 - posicao em y
# $a2 - cor	
DrawPoint:
		sll $t0, $a1, 6   					#Multiplica a coordenada Y por 64
		addu $v0, $a0, $t0
		sll $v0, $v0, 2
		addu $v0, $v0, $gp
		sw $a2, ($v0)						#Desenha a cor na posicao
		jr $ra

# $a0 - posicao inicial em x
# $a1 - posicao em y
# $a2 - cor
# $a3 - posicao final em x
DrawHorizontalLine:
		addi $sp, $sp, -4
   		sw $ra, 0($sp)
		sub $t9, $a3, $a0
		move $t1, $a0
	HorizontalLoop:
		add $a0, $t1, $t9
		jal DrawPoint
		addi $t9, $t9, -1
		bge $t9, 0, HorizontalLoop
		lw $ra, 0($sp)						#Arruma o ReturnAdress
   		addi $sp, $sp, 4
		jr $ra
		
# $a0 - posicao em x
# $a1 - posicao inicial em y
# $a2 - cor
# $a3 - posicao final em y
DrawVerticalLine:
		addi $sp, $sp, -4
   		sw $ra, 0($sp)
		sub $t9, $a3, $a1
		move $t1, $a1
	VerticalLoop:
		add $a1, $t1, $t9
		jal DrawPoint
		addi $t9, $t9, -1
		bge $t9, 0, VerticalLoop
		lw $ra, 0($sp)						#Arruma o ReturnAdress
   		addi $sp, $sp, 4
		jr $ra
