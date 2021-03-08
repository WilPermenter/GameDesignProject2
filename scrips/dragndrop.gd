extends Node2D

var selected = false

var rest_point
var rest_nodes = []

func _ready():
	rest_nodes = get_tree().get_nodes_in_group("zone")
	rest_point = findClosestNode()
	rest_nodes[0].select()

#Select/Deselect When Clicked + Snap Call
func _on_Area2D_input_event(_viewport, _event, _shape_idx):
	if Input.is_action_just_pressed("click"):
		selected = true
	if Input.is_action_just_released("click"):
		selected = false
		findClosestNode()
	
		
#Follow Mouse
func _physics_process(delta):
	if selected: 
		global_position = lerp(global_position, get_global_mouse_position(), 25 * delta)
	else:
		if rest_point != null:
			global_position = Vector2(rest_point)

#Node Go back
func findClosestNode():
	var shortest_dist = 100000
	for child in rest_nodes:
		var distance = global_position.distance_to(child.global_position)
		if distance <  shortest_dist:
			child.select()
			rest_point = child.global_position
			shortest_dist = distance
