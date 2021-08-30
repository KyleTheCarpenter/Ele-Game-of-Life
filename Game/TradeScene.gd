extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var roots

# Called when the node enters the scene tree for the first time.
func _ready():
	roots = get_parent().get_node("roots")

func LoadScreen():
	match get_parent().get_node("ShopScene").tent:
		"tent1":
			get_node("tentSymbol").play("tent1")
			get_node("BuyList1").visible = true
			get_node("dataInfo").text = "I Sell Great\nDecorations for you!"
			
		"tent2":
			get_node("tentSymbol").play("tent2")
			get_node("dataInfo").text = "I Upgrade \nyour House"
		"tent3":
			get_node("tentSymbol").play("tent3")
			get_node("dataInfo").text = "I Sell Crafting \nMaterials"


func setPurchase():
	get_node("checker").visible = true
	get_node("finishText").text = get_parent().get_node("roots").currentItem.name
	

func cancelPurchase():
	get_node("checker").visible = false
	get_node("finishText").text = ""
	get_parent().get_node("roots").currentItem.name = ""
	get_parent().get_node("roots").currentItem.price = 0


func finishBuyPressed():
	BuyItem()

func finishCancelPressed():
	cancelPurchase()

func butExitPressed():
	
	get_node("BuyList1").visible = false

	get_parent().setScene("Shop")
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	$dataMoney.text = get_parent().get_node("ScoreCard/dataMoney").text


func BuyItem():
	roots.money -= roots.currentItem.price
	roots.currentItem.bought = true
	get_parent().get_node("MainScene/sign").visible = false
	match roots.currentItem.name:
		"Flower Pot":
			get_node("BuyList1/buy1").visible = false  
			
			get_parent().get_node("MainScene/Items/Plant").visible = true
		"Bed":
			get_node("BuyList1/buy2").visible = false
			get_parent().get_node("MainScene/Items/Bed").visible = true
		"Flag Pole":
			get_node("BuyList1/buy3").visible = false
			get_parent().get_node("MainScene/Items/FlagPole").visible = true
		"Tree Pack":
			get_node("BuyList1/buy4").visible = false
			get_parent().get_node("MainScene/Items/trees").visible = true
		"Rock Pack":
			get_node("BuyList1/buy5").visible = false
			get_parent().get_node("MainScene/Items/rocks").visible = true
	
	cancelPurchase()
	