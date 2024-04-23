@tool
extends Node3D

@export var length:int
@export var frequency:float
@export var start_angle:float
@export var base_size:float
@export var multiplier:float

@onready var head = $Head
@onready var body = $Body


func _process(delta):

	
	pass		

func _ready():
	if not Engine.is_editor_hint():		
		pass
		
	for i in length:
		var body_position = i + 3
		var body1 = body.duplicate()
		add_child(body1)
		body1.position = Vector3(0,0,body_position)

#Modify the code in _process in creature_genereator.gd 
#to draw the gizmo as per the video showing where the parts will be generated as spheres.
