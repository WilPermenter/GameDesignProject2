extends Node2D

func _ready():
	pass


func _on_Area2D_area_entered(area):
	#Copper
	if  area.is_in_group("Copper"):
		print("Copper")
	#Iron
	if area.is_in_group("Iron"):
		print("Iron")
	#Glass
	if area.is_in_group("Glass"):
		area.get_node("spr").texture = load("res://assets/glassshaveings.png")
		area.add_to_group("SGlass")
		print("Glass")
	pass # Replace with function body.
