extends Area2D

@export var speed := 400.0

var movement_vector := Vector2(0, -1)

func _physics_process(delta: float) -> void:
	global_position += movement_vector.rotated(rotation + 1.35 + randf_range(0.1, 0.3)) * speed * delta


func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()
