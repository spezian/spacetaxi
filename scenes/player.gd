extends CharacterBody2D

@export_subgroup("Nodes")
@export var input_component: InputComponent
@export var movement_component: MovementComponent
@export var health_component: HealthComponent

func _ready() -> void:
	health_component.initialise()

func _physics_process(delta: float) -> void:
	movement_component.handle_movement(self, input_component.direction)
	
	move_and_slide()
