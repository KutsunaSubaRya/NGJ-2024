extends Area2D

var dir = Vector2.ZERO
var lvl_color = 3

func _process(_delta):
	var overlapping_bodies = get_overlapping_bodies()
	for body in overlapping_bodies:
		if body.is_in_group('rocks') and dir == Vector2.RIGHT:
			print(body)
			body.change_type(lvl_color, true)
		elif body.is_in_group('rocks') and dir != Vector2.RIGHT:
			body.change_type(lvl_color, false)

func _on_Rock_body_entered(body):
	if body.is_in_group('rocks'):
		body.change_type(lvl_color, true)
	
func _on_Rock_body_exited(body):
	if body.is_in_group('rocks'):
		body.change_type(lvl_color, false)
