extends CharacterBody2D

var max_speed = 200
var acceleration = 200

func _ready() -> void:
	pass # Replace with function body.
	
	
func _physics_process(delta):
	look_at(get_global_mouse_position())
	var input_vector := Vector2(0, Input.get_axis("move_forward", "move_backward"))
	velocity += input_vector.rotated(rotation + 1.57) * acceleration * delta
	velocity = velocity.limit_length(max_speed)
	
	
	if input_vector.y == 0:
		velocity = velocity.move_toward(Vector2.ZERO, 0.3)
	
	move_and_slide()
	
	var screen_size = get_viewport_rect().size
	if global_position.y < 0:
		global_position.y = screen_size.y
	elif global_position.y > screen_size.y:
		global_position.y = 0
	if global_position.x < 0:
		global_position.x = screen_size.x
	elif global_position.x > screen_size.x:
		global_position.x = 0


