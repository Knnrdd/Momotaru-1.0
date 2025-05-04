class_name EnemyState extends Node



var enemy: Enemy
var state_machine: EnemyStateMachine

func init() ->void:
	pass


## What happens when the player enters this State?
func Enter() -> void:
	pass


## What happens when the player exits this State?
func Exit() -> void:
	pass


## What happnes during the _physics_process update in tis State?
func process(_delta : float ) -> EnemyState:
	return null


## What happens durin the _physics_process update in ths State?
func Physics(_delta : float ) -> EnemyState:
	return null
