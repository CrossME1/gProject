extends Control


func _ready():
	$Parametros.hide()
	$developTexture/callParametros.hide()

func _process(delta):
	developingGenre()
	developingTheme()
	
#Generos
func _on_Actionbutton_pressed():
	Consolas_global.listo = 1

func _on_Adventurebutton_pressed():
	Consolas_global.listo = 2

func _on_Rolbutton_pressed():
	Consolas_global.listo = 3

func _on_Simulationbutton_pressed():
	Consolas_global.listo = 4

func _on_Strategybutton_pressed():
	Consolas_global.listo = 5

func _on_Casualbutton_pressed():
	Consolas_global.listo = 6

##Temas
func _on_Flyshiptheme_pressed():
	Consolas_global.listo1 = 1

func _on_Medievaltheme_pressed():
	Consolas_global.listo1 = 2

func _on_Racetheme_pressed():
	Consolas_global.listo1 = 3

func _on_Sportstheme_pressed():
	Consolas_global.listo1 = 4

func _on_Plataformtheme_pressed():
	Consolas_global.listo1 = 5

func _on_Puzzletheme_pressed():
	Consolas_global.listo1 = 6
	
	
func _on_backButton2_pressed():
	$".".hide()
	

func developingGenre():
	if (Consolas_global.listo == 1 ):
		$developTexture/electionGenre.text = "Acción"
	if (Consolas_global.listo == 2 ):
		$developTexture/electionGenre.text = "Aventura"
	if (Consolas_global.listo == 3 ):
		$developTexture/electionGenre.text = "Rol"
	if (Consolas_global.listo == 4 ):
		$developTexture/electionGenre.text = "Simulación"
	if (Consolas_global.listo == 5 ):
		$developTexture/electionGenre.text = "Estrategia"
	if (Consolas_global.listo == 6 ):
		$developTexture/electionGenre.text = "Casual"

func developingTheme():
	if (Consolas_global.listo1 == 1 ):
		$developTexture/electionTheme.text = "Aviones"
	if (Consolas_global.listo1 == 2 ):
		$developTexture/electionTheme.text = "Medieval"
	if (Consolas_global.listo1 == 3 ):
		$developTexture/electionTheme.text = "Carreras"
	if (Consolas_global.listo1 == 4 ):
		$developTexture/electionTheme.text = "Deportes"
	if (Consolas_global.listo1 == 5 ):
		$developTexture/electionTheme.text = "Plataformas"
	if (Consolas_global.listo1 == 6 ):
		$developTexture/electionTheme.text = "Puzzle"
	if (Consolas_global.listo1 > 0 && Consolas_global.listo > 0):
		$developTexture/callParametros.show()



func _on_callParametros_pressed():
	$Parametros.show()
