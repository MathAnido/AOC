.data

	ySpeed:				.word 1				#velocidade do aviao em Y
	score:				.word 0				#pontuacao
	xPlane:				.word 64			#posicao inicial do aviao				
	
	##### Cores #####
	backgroundColor:		.word 0x0000ff00		#cor do fundo
	blueColor:			.word 0x0012fff7		#cor do rio
	greyColor:			.word 0x00aaaaaa		#cor do barrra inferior
	planeColor: 			.word 0x00ffff00		#cor do aviao
	fuelColor:			.word 0x00ffffff		#cor do combutivel / barra
.text
NewGame:
	jal ClearBoard
	riverraid:
		li $a0, 20
		lw $a2, blueColor
		li $a1, 20
		li $a3, 40
		jal DrawVerticalLine
		li $a0, 21
		jal DrawVerticalLine
		li $a0, 31
		li $a1, 22
		li $a3, 30
		jal DrawVerticalLine
		li $a0, 32
		jal DrawVerticalLine
		li $a0, 31
		li $a1, 33
		li $a3, 40
		jal DrawVerticalLine
		li $a0, 32
		jal DrawVerticalLine
		li $a0, 20
		li $a1, 20
		li $a3, 30
		jal DrawHorizontalLine
		li $a1, 21
		jal DrawHorizontalLine
		li $a1, 31
		jal DrawHorizontalLine
		li $a1, 32
		jal DrawHorizontalLine
		
		li $a0, 36
		li $a1, 20
		li $a3, 40
		jal DrawVerticalLine
		li $a0, 37
		jal DrawVerticalLine
		
		li $a0, 41
		li $a1, 20
		li $a3, 36
		jal DrawVerticalLine
		li $a0, 42
		jal DrawVerticalLine
		li $a0, 52
		jal DrawVerticalLine
		li $a0, 53
		jal DrawVerticalLine
		li $a0, 50
		li $a1, 37
		li $a3, 38
		jal DrawVerticalLine
		li $a0, 51
		jal DrawVerticalLine
		li $a0, 43
		jal DrawVerticalLine
		li $a0, 44
		jal DrawVerticalLine
		li $a0, 45
		li $a1, 40
		li $a3, 49
		jal DrawHorizontalLine
		li $a1, 39
		jal DrawHorizontalLine
		
		li $a0, 57
		li $a1, 20
		li $a3, 40
		jal DrawVerticalLine
		li $a0, 58
		jal DrawVerticalLine
		li $a0, 59
		li $a1, 40
		li $a3, 67
		jal DrawHorizontalLine
		li $a1, 39
		jal DrawHorizontalLine
		li $a1, 20
		jal DrawHorizontalLine
		li $a1, 21
		jal DrawHorizontalLine
		li $a1, 29
		jal DrawHorizontalLine
		li $a1, 30
		jal DrawHorizontalLine
		
		li $a0, 71
		li $a1, 20
		li $a3, 40
		jal DrawVerticalLine
		li $a0, 72
		jal DrawVerticalLine
		li $a0, 82
		li $a1, 22
		li $a3, 30
		jal DrawVerticalLine
		li $a0, 83
		jal DrawVerticalLine
		li $a0, 82
		li $a1, 33
		li $a3, 40
		jal DrawVerticalLine
		li $a0, 83
		jal DrawVerticalLine
		li $a0, 71
		li $a1, 20
		li $a3, 81
		jal DrawHorizontalLine
		li $a1, 21
		jal DrawHorizontalLine
		li $a1, 31
		jal DrawHorizontalLine
		li $a1, 32
		jal DrawHorizontalLine
		
		li $a0, 57
		li $a1, 43
		li $a3, 63
		jal DrawVerticalLine
		li $a0, 58
		jal DrawVerticalLine
		li $a0, 68
		li $a1, 45
		li $a3, 52
		jal DrawVerticalLine
		li $a0, 69
		jal DrawVerticalLine
		li $a0, 68
		li $a1, 55
		li $a3, 63
		jal DrawVerticalLine
		li $a0, 69
		jal DrawVerticalLine
		li $a0, 57
		li $a1, 43
		li $a3, 67
		jal DrawHorizontalLine
		li $a1, 44
		jal DrawHorizontalLine
		li $a1, 53
		jal DrawHorizontalLine
		li $a1, 54
		jal DrawHorizontalLine
		
		li $a0, 73
		li $a1, 45
		li $a3, 63
		jal DrawVerticalLine
		li $a0, 74
		jal DrawVerticalLine
		li $a0, 83
		jal DrawVerticalLine
		li $a0, 84
		jal DrawVerticalLine
		li $a0, 75
		li $a1, 43
		li $a3, 82
		jal DrawHorizontalLine
		li $a1, 44
		jal DrawHorizontalLine
		li $a1, 53
		jal DrawHorizontalLine
		li $a1, 54
		jal DrawHorizontalLine
		
		li $a0, 88
		li $a1, 43
		li $a3, 63
		jal DrawVerticalLine
		li $a0, 89
		jal DrawVerticalLine
		
		li $a0, 93
		jal DrawVerticalLine
		li $a0, 94
		jal DrawVerticalLine
		li $a1, 43
		li $a0, 95
		li $a3, 103
		jal DrawHorizontalLine
		li $a1, 44
		jal DrawHorizontalLine
		li $a1, 62
		jal DrawHorizontalLine
		li $a1, 63
		jal DrawHorizontalLine
		
		li $a0, 104
		li $a1, 45
		li $a3, 61
		jal DrawVerticalLine
		li $a0, 105
		jal DrawVerticalLine
		
	PressStart:
		lw $t1, 0xFFFF0004					#Verifica qual tecla foi pressionada
		beq $t1, 0x00000031, BeginGame 				#Branch se apertar 1
		
		li $a0, 250						#
		li $v0, 32						#Espera 250milisegundos
		syscall							#
		
		j PressStart    					#Loop

	BeginGame:							#Setar configuracoes do jogo
		sw $zero, 0xFFFF0004					#Reseta a tecla pressionada
		jal ClearBoard
		#jal BarraInferior
		lw $a2, planeColor
		lw $s0, xPlane						#Carrega posicao inicial do aviao
		#jal DrawAviao						#Desenha o aviao
		li $s1, 0						#Flag tiro
		li $s2, 41						#Y tiro
		li $s4, 0						#X tiro
	GameLoop:
		lw $t1, 0xFFFF0004					#Verifica qual tecla foi pressionada
		#beq $t1, 0x00000031, MoveEsquerda 			#Branch se apertar 1
		#beq $t1, 0x00000032, MoveDireita 			#Branch se apertar 2			
		#beq $t1, 0x00000033, DisparaTiro			#Branch se apertar 3		
		li $a0, 10						#
		li $v0, 32						#Espera 10milisegundos
		syscall							#
		j GameLoop
								
# $a0 - posicao em x
# $a1 - posicao em y
# $a2 - cor	
DrawPoint:
		sll $t0, $a1, 7   					#Multiplica a coordenada Y por 64
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
ClearBoard:
		lw $t0, backgroundColor
		li $t1, 65524 # O Numero de pixels do Display - 16136
	StartCLoop:
		subi $t1, $t1, 4
		addu $t2, $t1, $gp
		sw $t0, ($t2)
		beqz $t1, EndCLoop
		j StartCLoop
	EndCLoop:
		jr $ra