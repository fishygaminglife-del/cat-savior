extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$AnimatedSprite2D.play("default")
		

func _on_home_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/Main.tscn")
func _on_shed_pressed() -> void:
	if Global.shed == true:
		get_tree().change_scene_to_file("res://scenes/ShedObby.tscn")
func _on_shed_room_pressed() -> void:
	if Global.cutscene == true:
		get_tree().change_scene_to_file("res://scenes/EndCutscene.tscn")
func _on_sewer_pressed() -> void:
	if Global.sewer == true:
		get_tree().change_scene_to_file("res://scenes/sewer.tscn")

func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/Home.tscn")
