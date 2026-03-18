extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Global.is_platformer = true
	$Croc.get_animation("Croc Water").loop = true
	$Croc.play("Croc Water")
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
	pass # Replace with function body.
