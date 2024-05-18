extends Area2D

var drop = false

func _on_Trap_body_entered(body):
	if body.is_in_group('player'):
		drop = true

func _on_Trap_body_exited(body):
	if body.is_in_group('player'):
		drop = false
