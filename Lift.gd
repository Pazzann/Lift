extends RigidBody2D

var speed = 200.0
var isOpened = false

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func _input(event):
	if event is InputEventKey:
		if event.pressed and ((event.scancode == KEY_O and !isOpened) or (event.scancode == KEY_C and isOpened)):
			toogle_lift()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func toogle_lift():
	$LiftSprite.play("open_close", isOpened)
	isOpened = !isOpened

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("lift_up"):
		position.y -= delta*speed
	
	if Input.is_action_pressed("lift_down"):
		position.y += delta*speed
