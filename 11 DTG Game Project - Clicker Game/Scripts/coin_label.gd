extends Label
@onready var cookie_label: Label = $Stats/CookieLabel


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func _on_game_cookies_changed(amount) -> void:
	cookie_label.text = "Coins: "+ str(amount)
