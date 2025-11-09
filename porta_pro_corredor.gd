extends Area2D

func interact():
	print("Saindo da sala...")
	get_tree().change_scene_to_file("res://segundacena.tscn")
