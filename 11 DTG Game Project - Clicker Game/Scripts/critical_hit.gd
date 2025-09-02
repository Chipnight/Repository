extends Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	modulate.a = 0
	visible = false

func _on_new_characters_character_3() -> void:
	modulate.a = 1
	visible = true
