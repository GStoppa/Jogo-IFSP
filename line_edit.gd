extends LineEdit

const CARACTERES_PERMITIDOS = "0123456789,-"

func _ready():
	text_changed.connect(_on_texto_alterado)

func _on_texto_alterado(new_text: String):
	var text_validado = ""
	var posicao_cursor = caret_column
	
	for caractere in new_text:
		if caractere in CARACTERES_PERMITIDOS:
			text_validado += caractere
	
	if text_validado != new_text:
		text = text_validado
		caret_column = posicao_cursor - 1
