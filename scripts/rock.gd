extends StaticBody2D

var color_type = 0
var color_vis  = false

# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimatedSprite2D.play("default")
	pass
	
func _process(_delta):
	if color_vis:
		match color_type:
			0:
				$AnimatedSprite2D.play("default")
			1:
				$AnimatedSprite2D.play("blue_small")
			2:
				$AnimatedSprite2D.play("yellow_small")
			3:
				$AnimatedSprite2D.play("red_small")
			4:
				$AnimatedSprite2D.play("purple_big")
				
	else:
		$AnimatedSprite2D.play("default")

# type_num is this level's color
#   vis    is to display or not
func change_type(type_num, vis):
	color_type = type_num
	color_vis  = vis
	pass
