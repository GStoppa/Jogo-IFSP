extends Area2D

@export var description := "cadeira"

func interact():
	print("Interagindo com:", description)
	$"../CanvasLayer/cadeira".visible = true
	$"../CanvasLayer/quadro gato".hide()
	$"../CanvasLayer/quadro 1".hide()
