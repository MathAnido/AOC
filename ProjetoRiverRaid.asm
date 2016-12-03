.data
#########################################################################
#				Variaveis				#
#########################################################################
	ySpeed:				.word 1				#velocidade do aviao em Y
	score5:				.word 0
	score4:				.word 0
	score3:				.word 0
	score2:				.word 0
	score:				.word 0
	xPlane:				.word 64			#posicao inicial do aviao				
	fuel:				.word 100			#combustivel
	flagComb:			.word 0
	lifes:				.word 3
#########################################################################
#				Cores					#
#########################################################################
	backgroundColor:		.word 0x0000ff00		#cor do fundo
	blueColor:			.word 0x0012fff7		#cor do rio
	greyColor:			.word 0x00aaaaaa		#cor do barrra inferior
	planeColor: 			.word 0x00ffff00		#cor do aviao
	fuelColor:			.word 0x00000000		#cor do combutivel / barra
	yellow:				.word 0x00ffff00
#########################################################################
.text
Inicializa:
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
	ResetGame:
		li $t2, 0
		sw $t2, flagComb
		li $t3, 3
		sw $t3, lifes
		sw $zero, 0xFFFF0004
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
		jal BarraInferior
		lw $a2, planeColor
		lw $s0, xPlane						#Carrega posicao inicial do aviao
		#jal DrawAviao						#Desenha o aviao
		li $s1, 0						#Flag tiro
		li $s2, 41						#Y tiro
		li $s4, 0						#X tiro
		li $t1, 100
		sw $t1, fuel
		jal DrawVida
	GameLoop:
		lw $t1, 0xFFFF0004
		jal DesceCombustivel
		jal Ponteiro		
		jal DrawScore		#Verifica qual tecla foi pressionada
		#jal SomaPonto
		#beq $t1, 0x00000031, MoveEsquerda 			#Branch se apertar 1
		#beq $t1, 0x00000032, MoveDireita 			#Branch se apertar 2			
		#beq $t1, 0x00000033, DisparaTiro			#Branch se apertar 3		
		li $a0, 50						#
		li $v0, 32						#Espera 10milisegundos
		syscall							#
		j GameLoop
SomaPonto:
		lw $t1, score
		lw $t2, score2
		lw $t3, score3
		lw $t4, score4
		lw $t5, score5
		addi $t1, $t1, 1
		ble $t1, 9, ExitPonto
	Dezena:
		subi $t1, $t1, 10
		addi $t2, $t2, 1
		bge $t1, 10, Dezena
	Centena:
		
	
	ExitPonto:
		sw $t1, score
		sw $t2, score2
		jr $ra
DesceCombustivel:
		lw $a0, flagComb
		beqz $a0, flagZero
		li $a0, 0
		sw $a0, flagComb
		lw $a1, fuel
		subi $a1, $a1, 1
		beqz $a1, noFuel
		sw $a1, fuel
		jr $ra 
	flagZero:
		li $a0, 1
		sw $a0, flagComb
		jr $ra
	noFuel:
   		lw $t1, lifes
   		beqz $t1, GameOver
   		subi $t1, $t1, 1
   		sw $t1, lifes
   		j PressStart
BarraInferior:
		subi $sp, $sp, 4
		sw $ra, 0($sp)
		li $a0, 0
		li $a1, 127
		li $a3, 127
		lw $a2, greyColor
	loopBarra:
		jal DrawHorizontalLine
		subi $a1, $a1, 1
		bne $a1, 108, loopBarra
	barraCombustivel:
		li $a0, 34
		li $a1, 125
		li $a3, 94
		lw $a2, fuelColor
		jal DrawHorizontalLine
		li $a1, 111
		jal DrawHorizontalLine
		li $a3, 125
		jal DrawVerticalLine
		li $a0, 94
		jal DrawVerticalLine
		li $a0, 93
		jal DrawVerticalLine
		li $a0, 35
		jal DrawVerticalLine
		jal labelE
		jal labelF
		jal labelMeio
