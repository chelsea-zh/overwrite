class_name Door extends StaticBody2D

@export var unlocked: bool = false
#default unlocked, when puzzle solved is locked
@export var reverse: bool = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$CollisionShape2D.disabled = unlocked != reverse
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func changeUnlocked(unlock : bool):
	unlocked = unlock
	$CollisionShape2D.disabled = unlocked != reverse
	$AnimatedSprite2D.frame = int(unlocked != reverse)
