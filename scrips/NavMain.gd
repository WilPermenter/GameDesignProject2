extends Control

signal map_location(mapLocation)

var mapLocation = 0


func _on_Oven_pressed():
	$nav/click.play()
	mapLocation = -1575
	emit_signal("map_location",mapLocation)

func _on_Fridge_pressed():
	$nav/click.play()
	mapLocation = -3150
	emit_signal("map_location",mapLocation)

func _on_Work_pressed():
	$nav/click.play()
	mapLocation = -4725
	emit_signal("map_location",mapLocation)


func _on_Window_pressed():
	$nav/click.play()
	mapLocation = 0
	emit_signal("map_location",mapLocation)	
