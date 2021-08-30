extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var scene = "Main"

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("MainScene").visible = true
	get_node("Elephant").visible = true
	get_node("ScoreCard").visible = true


func sceneLeft():
	get_node("Elephant").position.x = 900
	get_node("Elephant").thecenter = true
	match scene:
		"Main": 
			setScene("Work")
		"Shop": 
			setScene("Main")
		

func sceneRight():
	get_node("Elephant").position.x = 50
	get_node("Elephant").thecenter = true
	match scene:
		"Main": 
			setScene("Shop")
		"Work": 
			setScene("Main")
		




func setScene(arg):
	scene = arg
	get_node("HomeScene").visible = false
	get_node("ShopScene").visible = false
	get_node("WorkScene").visible = false
	get_node("MainScene").visible = false
	get_node("TradeScene").visible = false
	match arg:
		"Trade":
			get_node("TradeScene").visible = true
		"Main": 	
			get_node("MainScene").visible = true
		"Shop": 	
			get_node("ShopScene").visible = true
		"Work": 	
			get_node("WorkScene").visible = true
		"Base": 	
			get_node("MainScene").visible = true
			
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func but2Pressed():
	pass # Replace with function body.


func but5Pressed():
	pass # Replace with function body.
