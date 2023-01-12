extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	get_node("MAX_QUEUE_COUNT_value").text = str(Global.MAX_QUEUE_COUNT)


func _on_MAX_QUEUE_COUNT_add_pressed():
	get_node("/root/Constants.tscn").myConstant = 1
	#get_node("MAX_QUEUE_COUNT_value").text = str(Global.MAX_QUEUE_COUNT)


func _on_MAX_QUEUE_COUNT_minus_pressed():
	Global.MAX_QUEUE_COUNT -= 1
	get_node("MAX_QUEUE_COUNT_value").text = str(Global.MAX_QUEUE_COUNT)


func _on_MAX_QUEUE_TIME_add_pressed():
	Global.MAX_QUEUE_TIME += 1
	get_node("MAX_QUEUE_TIME_value").text = str(Global.MAX_QUEUE_TIME)


func _on_MAX_QUEUE_TIME_minus_pressed():
	Global.MAX_QUEUE_TIME -= 1
	get_node("MAX_QUEUE_TIME_value").text = str(Global.MAX_QUEUE_TIME)
