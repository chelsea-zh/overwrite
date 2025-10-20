class_name Readable extends Node2D

var inRange: bool = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$CanvasLayer.visible = false
	$CanvasLayer/description.text += "\n\npress space to close"
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("jump"):
		$CanvasLayer.visible = false
	pass


func _on_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and inRange:
		$CanvasLayer.visible = true
	pass # Replace with function body.

#TODO: make range area2d


func _on_range_body_entered(body: Node2D) -> void:
	if body is Player:
		inRange = true
	pass # Replace with function body.


func _on_range_body_exited(body: Node2D) -> void:
	if body is Player:
		inRange = false
		$CanvasLayer.visible = false
	pass # Replace with function body.
