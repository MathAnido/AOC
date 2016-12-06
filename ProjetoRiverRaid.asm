.data
#########################################################################################
#				Variaveis		#	Comentarios		#
#########################################################################################
	ySpeed:			.word 1			# velocidade do aviao em Y	#
	score5:			.word 0			# primeiro digito score		#
	score4:			.word 0			# segundo digito score		#
	score3:			.word 0			# terceiro digito score		#
	score2:			.word 0			# quarto digito score		#
	score:			.word 0			# quinto digito score		#
	xPlane:			.word 64		# posicao inicial do aviao	#
	yTiro:			.word 85		# posicao inicial do tiro	#
	xTiro:			.word 64		# posicao inicial do tiro	#			
	fuel:			.word 100		# nivel combustivel		#
	flagComb:		.word 25			# flag controle combutivel	#
	flagTiro:		.word 0			# flag controle tiro		#		
	lifes:			.word 3			# numero de vidas		#
#########################################################################################
#				Cores			#	Comentarios		#
#########################################################################################
	backgroundColor:	.word 0x0000ff00	# cor do fundo			#
	blueColor:		.word 0x0012fff7	# cor do rio			#
	greyColor:		.word 0x00aaaaaa	# cor do barrra inferior	#
	planeColor: 		.word 0x00ffff00	# cor do aviao			#
	fuelColor:		.word 0x00000000	# cor do combutivel / barra	#
	yellow:			.word 0x00ffff00	# amarelo			#
	green:			.word 0x00006600					#
	blue:			.word 0x000033CC					#
	lightblue:		.word 0x000099FF					#
	red:			.word 0x00FF0000					#
	black:			.word 0x00000000					#
	white:			.word 0x00FFFFFF					#
#########################################################################################
.text								
#########################################################################################
#				Inicializa		#	Comentarios		#
#########################################################################################
Inicializa:						# inicio do codigo		#
	jal ClearBoard
	riverraid:					# desenha titulo		#
#########################################################################################
#			R				#	Comentarios		#
#########################################################################################	
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
#########################################################################################
#			I				#	Comentarios		#
#########################################################################################
		li $a0, 36
		li $a1, 20
		li $a3, 40
		jal DrawVerticalLine
		li $a0, 37
		jal DrawVerticalLine
#########################################################################################
#			V				#	Comentarios		#
#########################################################################################
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
#########################################################################################
#			E				#	Comentarios		#
#########################################################################################
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
#########################################################################################
#			R				#	Comentarios		#
#########################################################################################
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
#########################################################################################
#			R				#	Comentarios		#
#########################################################################################
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
#########################################################################################
#			A				#	Comentarios		#
#########################################################################################
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
#########################################################################################
#			I				#	Comentarios		#
#########################################################################################
		li $a0, 88
		li $a1, 43
		li $a3, 63
		jal DrawVerticalLine
		li $a0, 89
		jal DrawVerticalLine
#########################################################################
#			D							#		Comentarios			#
#########################################################################
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
#########################################################################################
#			ResetGame			#	Comentarios		#
#########################################################################################
	ResetGame:					# inicializa variaveis 		#
		li $t2, 0				# reseta flag combutivel	#
		sw $t2, flagComb			# salva na memoria		#
		li $t3, 3				# reseta numero vidas		#
		sw $t3, lifes				# salva na memoria		#
		sw $zero, 0xFFFF0004			# reseta tecla pressionada	#
#########################################################################################
#			PressStart			#	Comentarios		#
#########################################################################################
	PressStart:					# espera pressionar Start 	#
		lw $t1, 0xFFFF0004			# pega tecla pressionada	#
		beq $t1, 0x00000020, BeginGame 		# Branch se apertar 1 		#
		li $a0, 250				# define tempo (ms)		#
		li $v0, 32				# comando esperar		#
		syscall					# chama o comando		#
		j PressStart    			# Loop 				#
