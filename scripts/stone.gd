extends CharacterBody2D

var visualize = false

func _ready():
	$AnimatedSprite2D.play("default")
	pass
	
func _process(_delta):
	if visualize:
		$AnimatedSprite2D.play("enable")
	else:
		$AnimatedSprite2D.play("default")
		

func push(direction):
	print(direction)
	velocity = Vector2.ZERO
	velocity += direction
	move_and_collide(velocity * 8)

func change_type(vis):
	visualize = vis
	pass
