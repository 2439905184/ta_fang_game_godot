extends Timer

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var root
var born_pos
# Called when the node enters the scene tree for the first time.
func _ready():
	root=find_parent("Node2D")
	born_pos=root.get_node("enemy_pos").position
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	print_debug("第一波即将来了")
	var enemy=load("res://enemy.tscn").instance()
	root.add_child(enemy)
	enemy.position=born_pos
	pass # Replace with function body.
