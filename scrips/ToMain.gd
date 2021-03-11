extends Node2D

func _ready():
	set_process_input(true)
	
func _input(event):
	if event is InputEventMouseButton and event.is_pressed():
		get_tree().change_scene("res://Scenes/UI/Main.tscn")
	
	

