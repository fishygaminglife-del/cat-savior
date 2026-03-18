extends Node2D

var _lives = 3

func _ready() -> void:
	Global.is_platformer = true
	$Crocodile/Croc1.play("default")
	$Crocodile/Croc2.play("default")
	$AnimatedSprite2D.play("default")
	$Crocodile/CrocW3.get_animation("Croc Water").loop = true
	$Crocodile/CrocL1.get_animation("LandCroc1").loop = true
	$Crocodile/CrocL2.get_animation("LandCroc2").loop = true
	$Crocodile/CrocL1.play("LandCroc1")
	$Crocodile/CrocL2.play("LandCroc2")
	$Crocodile/CrocW3.play("Croc Water")
	$CharacterBody2D/Name.text = "Caleb"
	$CharacterBody2D/Text.text = "WHISKERS..."
	$CharacterBody2D/PlayerAnimationPlayer.play("textplay")
	await $CharacterBody2D/PlayerAnimationPlayer.animation_finished
	$CharacterBody2D/Name.text = "Caleb"
	$CharacterBody2D/Text.text = "Uh Oh, im in the sewers, Aligators"
	$CharacterBody2D/PlayerAnimationPlayer.play("texp_play2")
	await $CharacterBody2D/PlayerAnimationPlayer.animation_finished
	$CharacterBody2D/Name.text = "Caleb"
	$CharacterBody2D/Text.text = "Wait don't they also come on the walkway..."
	$CharacterBody2D/PlayerAnimationPlayer.play("texp_play2")
	await $CharacterBody2D/PlayerAnimationPlayer.animation_finished
	$CharacterBody2D/Name.text = "???"
	$CharacterBody2D/Text.text = "Climb ladders when Aligators come!"
	$CharacterBody2D/PlayerAnimationPlayer.play("textplay")
	await $CharacterBody2D/PlayerAnimationPlayer.animation_finished

func _on_pov_change_body_entered(body: Node2D) -> void:
	$"POV CHANGE/CollisionShape2D".disabled = true
	Global.is_platformer = false
	$StaticBody2D/CollisionShape2D4.position = Vector2(11.5, 21)


func _on_croc_touch_body_entered(body: Node2D) -> void:
	_lives -= 1
	if _lives >= 2:
		$CharacterBody2D/Heart3.modulate = Color(0.365, 0.0, 0.0, 1.0)
	elif _lives >= 1:
		$CharacterBody2D/Heart2.modulate = Color(0.365, 0.0, 0.0, 1.0)
	elif _lives >= 0:
		$CharacterBody2D/Heart.modulate = Color(0.365, 0.0, 0.0, 1.0)
		await get_tree().create_timer(0.3)
		get_tree().reload_current_scene()
