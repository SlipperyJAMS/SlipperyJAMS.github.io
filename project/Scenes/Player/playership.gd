extends CharacterBody2D

signal bullet_shot(bullet)

var max_speed = 200
var acceleration = 200

var fireDelay = 0.01
var vel := Vector2(0,0)

@onready var muzzle = $Muzzle
@onready var fireDelayTimer = $FireDelayTimer

var bullet_scene = preload("res://Scenes/Bullet/bullet.tscn")

func _process(delta):
	if Input.is_action_pressed("shoot") and fireDelayTimer.is_stopped() :
		fireDelayTimer.start(fireDelay)
		
		shoot_bullet()
	
func _physics_process(delta):
	look_at(get_global_mouse_position())
	var input_vector := Vector2(0, Input.get_axis("move_forward", "move_backward"))
	velocity += input_vector.rotated(rotation + 1.5708) * acceleration * delta
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

func shoot_bullet():
	var b = bullet_scene.instantiate()
	b.global_position = muzzle.global_position
	b.rotation = rotation
	emit_signal("bullet_shot", b)
