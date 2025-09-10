extends AnimationPlayer

var rng: RandomNumberGenerator
var critical:bool = false


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	rng = RandomNumberGenerator.new()
	await get_tree().create_timer(0.01).timeout
	play("Per_Click_Character_Reset")
	play("Per_Sec_Character_Reset")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_click_button_button_down() -> void:
	if critical == true:
		var num = rng.randi_range(0, 1)
		if num == 0:
			play("Critical_Hit1")
		else:
			play("Critical_Hit2")
	else:
		var num = rng.randi_range(0, 1)
		if num == 0:
			play("Coins_Shake1")
		else:
			play("Coins_Shake2")


func _on_character_3_critial_hits_10_seconds() -> void:
	critical = true
	await get_tree().create_timer(10).timeout
	critical = false

func _on_new_characters_character_2() -> void:
	await get_tree().create_timer(2.5).timeout
	play("Per_Second_Pop")
	

func _on_new_characters_character_1() -> void:
	await get_tree().create_timer(2.5).timeout
	play("Per_Click_Pop")
