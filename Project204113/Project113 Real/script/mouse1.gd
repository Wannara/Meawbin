extends Node2D

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)


func _process(delta):
	position = get_global_mouse_position()

	if Input.is_action_just_pressed("Left_Mouse"):
		$Sound.play()
	pass
