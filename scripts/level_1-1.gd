extends Node2D

var game_end = false

func _process(_delta):
	if $Exit.occupied:
		game_end = true
		get_tree().change_scene_to_file("res://scenes/StartScene.tscn")
