extends Node2D

var game_end = false
var is_pause = true
var is_restart = false
var pause_menu
var lvl_color = 3

func _process(_delta):
	pauseMenu()
	restartLevel()
	if Input.is_action_just_pressed("暫停選單"):
		is_pause =  !is_pause
	if Input.is_action_pressed("ui_right"):
		$Player/Down_wave.dir = Vector2.RIGHT
		$Player/Up_wave.dir = Vector2.RIGHT
		$Player/Right_wave.dir = Vector2.RIGHT
		$Player/Left_wave.dir = Vector2.RIGHT
	if Input.is_action_pressed("ui_left"):
		$Player/Down_wave.dir = Vector2.LEFT
		$Player/Up_wave.dir = Vector2.LEFT
		$Player/Right_wave.dir = Vector2.LEFT
		$Player/Left_wave.dir = Vector2.LEFT
	if Input.is_action_pressed("ui_up"):
		$Player/Down_wave.dir = Vector2.UP
		$Player/Up_wave.dir = Vector2.UP
		$Player/Right_wave.dir = Vector2.UP
		$Player/Left_wave.dir = Vector2.UP
	if Input.is_action_pressed("ui_down"):
		$Player/Down_wave.dir = Vector2.DOWN
		$Player/Up_wave.dir = Vector2.DOWN
		$Player/Right_wave.dir = Vector2.DOWN
		$Player/Left_wave.dir = Vector2.DOWN
	
	for i in $trap.get_children():
		if i.drop:
			get_tree().change_scene_to_file("res://scenes/LevelScene/levels/level_1-4.tscn")
		
	if $exit.occupied:
		game_end = true
		Dialogic.start("res://timelines/timeline_complete_level1.dtl")
		Dialogic.start("res://timelines/timeline_complete_tmp_to_start_scene.dtl")
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
	
func restartLevel():
	if is_restart:
		is_restart = false
		get_tree().change_scene_to_file("res://scenes/LevelScene/levels/level_1-4.tscn")
	pass
