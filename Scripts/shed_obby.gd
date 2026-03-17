extends Node2D
var runs = 0
var check = 0

func _ready() -> void:
	$CharacterBody2D/TextBox.visible = false
	$CharacterBody2D/Camera2D.zoom = Vector2(3.5, 3.5)
	Global.is_platformer = true
	for sprite in get_tree().get_nodes_in_group("fire_animation"):
		sprite.play("default")
	$CharacterBody2D/MenuScreen.visible = false
	
	Global.is_platformer = true
	Global.SPEED = 125

	if Global._checkpoint == false:
		$CharacterBody2D/Name.text = "Caleb"
		$CharacterBody2D/Text.text = "I can hear my cat, he must be at the other side!"
		$CharacterBody2D/PlayerAnimationPlayer.play("textplay")
		await $CharacterBody2D/PlayerAnimationPlayer.animation_finished

	




func _on_check_point_area_body_entered(body: Node2D) -> void:
	$CheckPointArea/CollisionShape2D.disabled = true
	$Checkpoint.modulate = Color(0.936, 0.977, 1.0, 1.0)
	if Global._checkpoint == false:
		$CharacterBody2D/PlayerAnimationPlayer.play("CheckPoint")
	Global._checkpoint = true
func _on_death_body_entered(body: Node2D) -> void:
	$CharacterBody2D/MenuScreen.visible = true
	get_tree().paused = true
func _on_death_2_body_entered(body: Node2D) -> void:
	if Global._checkpoint == true:
		$CharacterBody2D.position = Vector2(256, 430)
	else:
		$CharacterBody2D.position = Vector2(-797, 572)


func _on_spencer_body_entered(body: Node2D) -> void:
	$CharacterBody2D/PlayerAnimationPlayer.play("DoorZoom")
	await $CharacterBody2D/PlayerAnimationPlayer.animation_finished
	get_tree().change_scene_to_file("res://scenes/EndCutscene.tscn")
	
func _on_resume_b_pressed() -> void:
	get_tree().paused = false
	$CharacterBody2D/MenuScreen.visible = false


func _on_home_b_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_file("res://scenes/Home.tscn")