##############################################################
#			marcadores
##############################################################
		li $a0, 38
		li $a1, 111
		li $a3, 113
		jal DrawVerticalLine
		li $a0, 39
		jal DrawVerticalLine
		li $a0, 40
		jal DrawVerticalLine
		li $a0, 88
		jal DrawVerticalLine
		li $a0, 89
		jal DrawVerticalLine		
		li $a0, 90
		jal DrawVerticalLine
		li $a0, 63
		jal DrawVerticalLine
		li $a0, 64
		jal DrawVerticalLine
		li $a0, 65
		jal DrawVerticalLine
	wordScore:
		li $a0, 101
		li $a1, 114
		li $a3, 117
		jal DrawVerticalLine
		li $a0, 97
		li $a1, 111
		li $a3, 114
		jal DrawVerticalLine
		li $a1, 111
		li $a3, 101
		jal DrawHorizontalLine
		li $a1, 114
		jal DrawHorizontalLine
		li $a1, 117
		jal DrawHorizontalLine
		
		li $a0, 103
		li $a1, 111
		li $a3, 117
		jal DrawVerticalLine
		li $a3, 107
		jal DrawHorizontalLine
		li $a1, 117
		jal DrawHorizontalLine
		
		li $a0, 109
		li $a1, 111
		li $a3, 117
		jal DrawVerticalLine
		li $a3, 113
		jal DrawHorizontalLine
		li $a1, 117
		jal DrawHorizontalLine
		li $a0, 113
		li $a1, 111
		li $a3, 117
		jal DrawVerticalLine
		
		li $a0, 115
		li $a1, 111
		li $a3, 117
		jal DrawVerticalLine
		li $a0, 119
		li $a1, 112
		li $a3, 113
		jal DrawVerticalLine
		li $a1, 115
		li $a3, 117
		jal DrawVerticalLine
		li $a1, 111
		li $a0, 115
		li $a3, 118
		jal DrawHorizontalLine
		li $a1, 114
		jal DrawHorizontalLine
		
		li $a0, 121
		li $a1, 111
		li $a3, 117
		jal DrawVerticalLine
		li $a1, 111
		li $a0, 121
		li $a3, 125
		jal DrawHorizontalLine
		li $a1, 114
		jal DrawHorizontalLine
		li $a1, 117
		jal DrawHorizontalLine
					
		lw $ra, 0($sp)						#Arruma o ReturnAdress
   		addi $sp, $sp, 4
		jr $ra
#############################################################
#			E
###########################################################
labelE:
		subi $sp, $sp, 4
		sw $ra, 0($sp)
		li $a0, 38
		lw $a2, fuelColor
		li $a1, 122
		li $a3, 44
		jal DrawHorizontalLine
		li $a1, 116
		jal DrawHorizontalLine
		li $a3, 42
		li $a1, 119
		jal DrawHorizontalLine
		li $a1, 116
		li $a3, 122
		jal DrawVerticalLine
		li $a0, 39
		jal DrawVerticalLine
		lw $ra, 0($sp)						#Arruma o ReturnAdress
   		addi $sp, $sp, 4
		jr $ra
labelF:
		subi $sp, $sp, 4
		sw $ra, 0($sp)
		li $a0, 84
		li $a1, 116
		lw $a2, fuelColor
		li $a3, 89
		jal DrawHorizontalLine
		li $a3, 87
		li $a1, 119
		jal DrawHorizontalLine
		li $a1, 116
		li $a3, 122
		jal DrawVerticalLine
		li $a0, 85
		jal DrawVerticalLine
		lw $ra, 0($sp)						#Arruma o ReturnAdress
   		addi $sp, $sp, 4
		jr $ra
