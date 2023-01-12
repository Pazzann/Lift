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
	get_node("TotalThanks_value").text = str(Global.TOTAL_THANKS)
	get_node("Lost_value").text = str(Global.PASSENGERS_LOST)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	get_node("TotalThanks_value").text = str(Global.TOTAL_THANKS)
	get_node("Lost_value").text = str(Global.PASSENGERS_LOST)
	if Global.TOTAL_THANKS >= Global.TARGET_THANKS:
		get_tree().change_scene("Win.tscn")
	if Global.PASSENGERS_LOST > Global.PASSENGERS_LOST_ALLOWED:
		get_tree().change_scene("Lost.tscn")
