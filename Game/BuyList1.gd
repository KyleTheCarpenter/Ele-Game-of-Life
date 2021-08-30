extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var roots

class purchase:
	var name = "non"
	var price = 0
	var bought = false
	func init(arg,arg2):
		name = arg
		price = arg2

var flowerpot = purchase.new()
var bed = purchase.new()
var flagpole = purchase.new()
var treePack = purchase.new()
var rockPack = purchase.new()
	

# Called when the node enters the scene tree for the first time.
func _ready():
	roots = get_parent().get_parent().get_node("roots")
	flowerpot.init("Flower Pot",35)
	bed.init("Bed",55)
	flagpole.init("Flag Pole",80)
	treePack.init("Tree Pack",140)
	rockPack.init("Rock Pack",65)
	

func CheckPurchase(arg):
	if (arg <= roots.money):
		return true
	else:
		return false


func buyItem(arg):
	if (CheckPurchase(arg.price)):
		print ("pressed sent to big")
		roots.currentItem.price = arg.price
		roots.currentItem.name = arg.name
		get_parent().setPurchase()
	else:
		print ("not enough")


func but1Pressed(): buyItem(flowerpot)
func but2Pressed(): buyItem(bed)
func but3Pressed(): buyItem(flagpole)
func but4Pressed(): buyItem(treePack)
func but5Pressed(): buyItem(rockPack)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
