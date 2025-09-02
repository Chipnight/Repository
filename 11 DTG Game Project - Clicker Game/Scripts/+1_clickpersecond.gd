extends Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	modulate.a = 0
	visible = false
	z_index = -1

func _on_new_characters_character_2() -> void:
	modulate.a = 1
	visible = true
