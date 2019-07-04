extends Control

func _ready():
	$DevelopIu.hide()  #esconder al iniciar la escena office developIu y DevelopGame
	$DevelopGame.hide()
	$TextureRect/valueCash.set("custom_colors/font_color", Color(0.3,1,0.6))

	
func _on_Exitbutton_pressed():
	get_tree().quit() #salir del juego

func _on_Develbutton_pressed():
	get_node("DevelopIu").show() #mostrar DevelopIu
	save_game.pausa = 1
	
func _process(delta): #a cada frame se actualiza
	save_game.save_game(1) #función guardar, sobreescribir slot 1 a cada frame
	cash() #actualizar función
	pause()

func _on_Timer_timeout(): #cuando el contador se reincie, se ejecuta cada 5 segundos
	$TextureRect/valueDay.text = String(save_game.datos_partida.inter) # cambiar el texto del label por la variable inter en datos_partida del singleton save_game
	save_game.time += 1 #añadirle
	save_game.dinero -= 100
	return
	
func cash(): # establece el dinero en el label valueCash
	$TextureRect/valueCash.text = String(save_game.datos_partida.cash)#cambiar el texto label por la variable cash en datos_partida en el singletion save_game

func pause():
	if(save_game.pausa == 1 ):
		$TextureRect/Timer.set_paused(true)
	elif(save_game.pausa == 0):
		$TextureRect/Timer.set_paused(false)
		$TextureRect/Timer.set_autostart(true)
