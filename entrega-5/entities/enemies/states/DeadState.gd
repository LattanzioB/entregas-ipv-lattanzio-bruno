extends "res://entities/enemies/states/AbstractEnemyState.gd"


func enter():
	parent._play_animation("dead")
	#parent.call_deferred("_remove")
	
