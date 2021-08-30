extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func setTitle():
	get_node("dataStatus").text =get_parent().get_node("roots").myStatus

func setDay():
	get_node("dataDay").text = str(get_parent().get_node("roots").Day)

func setMoney():
	get_node("dataMoney").text = "$"+str(get_parent().get_node("roots").money)
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	setMoney()
		
