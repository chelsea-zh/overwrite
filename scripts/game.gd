extends Node2D

@onready var ladders: TileMapLayer = $map/ladders

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var ladderTiles = ladders.get_used_cells()
	for tile in ladderTiles:
		var ladder = Ladder.new()
		ladder.global_position = tile
		
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
