extends Node

var score = 0
@onready var label = %ScoreLabel
@onready var timer = %Timer
var health = 1000
func damageplayer(damage):
	health -= damage
	if health >= 0:
		timer.start()
		Engine.time_scale = 0.1
	

func addscore():
	score += 1
	label.text = "Coins:  " + str(score)