labelMeio:
		subi $sp, $sp, 4
		sw $ra, 0($sp)	
		ble $a0, 30, saiMeio
		#	BARRA
		li $a0, 63
		lw $a2, fuelColor
		li $a3, 65
		li $a1, 119
		jal DrawHorizontalLine
		
		li $a0, 64
		li $a3, 66
		li $a1, 118
		jal DrawHorizontalLine

		li $a0, 65
		li $a3, 67
		li $a1, 117
		jal DrawHorizontalLine
		
		li $a0, 66
		li $a3, 68
		li $a1, 116
		jal DrawHorizontalLine
		
		li $a0, 67
		li $a3, 69
		li $a1, 115
		jal DrawHorizontalLine
		
		li $a0, 62
		li $a3, 64
		li $a1, 120
		jal DrawHorizontalLine
		
		li $a0, 61
		li $a3, 63
		li $a1, 121
		jal DrawHorizontalLine
		
		li $a0, 60
		li $a3, 62
		li $a1, 122
		jal DrawHorizontalLine
		
		li $a0, 59
		li $a3, 61
		li $a1, 123
		jal DrawHorizontalLine
		#	1
		li $a0, 59
		li $a3, 61
		li $a1, 119
		jal DrawHorizontalLine
		
		li $a1, 115
		li $a3, 119
		li $a0, 60
		jal DrawVerticalLine	
		
		li $a0, 59
		li $a3, 59
		li $a1, 116
		jal DrawHorizontalLine
		
		
		#	2
		li $a0, 68
		li $a3, 70
		li $a1, 121
		jal DrawHorizontalLine
		
		li $a1, 119
		li $a3, 120
		li $a0, 70
		jal DrawVerticalLine
		
		li $a0, 68
		li $a3, 70
		li $a1, 121
		jal DrawHorizontalLine
		
		li $a0, 68
		li $a3, 70
		li $a1, 119
		jal DrawHorizontalLine
		
		li $a0, 68
		li $a3, 70
		li $a1, 123
		jal DrawHorizontalLine
		
		
		li $a1, 121
		li $a3, 122
		li $a0, 68
		jal DrawVerticalLine
	saiMeio:	
		lw $ra, 0($sp)						#Arruma o ReturnAdress
   		addi $sp, $sp, 4
		jr $ra
Ponteiro:
		subi $sp, $sp, 4
		sw $ra, 0($sp)
		lw $a2, yellow
		lw $a0, fuel
		srl $a0, $a0, 1
		addiu $a0, $a0, 39	
		li $a1, 114
		li $a3, 124
		jal DrawVerticalLine
		subi $a0, $a0, 1
		jal DrawVerticalLine
		add $a0, $a0, 2
		jal DrawVerticalLine
		lw $a2, greyColor
		add $a0, $a0, 1
		jal DrawVerticalLine
		lw $ra, 0($sp)						#Arruma o ReturnAdress
   		addi $sp, $sp, 4
		ble $a0, 47, labelE
		bge $a0, 83, labelF
		ble $a0, 73, labelMeio
		jr $ra	
DrawVida:
		subi $sp, $sp, 4
		sw $ra, 0($sp)
		lw $t1, lifes
		lw $a2, yellow
		beq $t1, 2, TwoLifes
		beq $t1, 1, OneLife
		beqz $t1, lifeEnd
		li $a0, 32
		li $a1, 119
		li $a3, 125
		jal DrawVerticalLine
		li $a1, 119
		li $a0, 29 
		li $a3, 32
		jal DrawHorizontalLine
		li $a1, 125
		jal DrawHorizontalLine
		li $a1, 122
		jal DrawHorizontalLine
		j lifeEnd
	TwoLifes:
		li $a0, 32
		li $a1, 119
		li $a3, 122
		jal DrawVerticalLine
		li $a0, 29
		li $a1, 123
		li $a3, 125
		jal DrawVerticalLine
		li $a1, 122
		li $a0, 29 
		li $a3, 32
		jal DrawHorizontalLine
		li $a1, 125
		jal DrawHorizontalLine
		li $a1, 119
		jal DrawHorizontalLine
		j lifeEnd
	OneLife:
		li $a0, 32
		li $a1, 119
		li $a3, 125
		jal DrawVerticalLine
		subi $a0, $a0, 1
		addi $a1, $a1, 1
		jal DrawPoint
		subi $a0, $a0, 1
		addi $a1, $a1, 1
		jal DrawPoint
	lifeEnd:
		lw $ra, 0($sp)						#Arruma o ReturnAdress
   		addi $sp, $sp, 4
   		jr $ra		
###################################################################
#				Digitos
###################################################################
Draw0:
		li $a1, 119
		li $a3, 125
		jal DrawVerticalLine
		subi $a0, $a0, 4
		jal DrawVerticalLine
		addi $a3, $a0, 4
		li $a1, 125
		jal DrawHorizontalLine
		li $a1, 119
		jal DrawHorizontalLine
		j volta
Draw1:
		li $a1, 119
		li $a3, 125
		jal DrawVerticalLine
		subi $a0, $a0, 1
		addi $a1, $a1, 1
		jal DrawPoint
		subi $a0, $a0, 1
		addi $a1, $a1, 1
		jal DrawPoint
		j volta	
Draw2:
		li $a1, 119
		li $a3, 122
		jal DrawVerticalLine
		subi $a0, $a0, 4
		li $a1, 123
		li $a3, 125
		jal DrawVerticalLine
		li $a1, 122
		addi $a3, $a0, 4
		jal DrawHorizontalLine
		li $a1, 125
		jal DrawHorizontalLine
		li $a1, 119
		jal DrawHorizontalLine
		j volta
