extends Node2D


var speed = 100

func _physics_process(delta):
	# Move o inimigo para baixo
	position.y += speed * delta

	# Remove o inimigo se sair da tela
	if position.y > get_viewport_rect().size.y:
		queue_free()
