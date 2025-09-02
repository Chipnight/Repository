extends AnimationPlayer
@onready var animation_player: AnimationPlayer = $"."
@onready var sfx_click_2: AudioStreamPlayer = $"../sfx_click2"
@onready var sfx_click_1: AudioStreamPlayer = $"../sfx_click1"
@onready var progress_bar: ProgressBar = $"../../ProgressBar"
@onready var click_button: TextureButton = $".."

var critical:bool = false
var rng: RandomNumberGenerator
signal Enable_Button

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	rng = RandomNumberGenerator.new()
	play("Button_Restart")
	
func _on_click_button_button_down() -> void:
	if critical == true:
		progress_bar.value += 15
		var tween = get_tree().create_tween()
		tween.tween_property(click_button, "scale", Vector2(.75, .75), .1)
		var num = rng.randi_range(0, 1)
		if num == 0:
			play("Critical_Hit")
			sfx_click_1.play()
		if num == 1:
			play("Critical_Hit1")
			sfx_click_2.play()
	else:
		progress_bar.value += 10
		var tween = get_tree().create_tween()
		tween.tween_property(click_button, "scale", Vector2(.8, .8), .1)
		var num = rng.randi_range(0, 1)
		if num == 0:
			play("Button_Shake1")
			sfx_click_1.play()
		if num == 1:
			play("Button_Shake2")
			sfx_click_2.play()


func _on_click_button_button_up() -> void:
	var tween = get_tree().create_tween()
	tween.tween_property(click_button, "scale", Vector2(1, 1), .05)
	
func _on_progress_bar_full() -> void:
	play("Button_Remove")
	await get_tree().create_timer(0.3).timeout
	play("Button_Spawn")
	await get_tree().create_timer(0.5).timeout
	emit_signal("Enable_Button")


func _on_game_critical_hit() -> void:
	critical = true
	await get_tree().create_timer(10).timeout
	critical = false
	
