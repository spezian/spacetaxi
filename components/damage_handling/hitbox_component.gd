class_name HitboxComponent
extends Area2D

@export_subgroup("Settings")
@export var damage: float
@export var one_time_hitbox: bool = false # The body explodes after one hit
@export var is_enemy: bool = true

func get_damage():
	if one_time_hitbox:
		owner.queue_free()
	return damage
