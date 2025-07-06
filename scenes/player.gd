extends CharacterBody2D

@export_subgroup("Nodes")
@export var input_component: InputComponent
@export var movement_component: MovementComponent

func _physics_process(delta: float) -> void:
	movement_component.handle_movement(self, input_component.direction)
	
	move_and_slide()
