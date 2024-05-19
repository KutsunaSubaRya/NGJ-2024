extends CharacterBody2D

const SPEED = 100.0
var loc

func _ready():
	loc = $"../"

func _physics_process(delta):
	velocity = Vector2.ZERO
	if Input.is_action_pressed("ui_right"):
		velocity = Vector2.RIGHT
		match loc.lvl_color:
			1:
				$AnimatedSprite2D.play("right")
			2:
				$AnimatedSprite2D.play("green_right")
			3:
				$AnimatedSprite2D.play("blue_right")
			4:
				$AnimatedSprite2D.play("orange_right")
	if Input.is_action_pressed("ui_left"):
		velocity = Vector2.LEFT
		match loc.lvl_color:
			1:
				$AnimatedSprite2D.play("left")
			2:
				$AnimatedSprite2D.play("green_left")
			3:
				$AnimatedSprite2D.play("blue_left")
			4:
				$AnimatedSprite2D.play("orange_left")
	if Input.is_action_pressed("ui_up"):
		velocity = Vector2.UP
		match loc.lvl_color:
			1:
				$AnimatedSprite2D.play("up")
			2:
				$AnimatedSprite2D.play("green_up")
			3:
				$AnimatedSprite2D.play("blue_up")
			4:
				$AnimatedSprite2D.play("orange_up")
	if Input.is_action_pressed("ui_down"):
		velocity = Vector2.DOWN
		match loc.lvl_color:
			1:
				$AnimatedSprite2D.play("down")
			2:
				$AnimatedSprite2D.play("green_down")
			3:
				$AnimatedSprite2D.play("blue_down")
			4:
				$AnimatedSprite2D.play("orange_down")

	var collision = move_and_collide(velocity * SPEED * delta)
	if collision:
		var node = collision.get_collider()
		if node is CharacterBody2D:
			node.push(velocity)
