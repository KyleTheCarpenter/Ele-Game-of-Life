extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.
func signPressed():
	get_parent().get_node("speechBubble").Talk("I can buy\nstuff for my\nHouse at the Shops")
	
func butSleepPressed():
	get_parent().get_node("roots").Sleep()
	$Arrow.visible = false
	$Arrow2.visible = false
	$butSleep.visible = false

func hideSleep():
	$butSleep.visible = false
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
