extends CharacterBody2D

#var cursor_position = get_global_mouse_position()


func _ready() -> void:
	pass # Replace with function body.


func _process(delta):
	look_at(get_global_mouse_position())
	var movement_vector = get_movement_vector()
	var direction = movement_vector.normalized().rotated(rotation)
	global_position += direction * delta * 150

func get_movement_vector():
	var forward_movement = Input.get_action_strength("move_forward") - Input.get_action_strength("move_backward")
	var side_movement = 0
	return Vector2(forward_movement, side_movement)
