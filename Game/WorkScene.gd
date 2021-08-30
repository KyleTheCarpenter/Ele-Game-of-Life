extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var roots

# Called when the node enters the scene tree for the first time.
func _ready():
	roots = get_parent().get_node("roots")


func workPressed():
	if (roots.hasWorked == false):
		visible = false
		get_parent().get_node("Elephant").visible = false
		get_parent().get_node("ScoreCard").visible = false
		match roots.jobLevel:
			0:
			
				
				get_parent().get_node("roots").jobLevel = 1
				get_parent().get_node("roots").myStatus = "Barley-Employed"
				get_parent().get_node("ScoreCard").setTitle()
				get_parent().get_node("Interview").visible = true
				
			1: 
				get_parent().get_node("WorkingScene").visible = true
				get_parent().get_node("WorkingScene/Timer").start()
				get_parent().get_node("WorkingScene/anime").play("work1")
				roots.money += 15


	if (roots.hasWorked == true):
		get_parent().get_node("speechBubble").Talk("Il come back\ntommorrow")
		

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
