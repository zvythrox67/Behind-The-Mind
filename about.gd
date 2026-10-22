extends Control

@export var front_texture: Texture2D
@export var left_texture: Texture2D
@export var back_texture: Texture2D
@export var right_texture: Texture2D

var directions: Array = []
var current_index: int = 0

@onready var character_display: TextureRect = $TextureRect 

func _ready() -> void:
	directions = [front_texture, left_texture, back_texture, right_texture]
	character_display.texture = directions[current_index]

func _on_texture_rect_gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		current_index = (current_index + 1) % directions.size()
		character_display.texture = directions[current_index]
