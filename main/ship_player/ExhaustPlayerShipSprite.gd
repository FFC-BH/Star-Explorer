extends Sprite2D

var images: Array[String] = ["exhaust1.png", "exhaust2.png", "exhaust3.png", "exhaust4.png"]
var turbo_status: Array[String] = ["Normal_flight", "Turbo_flight"]
var image_path = "res://assets/PNG_Parts&Spriter_Animation/Ship1/Exhaust/"
var current_image:int = 0
var current_turbo:int = 0

func change_exhaust():
	texture = load(image_path + turbo_status[current_turbo] + "/Exhaust1/" + images[current_image])
	current_image += 1
	if current_image >= 4:
		current_image = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	change_exhaust()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("right"):
		current_turbo = 1
	else:
		current_turbo = 0
		
	change_exhaust()
