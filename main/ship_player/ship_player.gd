extends CharacterBody2D

var bullet_scene = preload("res://bullet.tscn")

var speed = 300
var screen_bounds = Vector2()

func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):  # "Enter" ou "Espaço"
		shoot()

func shoot():
	var bullet = bullet_scene.instance()
	bullet.position = position
	get_parent().add_child(bullet)


func _ready():
	
	screen_bounds = get_viewport_rect().size

func _physics_process(delta):
	var direction = Vector2()

	
	if Input.is_action_pressed("ui_right"):
		direction.x += 1
	if Input.is_action_pressed("ui_left"):
		direction.x -= 1
	if Input.is_action_pressed("ui_up"):
		direction.y -= 1
	if Input.is_action_pressed("ui_down"):
		direction.y += 1


	direction = direction.normalized() * speed
	var new_position = position + direction * delta


	new_position.x = clamp(new_position.x, 0, screen_bounds.x)
	new_position.y = clamp(new_position.y, 0, screen_bounds.y)
	
	position = new_position
