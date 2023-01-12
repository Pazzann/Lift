extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var floor_n = 0

func _input(event):
	if event is InputEventKey:
		if event.pressed and event.scancode == KEY_ESCAPE:
			get_tree().quit()
		elif !$Lift.isMoving and event.pressed:
			if event.scancode == KEY_UP and floor_n != 7:
				$Lift.move_up()
				floor_n += 1
			elif event.scancode == KEY_DOWN and floor_n != 0:
				$Lift.move_down()
				floor_n -= 1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_LiftTrigger_area_entered(body):
	$Lift.stop()
