extends CharacterBody2D

@export_subgroup("Nodes")
@export var input_component: InputComponent
@export var movement_component: MovementComponent
@export var health_component: HealthComponent
@export var bullet: PackedScene
@onready var weapon: Marker2D = $Weapon

func _ready() -> void:
	health_component.initialise()

func _physics_process(delta: float) -> void:
	movement_component.handle_movement(self, input_component.direction)
	
	move_and_slide()
	
func _process(delta: float) -> void:
	if input_component.get_shoot_input():
		var bullet = bullet.instantiate()
		owner.add_child(bullet)
		bullet.transform = weapon.global_transform
