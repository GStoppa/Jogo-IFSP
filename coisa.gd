extends Area2D

@export var description := "coisa"

func interact():
	print("Interagindo com:", description)
	$"../CanvasLayer/coisa".visible = true
	$"../CanvasLayer/machado".hide()
	$"../CanvasLayer/arma".hide()
	$"../CanvasLayer/sofá".hide()
	$"../CanvasLayer/porta fechada".hide()
