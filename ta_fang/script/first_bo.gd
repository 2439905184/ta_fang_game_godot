extends Timer

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var root
var born_pos
var path_root
# Called when the node enters the scene tree for the first time.
func _ready():
	root=find_parent("Node2D")
	born_pos=root.get_node("enemy_pos").position
	path_root=root.get_node("Path2D/PathFollow2D")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_Timer_timeout():
	print_debug("第一波即将来了")
	var enemy=load("res://enemy.tscn").instance()
	path_root.add_child(enemy)
	
	pass # Replace with function body.
