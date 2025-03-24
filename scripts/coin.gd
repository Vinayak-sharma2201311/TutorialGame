extends Area2D

@onready var gm = %GameManager
@onready var anim = $AnimationPlayer


func _on_body_entered(body: Node2D) -> void:
	gm.addscore()
	anim.play("pickup")
