class_name HealthComponent
extends Node

signal died

@export_subgroup("Settings")
@export var maxHealth: float:
	get:
		return maxHealth
	set(newMax):
		maxHealth = newMax
		if (currentHealth >= maxHealth):
			currentHealth = maxHealth 

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
			died.emit()

var isDead: bool = false

func initialise() -> void:
	currentHealth = maxHealth

func damage(amount: float) -> void:
	currentHealth -= amount
