extends Node

var screenTransitionScene = preload("res://scenes/UI/ScreenTransition.tscn")

func transition_to_scene(scenePath):
	var screenTransition = screenTransitionScene.instance()
	add_child(screenTransition)
	yield(screenTransition, "screen_covered")
	get_tree().change_scene(scenePath)

func transition_to_menu():
	$"/root/ScreenTransitionManager".transition_to_scene("res://scenes/UI/MainMenu.tscn")
