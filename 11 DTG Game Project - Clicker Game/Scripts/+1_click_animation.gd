extends AnimationPlayer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func _on_new_characters_character_1() -> void:
	play("+1Click_Animation")

func _on_new_characters_character_2() -> void:
	play("+1ClickPerSecond_Animation")

func _on_new_characters_character_3() -> void:
	play("Critical_Hit_Animation")
