@tool
class_name HurtboxComponent
extends Area2D

@export_subgroup("Settings")
@export var health_component: HealthComponent:
	set(value):
		health_component = value
		update_configuration_warnings()

func _get_configuration_warnings() -> PackedStringArray:
	if !is_instance_valid(health_component):
		return ["Health component unset or invalid!"]
	return []
	
func _on_area_entered(hitbox: Area2D) -> void:
	if hitbox.has_method("get_damage"): # EXAMPLE CODE !!!!!
		var damage = hitbox.get_damage()
		health_component.damage(damage)
