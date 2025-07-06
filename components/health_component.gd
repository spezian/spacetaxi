@tool
class_name HealthComponent
extends Node

@export_subgroup("Settings")
@export var maxHealth: float:
	get:
		return maxHealth
	set(newMax):
		maxHealth = newMax
		if (currentHealth >= maxHealth):
			currentHealth = maxHealth
		update_configuration_warnings()

func _get_configuration_warnings() -> PackedStringArray:
	if maxHealth <= 0:
		return ["Max health can't be negative or 0!"]
	return []

var hasHealthRemaining: bool:
	get:
		return !is_equal_approx(currentHealth, 0)

var currentHealth: float:
	get:
		return currentHealth
	set(newHealth):
		currentHealth = clamp(newHealth, 0, maxHealth)
		if (!isDead && !hasHealthRemaining):
			isDead = true

var isDead: bool = false

func initialise() -> void:
	currentHealth = maxHealth

func damage(amount: float) -> void:
	currentHealth -= amount
