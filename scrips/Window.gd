extends Node2D

var good = false
signal tutorial


func _on_Bell_sumbitOrder():
	if good == false:
		print("Fail")
		get_tree().change_scene("res://Scenes/UI/ThanksForPlayingFail.tscn") 
	else:
		print("Pass")
		get_tree().change_scene("res://Scenes/UI/ThanksForPlayingPass.tscn") 
	
	

func _on_Plate_good():
	print("good")
	good = true
