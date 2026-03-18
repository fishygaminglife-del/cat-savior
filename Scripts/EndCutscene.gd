extends Node2D


var can_skip = true

func skip_animation():
	if can_skip:
		var player = $Camera2D/CharacterBody2D/PlayerAnimationPlayer
		player.seek(player.current_animation_length, true)
		var player2 = $AnimationPlayer
		player2.seek(player2.current_animation_length, true)

func _process(delta):
	if Input.is_action_just_pressed("txtskip"):
		skip_animation()
	
func wait_for_animation_end():
	while $Camera2D/CharacterBody2D/PlayerAnimationPlayer.is_playing() \
		or $AnimationPlayer.is_playing():
		await get_tree().process_frame

		
func _ready() -> void:
	$MCCharater.play("downidle")
	$Camera2D/End.visible = false
	$Camera2D/End/Label.visible = false
	$Camera2D/End/Button.visible = false
	$Camera2D/CharacterBody2D/Text.text = "He MUST be hiding here!"
	$Camera2D/CharacterBody2D/PlayerAnimationPlayer.play("textplay")
	$AudioStreamPlayer2D3.play()
	await wait_for_animation_end()
	$AudioStreamPlayer2D3.stream_paused = true
	$MCCharater.play("side2")
	$AnimationPlayer.play("Animation1")
	await wait_for_animation_end()
	$MCCharater.play("downidle")	
	$Camera2D/CharacterBody2D/Text.text = "Whoa, this is messed up, and what is that?"
	$Camera2D/CharacterBody2D/PlayerAnimationPlayer.play("textplay")
	$AudioStreamPlayer2D3.stream_paused = false
	await get_tree().create_timer(1).timeout
	$AnimationPlayer.play("Animation2")
	await wait_for_animation_end()
	$AudioStreamPlayer2D3.stream_paused = true
	$Camera2D/CharacterBody2D/Text.text = "It looks like a hole, wait, WHISKERS YOU THERE???"
	$Camera2D/CharacterBody2D/PlayerAnimationPlayer.play("texp_play2")
	$AudioStreamPlayer2D3.stream_paused = false
	await wait_for_animation_end()
	$AudioStreamPlayer2D3.stream_paused = true
	$MCCharater.play("side2")
	$AnimationPlayer.play("Animation3")
	await wait_for_animation_end()
	$MCCharater.play("downidle")	
	$Camera2D/CharacterBody2D/Text.text = "Whiskers, move away from the edge slowly, you're all I got... "
	$Camera2D/CharacterBody2D/PlayerAnimationPlayer.play("texp_play2")
	$AudioStreamPlayer2D3.stream_paused = false
	await wait_for_animation_end()
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
	await wait_for_animation_end()
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
