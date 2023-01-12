extends RigidBody2D

var speed = 200.0
var isOpened = false

export(Vector2) var velocity = Vector2.ZERO
export(bool) var isMoving = false

export(bool) var isMovingUp = false

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func _input(event):
	if event is InputEventKey:
		if event.pressed and ((event.scancode == KEY_O and !isOpened) or (event.scancode == KEY_C and isOpened)):
			toogle_lift()
				
func move_up():
	velocity.y = -1.0
	isMoving = true
	isMovingUp = true
	
func move_down():			
	velocity.y = 1.0
	isMoving = true
	isMovingUp = false

func stop():
	velocity.y = 0.0
	isMoving = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func toogle_lift():
	$LiftSprite.play("open_close", isOpened)
	isOpened = !isOpened

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position += velocity*speed*delta
