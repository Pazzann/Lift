extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


func _input(event):
	if event is InputEventKey:
		if event.pressed and event.scancode == KEY_ESCAPE:
			get_tree().quit()



func _on_Restart_pressed():
	get_tree().change_scene("res://settings.tscn")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
