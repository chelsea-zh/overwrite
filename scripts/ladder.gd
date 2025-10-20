class_name Ladder extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is Player:
		if Global.on_ladder == true:
			Global.next_ladder = true
		Global.on_ladder = true
	pass # Replace with function body.

func _on_area_2d_body_exited(body: Node2D) -> void:
	if body is Player:
		if Global.next_ladder == false:
			Global.on_ladder = false
		Global.next_ladder = false
	pass # Replace with function body.
