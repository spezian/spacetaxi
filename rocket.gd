extends Node2D
@export_subgroup("Settings")
@export var SPEED: float
@export var velocity_component: VelocityComponent
var follow_player = false
var character

func _ready() -> void:
	position = Vector2(320, 120)

func _physics_process(delta: float) -> void:
	velocity_component.handle_movement(Vector2.LEFT)
	if !follow_player:
		position += velocity_component.velocity * delta
	if follow_player:
		position += (character.position - position)/ SPEED
	print(position)
	
func _on_detecting_area_body_entered(body: Node2D) -> void:
	if body is Player:
		print(body.position)
		print("entered")
		character = body
		follow_player = true
		


func _on_detecting_area_body_exited(body: Node2D) -> void:
	if body is Player:
		print(body.position)
		print("exited")
		character = null
		follow_player = false
		

#func _on_detecting_area_area_entered(area: Area2D) -> void:
	#if area is HurtboxComponent:
		#follow_player = true
		#character = area
#
#func _on_detecting_area_area_exited(area: Area2D) -> void:
	#if area is HurtboxComponent:s
		#follow_player = false
		#character = null
