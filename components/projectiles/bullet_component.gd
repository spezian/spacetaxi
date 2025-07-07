extends Area2D

@export_subgroup("Settings")
@export var SPEED = 750
@export var movement_component: MovementComponent
@onready var bullet: Area2D = $"."

func _physics_process(delta: float) -> void:
	#position += transform.x * SPEED * delta
	movement_component.bullet_movement(bullet, SPEED, transform, delta)
