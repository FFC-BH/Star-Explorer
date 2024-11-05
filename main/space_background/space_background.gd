extends Node2D

func _physics_process(delta):
	var direction = Input.get_axis("ui_left", "ui_right")
	print(direction)
	position.y += (direction * 1000)

