extends RichTextLabel

var dialog = [">Ah, I see the new human I ordered has arrived. Welcome 37.",">You might ask why 37? Well you are the 37th human I have ordered to be a chef. I shall now show you the duties in which you will uphold.", ">Now, do try and keep up. You’re a chef now. Gosh, you humans really are slow to process things… But it is rather cute...", ">Anyways, here are your instructions. The restaurant opens at sunset. Do not be another disappointment."]
var page = 0

func _ready():
	set_bbcode(dialog[page])
	set_visible_characters(0)
	set_process_input(true)
	
func _input(event):
	if event is InputEventMouseButton and event.is_pressed():
		if get_visible_characters() > get_total_character_count():
			if page < dialog.size()-1:
				page += 1
				set_bbcode(dialog[page])
				set_visible_characters(0)
			else:
				get_tree().change_scene("res://Scenes/UI/Instructions.tscn")
		
		

func _on_Timer_timeout():
	set_visible_characters(get_visible_characters()+1)
