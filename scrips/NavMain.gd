extends Control

signal map_location(mapLocation)

var mapLocation = 0


func _on_Oven_pressed():
	mapLocation = -1575
	emit_signal("map_location",mapLocation)

func _on_Fridge_pressed():
	mapLocation = -3150
	emit_signal("map_location",mapLocation)

func _on_Work_pressed():
	mapLocation = -4725
	emit_signal("map_location",mapLocation)


func _on_Window_pressed():
	mapLocation = 0
	emit_signal("map_location",mapLocation)	
