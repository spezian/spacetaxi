extends Node2D
@export_subgroup("Settings")
@export var SPEED: float
@export var velocity_component: VelocityComponent
@onready var rocket: Node2D = $"."

func _ready() -> void:
	position = Vector2(320, 160)

func _physics_process(delta: float) -> void:
	velocity_component.handle_movement(Vector2.LEFT)
	
	position += velocity_component.velocity * delta


func _on_detecting_area_body_entered(body: Node2D) -> void:
	if body is Player:
		pass
