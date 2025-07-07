class_name VelocityComponent
extends Node

@export_subgroup("Settings")
@export var speed: float = 100

var velocity: Vector2 = Vector2.ZERO

func handle_movement(direction: Vector2) -> void:
	velocity = direction * speed

func move(body: CharacterBody2D):
	body.velocity = velocity
	body.move_and_slide()
