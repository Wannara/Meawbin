extends Node2D

var text = ""
var word = "cat"
var word_list = [["yes","wow"],["Boo","hooman"],["what","no way"]]
var timer = 0
var rand = 0

func _on_Sprite_texture_changed():
	pass # Replace with function body.
	

func _on_ok_pressed():
	text = get_node("write_down").get_text()
	if text.to_lower() == word:
		get_tree().change_scene("res://main.tscn")
	else:
		get_node("Label").set_text("wrong, try again.")
	pass # Replace with function body.

func _randomize_my_variable():
	rand = rand_range(0,len(word_list))
	return int(rand)

func _on_Timer_timeout():
	timer += 1
	#print(timer)
	pass # Replace with function body.

func _process(delta):
	if timer <= 10:
		rand = rand_range(0,len(word_list))
		print(int(rand))
		
	#$show.set_text(word)
	pass
#func random_word(word_list):