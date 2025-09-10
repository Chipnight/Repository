extends Label
@onready var cookie_label_2: Label = $"."
var coins_per_second = 0


func _on_new_characters_character_2() -> void:
	await get_tree().create_timer(2.5).timeout
	coins_per_second = coins_per_second + 1
	cookie_label_2.text = "Per Second: "+ str(coins_per_second)
	
