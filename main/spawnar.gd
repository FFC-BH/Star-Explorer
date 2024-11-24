extends Node2D

var enemy_scene = preload("res://enemy.tscn")

func _ready():
	# Spawn de inimigos a cada 2 segundos
	$Timer.start()

func _on_Timer_timeout():
	var enemy = enemy_scene.instance()
	enemy.position = Vector2(randi() % int(get_viewport_rect().size.x), -50)
	add_child(enemy)
