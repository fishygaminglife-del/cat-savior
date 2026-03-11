extends Node2D


func _ready() -> void:
	$PortraitButton.disabled = false
	$WindowButton.visible = false
	$PortraitButton.visible = false
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
	$CharacterBody2D/Text.text = "Let's pick up this portrait (click on the portrait)"
	$PortraitButton.visible = true
	$CharacterBody2D/PlayerAnimationPlayer.play("text_play")	
	await $CharacterBody2D/PlayerAnimationPlayer.animation_finished
	
func _on_button_pressed() -> void:
	$"Background Items/PaintingDown".visible = false
	$"Background Items/PaintingUp".visible = true
	$PortraitButton.disabled = true
	$PortraitButton.visible = false
	$CharacterBody2D/Name.text = "Caleb"
	$CharacterBody2D/Text.text = "My cat... I should go find him (Click the window to jump out)"
	$WindowButton.visible = true
	$CharacterBody2D/PlayerAnimationPlayer.play("text_play")


func _on_window_button_pressed() -> void:
	$CharacterBody2D.position = Vector2(940, 357)
	$CharacterBody2D/TextBox.visible = false
	$CharacterBody2D/Name.visible = false
	$CharacterBody2D/Text.visile = false
