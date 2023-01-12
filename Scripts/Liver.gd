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
	var livers = get_parent().get_children()
	for liver in livers:
		if(liver.inQueue):
				(liver.get_child(1) as CollisionShape2D).disabled = true;
				liver.position += Vector2(rand_range(50, 100), 0)
				(liver.get_child(1) as CollisionShape2D).disabled = false;
	

func SetCurrFloor():
	currFloor = Global.LIFT_FLOOR;
	
	if(floorNumber == currFloor && Global.IS_OPENNED_DOOR):
		Global.TOTAL_THANKS+=1
		if(happy):
			Global.TOTAL_THANKS+=1
		queue_free()





# Called when the node enters the scene tree for the first time.
func _ready():
	currFloor = round(position.y / 150 + 3)
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
		SetCurrFloor()
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
		var livers = get_parent().get_children()
		for liver in livers:
			if(liver.inQueue):
				(liver.get_child(1) as CollisionShape2D).disabled = true;
				liver.position += Vector2(25, 0)
				(liver.get_child(1) as CollisionShape2D).disabled = false;

			
		Global.PASSENGERS_LOST += 1
		queue_free();
	print(Global.IS_OPENNED_DOOR)
	print(currFloor)
	print(Global.LIFT_FLOOR)
	if(currFloor == 8-Global.LIFT_FLOOR && Global.IS_OPENNED_DOOR):
		LiftMove()
