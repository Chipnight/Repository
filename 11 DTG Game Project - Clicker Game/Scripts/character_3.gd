extends Sprite2D

signal Critial_Hits_10_Seconds

func _ready() -> void:
	modulate.a = 0.0
	visible = false


func _on_new_characters_character_3() -> void:
	modulate.a = 1
	visible = true
	emit_signal("Critial_Hits_10_Seconds")
	await get_tree().create_timer(9).timeout
	modulate.a = 0.5
	await get_tree().create_timer(1).timeout
	modulate.a = 0
	visible = false
