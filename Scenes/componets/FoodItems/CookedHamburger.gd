extends Node2D

var isReady = false
var isBurnt = false
var created
var takenOut
var timeInSec
var timeInMin
var done = false

func _ready():
	created = OS.get_time()
	

func _on_Area2D_input_event(_viewport, _event, _shape_idx):
		if not done:	
			if Input.is_action_just_pressed("click") and takenOut == null:
				takenOut = OS.get_time()
			if takenOut == null:
				return
			
			timeInMin = takenOut.minute - created.minute
			timeInSec = (takenOut.second - created.second) + (timeInMin * 60)
			if timeInSec > 10:
				isReady = true
			if timeInSec > 25:
				isBurnt = true
			print(isReady)
			print(isBurnt)
			print(timeInSec)
			done = true