Draw3:
		li $a1, 119
		li $a3, 125
		jal DrawVerticalLine
		addi $a3, $a0, 0
		subi $a0, $a0, 3
		jal DrawHorizontalLine
		li $a1, 125
		jal DrawHorizontalLine
		li $a1, 122
		jal DrawHorizontalLine
		j volta
Draw4:
		li $a1, 119
		li $a3, 125
		jal DrawVerticalLine
		addi $a3, $a0, 0
		subi $a0, $a0, 3
		li $a1, 122
		jal DrawHorizontalLine
		li $a1, 119
		li $a3, 122
		jal DrawVerticalLine
		j volta	
Draw5:
		li $a1, 123
		li $a3, 125
		jal DrawVerticalLine
		subi $a0, $a0, 4
		li $a1, 120
		li $a3, 122
		jal DrawVerticalLine
		li $a1, 122
		addi $a3, $a0, 4
		jal DrawHorizontalLine
		li $a1, 125
		jal DrawHorizontalLine
		li $a1, 119
		jal DrawHorizontalLine
		j volta
Draw6:
		li $a1, 123
		li $a3, 125
		jal DrawVerticalLine
		subi $a0, $a0, 4
		li $a1, 120
		jal DrawVerticalLine
		li $a1, 122
		addi $a3, $a0, 4
		jal DrawHorizontalLine
		li $a1, 125
		jal DrawHorizontalLine
		li $a1, 119
		jal DrawHorizontalLine
		j volta	
Draw7:
		li $a1, 119
		li $a3, 125
		jal DrawVerticalLine
		subi $a3, $a0, 0
		subi $a0, $a0, 3
		jal DrawHorizontalLine
		j volta	
Draw8:
		li $a1, 120
		li $a3, 125
		jal DrawVerticalLine
		subi $a0, $a0, 4
		jal DrawVerticalLine
		li $a1, 122
		addi $a3, $a0, 4
		jal DrawHorizontalLine
		li $a1, 125
		jal DrawHorizontalLine
		li $a1, 119
		jal DrawHorizontalLine
		j volta	
Draw9:		
		li $a1, 120
		li $a3, 125
		jal DrawVerticalLine
		subi $a0, $a0, 4
		li $a3, 122
		jal DrawVerticalLine
		li $a1, 122
		addi $a3, $a0, 4
		jal DrawHorizontalLine
		li $a1, 119
		jal DrawHorizontalLine
volta:
		lw $ra, 0($sp)
		addi $sp, $sp, 4
		jr $ra	
SelecionaNumero:
		subi $sp, $sp, 4
		sw $ra, 0($sp)
		beq $t0, 9, Draw9
		beq $t0, 8, Draw8
		beq $t0, 7, Draw7
		beq $t0, 6, Draw6
		beq $t0, 5, Draw5
		beq $t0, 4, Draw4
		beq $t0, 3, Draw3
		beq $t0, 2, Draw2
		beq $t0, 1, Draw1
		beq $t0, 0, Draw0	
DrawScore:			
		subi $sp, $sp, 4
		sw $ra, 0($sp)
		lw $a2, yellow
		lw $t0, score5
		beqz $t0, SegundoDigito
		li $a0, 101
		jal SelecionaNumero		
	SegundoDigito:
		li $a0, 107
		lw $t0, score4
		beqz $t0, TerceiroDigito
		jal SelecionaNumero
	TerceiroDigito:
		li $a0, 113
		lw $t0, score3
		beqz $t0, QuartoDigito
		jal SelecionaNumero
	QuartoDigito:
		li $a0, 119
		lw $t0, score2
		beqz $t0, QuintoDigito
		jal SelecionaNumero
	QuintoDigito:
		li $a0, 125
		lw $t0, score
		jal SelecionaNumero
		lw $ra, 0($sp)
		addi $sp, $sp, 4
		jr $ra							
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
		li $t1, 16136#65524 # O Numero de pixels do Display - 16136
	StartCLoop:
		subi $t1, $t1, 4
		addu $t2, $t1, $gp
		sw $t0, ($t2)
		beqz $t1, EndCLoop
		j StartCLoop
	EndCLoop:
		jr $ra
GameOver:
		
