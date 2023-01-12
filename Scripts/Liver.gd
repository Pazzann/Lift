extends Node

var time = 0
var happyTime = 0
var maxQueueTime = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	happyTime = Global.MAX_QUEUE_COUNT
	maxQueueTime = Global.MAX_QUEUE_TIME


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	time += delta;
	
func _checkLeave():
	pass
