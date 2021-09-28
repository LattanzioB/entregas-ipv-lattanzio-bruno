extends Node

onready var player = $Player
onready var turret_spawner = $TurretsSpawner
onready var spawn_Location = $TurretPath/SpawnLocation
func _ready():
	randomize()
	player.initialize(self)
	turret_spawner.set_path(spawn_Location)
	print(spawn_Location)
