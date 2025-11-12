extends Area2D


func _on_body_entered(body) -> void:
	if body is CharacterBody2D:
		$"../CanvasLayer/PopupPanel".visible = true
