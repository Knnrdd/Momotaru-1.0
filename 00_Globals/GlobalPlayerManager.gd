extends Node

const PLAYER = preload("res://Player/player1.tscn")

var player: Player
var player_spawned : bool = false

func _ready() -> void:
	add_player_instance()
	
	
	
func add_player_instance() -> void:
	#player = Player.instantiate()
	#add_child(player)
	pass



func set_player_position(_new_pos: Vector2) -> void:
	player.global.position = _new_pos
	pass
