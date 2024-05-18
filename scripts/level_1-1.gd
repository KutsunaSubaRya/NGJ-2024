extends Node2D

var game_end = false

func _process(_delta):
	if $trap.drop:
		get_tree().change_scene_to_file("res://scenes/LevelScene/levels/level_1-1.tscn")
	elif $Exit.occupied:
		game_end = true
		get_tree().change_scene_to_file("res://scenes/StartScene.tscn")
