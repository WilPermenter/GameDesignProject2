extends Node2D

var good = false
signal good

func _on_Area2D_area_entered(area):
	
	if area.get_parent().get_parent().isReady and not area.get_parent().get_parent().isBurnt:
		emit_signal("good")
