extends Node
var pausa = 0
var time = 0
var dinero = 30000   #variables de los datos
var level = 0
#var apps = 0
var datos_partida = {   #datos a guardar
	inter = 0,
	cash = 0,
	level = 0,
	#apps = 0
	}

func _ready():
	var path = Directory.new() # en la variable path establecer como directorio
	if(!path.dir_exists("user://saves")):## si no existe el directorio "user..."
		path.open("user://") #abrir path en user
		path.make_dir("user://saves") #crear la carpeta saves en user
		
func save_game(var num): #funcion para guardar progreso(datos)
	var save = File.new() #crear nuevo archivo llamado save
	save.open("user://saves" + String(num) + ".sav", File.WRITE) #abrir el archivo save en user/saves + numero del archivo + .sav, tipo escritura
	datos_partida.inter = time #establecer datos a guardar en archivos save(num).sav
	datos_partida.cash = dinero
	datos_partida.level = level
	save.store_line(to_json(datos_partida)) #darle formato json, que sirve para intercambio de datos , se considera formato de texto sencillo lo que lo hace viable
	save.close() #se finaliza save.
	
func load_game(var n): # funcion para cargar progreso (datos) user://saves/num.sav
	var cargar = File.new() #crear archivo cargar
	if (!cargar.file_exists("user://saves" + String(n) + ".sav")):
		print("no se encuentran partidas guardadas")
		return
	var datos_cargar = datos_partida
	
	cargar.open("user://saves" + String(n) + ".sav",File.READ)
	while (!cargar.eof_reached()): ##mientras no se alcance el final del archivo
		var datos_leer = parse_json(cargar.get_line())
		if (datos_leer != null):
			datos_cargar = datos_leer
	cargar.close()
	
	time = datos_cargar.inter
	dinero = datos_cargar.cash
	level = datos_cargar.level

