extends Control

func _ready():
	$DevelopGame.hide()
	
func _on_developGamebutton_pressed():
	$DevelopGame.show()
	

func _on_backButton_pressed():
	$".".hide()
	save_game.pausa = 0

