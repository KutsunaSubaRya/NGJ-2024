extends Node2D

var lvl_color = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	#$UP.lvl_color = lvl_color
	#$Down.lvl_color = lvl_color
	#$Right.lvl_color = lvl_color
	$Left.lvl_color = lvl_color
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func set_color():
	pass