#########################################################################################
#			BeginGame			#	Comentarios		#
#########################################################################################
	BeginGame:					# Setar configuracoes		#
		lw $a2, white
		sw $zero, 0xFFFF0004			# Reseta tecla pressionada	#
		li $s0, 64				# posicao inicia aviao		#
		sw $s0, xPlane				# salva posicao aviao		#
		jal DrawMapa				# desenha mapa			#
		jal BarraInferior			# desenha barra inferior	#
		jal DrawVida				# desenha numero vida		#
		jal DrawPlane				# desenha o aviao		#
		li $t1, 100				# reseta nivel combustivel	#
		sw $t1, fuel				# salva na memoria		#
#########################################################################################
#			GameLoop			#	Comentarios		#
#########################################################################
	GameLoop:					# loop do jogo			#
		jal DesceCombustivel			# reduz combustivel		#
		jal Ponteiro				# desenha Ponteiro		#
		jal DrawScore				# desenha score			#
		#jal FixScore				# corrige score			#
		jal generateEnemy
		jal VerificaTeclas			# verifica tecla		#
		jal AtualizaTiro			# atualiza posição do tiro	#
		li $a0, 10				# define tempo (ms)		#
		li $v0, 32				# comando esperar		#
		syscall					# chama o comando		#
		j GameLoop				# Loop				#
#########################################################################################
#			GameLoop			#	Comentarios		#
#########################################################################################
VerificaTeclas:						# verifica teclas		#
		lw $t1, 0xFFFF0004			# carrega tecla pressionada 	#
		beq $t1, 0x00000061, Esquerda		# branch se 1			#
		beq $t1, 0x00000064, Direita		# branch se 2			#
		beq $t1, 0x00000020, Tiro		# branch se 3			#
		j Retorna				# Retorna			#
#########################################################################################
#			Direita				#	Comentarios		#
#########################################################################################
	Direita:
		subi $sp, $sp, 4
		sw $ra, 0($sp)
		lw $a0, xPlane
		addi $a0, $a0, 9
		li $a1, 98
		lw $t1, green
		jal ScanPoint
		beq $a2, $t1, noFuel
		li $a1, 93
		li $a3, 95
		lw $a0, xPlane
		lw $a2, blue
		jal DrawVerticalLine
		addi $a0, $a0, 1
		jal DrawVerticalLine
		li $a1, 100
		li $a3, 102
		jal DrawVerticalLine
		subi $a0, $a0, 1
		jal DrawVerticalLine
		
		li $a1, 105
		li $a3, 105
		jal DrawVerticalLine
		addi $a0, $a0, 1
		jal DrawVerticalLine
		
		addi $a0, $a0, 3
		jal DrawVerticalLine
		addi $a0, $a0, 1
		jal DrawVerticalLine
		li $a1, 100
		li $a3, 100
		jal DrawVerticalLine
		subi $a0, $a0, 1
		jal DrawVerticalLine
		
		li $a1, 101
		li $a3, 101
		addi $a0, $a0, 2 
		jal DrawVerticalLine
		addi $a0, $a0, 1
		jal DrawVerticalLine
		
		subi $a0, $a0, 8
		li $a1, 96
		li $a3, 96
		jal DrawVerticalLine
		subi $a0, $a0, 1
		jal DrawVerticalLine
		
		li $a1, 103
		li $a3, 103
		jal DrawVerticalLine
		addi $a0, $a0, 1
		jal DrawVerticalLine
		
		li $a1, 104
		li $a3, 105
		subi $a0, $a0, 2
		jal DrawVerticalLine
		subi $a0, $a0, 1
		jal DrawVerticalLine
		
		li $a1, 97
		li $a3, 97
		jal DrawVerticalLine
		addi $a0, $a0, 1
		jal DrawVerticalLine
		subi $a0, $a0, 2
		li $a1, 98
		li $a3, 101
		jal DrawVerticalLine
		subi $a0, $a0, 1
		jal DrawVerticalLine
		
		li $a1, 93
		li $a3, 95
		lw $a0, xPlane
		lw $a2, yellow
		addi $a0, $a0, 3
		jal DrawVerticalLine
		subi $a0, $a0, 1
		jal DrawVerticalLine
		li $a1, 100
		li $a3, 102
		jal DrawVerticalLine
		addi $a0, $a0, 1
		jal DrawVerticalLine
		
		li $a1, 105
		li $a3, 105
		jal DrawVerticalLine
		subi $a0, $a0, 1
		jal DrawVerticalLine
		
		subi $a0, $a0, 3
		jal DrawVerticalLine
		subi $a0, $a0, 1
		jal DrawVerticalLine
		li $a1, 100
		li $a3, 100
		jal DrawVerticalLine
		addi $a0, $a0, 1
		jal DrawVerticalLine
		
		li $a1, 101
		li $a3, 101
		subi $a0, $a0, 2 
		jal DrawVerticalLine
		subi $a0, $a0, 1
		jal DrawVerticalLine
		
		addi $a0, $a0, 8
		li $a1, 96
		li $a3, 96
		jal DrawVerticalLine
		addi $a0, $a0, 1
		jal DrawVerticalLine
		
		li $a1, 103
		li $a3, 103
		jal DrawVerticalLine
		subi $a0, $a0, 1
		jal DrawVerticalLine
		
		li $a1, 104
		li $a3, 105
		addi $a0, $a0, 2
		jal DrawVerticalLine
		addi $a0, $a0, 1
		jal DrawVerticalLine
		
		li $a1, 97
		li $a3, 97
		jal DrawVerticalLine
		subi $a0, $a0, 1
		jal DrawVerticalLine
		addi $a0, $a0, 2
		li $a1, 98
		li $a3, 101
		jal DrawVerticalLine
		addi $a0, $a0, 1
		jal DrawVerticalLine
   		lw $t1, xPlane
		addi $t1, $t1, 2
		sw $t1, xPlane
		lw $ra, 0($sp)						#Arruma o ReturnAdress
   		addi $sp, $sp, 4		
		j Retorna				# jump retorna 			#
