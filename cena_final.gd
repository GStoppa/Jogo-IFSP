extends Node2D

# Lista de falas
var dialogos = [
	{"personagem": "Fiuza", "fala": "Mano como assim cê foi mesmo?"},
	{"personagem": "Kiwi", "fala": "Eu fui kkkkk só nunca mais volto"},
	{"personagem": "Kiwi", "fala": "Não sei dizer, mas o tempo todo que eu tava lá"},
	{"personagem": "Kiwi", "fala": "eu sentia que estava preso"},
	{"personagem": "Fiuza", "fala": "Oloko, e o que você fez lá?"},
	{"personagem": "Kiwi", "fala": "Não consigo me lembrar."},
	{"personagem": "Kiwi", "fala": "Só lembro da sensação"},
	{"personagem": "Fiuza", "fala": "Nossa, loucura"},
	{"personagem": "Fiuza", "fala": "Mas aí... já era a cola pra prova de mat, então?"},
	{"personagem": "Kiwi", "fala": "Kkkkkk não sei, talvez com uma condição"},
	{"personagem": "Fiuza", "fala": "Manda"},
	{"personagem": "Kiwi", "fala": "Agora você que tem que passar uma noite na casa"},
	{"personagem": "Fiuza", "fala": "ATA, nem que me paguem"},
	{"personagem": "Fiuza", "fala": "Eu me viro na prova"},
	{"personagem": "Kiwi", "fala": "Medroso kkkkk"}
]

var indice = 0

func _ready():
	mostrar_dialogo()

func _input(event):
	if event.is_action_pressed("ui_accept"):
		indice += 1
		if indice < dialogos.size():
			mostrar_dialogo()
		else:
			TransiçãoCorredor.change_scene_with_fade("res://créditos.tscn")
			$CanvasLayer/Panel.hide()

func mostrar_dialogo():
	var fala_atual = dialogos[indice]
	$CanvasLayer/Panel/Nome.text = fala_atual["personagem"]
	$CanvasLayer/Panel/Label.text = fala_atual["fala"]
