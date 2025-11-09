extends Area2D

@export var description := "relógio"

func interact():
	print("Interagindo com:", description)
	TransiçãoCorredor.change_scene_with_fade("res://scene/PuzzleRelogio.tscn")
