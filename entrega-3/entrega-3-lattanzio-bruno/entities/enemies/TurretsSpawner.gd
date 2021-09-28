extends Node2D

export (PackedScene) var turret_scene

var path:PathFollow2D

func _ready():
	call_deferred("initialize")

func set_path(path_recieved):
	self.path = path_recieved

func initialize():
	
	var visible_rect:Rect2 = get_viewport().get_visible_rect()
	for i in 8:
		self.path.offset = randi()
		var turret_instance = turret_scene.instance()
		
		var turret_pos:Vector2 = self.path.position
		
		turret_instance.initialize(self, turret_pos, self)

