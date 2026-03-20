extends Node2D

var can_skip = true

func skip_text():
	if can_skip:
		var player = $CharacterBody2D/PlayerAnimationPlayer
		player.seek(player.current_animation_length, true)

func _process(delta):
	if Input.is_action_just_pressed("txtskip"):
		skip_text()
	$CharacterBody2D/Time.text = str(round($Timer.time_left))
	
func wait_for_animation_end():
	while $CharacterBody2D/PlayerAnimationPlayer.is_playing():
		await get_tree().create_timer(0).timeout	
		
func _ready() -> void:
	Global.forest = true
	Global.SPEED = 0
	$CharacterBody2D/TIMEOUT.visible = false
	$AnimatedSprite2D4.play("default")
	$powerl.visible = false
	$powerl2.visible = false
	$powerl3.visible = false
	$CharacterBody2D/MushroomsHold.visible = false
	$CharacterBody2D/Name.text = "Caleb"
	$AudioStreamPlayer2D2.play()
	$CharacterBody2D/Text.text = "I can hear him, he is up ahead."
	$AudioStreamPlayer2D3.play()
	$CharacterBody2D/PlayerAnimationPlayer.play("textplay")
	await wait_for_animation_end()
	$AudioStreamPlayer2D3.stream_paused = true
	$CharacterBody2D/Name.text = "???"
	$CharacterBody2D/Text.text = "Pick one of the powers, and get to your cat."
	$CharacterBody2D/PlayerAnimationPlayer.play("text_play")
	$powerl.visible = true
	$powerl2.visible = true
	$powerl3.visible = true
	$CharacterBody2D/MushroomsHold.visible = true
	await $CharacterBody2D/PlayerAnimationPlayer.animation_finished
	$AnimationPlayer/Label.visible = false
	$AnimatedSprite2D.play("default")
	
	
func _on_thron_speed_body_entered(body: Node2D) -> void:
	Global.SPEED = 10
	await get_tree().create_timer(2).timeout
	Global.SPEED = 100
	
func _on_mush_2_pressed() -> void:
	#speed 3 seconds
	$CharacterBody2D/MushroomsHold/Mushback2.visible = false
	$CharacterBody2D/MushroomsHold/Mushrooms2.visible = false
	$CharacterBody2D/MushroomsHold/Mush2.visible = false
	$AnimationPlayer/Label.visible = true
	$CharacterBody2D/TextBox.visible = false
	$CharacterBody2D/Name.visible = false
	$CharacterBody2D/Text.visible = false
	$powerl3.visible = false
	$powerl.visible = false
	$powerl2.visible = false
	$CharacterBody2D/MushroomsHold.visible = false
	$AnimationPlayer.play("3-2-1")
	await $AnimationPlayer.animation_finished
	$Timer.start()
	Global.SPEED = 150
	await get_tree().create_timer(3).timeout
	Global.SPEED = 100
	
func _on_mush_1_pressed() -> void:
	#invincible 3 seconds
	$CharacterBody2D/MushroomsHold/Mushback.visible = false
	$CharacterBody2D/MushroomsHold/Mushrooms.visible = false
	$CharacterBody2D/MushroomsHold/Mush1.visible = false
	$CharacterBody2D/TextBox.visible = false
	$CharacterBody2D/Name.visible = false
	$CharacterBody2D/Text.visible = false
	$AnimationPlayer/Label.visible = true
	$powerl3.visible = false
	$powerl.visible = false
	$powerl2.visible = false
	$CharacterBody2D/MushroomsHold.visible = false
	$AnimationPlayer.play("3-2-1")
	await $AnimationPlayer.animation_finished
	$Timer.start()
	Global.SPEED = 100
	$"Thron Speed".monitoring = false
	await get_tree().create_timer(5).timeout
	$"Thron Speed".monitoring = true
func _on_mush_3_pressed() -> void:
	#time
	$CharacterBody2D/MushroomsHold/Mushback3.visible = false
	$CharacterBody2D/MushroomsHold/Mushrooms3.visible = false
	$CharacterBody2D/MushroomsHold/Mush3.visible = false
	$AnimationPlayer/Label.visible = true
	$CharacterBody2D/TextBox.visible = false
	$CharacterBody2D/Name.visible = false
	$CharacterBody2D/Text.visible = false
	$powerl3.visible = false
	$powerl.visible = false
	$powerl2.visible = false
	$Timer.wait_time += 2
	$CharacterBody2D/MushroomsHold.visible = false
	$AnimationPlayer.play("3-2-1")
	await $AnimationPlayer.animation_finished
	$Timer.start()
	Global.SPEED = 100
func _on_timer_timeout() -> void:
	$CharacterBody2D/PlayerAnimationPlayer.play("timeover")
	Global.SPEED = 0
	await $CharacterBody2D/PlayerAnimationPlayer.animation_finished
	get_tree().change_scene_to_file("res://scenes/forest.tscn")


func _on_area_2d_body_entered(body: Node2D) -> void:
	$CharacterBody2D/PlayerAnimationPlayer.play("blackout")
	await $CharacterBody2D/PlayerAnimationPlayer.animation_finished
	get_tree().change_scene_to_file("res://scenes/endsscene.tscn")


func _on_pause_pressed() -> void:
	$CharacterBody2D/MenuScreen.visible = true
	get_tree().paused = true


func _on_resume_b_pressed() -> void:
	get_tree().paused = false
	$CharacterBody2D/MenuScreen.visible = false

func _on_home_b_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/Home.tscn")
