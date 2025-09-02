extends Label
@onready var cookie_label_3: Label = $"."
var coins_per_click



func _on_new_characters_character_1(amount) -> void:
	coins_per_click += coins_per_click + 1
	cookie_label_3.text = "Per Click: "+ str(amount)
