class_name HurtboxComponent
extends Area2D

@export_subgroup("Settings")
@export var health_component: HealthComponent

func _on_area_entered(body: Node) -> void:
	if (body is HitboxComponent):
		var damage = body.get_damage()
		health_component.damage(damage)
		print("Damage: %d" % damage)
