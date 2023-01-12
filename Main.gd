extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func _input(event):
	if event is InputEventKey:
		if event.pressed and event.scancode == KEY_ESCAPE:
			get_tree().quit()

# Called when the node enters the scene tree for the first time.
func _ready():
	$Lift.position = $LiftPos.position

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
