class_name HurtboxComponent
extends Area2D

@export_subgroup("Settings")
@export var health_component: HealthComponent
	
func _on_area_entered(hitbox: Area2D) -> void:
	if hitbox.has_method("get_damage"): # EXAMPLE CODE !!!!!
		var damage = hitbox.get_damage()
		health_component.damage(damage)
