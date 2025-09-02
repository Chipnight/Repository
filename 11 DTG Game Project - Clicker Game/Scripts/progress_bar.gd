extends ProgressBar
@onready var progress_bar: ProgressBar = $"."

var reset_speed = 0.5
signal full

func _ready() -> void:
	progress_bar.value = 0

func _on_click_button_button_up() -> void:
	if progress_bar.value == 100:
		var tween = create_tween()
		tween.tween_property(self, "value", value - progress_bar.value, reset_speed)
		emit_signal("full")
