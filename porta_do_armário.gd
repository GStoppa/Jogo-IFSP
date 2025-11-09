extends Area2D
@onready var somPorta = $"../somPorta"

func interact():
	print("Kiwi interagiu com: porta do armário")
	$"../CanvasLayer/porta fechada".visible = true
	$"../CanvasLayer/sofá".hide()
	$"../CanvasLayer/arma".hide()
	$"../CanvasLayer/coisa".hide()
	$"../CanvasLayer/machado".hide()
	somPorta.play()
