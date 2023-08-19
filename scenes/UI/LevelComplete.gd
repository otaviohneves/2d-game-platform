extends CanvasLayer

func _ready():
	$PanelContainer/MarginContainer/VBoxContainer/Button.connect("pressed", self, "on_next_button_pressed")

func on_next_button_pressed():
	$"/root/LevelManager".change_to_next_level()
