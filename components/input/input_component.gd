class_name InputComponent
extends Node

var direction: Vector2 = Vector2.ZERO

func _process(_delta: float) -> void:
	direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
		
func get_shoot_input():
	return Input.is_action_just_pressed("shoot")
		
