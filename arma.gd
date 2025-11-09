extends Area2D

@export var description := "arma"

func interact():
	print("Interagindo com:", description)
	$"../CanvasLayer/arma".visible = true
	$"../CanvasLayer/coisa".hide()
	$"../CanvasLayer/sofá".hide()
	$"../CanvasLayer/machado".hide()
	$"../CanvasLayer/porta fechada".hide()
