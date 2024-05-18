extends Node2D


func _ready():
	pass

func _process(_delta):
	pass


func _on_start_button_pressed():
	print("start button clicked.")
	Dialogic.start("res://timelines/timeline_bg.dtl")
	get_tree().change_scene_to_file("res://scenes/LevelScene/LevelLandView.tscn")
	pass # Replace with function body.

func _on_setting_button_pressed():
	print("setting button clicked.")
	pass # Replace with function body.


func _on_leave_button_pressed():
	print("leave button clicked.")
	get_tree().quit()
	pass # Replace with function body.
