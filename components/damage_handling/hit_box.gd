class_name HitBox
extends Area2D
@onready var shape: CollisionShape2D = $CollisionShape2D

@export_subgroup("Settings")
@export var damage: float

func get_damage():
	return damage
