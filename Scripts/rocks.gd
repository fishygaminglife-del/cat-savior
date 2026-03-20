extends Node2D
var code_input: Array = []
var shedlock = int(str(randi_range(1, 9)) + str(randi_range(1, 9)) + str(randi_range(1, 9)))
var correct_code = str(shedlock)

func _ready():
	var label = get_node_or_null("../CharacterBody2D/Rocks/RockUp2/Label2")
	if label:
		label.text = str(shedlock)

func add_number(num):
	code_input.append(num)
	$"../CharacterBody2D/KeyPadZoom/NumLab".text =  "".join(code_input.map(str))

	if code_input.size() == 3:
		check_code()
func check_code():   
	if "".join(code_input.map(str)) == correct_code:
		$"../CharacterBody2D/KeyPadZoom/Check".visible = true
		await get_tree().create_timer(1).timeout
		get_tree().change_scene_to_file("res://scenes/ShedObby.tscn")
	else:
		code_input.clear()
		$"../CharacterBody2D/KeyPadZoom/X".visible = true
		await get_tree().create_timer(1).timeout
		$"../CharacterBody2D/KeyPadZoom/X".visible = false
		$"../CharacterBody2D/KeyPadZoom/NumLab".text =  ""
func _on_b_1_pressed() -> void:
	add_number(1)
func _on_b_2_pressed() -> void:
	add_number(2)
func _on_b_3_pressed() -> void:
	add_number(3)
func _on_b_4_pressed() -> void:
	add_number(4)
func _on_b_5_pressed() -> void:
	add_number(5)
func _on_b_6_pressed() -> void:
	add_number(6)
func _on_b_7_pressed() -> void:
	add_number(7)
func _on_b_8_pressed() -> void:
	add_number(8)
func _on_b_9_pressed() -> void:
	add_number(9)


func _on_reject_but_pressed() -> void:
	$"../CharacterBody2D/KeyPadZoom".visible = false
	code_input.clear()
	$"../CharacterBody2D/KeyPadZoom/NumLab".text =  ""
	$"../CharacterBody2D/KeyPadZoom/RejectBut".disabled = true
	$"../CharacterBody2D/KeyPadZoom/CheckBut".disabled = true
