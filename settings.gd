extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func _input(event):
	if event is InputEventKey:
		if event.pressed and event.scancode == KEY_ESCAPE:
			get_tree().quit()


# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("GEN_TIME_value").text = str(Global.GEN_TIME)
	get_node("HAPPY_TIME_value").text = str(Global.HAPPY_TIME)
	get_node("MAX_QUEUE_COUNT_value").text = str(Global.MAX_QUEUE_COUNT)
	get_node("MAX_QUEUE_TIME_value").text = str(Global.MAX_QUEUE_TIME)
	get_node("PLACE_COUNT_value").text = str(Global.PLACE_COUNT)
	get_node("REPAIR_TIME_value").text = str(Global.REPAIR_TIME)
	get_node("TARGET_THANKS_value").text = str(Global.TARGET_THANKS)
	get_node("PASSENGERS_LOST_ALLOWED_value").text = str(Global.PASSENGERS_LOST_ALLOWED)



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass



func _on_MAX_QUEUE_COUNT_add_pressed():
	Global.MAX_QUEUE_COUNT += 1
	get_node("MAX_QUEUE_COUNT_value").text = str(Global.MAX_QUEUE_COUNT)


func _on_MAX_QUEUE_COUNT_minus_pressed():
	if Global.MAX_QUEUE_COUNT > 1:
		Global.MAX_QUEUE_COUNT -= 1
	get_node("MAX_QUEUE_COUNT_value").text = str(Global.MAX_QUEUE_COUNT)


func _on_MAX_QUEUE_TIME_add_pressed():
	Global.MAX_QUEUE_TIME += 1
	get_node("MAX_QUEUE_TIME_value").text = str(Global.MAX_QUEUE_TIME)


func _on_MAX_QUEUE_TIME_minus_pressed():
	if Global.MAX_QUEUE_TIME > 1:
		Global.MAX_QUEUE_TIME -= 1
	get_node("MAX_QUEUE_TIME_value").text = str(Global.MAX_QUEUE_TIME)


func _on_Play_pressed():
	get_tree().change_scene("Main.tscn")


func _on_PLACE_COUNT_add_pressed():
	Global.PLACE_COUNT += 1
	get_node("PLACE_COUNT_value").text = str(Global.PLACE_COUNT)


func _on_PLACE_COUNT_minus_pressed():
	if Global.PLACE_COUNT > 1:
		Global.PLACE_COUNT -= 1
	get_node("PLACE_COUNT_value").text = str(Global.PLACE_COUNT)



func _on_REPAIR_TIME_add_pressed():
	Global.REPAIR_TIME += 1
	get_node("REPAIR_TIME_value").text = str(Global.REPAIR_TIME)


func _on_REPAIR_TIME_minus_pressed():
	if Global.REPAIR_TIME > 0:
		Global.REPAIR_TIME -= 1
	get_node("REPAIR_TIME_value").text = str(Global.REPAIR_TIME)


func _on_HAPPY_TIME_add_pressed():
	Global.HAPPY_TIME += 1
	get_node("HAPPY_TIME_value").text = str(Global.HAPPY_TIME)


func _on_HAPPY_TIME_minus_pressed():
	if Global.HAPPY_TIME > 1:
		Global.HAPPY_TIME -= 1
	get_node("HAPPY_TIME_value").text = str(Global.HAPPY_TIME)


func _on_GEN_TIME_add_pressed():
	Global.GEN_TIME += 1
	get_node("GEN_TIME_value").text = str(Global.GEN_TIME)


func _on_GEN_TIME_minus_pressed():
	if Global.GEN_TIME > 1:
		Global.GEN_TIME -= 1
	get_node("GEN_TIME_value").text = str(Global.GEN_TIME)



func _on_TARGET_THANKS_add_pressed():
	Global.TARGET_THANKS += 1
	get_node("TARGET_THANKS_value").text = str(Global.TARGET_THANKS)


func _on_TARGET_THANKS_minus_pressed():
	if Global.TARGET_THANKS > 1:
		Global.TARGET_THANKS -= 1
	get_node("TARGET_THANKS_value").text = str(Global.TARGET_THANKS)


func _on_PASSENGERS_LOST_ALLOWED_add_pressed():
	Global.PASSENGERS_LOST_ALLOWED += 1
	get_node("PASSENGERS_LOST_ALLOWED_value").text = str(Global.PASSENGERS_LOST_ALLOWED)


func _on_PASSENGERS_LOST_ALLOWED_minus_pressed():
	Global.TARGET_THANKS -= 1
	get_node("TARGET_THANKS_value").text = str(Global.TARGET_THANKS)
