extends Node

@export_subgroup("Settings")
@export var SPEED: float = 150
@onready var hit_box: HitBox = $Area2D/HitBox
@onready var meteorite: Area2D = $Area2D
var mob_spawn_location = Vector2(320, randf_range(16, 165))
var movement_dir = randf_range(-0.75, -1.25)

func _ready() -> void:
	hit_box.scale.x *= 3
	hit_box.scale.y *= 3
	meteorite.position = mob_spawn_location
	hit_box.position = mob_spawn_location

func _physics_process(delta: float) -> void:
	meteorite.position.x += -SPEED * delta
	hit_box.position.x += -SPEED * delta
	

func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()
