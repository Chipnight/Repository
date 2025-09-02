extends Label
@onready var cookie_label: Label = $"."



func _on_game_cookies_changed(amount) -> void:
	cookie_label.text = "Mail: "+ str(amount)
