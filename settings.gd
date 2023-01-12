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
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	get_node("MAX_QUEUE_COUNT_value").text = str(Global.MAX_QUEUE_COUNT)


func _on_MAX_QUEUE_COUNT_add_pressed():
	Global.MAX_QUEUE_COUNT += 1
	get_node("MAX_QUEUE_COUNT_value").text = str(Global.MAX_QUEUE_COUNT)


func _on_MAX_QUEUE_COUNT_minus_pressed():
	Global.MAX_QUEUE_COUNT -= 1
	get_node("MAX_QUEUE_COUNT_value").text = str(Global.MAX_QUEUE_COUNT)


func _on_MAX_QUEUE_TIME_add_pressed():
	Global.MAX_QUEUE_TIME += 1
	get_node("MAX_QUEUE_TIME_value").text = str(Global.MAX_QUEUE_TIME)


func _on_MAX_QUEUE_TIME_minus_pressed():
	Global.MAX_QUEUE_TIME -= 1
	get_node("MAX_QUEUE_TIME_value").text = str(Global.MAX_QUEUE_TIME)


func _on_Play_pressed():
	get_tree().change_scene("Main.tscn")


func _on_PLACE_COUNT_add_pressed():
	Global.PLACE_COUNT += 1
	get_node("PLACE_COUNT_value").text = str(Global.PLACE_COUNT)


func _on_PLACE_COUNT_minus_pressed():
	Global.PLACE_COUNT -= 1
	get_node("PLACE_COUNT_value").text = str(Global.PLACE_COUNT)

