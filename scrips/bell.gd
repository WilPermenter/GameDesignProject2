extends Node2D


var submitOrder = true
signal sumbitOrder

func _on_Area2D_input_event(viewport, event, shape_idx):
	if Input.is_action_just_pressed("click"):
			emit_signal("sumbitOrder")

