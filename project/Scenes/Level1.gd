extends Node2D

@onready var bullets = $Projectiles
@onready var player = $PlayerShip

func _ready():
	player.connect("bullet_shot", _on_player_bullet_shot)
	

func _on_player_bullet_shot(bullet):
	bullets.add_child(bullet)
