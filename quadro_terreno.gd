extends Area2D

@export var description := "quadro do terreno"

func interact():
	print("Interagindo com:", description)
	$"../CanvasLayer/quadro 1".visible = true
	$"../CanvasLayer/quadro gato".hide()
	$"../CanvasLayer/cadeira".hide
