extends Node2D

@onready var somFundo = $somFundo

func _on_area_2d_body_entered(body) -> void:
	if body is CharacterBody2D:
		TransiçãoCorredor.change_scene_with_fade("res://corredor_terreo.tscn")
