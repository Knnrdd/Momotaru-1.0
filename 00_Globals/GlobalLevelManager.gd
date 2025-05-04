extends Node

const PLAYER = preload("res://Player/player1.tscn")

var player: Player
var current_tilemap_bounds: Array[Vector2]
signal TilemapBoundsChange( bounds: Array[Vector2] )

func ChangeTilemapBounds( bounds: Array[Vector2] ) -> void:
	current_tilemap_bounds = bounds
	TilemapBoundsChange.emit( bounds )
	

func _ready() -> void:
	add_player_instance()





func add_player_instance()-> void:
	player = PLAYER.instantiate()
	add_child(player)
	pass
