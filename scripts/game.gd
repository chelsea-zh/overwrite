extends Node2D

@onready var ladders: TileMapLayer = $map/ladder_map
@export var ladder_scene: PackedScene

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	# instantiates a ladder node at every tile in tilemaplayer ladder_map
	var ladderTiles = ladders.get_used_cells()
	for tile in ladderTiles:
		var ladder = ladder_scene.instantiate()
		ladder.global_position = ladders.map_to_local(tile)
		$map/ladders.add_child(ladder)
		
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
