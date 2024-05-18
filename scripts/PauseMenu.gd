extends Control

var main

func _ready():
	main = $"../../../"

func _on_resume_pressed():
	print("resume")
	main.is_pause = !main.is_pause

func _on_restart_pressed():
	main.is_restart = !main.is_restart

func _on_quit_pressed():
	get_tree().change_scene_to_file("res://scenes/LevelScene/LevelLandView.tscn")
