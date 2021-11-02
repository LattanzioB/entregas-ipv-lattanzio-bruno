extends Node

onready var player = $Environment/Player
onready var bg_music:AudioStreamPlayer = $Background

export (AudioStream) var general_music
export (AudioStream) var bg_dead

func _ready():
	randomize()
	player.initialize(self)
	_play_music(general_music)

func _unhandled_input(event):
	if event.is_action("restart"):
		_restart_level()

func _restart_level():
	get_tree().reload_current_scene()

func _play_music(audio):
	bg_music.stream = audio
	bg_music.play()
	
func _on_Player_dead():
	print("hereim")
	bg_music.stop()
	_play_music(bg_dead)
