extends AnimationPlayer

var rng: RandomNumberGenerator

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	rng = RandomNumberGenerator.new()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_new_characters_character_1() -> void:
	play("Character1_Animation")

	
func _on_new_characters_character_2() -> void:
	play("Character2_Animation")

func _on_new_characters_character_3() -> void:
	play("Character3_Animation1")
