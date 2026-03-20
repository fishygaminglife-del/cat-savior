extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$AnimatedSprite2D.play("default")
	if Global.shed == false:
		$Shed.modulate = Color(1.0, 1.0, 1.0, 0.404)
	else:
		$Shed.modulate = Color(1.0, 1.0, 1.0, 1.0)		
	if Global.cutscene == false:
		$"Shed Room".modulate = Color(1.0, 1.0, 1.0, 0.404)
		
	else:
		$"Shed Room".modulate = Color(1.0, 1.0, 1.0, 1.0)	
	if Global.sewer == false:
		$Sewer.modulate = Color(1.0, 1.0, 1.0, 0.404)
	else:
		$Sewer.modulate = Color(1.0, 1.0, 1.0, 1.0)	
	if Global.forest == false:
		$Forest.modulate = Color(1.0, 1.0, 1.0, 0.404)
	else:
		$Forest.modulate = Color(1.0, 1.0, 1.0, 1.0)	
	if Global.endscene == false:
		$Ending.modulate = Color(1.0, 1.0, 1.0, 0.404)
	else:
		$Ending.modulate = Color(1.0, 1.0, 1.0, 1.0)	

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

func _on_forest_pressed() -> void:
	if Global.forest == true:
		get_tree().change_scene_to_file("res://scenes/forest.tscn")
	
func _on_ending_pressed() -> void:
	if Global.endscene == true:
		get_tree().change_scene_to_file("res://scenes/endsscene.tscn")
