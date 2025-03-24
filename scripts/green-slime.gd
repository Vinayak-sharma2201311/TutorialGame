extends Node2D

var speed = 45
var direction = 1

@onready var rcr = $Killzone/RayCastRight
@onready var rcl = $Killzone/RayCastLeft
@onready var sprite = $AnimatedSprite2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if rcr.is_colliding():
		direction = -1
		sprite.flip_h = true
	if rcl.is_colliding():
		direction = 1
		sprite.flip_h = false


	position.x += direction * speed * delta
