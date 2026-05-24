extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	change_scene()


func _on_cliffside_transition_point_body_entered(body):
	if body.has_method("player"):
		glopal.transition_scene = true


func _on_cliffside_transition_point_body_exited(body):
	if body.has_method("player"):
		glopal.transition_scene = false

func change_scene():
	if glopal.transition_scene == true:
		if glopal.current_scene == "world":
			get_tree().change_scene_to_file("res://sence/cliff_side.tscn")
			glopal.finish_changescenes()
