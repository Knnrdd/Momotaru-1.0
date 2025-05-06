class_name State extends Node

## Stores a reference to the player that this State belongs to
static var player: Player
static var state_machine: PlayerStateMachine

func init() -> void:
	pass


func _ready():
	pass 


## What happens when the player enters this State?
func Enter() -> void:
	pass


## What happens when the player exits this State?
func Exit() -> void:
	pass


## What happnes during the _physics_process update in tis State?
func process(_delta : float ) -> State:
	return null


## What happens durin the _physics_process update in ths State?
func Physics(_delta : float ) -> State:
	return null


## What happens with the input events in this State?
func HandleInput( _event: InputEvent) -> State:
	return null
