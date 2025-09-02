extends AnimationPlayer
@onready var damage_numbers_origin: Node2D = $"../../DamageNumbersOrigin"
@onready var progress_bar: ProgressBar = $".."


var rng: RandomNumberGenerator
var critical:bool = false

func _ready() -> void:
	rng = RandomNumberGenerator.new()
	

func _on_click_button_button_down() -> void:
	DamageNumbers.display_number(progress_bar.value, damage_numbers_origin.global_position)
	if critical == true:
		var num = rng.randi_range(0, 1)
		if num == 0:
			play("Critical_Hit")
		if num == 1:
			play("Critical_Hit1")
	else:
		var num = rng.randi_range(0, 1)
		if num == 0:
			play("Bar_Shake")
		if num == 1:
			play("Bar_Shake2")
		
		
func _on_character_3_critial_hits_10_seconds() -> void:
	critical = true
	await get_tree().create_timer(10).timeout
	critical = false
