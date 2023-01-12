extends KinematicBody2D

var time = 0
var happyTime = 0
var maxQueueTime = 0
var maxQueueCount = 0
var happy = true
var isLeaving = false
var inQueue = false
var moveIntoALift = false
var moveFromLift = false
var floorNumber
var currFloor;
onready var animation = get_child(0) as AnimatedSprite


func LiftMove():
	moveIntoALift = true
	var collisionShape = get_child(1) as CollisionShape2D
	collisionShape.disabled = true
	move_and_collide(Vector2(10, 0))
	var livers = get_parent().get_children()
	for liver in livers:
		liver.moveInQueue()
	

func SetCurrFloor(floornum,isOpenedDoor):
	if(floorNumber == floornum && isOpenedDoor):
		Global.TOTAL_THANKS+=1
		if(happy):
			Global.TOTAL_THANKS+=1
		queue_free()
	else:
		currFloor = floornum





# Called when the node enters the scene tree for the first time.
func _ready():
	happyTime = Global.HAPPY_TIME
	maxQueueTime = Global.MAX_QUEUE_TIME
	maxQueueCount = Global.MAX_QUEUE_COUNT
	animation.self_modulate = Color(1, 2, 1, 1)
	animation.play("walk")
	floorNumber = round(rand_range(1, 8))
	var label = get_child(2) as Label
	label.text = str(floorNumber)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (moveIntoALift):
		return
	time += delta
	
	if(inQueue):
		checkLeave()
	else:
		var velocity = Vector2(0, 0);
		velocity = move(velocity)	
		var collision_info = move_and_collide(velocity)
		if (collision_info): 
			inQueue = true
			animation.play("idle")
	
func move(velocity):
	velocity = Vector2(0.5, 0);
	var parent = get_parent()
	var waiter_count = parent.get_child_count();
	if(waiter_count > maxQueueCount):
		Global.PASSENGERS_LOST += 1
		queue_free()
		return
	return velocity
	

func moveInQueue():
	inQueue = false
	
func checkLeave():
	if(time > happyTime):
		happy = false
		animation.self_modulate = Color(1, 1, 1, 1)
	if(time > maxQueueTime):
		Global.PASSENGERS_LOST += 1
		queue_free();
