extends Node


# Declare member variables here. Examples:
var hasWorked = false
var workDays = 0
var Day = 1
var money = 100

var jobLevel = 0
var myStatus = "Unemployed"
const spch1 = "Hello my name\n is Thomas."
class purchase:
	var name = "non"
	var price = 0
	var bought = false
	func init(arg,arg2):
		name = arg
		price = arg2
var currentItem = purchase.new()
# Called when the node enters the scene tree for the first time.
func _ready():
	currentItem.init("non",0)
	pass # Replace with function body.

func Work():
	hasWorked = true
	workDays += 1

func Sleep():
	Day+=1
	hasWorked = false
	get_parent().get_node("Elephant").sleep()
	print("zzz")
	get_parent().get_node("ScoreCard").setDay()
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
