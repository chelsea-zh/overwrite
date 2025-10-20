class_name SwitchPuzzle extends Node2D

var valid : bool

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	check_status()
	for child in get_children():
		if child is Switch:
			child.changeState.connect(check_status)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

func check_status():
	valid = true
	for child in get_children():
		if child is Switch:
			if (child.currentState != child.correctState):
				valid = false
	
	for child in get_children():
		if child is Door:
			child.changeUnlocked(valid);
			
	pass
