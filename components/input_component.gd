class_name InputComponent
extends Node

var direction: Vector2 = Vector2.ZERO

func _process(_delta: float) -> void:
	direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
