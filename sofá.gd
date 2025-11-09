extends Area2D

@export var description := "sofá"

func interact():
	print("Interagindo com:", description)
	$"../CanvasLayer/sofá".visible = true
	$"../CanvasLayer/arma".hide()
	$"../CanvasLayer/coisa".hide()
	$"../CanvasLayer/machado".hide()
	$"../CanvasLayer/porta fechada".hide()
