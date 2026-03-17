extends Node2D
var blink = false

func _ready() -> void:
	Global.SPEED = 100 
	Global.is_platformer = false
	$CharacterBody2D.visible = true
	$AnimatedSprite2D.play("default")
	$CharacterBody2D/KeyPadZoom/Check.visible = false
	$CharacterBody2D/KeyPadZoom/X.visible = false
	$"CharacterBody2D/KeyPadZoom/Buttons/b1".disabled = true
	$"CharacterBody2D/KeyPadZoom/Buttons/b2".disabled = true
	$"CharacterBody2D/KeyPadZoom/Buttons/b3".disabled = true
	$"CharacterBody2D/KeyPadZoom/Buttons/b4".disabled = true
	$"CharacterBody2D/KeyPadZoom/Buttons/b5".disabled = true
	$"CharacterBody2D/KeyPadZoom/Buttons/b6".disabled = true
	$"CharacterBody2D/KeyPadZoom/Buttons/b7".disabled = true
	$"CharacterBody2D/KeyPadZoom/Buttons/b8".disabled = true
	$"CharacterBody2D/KeyPadZoom/Buttons/b9".disabled = true
	$CharacterBody2D/KeyPadZoom.visible = false
	$CharacterBody2D/KeyPadZoom/CheckBut.disabled = true
	$CharacterBody2D/KeyPadZoom/RejectBut.disabled = true
	$CharacterBody2D/Rocks/RockUp.visible = false
	$CharacterBody2D/Rocks/RockUp/Label.visible = false
	$CharacterBody2D/Rocks/RockUp2.visible = false
	$CharacterBody2D/Rocks/RockUp2/Label2.visible = false
	$CharacterBody2D/ExitBut.visible = false
	$CharacterBody2D/ExitBut.disabled = true
	$PortraitButton.disabled = true
	$WindowButton.visible = false
	$WindowButton.disabled = true
	$PortraitButton.visible = false
	$PortraitButton2.disabled = true
	$PortraitButton2.visible = false
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
	$PortraitButton2.disabled = false
	$PortraitButton2.visible = true
	$CharacterBody2D/PlayerAnimationPlayer.play("text_play")	
	blink = true
	await $CharacterBody2D/PlayerAnimationPlayer.animation_finished
	


func _on_window_button_pressed() -> void:
	$CharacterBody2D.position = Vector2(920, 440)
	$CharacterBody2D/TextBox.visible = false
	$CharacterBody2D/Name.visible = false
	$CharacterBody2D/Text.visible = false
	rock_inst()
	
func rock_inst():
	$CharacterBody2D/Name.text = "???"
	$CharacterBody2D/Text.text = "Flip rocks (click) to find code (some are x and some are code)"
	$CharacterBody2D/PlayerAnimationPlayer.play("play_text")

func _on_blink_timer_timeout() -> void:
	if blink == true:
		$PortraitButton.visible = not $PortraitButton.visible


func _on_rock_but_pressed() -> void:
	$CharacterBody2D/Rocks/RockUp.visible = true
	$CharacterBody2D/Rocks/RockUp/Label.visible = true
	$CharacterBody2D/ExitBut.visible = true
	$CharacterBody2D/ExitBut.disabled = false


func _on_exit_but_pressed() -> void:
	$CharacterBody2D/Rocks/RockUp.visible = false
	$CharacterBody2D/Rocks/RockUp/Label.visible = false
	$CharacterBody2D/Rocks/RockUp2.visible = false
	$CharacterBody2D/Rocks/RockUp2/Label2.visible = false
	$CharacterBody2D/ExitBut.visible = false
	$CharacterBody2D/ExitBut.disabled = true
	$CharacterBody2D/Name.text = "???"
	$CharacterBody2D/Text.text = "Flip rocks (click) to find code (some are x and some are code)"
	$CharacterBody2D/PlayerAnimationPlayer.play("play_text")

func _on_rock_but_2_pressed() -> void:
	$CharacterBody2D/Name.text = "???"
	$CharacterBody2D/Text.text = "Enter the code in the keypad (on the shed)."
	$CharacterBody2D/PlayerAnimationPlayer.play("play_text")
	$CharacterBody2D/Rocks/RockUp2.visible = true
	$CharacterBody2D/Rocks/RockUp2/Label2.visible = true
	$CharacterBody2D/ExitBut.visible = true
	$CharacterBody2D/ExitBut.disabled = false