#########################################################################################
#			Esquerda			#	Comentarios		#
#########################################################################################
	Esquerda:					# tecla Esquerda		#
		subi $sp, $sp, 4
		sw $ra, 0($sp)
		lw $a0, xPlane
		subi $a0, $a0, 7
		li $a1, 98
		lw $t1, green
		jal ScanPoint
		beq $a2, $t1, noFuel
		lw $a0, xPlane
		li $a1, 93
		li $a3, 95
		lw $a2, yellow
		jal DrawVerticalLine
		addi $a0, $a0, 1
		jal DrawVerticalLine
		li $a1, 100
		li $a3, 102
		jal DrawVerticalLine
		subi $a0, $a0, 1
		jal DrawVerticalLine
		
		li $a1, 105
		li $a3, 105
		jal DrawVerticalLine
		addi $a0, $a0, 1
		jal DrawVerticalLine
		
		addi $a0, $a0, 3
		jal DrawVerticalLine
		addi $a0, $a0, 1
		jal DrawVerticalLine
		li $a1, 100
		li $a3, 100
		jal DrawVerticalLine
		subi $a0, $a0, 1
		jal DrawVerticalLine
		
		li $a1, 101
		li $a3, 101
		addi $a0, $a0, 2 
		jal DrawVerticalLine
		addi $a0, $a0, 1
		jal DrawVerticalLine
		
		subi $a0, $a0, 8
		li $a1, 96
		li $a3, 96
		jal DrawVerticalLine
		subi $a0, $a0, 1
		jal DrawVerticalLine
		
		li $a1, 103
		li $a3, 103
		jal DrawVerticalLine
		addi $a0, $a0, 1
		jal DrawVerticalLine
		
		li $a1, 104
		li $a3, 105
		subi $a0, $a0, 2
		jal DrawVerticalLine
		subi $a0, $a0, 1
		jal DrawVerticalLine
		
		li $a1, 97
		li $a3, 97
		jal DrawVerticalLine
		addi $a0, $a0, 1
		jal DrawVerticalLine
		subi $a0, $a0, 2
		li $a1, 98
		li $a3, 101
		jal DrawVerticalLine
		subi $a0, $a0, 1
		jal DrawVerticalLine
		
		li $a1, 93
		li $a3, 95
		lw $a0, xPlane
		lw $a2, blue
		addi $a0, $a0, 3
		jal DrawVerticalLine
		subi $a0, $a0, 1
		jal DrawVerticalLine
		li $a1, 100
		li $a3, 102
		jal DrawVerticalLine
		addi $a0, $a0, 1
		jal DrawVerticalLine
		
		li $a1, 105
		li $a3, 105
		jal DrawVerticalLine
		subi $a0, $a0, 1
		jal DrawVerticalLine
		
		subi $a0, $a0, 3
		jal DrawVerticalLine
		subi $a0, $a0, 1
		jal DrawVerticalLine
		li $a1, 100
		li $a3, 100
		jal DrawVerticalLine
		addi $a0, $a0, 1
		jal DrawVerticalLine
		
		li $a1, 101
		li $a3, 101
		subi $a0, $a0, 2 
		jal DrawVerticalLine
		subi $a0, $a0, 1
		jal DrawVerticalLine
		
		addi $a0, $a0, 8
		li $a1, 96
		li $a3, 96
		jal DrawVerticalLine
		addi $a0, $a0, 1
		jal DrawVerticalLine
		
		li $a1, 103
		li $a3, 103
		jal DrawVerticalLine
		subi $a0, $a0, 1
		jal DrawVerticalLine
		
		li $a1, 104
		li $a3, 105
		addi $a0, $a0, 2
		jal DrawVerticalLine
		addi $a0, $a0, 1
		jal DrawVerticalLine
		
		li $a1, 97
		li $a3, 97
		jal DrawVerticalLine
		subi $a0, $a0, 1
		jal DrawVerticalLine
		addi $a0, $a0, 2
		li $a1, 98
		li $a3, 101
		jal DrawVerticalLine
		addi $a0, $a0, 1
		jal DrawVerticalLine
		
   		lw $t1, xPlane
		subi $t1, $t1, 2
		sw $t1, xPlane
		lw $ra, 0($sp)						#Arruma o ReturnAdress
   		addi $sp, $sp, 4	
		j Retorna				# jump retorna 			#
