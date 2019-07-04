extends Control
var listo = 0
var listo1 = 0
var audienceScore
var creating 
var apps = 0

class consoles:
	var name
	var popularity
	var audience
	var licence
var consoles1 = consoles.new()

func _on_Console1_pressed():
	consoles1.name = "VegaSys"
	consoles1.popularity = 10
	consoles1.audience = "T"
	consoles1.licence = 200
	$TextureRect/Createbutton.show()

func _on_Console2_pressed():
	consoles1.name = "DaxGenesys"
	consoles1.popularity = 5
	consoles1.audience = "T"
	consoles1.licence = 40
	$TextureRect/Createbutton.show()

func _on_Console3_pressed():
	consoles1.name = "NinSystem"
	consoles1.popularity = 20
	consoles1.audience = "JT"
	consoles1.licence = 320
	$TextureRect/Createbutton.show()

func _on_Console4_pressed():
	consoles1.name = "Nova-X"
	consoles1.popularity = 10
	consoles1.audience = "T"
	consoles1.licence = 90
	$TextureRect/Createbutton.show()

func _on_Createbutton_pressed():
	$".".hide()
	

