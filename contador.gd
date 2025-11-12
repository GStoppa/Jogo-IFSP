extends Node

var puzzles_resolvidos: int = 0

func adicionar_puzzle_resolvido():
	puzzles_resolvidos += 1
	print("Puzzles resolvidos:", puzzles_resolvidos)

	if puzzles_resolvidos >= 3:
		TransiçãoPuzzle.change_scene_with_fade("res://cenas/cena_final.tscn")
