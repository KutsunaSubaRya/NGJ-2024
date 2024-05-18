extends Node2D

var game_end = false
var is_pause = true
var pause_menu

func _process(_delta):
	pauseMenu()
	if Input.is_action_just_pressed("暫停選單"):
		is_pause =  !is_pause
		
	if $trap.drop:
		get_tree().change_scene_to_file("res://scenes/LevelScene/levels/level_1-1.tscn")
	elif $exit.occupied:
		game_end = true
		get_tree().change_scene_to_file("res://scenes/StartScene.tscn")

func _ready():
	#pass
	pause_menu = $"Player/Camera2D/PauseMenu"
	
func pauseMenu():
	if is_pause:
		pause_menu.hide()
		Engine.time_scale = 1
	else:
		pause_menu.show()
		Engine.time_scale = 0
	
