extends Node

var score = 0 
@onready var score_lable = $"../player/Camera2D/ScoreLable"

func add_point():
	score += 1
	score_lable.text = "coins = " + str(score)
