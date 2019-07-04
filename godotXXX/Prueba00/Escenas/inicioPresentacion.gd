extends Control

func _on_Playbutton_pressed():
	get_tree().change_scene("res://Prueba00/Escenas/office.tscn")

func _on_Exitbutton0_pressed():#al presionar x boton, x accion
	get_tree().quit()


func _on_Button_pressed():
	save_game.load_game(1)
	get_tree().change_scene("res://Prueba00/Escenas/office.tscn")
