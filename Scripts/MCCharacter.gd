extends CharacterBody2D


const SPEED = 100



func _physics_process(delta: float) -> void:
	
	var directiony := Input.get_axis("up", "down")
	if directiony:
		velocity.y = directiony * SPEED
		if directiony < 0:
			$MCCharater.play("up")
		else:
			$MCCharater.play("down")

	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)


	var directionx := Input.get_axis("left", "right")
	if directionx:
		velocity.x = directionx * SPEED
		if directionx < 0:
			$MCCharater.play("side")
		else:
			$MCCharater.play("side2")
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
