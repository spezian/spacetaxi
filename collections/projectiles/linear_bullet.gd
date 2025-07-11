extends Node2D

@export_subgroup("Settings")
@export var velocity_component: VelocityComponent

func _physics_process(delta: float) -> void:
	velocity_component.handle_movement(Vector2.RIGHT)
	
	position += velocity_component.velocity * delta

func _on_area_entered(area: Area2D) -> void:
	if area is HurtboxComponent:
		queue_free()
