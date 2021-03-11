extends Node2D

func _ready():
	pass

func _on_Area2D_area_entered(area):
	#Copper
	if  area.is_in_group("Copper"):
		area.get_node("spr").texture = load("res://assets/patty.png")
		area.add_to_group("Patty")
		print("Copper")
	#Iron
	if area.is_in_group("Iron"):
		area.get_node("spr").texture = load("res://assets/wasshers.png")
		area.add_to_group("Wasshers")
		print("Iron")
	#Glass
	if area.is_in_group("Glass"):
		print("Glass")
	pass # Replace with function body.