#########################################################################################
#			Tiro				#	Comentarios		#
#########################################################################################
	Tiro:						# tecla tiro			#
		lw $t0, flagTiro			
		beq $t0, 1, Retorna
		li $t0, 1				
		sw $t0, flagTiro
		lw $t1, xPlane
		sw $t1, xTiro
		j Retorna 
#########################################################################################
#			AtualizaTiro			#	Comentarios		#
#########################################################################################
	AtualizaTiro:
		subi $sp, $sp, 4			# subtrai 4 $sp			#
		sw $ra, 0($sp)
		lw $t0, flagTiro
		beqz $t0, Retorna
		lw $a0, xTiro
		lw $a1, yTiro
		ble $a1, 0, ResetaTiro
		addi $a3, $a1, 4
		lw $a2, yellow
		jal DrawVerticalLine
		addi $a0, $a0, 1
		jal DrawVerticalLine
		lw $a2, blue
		addi $a1, $a1, 1
		addi $a3, $a3, 3
		jal DrawVerticalLine
		subi $a0, $a0, 1
		jal DrawVerticalLine
		subi $a1, $a1, 4
		sw $a1, yTiro
		lw $ra, 0($sp)						#Arruma o ReturnAdress
   		addi $sp, $sp, 4
		j Retorna
#########################################################################################
#			ResetaTiro			#	Comentarios		#
#########################################################################################
	ResetaTiro:
		lw $a2, blue
		addi $a1, $a1, 1
		add $a3, $a1, 3
		jal DrawVerticalLine
		addi $a0, $a0, 1
		jal DrawVerticalLine	
		li $t0, 85
		sw $t0, yTiro
		li $t1, 0
		sw $t1, flagTiro
		lw $ra, 0($sp)						#Arruma o ReturnAdress
   		addi $sp, $sp, 4
		j Retorna
