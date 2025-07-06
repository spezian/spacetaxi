@tool
class_name MovementComponent
extends Node

@export_subgroup("Settings")
@export var speed: float:
	set(value):
		speed = value
		update_configuration_warnings()

func _get_configuration_warnings() -> PackedStringArray:
	if speed < 0:
		return ["Speed can't be negative!"]
	elif speed == 0:
		return ["Speed is zero. This maybe could cause issues!"]
	return []

func handle_movement(body: CharacterBody2D, direction: Vector2) -> void:
	body.velocity = direction * speed
