extends RigidBody2D

var speed = 200.0

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("lift_up"):
		position.y -= delta*speed
	
	if Input.is_action_pressed("lift_down"):
		position.y += delta*speed
