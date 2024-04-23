@tool
extends Node3D

@export var length:int
@export var frequency:float
@export var start_angle:float
@export var base_size:float
@export var multiplier:float

@onready var head = $Head
@onready var body = $Body



func _ready():
	if not Engine.is_editor_hint():		
		pass
		
	


func on_draw_gizmos():
	DebugDraw3D.draw_box(body.global_transform.origin, Quaternion.IDENTITY ,body.size, Color.WHITE)

func _process(delta):
	var body_len = []
	var body1
	body_len.append(body)
	
	print(body_len.size())
	
	if body_len.size() < length + 1:
		body1 = body.duplicate()
		body_len.append(body1)
		print(body_len.size())
		
		add_child(body1)
		body1.position = Vector3(0,0,length + 1)
	if body_len.size() > length + 1:
		print(body_len.size())
		
		remove_child(body_len[1])
	

	on_draw_gizmos()
	pass		

#Modify the code in _process in creature_genereator.gd 
#to draw the gizmo as per the video showing where the parts will be generated as spheres.
