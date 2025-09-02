extends Sprite2D

signal Auto_amount_increase

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	modulate.a = 0.0
	visible = false

func _on_new_characters_character_2() -> void:
	modulate.a = 1
	visible = true
	emit_signal("Auto_amount_increase")
	await get_tree().create_timer(3).timeout
	modulate.a = 0
	visible = false
