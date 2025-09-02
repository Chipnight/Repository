extends Node2D

var rng: RandomNumberGenerator
var character3_cooldown:bool = false

signal character1
signal character2
signal character3
signal character4



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	rng = RandomNumberGenerator.new()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_click_button_unbox_character() -> void:
	var num = rng.randi_range(1, 3)
	if num == 1:
		emit_signal("character1")
	if num == 2:
		emit_signal("character2")
	if num == 3 and character3_cooldown == false:
		emit_signal("character3")
		character3_cooldown = true
		await get_tree().create_timer(11).timeout
		character3_cooldown = false
