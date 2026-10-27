extends CharacterBody2D

@export var move_speed: float = 300.0

func _physics_process(_delta: float) -> void:
	var input_direction = Vector2(
		Input.get_action_strength("right") - Input.get_action_strength("left"),
		Input.get_action_strength("up") - Input.get_action_strength("down")
	)
	
	if input_direction.length() > 1.0:
		input_direction = input_direction.normalized()
	
	velocity = input_direction * move_speed
	move_and_slide()
