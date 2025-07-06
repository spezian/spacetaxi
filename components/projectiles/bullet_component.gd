extends Area2D

@export_subgroup("Settings")
@export var SPEED = 750

func _physics_process(delta: float) -> void:
	position += transform.x * SPEED * delta
