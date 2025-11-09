extends Area2D
	
func interact():
	print("Kiwi entrou no corredor do andar térreo")
	Transição.change_scene_with_fade("res://corredor_terreo.tscn")
	$"../CanvasLayer/arma".hide()
	$"../CanvasLayer/coisa".hide()
	$"../CanvasLayer/machado".hide()
	$"../CanvasLayer/sofá".hide()
	$"../CanvasLayer/porta fechada".hide()
