class_name MovementComponent
extends Node

@export_subgroup("Settings")
@export var speed: float = 100

func handle_movement(body: CharacterBody2D, direction: Vector2) -> void:
	body.velocity = direction * speed

func bullet_movement(area: Area2D, speed, transform, delta_t):
	area.position += speed * transform.x * delta_t
