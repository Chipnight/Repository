extends Control
@onready var sfx_click: AudioStreamPlayer = $LeftPanel/MarginContainer/CenterContainer/ClickButton/sfx_click
@onready var auto_timer: Timer = $Auto_timer

var cookies = 0
var amount_per_click = 1
var autoenabled:bool = false
var autoamount: int = 0
var critical:bool = false
var critical_bonus = 10


signal critical_hit
signal cookies_changed

func _on_click_button_button_down() -> void:
	cookies += amount_per_click
	if critical == true:
		cookies += critical_bonus
	emit_signal("cookies_changed", cookies)
	if critical == true:
		$Camera.screen_shake(8, 0.5)

func _on_character_1_amount_per_click_increase() -> void:
	amount_per_click = amount_per_click + 1

func _on_character_2_auto_amount_increase() -> void:
	if autoenabled == false:
		auto_timer.start(1)
	autoenabled = true
	autoamount = autoamount + 1
	
	
func _on_auto_timer_timeout() -> void:
	cookies += autoamount
	emit_signal("cookies_changed", cookies)
	

func _on_character_3_critial_hits_10_seconds() -> void:
	emit_signal("critical_hit")
	critical = true
	await get_tree().create_timer(10).timeout
	critical = false

	
