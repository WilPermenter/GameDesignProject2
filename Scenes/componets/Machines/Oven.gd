extends Node2D

var copper 
var iron 
var glass

func _ready():
	pass

func _on_Area2D_area_entered(area):
	#Copper
	if  area.is_in_group("Patty"):
		#area.get_node("spr").texture = load("res://assets/clear.png")
		copper = area.get_parent()
		print("Copper")
	#Iron
	if area.is_in_group("Buns"):
		#area.get_node("spr").texture = load("res://assets/clear.png")
		iron = area.get_parent()
		print("Iron")
	#Glass
	if area.is_in_group("SGlass"):
		#area.get_node("spr").texture = load("res://assets/clear.png")
		glass = area.get_parent()
		print("Glass")
		
	if copper and glass and iron:
		print("burger created")
		call_deferred("_deferred_spawn")
		iron.free()
		copper.free()
		glass.free()
	
func _deferred_spawn():
		var entity = load("res://Scenes/componets/FoodItems/CookedHamburger.tscn")
		var burger = entity.instance()
		burger.set_name("burger")
		add_child(burger)
	
