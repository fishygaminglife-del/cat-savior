extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$MCCharater.play("downidle")
	$Camera2D/CharacterBody2D/PlayerAnimationPlayer.play("textplay")
	await $Camera2D/CharacterBody2D/PlayerAnimationPlayer.animation_finished
	$Camera2D/CharacterBody2D/Text.text = "He MUST be hiding here!"
	$Camera2D/CharacterBody2D/PlayerAnimationPlayer.play("textplay")
	await $Camera2D/CharacterBody2D/PlayerAnimationPlayer.animation_finished
	$MCCharater.play("side2")
	$AnimationPlayer.play("Animation1")
	await $AnimationPlayer.animation_finished
	$MCCharater.play("downidle")	
	$Camera2D/CharacterBody2D/Text.text = "Whoa, someone made this comfy, and what is that?"
	$Camera2D/CharacterBody2D/PlayerAnimationPlayer.play("textplay")
	await get_tree().create_timer(1).timeout
	$AnimationPlayer.play("Animation2")
	await $Camera2D/CharacterBody2D/PlayerAnimationPlayer.animation_finished
	$Camera2D/CharacterBody2D/Text.text = "It looks like a hole, wait, WHISKERS YOU THERE???"
	$Camera2D/CharacterBody2D/PlayerAnimationPlayer.play("textplay")
	await $Camera2D/CharacterBody2D/PlayerAnimationPlayer.animation_finished
	$MCCharater.play("side2")
	$AnimationPlayer.play("Animation3")
	await $AnimationPlayer.animation_finished
	$MCCharater.play("downidle")	
	$Camera2D/CharacterBody2D/Text.text = "Whiskers, move away from the edge slowly, you're all I got... "
	$Camera2D/CharacterBody2D/PlayerAnimationPlayer.play("textplay")
	await $Camera2D/CharacterBody2D/PlayerAnimationPlayer.animation_finished
	$MCCharater.play("side2")	
	$AnimationPlayer.play("Animation4")
	await get_tree().create_timer(2).timeout	
	$Camera2D/CharacterBody2D/Text.text = "Meow!!!"
	$Camera2D/CharacterBody2D/Name.text = "Whiskers"
	$Camera2D/CharacterBody2D/PlayerAnimationPlayer.play("textplay")
	await $Camera2D/CharacterBody2D/PlayerAnimationPlayer.animation_finished
