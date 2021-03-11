extends Node2D

func _ready():
	pass # Replace with function body.


func _on_Area2D_area_entered(area):
	#Copper
	if  area.is_in_group("Copper"):
		area.get_node("spr").texture = load("res://assets/lettus.png")
		area.add_to_group("lettus")
		print("Copper")
	#Iron
	if area.is_in_group("Iron"):
		area.get_node("spr").texture = load("res://assets/buns.png")
		area.add_to_group("Buns")
		print("Iron")
	#Glass
	if area.is_in_group("Glass"):
		print("Glass")

