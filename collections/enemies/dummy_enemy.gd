extends Node2D

@export_subgroup("Settings")
@export var health_component: HealthComponent

func _ready() -> void:
	health_component.initialise()

func _when_died():
	queue_free()
