extends Area2D

@export var description := "quadro Sherlock"

func interact():
	print("Interagindo com:", description)
	$"../CanvasLayer/quadro gato".visible = true
	$"../CanvasLayer/quadro 1".hide()
	$"../CanvasLayer/cadeira".hide()
