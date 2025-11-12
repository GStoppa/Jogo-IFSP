extends Area2D

@onready var texto = $"../CanvasLayer/PopupPanel"
@onready var carta: Sprite2D = $carta
var c_tween: Tween = null
var player_in_area := false

func _ready():
	body_entered.connect(_on_body_entered)
	body_exited.connect(_on_body_exited)
	carta.visible = false

func _process(_delta):
	if player_in_area and Input.is_action_just_pressed("ui_accept"):
		interact()

func interact():
	print("Kiwi interagiu com a carta")
	TransiçãoPuzzle.change_scene_with_fade("res://cenas/carta_menu.tscn")
	texto.hide()
	
func _on_body_entered(body):
	if body is CharacterBody2D:
		player_in_area = true
		_update_focus()

func _on_body_exited(body):
	if body is CharacterBody2D:
		player_in_area = false
		carta.visible = false

func _update_focus():
	var shape_node = $CollisionShape2D
	var offset_y := -16.0
	if shape_node and shape_node.shape is RectangleShape2D:
		offset_y = -(shape_node.shape.size.y * scale.y) / 2 - 16

	carta.visible = true
	carta.position = Vector2(0, offset_y)  # posição local
	# animação de flutuação
	if c_tween and c_tween.is_running():
		c_tween.kill()
	c_tween = get_tree().create_tween()
	var start_y = carta.position.y
	c_tween.tween_property(carta, "position:y", start_y - 5, 0.5).set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
	c_tween.tween_property(carta, "position:y", start_y, 0.5).set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
	c_tween.set_loops()
