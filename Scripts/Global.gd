extends Node

var is_platformer = false
var SPEED = 100
var _checkpoint = false
var sewer_play = false
var music_player: AudioStreamPlayer
var home = false
var shed = false
var cutscene = false
var sewer = false

func _ready():
	music_player = AudioStreamPlayer.new()
	add_child(music_player)

	music_player.stream = load("res://sound/moodmode-no-copyright-music-201745.mp3")
	music_player.volume_db = -20
	music_player.stream.loop = true
	music_player.process_mode = Node.PROCESS_MODE_ALWAYS
	music_player.play()
