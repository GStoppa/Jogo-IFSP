extends Area2D

func interact():
	print("Kiwi entrou no corredor da escada")
	Transição.change_scene_with_fade("res://escada.tscn")
	$"../CanvasLayer/cadeira".hide()
	$"../CanvasLayer/quadro 1".hide()
	$"../CanvasLayer/quadro gato".hide()
