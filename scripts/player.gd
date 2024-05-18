extends CharacterBody2D

const SPEED = 100.0

func _physics_process(delta):
	velocity = Vector2.ZERO
	if Input.is_action_pressed("ui_right"):
		velocity = Vector2.RIGHT
		$AnimatedSprite2D.play("right")
	if Input.is_action_pressed("ui_left"):
		velocity = Vector2.LEFT
		$AnimatedSprite2D.play("left")
	if Input.is_action_pressed("ui_up"):
		velocity = Vector2.UP
		$AnimatedSprite2D.play("up")
	if Input.is_action_pressed("ui_down"):
		velocity = Vector2.DOWN
		$AnimatedSprite2D.play("down")

	var collision = move_and_collide(velocity * SPEED * delta)
	if collision:
		var node = collision.get_collider()
		if node is CharacterBody2D:
			node.push(velocity)
