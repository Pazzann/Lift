extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var happyTime = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	happyTime = get_node("/root/Constants")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
