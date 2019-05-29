extends KinematicBody2D
func _process(delta):
	position.x -= 5
	pass

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
	move_and_slide(position)

func _on_cabeza_area_entered(area):
	print("MATASTE")
	queue_free()