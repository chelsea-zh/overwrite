class_name Switch extends Node2D

@export var startingState: bool
@export var correctState: bool
@onready var currentState: bool = startingState

var inRange: bool = false

signal changeState

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$AnimatedSprite2D.frame = int(startingState);
	if (currentState == correctState):
		rotation_degrees = 0
	else:
		rotation_degrees = 180
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _on_area_2d_input_event(_viewport: Node, event: InputEvent, _shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and inRange:
		currentState = !currentState
		$AnimatedSprite2D.frame = int(currentState)
		if (currentState == correctState):
			rotation_degrees = 0
		else:
			rotation_degrees = 180
		changeState.emit()


func _on_range_body_entered(body: Node2D) -> void:
	if body is Player:
		inRange = true
	pass # Replace with function body.


func _on_range_body_exited(body: Node2D) -> void:
	if body is Player:
		inRange = false
	pass # Replace with function body.