#########################################################################################
#				Retorna			#	Comentarios		#
#########################################################################################
	Retorna:					# volta instrucao anterior	#
		sw $zero, 0xFFFF0004			# reseta tecla pressionada	#
		jr $ra					# jump $ra			#
#########################################################################################
#			FixScore			#	Comentarios		#
#########################################################################################
FixScore:						# corrige score			#
		lw $t1, score
		lw $t2, score2
		lw $t3, score3
		lw $t4, score4
		lw $t5, score5
		ble $t1, 9, Dezena
	Unidade:	
		subi $t1, $t1, 10
		addi $t2, $t2, 1
		bge $t1, 10, Unidade
		ble $t2, 9, Centena
	Dezena:	
		subi $t2, $t2, 10
		addi $t3, $t3, 1
		bge $t2, 10, Dezena
		ble $t3, 9, Milhar
	Centena:
		subi $t3, $t3, 10
		addi $t4, $t4, 1
		bge $t3, 10, Centena
		ble $t4, 9, ExitPonto
	Milhar:
		subi $t4, $t4, 10
		addi $t5, $t5, 1
		bge $t4, 10, Milhar
	ExitPonto:
		sw $t1, score
		sw $t2, score2
		sw $t3, score3
		sw $t4, score4
		sw $t5, score5
		jr $ra
#########################################################################################
#			DesceCombustivel		#	Comentarios		#
#########################################################################################
DesceCombustivel:
		lw $a0, flagComb
		bnez $a0, flagZero
		li $a0, 25
		sw $a0, flagComb
		lw $a1, fuel
		subi $a1, $a1, 1
		beqz $a1, noFuel
		sw $a1, fuel
		jr $ra 
	flagZero:
		subi $a0, $a0, 1
		sw $a0, flagComb
		jr $ra
	noFuel:
   		lw $t1, lifes
   		beqz $t1, GameOver
   		subi $t1, $t1, 1
   		sw $t1, lifes
   		j PressStart
