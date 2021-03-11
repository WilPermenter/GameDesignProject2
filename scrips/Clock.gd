extends Node2D

var curTimeM = 0
var curTimeH = 0
var DisplayValue = "00:00"

onready var timer = get_node("Timer")

func _ready():
	timer.set_wait_time(1)
	timer.start()

func setToZero():
	curTimeM = 0
	curTimeH = 0

func _on_Timer_timeout():
	checkEventTime()
	curTimeM += 1
	if curTimeM >= 60:
		curTimeH += 1
		curTimeM = 0
	if curTimeH > 9:
		DisplayValue = str(curTimeH) + ":"
	else:
		DisplayValue = "0" + str(curTimeH) + ":"
	
	if curTimeM > 9:
		DisplayValue += str(curTimeM) 
	else:
		DisplayValue += "0" + str(curTimeM)
		

func checkEventTime():
	if curTimeH == 2:
		get_tree().change_scene("res://Scenes/UI/ThanksForPlayingFail.tscn") 
