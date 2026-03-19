extends Node2D


func _ready() -> void:
	Global.SPEED = 0
	$powerl.visible = false
	$powerl2.visible = false
	$powerl3.visible = false
	$CharacterBody2D/MushroomsHold.visible = false
	$CharacterBody2D/Name.text = "Caleb"
	$AudioStreamPlayer2D2.play()
	$CharacterBody2D/Text.text = "I can here him, he is up ahead."
	$CharacterBody2D/PlayerAnimationPlayer.play("textplay")
	await $CharacterBody2D/PlayerAnimationPlayer.animation_finished
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
	
func _process(delta: float) -> void:
	$CharacterBody2D/Time.text = str(round($Timer.time_left))
	
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
	for collision in get_tree().get_nodes_in_group("thorn"):
		collision.disabled = true
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
	await $CharacterBody2D/PlayerAnimationPlayer.animation_finished
	get_tree().reload_current_scene()


func _on_area_2d_body_entered(body: Node2D) -> void:
	get_tree().change_scene_to_file("res://scenes/endsscene.tscn")