#########################################################################################
#			BarraInferior			#	Comentarios		#
#########################################################################################
BarraInferior:						# desenha barra inferior	#
		subi $sp, $sp, 4			# subtrai 4 $sp			#
		sw $ra, 0($sp)				# guarda o $ra			#
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
#########################################################################################
#			Marcadores			#	Comentarios		#
#########################################################################################
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
#########################################################################################
#			LabelE				#	Comentarios		#
#########################################################################################
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
#########################################################################################
#			LabelF				#	Comentarios		#
#########################################################################################
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
#########################################################################################
#			LabelMeio			#	Comentarios		#
#########################################################################################
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
#########################################################################################
#			Ponteiro			#	Comentarios		#
#########################################################################################
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
#########################################################################
#				DrawPlane					#	Comentarios		#
#########################################################################
DrawPlane:
		subi $sp, $sp, 4					# subtrai 4 $sp				#
		sw $ra, 0($sp)
		li $a1, 93
		li $a3, 105
		lw $a0, xPlane
		lw $a2, yellow
		jal DrawVerticalLine
		
		addi $a0, $a0, 1
		jal DrawVerticalLine
		
		li $a1, 103
		li $a3, 104
		subi $a0, $a0, 2
		jal DrawVerticalLine
		
		subi $a0, $a0, 1
		jal DrawVerticalLine
		
		li $a1, 104
		li $a3, 105
		subi $a0, $a0, 1
		jal DrawVerticalLine
		
		subi $a0, $a0, 1
		jal DrawVerticalLine
		
		li $a1, 103
		li $a3, 104
		addi $a0, $a0, 6
		jal DrawVerticalLine
		
		addi $a0, $a0, 1
		jal DrawVerticalLine
		
		li $a1, 104
		li $a3, 105
		addi $a0, $a0, 1
		jal DrawVerticalLine
		
		addi $a0, $a0, 1
		jal DrawVerticalLine
		
		li $a1, 96
		li $a3, 99
		subi $a0, $a0, 6
		jal DrawVerticalLine
		
		subi $a0, $a0, 1
		jal DrawVerticalLine
		
		li $a1, 97
		li $a3, 100
		subi $a0, $a0, 1
		jal DrawVerticalLine
		
		subi $a0, $a0, 1
		jal DrawVerticalLine
		
		li $a1, 98
		li $a3, 101
		subi $a0, $a0, 1
		jal DrawVerticalLine
		
		subi $a0, $a0, 1
		jal DrawVerticalLine
		
		li $a1, 96
		li $a3, 99
		addi $a0, $a0, 8
		jal DrawVerticalLine
		
		addi $a0, $a0, 1
		jal DrawVerticalLine
		
		li $a1, 97
		li $a3, 100
		addi $a0, $a0, 1
		jal DrawVerticalLine
		
		addi $a0, $a0, 1
		jal DrawVerticalLine
		
		li $a1, 98
		li $a3, 101
		addi $a0, $a0, 1
		jal DrawVerticalLine
		
		addi $a0, $a0, 1
		jal DrawVerticalLine
		lw $ra, 0($sp)						#Arruma o ReturnAdress
   		addi $sp, $sp, 4
   		jr $ra
#########################################################################################
#			DrawVida			#	Comentarios		#
#########################################################################################
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
generateEnemy:
	subi $sp, $sp, 4
	sw $ra, 0($sp)
	li $v0, 42         
	li $a1, 92
	xor $a0, $a0, $a0  
	syscall
	addi $a0, $a0, 18
	li $a1, 35
	lw $a2, green
	jal DrawPoint
	lw $ra, 0($sp)						#Arruma o ReturnAdress
   	addi $sp, $sp, 4
   	jr $ra
	
#########################################################################################
#			DrawMapa			#	Comentarios		#
#########################################################################################
DrawMapa:
 		subi $sp, $sp, 4
		sw $ra, 0($sp)
		lw $a2, green
		li $a1, 0
		li $a3, 108
		li $a0, -1
	MapEsquerda:
		addi $a0, $a0, 1
		jal DrawVerticalLine
		ble $a0, 9, MapEsquerda
		lw $a2, blue
	River:	
		addi $a0, $a0, 1
		jal DrawVerticalLine
		ble $a0, 115, River
		lw $a2, green
	MapDireita:
		addi $a0, $a0, 1
		jal DrawVerticalLine
		ble $a0, 127, MapDireita
		lw $ra, 0($sp)						#Arruma o ReturnAdress
   		addi $sp, $sp, 4
   		jr $ra
#########################################################################
#				Draw0						#	Comentarios		#
#########################################################################
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
		lw $a2, greyColor
		addi $a0, $a0, 3
		addi $a1, $a1, 1
		jal DrawPoint
		subi $a0, $a0, 1
		addi $a1, $a1, 1
		jal DrawPoint
		addi $a0, $a0, 3
		subi $a3, $a3, 1
		addi $a1, $a1, 1
		jal DrawHorizontalLine
		j volta
#########################################################################
#				Draw1						#	Comentarios		#
#########################################################################
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
		lw $a2, greyColor
		subi $a0, $a0, 2
		li $a1, 119
		jal DrawVerticalLine
		addi $a0, $a0, 1
		jal DrawPoint
		addi $a0, $a0, 1
		jal DrawPoint
		addi $a0, $a0, 1
		jal DrawPoint
		li $a1, 125
		jal DrawPoint
		subi $a0, $a0, 1
		jal DrawPoint
		subi $a0, $a0, 1
		jal DrawPoint
		j volta	
