extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.

func _ready():
	$score.set_text(str(global.score))
	
	var old_highscore = int(global.read_savegame());
	
	if (old_highscore < global.score):
		global.save(str(global.score))
		
	$high_score.set_text(str("High Score : ", (int(global.read_savegame()))))
	$answer.set_text(str("Answer : ",global.word.capitalize()))
	set_process(true)


func _process(delta):
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_home_button_pressed():
	get_tree().change_scene("res://scene/Control.tscn")
	pass # Replace with function body.


func _on_replay_button_pressed():
	get_tree().change_scene("res://scene/main.tscn")
	pass # Replace with function body.
