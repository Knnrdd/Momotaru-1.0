class_name PlayerStateMachine extends Node


var states : Array[ State ]
var prev_state : State
var current_state : State



func _ready():
	process_mode = Node.PROCESS_MODE_DISABLED
	pass



func _process(_delta):
	change_state( current_state.Process( _delta ) )
	pass


func _physics_process(_delta):
	change_state(current_state.Physics( _delta ) )
	pass


func _unhandled_input(event):
	change_state(current_state.HandleInput( event ) )
	pass





func InitPlayerStateMachine(_player: Player) -> void:
	states = []
	
	for c in get_children():
		if c is State:
			states.append(c)
	
	if states.size() == 0:
		return
	
	states[0].player = _player
	states[0].state_machine = self
	
	
	for state in states:
		state.init()
	
	change_state( states[0] )
	process_mode = Node.PROCESS_MODE_INHERIT



func change_state( new_state : State ) -> void:
	if new_state == null || new_state == current_state:
		return
	
	if current_state:
		current_state.Exit()
	
	prev_state = current_state
	current_state = new_state
	current_state.Enter()
