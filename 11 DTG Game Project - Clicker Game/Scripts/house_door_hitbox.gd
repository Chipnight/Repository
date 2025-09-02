extends Button


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	modulate.a = 0.0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_down() -> void:
	get_tree().change_scene_to_file("res://Scenes/inside_house.tscn")
