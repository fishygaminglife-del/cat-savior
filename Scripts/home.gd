extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$AnimatedSprite2D.play("default")
	get_tree().paused = false
func _on_play_pressed():
	get_tree().change_scene_to_file("res://scenes/Main.tscn")

func _on_instructions_pressed():
	get_tree().change_scene_to_file("res://scenes/Instructions.tscn")


func _on_credit_pressed():
	get_tree().change_scene_to_file("res://scenes/Credit.tscn")
