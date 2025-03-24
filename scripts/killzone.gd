extends Area2D

var slimedamage = 500
#@onready var gm = %GameManager



func _on_body_entered(body: Node2D) -> void:
	pass
	#gm.damageplayer(slimedamage)


func _on_timer_timeout() -> void:
	Engine.time_scale = 1
	get_tree().reload_current_scene()
