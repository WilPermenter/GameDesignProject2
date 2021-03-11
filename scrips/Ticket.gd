extends Node2D

var ticket

func _ready():
	ticket = get_tree().get_nodes_in_group("ticket")[0]
	ticket.hide()

func _on_Area2D_mouse_entered():
	ticket.show()


func _on_Area2D_mouse_exited():
	ticket.hide()
