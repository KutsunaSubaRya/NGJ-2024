extends CharacterBody2D

func push(direction):
	print(direction)
	var velocity = Vector2.ZERO
	velocity += direction
	move_and_collide(velocity * 8)
