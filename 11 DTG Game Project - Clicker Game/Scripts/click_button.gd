extends TextureButton
@onready var click_button: TextureButton = $"."
@onready var progress_bar: ProgressBar = $"../../ProgressBar"
@onready var sfx_click_1: AudioStreamPlayer = $sfx_click1
@onready var sfx_click_2: AudioStreamPlayer = $sfx_click2
@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var explosion: GPUParticles2D = $explosion

var character_cooldown:bool = false
var rng: RandomNumberGenerator
signal unbox_character

func _on_ready() -> void:
	rng = RandomNumberGenerator.new()
		
func _on_progress_bar_full() -> void:
	set_disabled(true)
	explosion.emitting = true
	if character_cooldown == false:
		var num = rng.randi_range(1, 3)
		if num == 1:
			emit_signal("unbox_character")
			character_cooldown = true
			await get_tree().create_timer(5).timeout
			character_cooldown = false
		

func _on_animation_player_enable_button() -> void:
	set_disabled(false)

func _on_button_down() -> void:
	pass
	
