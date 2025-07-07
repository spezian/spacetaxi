class_name Player
extends CharacterBody2D

@export_subgroup("Nodes")
@export var input_component: InputComponent
@export var velocity_component: VelocityComponent
@export var health_component: HealthComponent
@export var bullet: PackedScene
@onready var weapon: Marker2D = $Weapon

func _ready() -> void:
	health_component.initialise()

func _physics_process(delta: float) -> void:
	velocity_component.handle_movement(input_component.direction)
	
	velocity_component.move(self)
	
func _process(delta: float) -> void:
	if input_component.get_shoot_input():
		var bullet = bullet.instantiate()
		owner.add_child(bullet)
		bullet.transform = weapon.global_transform
