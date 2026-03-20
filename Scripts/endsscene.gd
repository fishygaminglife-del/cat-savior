extends Node2D


var can_skip = true

func skip_text():
	if can_skip:
		var player = $CharacterBody2D/PlayerAnimationPlayer
		player.seek(player.current_animation_length, true)

func _process(delta):
	if Input.is_action_just_pressed("txtskip"):
		skip_text()
	
func wait_for_animation_end():
	while $CharacterBody2D/PlayerAnimationPlayer.is_playing():
		await get_tree().create_timer(0).timeout	
func _ready() -> void:
	Global.endscene = true
	$Text.text = "You beat Cat Savior, you may go to home or take a screenshot"
	$Name.text = "???"
	$CharacterBody2D/PlayerAnimationPlayer.play("textplay")
	await wait_for_animation_end()
	$Text.text = "You beat Cat Savior!"
	$Name.text = "Cat Savior"
	$CharacterBody2D/PlayerAnimationPlayer.play("text_play")
	await wait_for_animation_end()
	$AnimationPlayer.play("End")
	await $AnimationPlayer.animation_finished

func _on_pause_pressed() -> void:
	$CharacterBody2D/MenuScreen.visible = true
	get_tree().paused = true

func _on_resume_b_pressed() -> void:
	get_tree().paused = false
	$CharacterBody2D/MenuScreen.visibvle = false
	
func _on_home_b_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/Home.tscn")
