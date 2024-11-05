extends Sprite2D

var start_texture = preload("res://assets/Background/Space_Background2.png")
var end_texture = preload("res://assets/Background/Space_Background2.png")

func _ready():
	set_process(true)  # Enable processing
	texture = start_texture

func _process(delta):
	# Your scrolling or other logic here
	pass

func _on_animation_end():
	texture = end_texture
