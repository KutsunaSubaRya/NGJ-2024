extends Area2D

var dir = Vector2.ZERO
var loc

func _ready():
	loc = $"../../"

func _process(_delta):
	var overlapping_bodies = get_overlapping_bodies()
	for body in overlapping_bodies:
		if body.is_in_group('rocks') and dir == Vector2.LEFT:
			print(body)
			body.change_type(loc.lvl_color, true)
		elif body.is_in_group('rocks') and dir != Vector2.LEFT:
			body.change_type(loc.lvl_color, false)
		if body.is_in_group('stone') and dir == Vector2.LEFT:
			print(body)
			body.change_type(true)
		elif body.is_in_group('stone') and dir != Vector2.LEFT:
			body.change_type(false)

func _on_Rock_body_entered(body):
	if body.is_in_group('rocks'):
		body.change_type(loc.lvl_color, true)
	if body.is_in_group('stone'):
		body.change_type(true)
	
func _on_Rock_body_exited(body):
	if body.is_in_group('rocks'):
		body.change_type(loc.lvl_color, false)
	if body.is_in_group('stone'):
		body.change_type(false)
