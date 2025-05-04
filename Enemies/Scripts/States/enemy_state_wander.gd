class_name EnemyStateWander extends EnemyState


@export var anim_name : String = "walk"
@export var wander_speed: float = 20.0

@export_category("AI")
@export var state_animation_duration : float = 0.7
@export var state_cycle_min: int = 1
@export var state_cycle_max: int = 3
@export var next_state: EnemyState

var _timer: float = 0.0
var _direction: Vector2


func init() ->void:
	pass


## What happens when the player enters this State?
func Enter() -> void:
	_timer = randi_range(state_cycle_min, state_cycle_max) * state_animation_duration
	var rand = randi_range(0, 3)
	_direction = enemy.DIR_4[rand]
	enemy.velocity = _direction * wander_speed
	enemy.direction = _direction  # if 'direction' is a variable on the enemy
	enemy.UpdateAnimation(anim_name)
	
	pass


## What happens when the player exits this State?
func Exit() -> void:
	pass


## What happnes during the _physics_process update in tis State?
func process(_delta : float ) -> EnemyState:
	_timer -= _delta
	if _timer < 0:
		return next_state
	return null


## What happens durin the _physics_process update in ths State?
func Physics(_delta : float ) -> EnemyState:
	return null
