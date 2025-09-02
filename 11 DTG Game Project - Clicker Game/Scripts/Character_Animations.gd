extends AnimationPlayer

var rng: RandomNumberGenerator

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	rng = RandomNumberGenerator.new()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_new_characters_character_1() -> void:
	var num = rng.randi_range(1, 2)
	if num == 1:
		play("Character1_Animation")
	if num == 2:
		play("Character1_Animation2")
	

func _on_new_characters_character_2() -> void:
	var num = rng.randi_range(1, 2)
	if num == 1:
		play("Character2_Animation")
	if num == 2:
		play("Character2_Animation2")

func _on_new_characters_character_3() -> void:
	play("Character3_Animation1")