func _on_rock_but_3_pressed() -> void:
	$CharacterBody2D/Rocks/RockUp.visible = true
	$CharacterBody2D/Rocks/RockUp/Label.visible = true
	$CharacterBody2D/ExitBut.visible = true
	$CharacterBody2D/ExitBut.disabled = false


func _on_keypad_but_pressed() -> void:
	$CharacterBody2D/Name.visible = false
	$CharacterBody2D/Text.visible = false
	$CharacterBody2D/TextBox.visible = false
	$CharacterBody2D/KeyPadZoom.visible = true
	$CharacterBody2D/KeyPadZoom/Nums.visible = true
	$CharacterBody2D/KeyPadZoom/RejectBut.disabled = false
	$CharacterBody2D/KeyPadZoom/CheckBut.disabled = false
	$CharacterBody2D/KeyPadZoom/RejectBut.visible = true
	$"CharacterBody2D/KeyPadZoom/Buttons/b1".disabled = false
	$"CharacterBody2D/KeyPadZoom/Buttons/b2".disabled = false
	$"CharacterBody2D/KeyPadZoom/Buttons/b3".disabled = false
	$"CharacterBody2D/KeyPadZoom/Buttons/b4".disabled = false
	$"CharacterBody2D/KeyPadZoom/Buttons/b5".disabled = false
	$"CharacterBody2D/KeyPadZoom/Buttons/b6".disabled = false
	$"CharacterBody2D/KeyPadZoom/Buttons/b7".disabled = false
	$"CharacterBody2D/KeyPadZoom/Buttons/b8".disabled = false
	$"CharacterBody2D/KeyPadZoom/Buttons/b9".disabled = false



func _on_check_but_pressed() -> void:
	pass # Replace with function body.


func _on_close_pressed() -> void:
	$CharacterBody2D/KeyPadZoom.visible = false
	$CharacterBody2D/KeyPadZoom/Nums.visible = false
	$CharacterBody2D/KeyPadZoom/RejectBut.disabled = true
	$CharacterBody2D/KeyPadZoom/CheckBut.disabled = true
	$CharacterBody2D/KeyPadZoom/RejectBut.visible = false
	$CharacterBody2D/Name.text = "???"
	$CharacterBody2D/Text.text = "Flip rocks (click) to find code (some are x and some are code)"
	$CharacterBody2D/PlayerAnimationPlayer.play("play_text")

func _on_portrait_button_2_pressed() -> void:
	blink = false
	$"Background Items/PaintingDown".visible = false
	$"Background Items/PaintingUp".visible = true
	$PortraitButton.disabled = true
	$PortraitButton.visible = false
	$PortraitButton2.disabled = true
	$PortraitButton2.visible = false
	$CharacterBody2D/Name.text = "Caleb"
	$CharacterBody2D/Text.text = "My cat... I should find him (Click the window to jump out)"
	$CharacterBody2D/PlayerAnimationPlayer.play("text_play")
	$WindowButton.visible = true
	$WindowButton.disabled = false
	await $CharacterBody2D/PlayerAnimationPlayer.animation_finished


func _on_portrait_button_pressed() -> void:
	blink = false
	$"Background Items/PaintingDown".visible = false
	$"Background Items/PaintingUp".visible = true
	$PortraitButton.disabled = true
	$PortraitButton.visible = false
	$PortraitButton2.disabled = true
	$PortraitButton2.visible = false
	$CharacterBody2D/Name.text = "Caleb"
	$CharacterBody2D/Text.text = "My cat... I should find him (Click the window to jump out)"
	$CharacterBody2D/PlayerAnimationPlayer.play("text_play")
	$WindowButton.visible = true
	$WindowButton.disabled = false
	await $CharacterBody2D/PlayerAnimationPlayer.animation_finished


func _on_pause_pressed() -> void:
	$CharacterBody2D/MenuScreen.visible = true
	get_tree().paused = true


func _on_resume_b_pressed() -> void:
	get_tree().paused = false
	$CharacterBody2D/MenuScreen.visible = false

func _on_home_b_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/Home.tscn")
	