#########################################################################
#				Draw2						#		Comentarios			#
#########################################################################
Draw2:
		lw $a2, yellow
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
#########################################################################
#				Draw3						#		Comentarios			#
#########################################################################
Draw3:
		lw $a2, yellow
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
#########################################################################
#				Draw4						#		Comentarios			#
#########################################################################
Draw4:
		lw $a2, yellow
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
#########################################################################
#				Draw5						#		Comentarios			#
#########################################################################
Draw5:
		lw $a2, yellow
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
#########################################################################
#				Draw6						#		Comentarios			#
#########################################################################
Draw6:
		lw $a2, yellow
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
#########################################################################
#				Draw7						#		Comentarios			#
#########################################################################
Draw7:
		lw $a2, yellow
		li $a1, 119
		li $a3, 125
		jal DrawVerticalLine
		subi $a3, $a0, 0
		subi $a0, $a0, 3
		jal DrawHorizontalLine
		j volta	
#########################################################################
#				Draw8						#		Comentarios			#
#########################################################################
Draw8:
		lw $a2, yellow
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
#########################################################################
#				Draw9						#		Comentarios			#
#########################################################################
Draw9:		
		lw $a2, yellow
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
#########################################################################
#				Volta						#		Comentarios			#
#########################################################################
volta:
		lw $ra, 0($sp)
		addi $sp, $sp, 4
		jr $ra
#########################################################################
#				SelecionaNumero				#		Comentarios			#
#########################################################################	
SelecionaNumero:
		subi $sp, $sp, 4
		sw $ra, 0($sp)
		lw $a2, yellow
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
#########################################################################
#				DrawScore						#		Comentarios			#
#########################################################################
DrawScore:			
		subi $sp, $sp, 4
		sw $ra, 0($sp)
		li $a0, 101
		lw $t0, score5
		jal SelecionaNumero		
	SegundoDigito:
		li $a0, 107
		lw $t0, score4
		jal SelecionaNumero
	TerceiroDigito:
		li $a0, 113
		lw $t0, score3
		jal SelecionaNumero
	QuartoDigito:
		li $a0, 119
		lw $t0, score2
		jal SelecionaNumero
	QuintoDigito:
		li $a0, 125
		lw $t0, score
		jal SelecionaNumero
		lw $ra, 0($sp)
		addi $sp, $sp, 4
		jr $ra
ScanPoint:
		sll $t0, $a1, 7  					#Multiplica a coordenada Y por 64
		addu  $v0, $a0, $t0
		sll $v0, $v0, 2
		addi $v0, $v0, 0x10040000# $gp
		lw $a2, ($v0)						#Desenha a cor na posicao
		jr $ra					
# $a0 - posicao em x
# $a1 - posicao em y
# $a2 - cor	
DrawPoint:
		sll $t0, $a1, 7  					#Multiplica a coordenada Y por 64
		addu  $v0, $a0, $t0
		sll $v0, $v0, 2
		addi $v0, $v0, 0x10040000# $gp
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
		addu $a1, $t1, $t9
		jal DrawPoint
		addi $t9, $t9, -1
		bge $t9, 0, VerticalLoop
		lw $ra, 0($sp)						#Arruma o ReturnAdress
   		addi $sp, $sp, 4
		jr $ra
ClearBoard:
		lw $t0, green
		li $t1, 65536 # The number of pixels in the display
	StartCLoop:
		subi $t1, $t1, 4
		addi $t2, $t1, 0x10040000
		sw $t0, ($t2)
		beqz $t1, EndCLoop
		j StartCLoop
	EndCLoop:
		jr $ra
#########################################################################################
#				GameOver		#	Comentarios		#
#########################################################################################
GameOver:						# fim do jogo			#
		sw $zero, 0xFFFF0004			# reseta tecla pressionada	#
		j Inicializa				# jump inicio			#
#########################################################################################
