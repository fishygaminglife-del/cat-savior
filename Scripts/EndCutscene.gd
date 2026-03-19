extends Node2D
		
func _ready() -> void:
	Global.cutscene = true
	$MCCharater.play("downidle")
	$Camera2D/End.visible = false
	$Camera2D/End/Label.visible = false
	$Camera2D/End/Button.visible = false
	$Camera2D/CharacterBody2D/Text.text = "He MUST be hiding here!"
	$Camera2D/CharacterBody2D/PlayerAnimationPlayer.play("textplay")
	$AudioStreamPlayer2D3.play()
	await $Camera2D/CharacterBody2D/PlayerAnimationPlayer.animation_finished
	$AudioStreamPlayer2D3.stream_paused = true
	$MCCharater.play("side2")
	$AnimationPlayer.play("Animation1")
	await $AnimationPlayer.animation_finished
	$MCCharater.play("downidle")	
	$Camera2D/CharacterBody2D/Text.text = "Whoa, this is messed up, and what is that?"
	$Camera2D/CharacterBody2D/PlayerAnimationPlayer.play("textplay")
	$AudioStreamPlayer2D3.stream_paused = false
	await get_tree().create_timer(1).timeout
	$AnimationPlayer.play("Animation2")
	await $Camera2D/CharacterBody2D/PlayerAnimationPlayer.animation_finished
	$AudioStreamPlayer2D3.stream_paused = true
	$Camera2D/CharacterBody2D/Text.text = "It looks like a hole, wait, WHISKERS YOU THERE???"
	$Camera2D/CharacterBody2D/PlayerAnimationPlayer.play("texp_play2")
	$AudioStreamPlayer2D3.stream_paused = false
	await $Camera2D/CharacterBody2D/PlayerAnimationPlayer.animation_finished
	$AudioStreamPlayer2D3.stream_paused = true
	$MCCharater.play("side2")
	$AnimationPlayer.play("Animation3")
	await $AnimationPlayer.animation_finished
	$MCCharater.play("downidle")	
	$Camera2D/CharacterBody2D/Text.text = "Whiskers, move away from the edge slowly, you're all I got... "
	$Camera2D/CharacterBody2D/PlayerAnimationPlayer.play("texp_play2")
	$AudioStreamPlayer2D3.stream_paused = false
	await $Camera2D/CharacterBody2D/PlayerAnimationPlayer.animation_finished
	$AudioStreamPlayer2D3.stream_paused = true
	$MCCharater.play("side2")	
	$AnimationPlayer.play("Animation4")
	await get_tree().create_timer(1).timeout
	$AudioStreamPlayer2D.play()
	await get_tree().create_timer(1).timeout
	$Camera2D/CharacterBody2D/Text.text = "Meow!!!"
	$Camera2D/CharacterBody2D/Name.text = "Whiskers"
	$Camera2D/CharacterBody2D/PlayerAnimationPlayer.play("textplay")
	$AudioStreamPlayer2D2.play()
	await $Camera2D/CharacterBody2D/PlayerAnimationPlayer.animation_finished
	get_tree().change_scene_to_file("res://scenes/sewer.tscn")


func _on_pause_pressed() -> void:
	$Camera2D/MenuScreen.visible = true
	get_tree().paused = true


func _on_resume_b_pressed() -> void:
	get_tree().paused = false
	$Camera2D/MenuScreen.visible = false

func _on_home_b_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/Home.tscn")
	


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/Home.tscn")
