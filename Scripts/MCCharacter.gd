extends CharacterBody2D

const JUMP_VELOCITY = -300


func _physics_process(delta: float) -> void:
	
	if Global.is_platformer == true:
		platformer_movement(delta)
		
	else:
		topdown_movement(delta)
	
func topdown_movement(delta):
	var directionx = Input.get_axis("left", "right")
	var directiony = Input.get_axis("up", "down")

	velocity.x = directionx * Global.SPEED
	velocity.y = directiony * Global.SPEED

	if directionx == 0 and directiony == 0:
		$MCCharater.play("downidle")
	else:
		if directiony < 0:
			$MCCharater.play("up")
		elif directiony > 0:
			$MCCharater.play("down")
		elif directionx < 0:
			$MCCharater.play("side")
		elif directionx > 0:
			$MCCharater.play("side2")

	move_and_slide()
	
func platformer_movement(delta):
	#Gravity
	if not is_on_floor():
		velocity.y += get_gravity().y * delta
	#Jump
	if Input.is_action_just_pressed("up") and is_on_floor():
		velocity.y = JUMP_VELOCITY
	# Horizontal movement
	var direction = Input.get_axis("left", "right")
	if direction != 0:
		velocity.x = direction * Global.SPEED
		$MCCharater.play("side2")
		$MCCharater.flip_h = direction < 0

	else:
		velocity.x = move_toward(velocity.x, 0, Global.SPEED)
		await get_tree().create_timer(0.2)
		$MCCharater.play("downidle")


	move_and_slide()
