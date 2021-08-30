extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
signal LeftSide
signal RightSide
var mySpeed = 4
var myDirection = "Stop"
var runTime = 0
var thecenter = true
var sleeping = false
var isWakingUp = false
var isMoving = false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func eleMove():
	
	match myDirection:
		"Left":
			position.x -= mySpeed
		"Right":
			position.x += mySpeed

func moveLeft():
	
		get_node("anime").play("run")
		thecenter = false
		scale.x = 1
		myDirection = "Left"
	
	
func moveRight():
		
		get_node("anime").play("run")
		thecenter = false
		myDirection = "Right"
		scale.x = -1
	
	
func sleep():
	get_parent().get_node("roots").hasWorked = false
	sleeping = true 
	thecenter = false
	if (myDirection == "Right"):
		scale.x = -1	
	get_node("anime").play("Sleep")
	get_node("SleepTimer").start()
	isWakingUp = false



func WakeUp():
	if (sleeping == false):
		isWakingUp = true
	sleeping = false
	get_node("SleepTimer").stop()

	if (isWakingUp == false):
		get_node("anime").play_backwards("Sleep")
		print("should be once")
		get_node("SleepTimer").start()

	if (isWakingUp == true):
		get_parent().get_node("MainScene/Arrow").visible = true
		get_parent().get_node("MainScene/Arrow2").visible = true







func boundPressed():
	get_parent().get_node("speechBubble").Talk(get_parent().get_node("roots").spch1)

func _process(delta):
	if (myDirection != "Stop"):
		get_parent().get_node("MainScene/butSleep").visible = false

	if (sleeping == false):
		if (thecenter == true && position.x >= 500 && position.x <= 550):
			myDirection = "Stop"
			get_node("anime").stop(true)
			if (get_parent().get_node("MainScene").visible == true):
				get_parent().get_node("MainScene/butSleep").visible = true
		

	if position.x <= 0:
		print("left")
		emit_signal("LeftSide")

	if position.x >= 960:
		print("right")
		emit_signal("RightSide")

	runTime +=delta
	if (runTime >= 0.01):
		eleMove()
		runTime = 0
