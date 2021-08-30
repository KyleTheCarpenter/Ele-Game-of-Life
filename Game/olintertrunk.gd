extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var moveTime = 0
var counter = 0
var tail = false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	moveTime += delta
	if (moveTime >= 0.1):
		if (tail == false):
			counter +=1
			rotation+=0.01
		elif (tail == true):
			counter -=1
			rotation-=0.01

		if (counter >=10):
			tail = true
		elif (counter <=-10):
			tail = false
		moveTime = 0