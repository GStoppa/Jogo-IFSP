extends Area2D

@export var description := "machado"

func interact():
	print("Interagindo com:", description)
	$"../CanvasLayer/machado".visible = true
	$"../CanvasLayer/arma".hide()
	$"../CanvasLayer/coisa".hide()
	$"../CanvasLayer/sofá".hide()
	$"../CanvasLayer/porta fechada".hide()
	
