extends Node2D

func _on_NavMain_map_location(mapLocation):
	self.position.x = mapLocation
	
