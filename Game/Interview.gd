extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func exitInterview():
	onFinished()
	get_parent().get_node("roots").Work()


func onFinished():
	visible = false
	get_parent().get_node("ScoreCard").visible = true
	get_parent().get_node("WorkScene").visible = true
	get_parent().get_node("Elephant").visible = true
	print ("finished")
	
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
