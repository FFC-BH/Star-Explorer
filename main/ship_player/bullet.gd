extends Area2D

var speed = 500

func _process(delta):
	position.y -= speed * delta
	if position.y < 0:
		queue_free()
