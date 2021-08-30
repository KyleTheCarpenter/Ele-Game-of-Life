extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
func Talk(arg):
	get_parent().get_node("speechBubble").visible = true
	get_parent().get_node("speechBubble/speech").text = arg
	get_parent().get_node("speechBubble/Timer").start()
	
func whenDone():
	visible = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	position.x =get_parent().get_node("Elephant").position.x
	position.y =get_parent().get_node("Elephant").position.y - 150