class_name HurtboxComponent
extends Area2D

@export_subgroup("Settings")
@export var health_component: HealthComponent
@export var is_enemy: bool = true

func _on_area_entered(body: Node) -> void:
	if (body is HitboxComponent and !is_enemy):
		var damage = body.get_damage()
		health_component.damage(damage)
		print("Damage: %d" % damage)
	elif (body is HitboxComponent and !body.is_enemy):
		var damage = body.get_damage()
		health_component.damage(damage)
		print("Spieler macht Schaden am Gegner")
