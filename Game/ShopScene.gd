extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var gateOpen = false
var tent = "null"
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func LoadTrade():
	get_parent().setScene("Trade")
	get_parent().get_node("TradeScene").LoadScreen()



func tent1Pressed():
	tent = "tent1"
	LoadTrade()

func tent2Pressed():
	tent = "tent2"
	LoadTrade()

func tent3Pressed():
	tent = "tent3"
	LoadTrade()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
