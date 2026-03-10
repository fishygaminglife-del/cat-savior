extends Node2D


func _ready() -> void:
	$"Background Items/PaintingUp".visible = false
	$CharacterBody2D/Name.text = "???"
	$CharacterBody2D/Text.text = "Explore the room, using WASD or Arrow Keys."
	$CharacterBody2D/PlayerAnimationPlayer.play("textplay")
	await $CharacterBody2D/PlayerAnimationPlayer.animation_finished
	$CharacterBody2D/Name.text = "Caleb"
	$CharacterBody2D/Text.text = "WHAT HAPPENED TO MY HOUSE!!!"
	$CharacterBody2D/PlayerAnimationPlayer.play("textplay")
	await $CharacterBody2D/PlayerAnimationPlayer.animation_finished
	$CharacterBody2D/Name.text = "Caleb"
	$CharacterBody2D/Text.text = "As long as Whiskers is okay..."
	$CharacterBody2D/PlayerAnimationPlayer.play("textplay")
	await $CharacterBody2D/PlayerAnimationPlayer.animation_finished
	$CharacterBody2D/Name.text = "Caleb"
	$CharacterBody2D/Text.text = "WHERE IS WHISKERS AND WHY IS THE WINDOW BROKEN???"
	$CharacterBody2D/PlayerAnimationPlayer.play("textplay")
	await $CharacterBody2D/PlayerAnimationPlayer.animation_finished
	$CharacterBody2D/Name.text = "Caleb"
	$CharacterBody2D/Text.text = "Wait, I should explore the backyard!"
	$CharacterBody2D/PlayerAnimationPlayer.play("textplay")
	await $CharacterBody2D/PlayerAnimationPlayer.animation_finished
	$CharacterBody2D/Name.text = "???"
	$CharacterBody2D/Text.text = "Click the window to jump out"
