extends Label
@onready var cookie_label_3: Label = $"."
var coins_per_click = 0




func _on_new_characters_character_1() -> void:
	await get_tree().create_timer(2.5).timeout
	coins_per_click = coins_per_click + 1
	cookie_label_3.text = "Per Click: "+ str(coins_per_click)
