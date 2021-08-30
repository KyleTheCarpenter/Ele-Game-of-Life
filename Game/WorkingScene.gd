extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func workDone():
	visible = false
	.get_node("Timer").stop()
	get_parent().get_node("roots").Work()
	get_parent().get_node("ScoreCard").visible = true
	get_parent().get_node("WorkScene").visible = true
	get_parent().get_node("Elephant").visible = true
	print ("worked")
	#match get_parent().get_node("roots").workDays:
	get_parent().get_node("speechBubble").Talk("Another Day\nAnother Dollar")



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
