extends CharacterBody2D


const SPEED = 130.0
const JUMP_VELOCITY = -300.0
@onready var sprite = %PlayerAnim

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("mvleft", "mvright")
	if direction:
		velocity.x = direction * SPEED
		if direction == -1:
			sprite.flip_h = true
		if direction == 1:
			sprite.flip_h = false
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
	#Play Animations
	if is_on_floor():
		if direction == 0:
			sprite.play("idle")
		else:
			sprite.play("run")
	else:
		sprite.play("jump")

	move_and_slide()
