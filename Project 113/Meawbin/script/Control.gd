extends Control


func _on_play_button_pressed():
	get_tree().change_scene("res://scene/main.tscn")
	pass # Replace with function body.



func _on_aboutus_button_pressed():
	get_tree().change_scene("res://scene/credit1.tscn")
	pass # Replace with function body.


func _ready():
	#$high_score.set_text(str("High Score : ", (int(global.read_savegame()))))
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	
	
#func _process(delta):
	get_global_mouse_position()
	
	if Input.is_action_just_pressed("Left_Mouse"):
		$Sound.play()
	pass
