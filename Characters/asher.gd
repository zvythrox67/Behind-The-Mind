extends CharacterBody2D

@export var move_speed: float = 300.0

func _physics_process(delta: float) -> void:
	var input_direction = Vector2(
		Input.get_action_strength("right") - Input.get_action_strength("left"),
		Input.get_action_strength("down") - Input.get_action_strength("up")
	)
	
	# TELEPORT TEST (Bypassing physics)
	position += input_direction * move_speed * delta
	
	print("Position is now: ", position)
