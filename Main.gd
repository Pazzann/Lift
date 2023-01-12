extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var floor_n = 0

func _input(event):
	if event is InputEventKey:
		if event.pressed and event.scancode == KEY_ESCAPE:
			get_tree().quit()
		elif event.pressed and event.scancode == KEY_S:
			$Lift.stop()
		elif !$Lift.isMoving and event.pressed:
			if event.scancode == KEY_UP and floor_n < 7:
				$Lift.move_up()
			elif event.scancode == KEY_DOWN and floor_n > 0:
				$Lift.move_down()

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if $Lift.position.y >= 480:
		$Lift.position.y -= 1
		$Lift.stop()
		
	if $Lift.position.y <= -480:
		$Lift.position.y += 1
		$Lift.stop()
	
	floor_n = round(($Lift.position.y / 150)) + 3
	Global.LIFT_FLOOR = floor_n
	
func random_person():
	print("hgf")
	var anchor_name = "s" + String(randi() % 9)
	var anchor = get_node(anchor_name)
	var node = preload("res://Prefabs/Liver.tscn").instance()
	
	print(anchor_name)
	print(node)
	
	anchor.add_child(node)
	

func _on_LiftTrigger_area_entered(body, i):
	pass
	#if !$Lift.isMoving:
	#	return
	
	#if $Lift.isMovingUp:
	#	floor_n += 1
	#elif !$Lift.isMovingUp:
	#	floor_n -= 1
		
	#floor_n = round(($Lift.position.y / 150))
	#print(floor_n)

func _on_Timer_timeout():
	random_person()
