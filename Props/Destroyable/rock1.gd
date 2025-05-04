class_name Rock1 extends Node2D


func _ready():
	$HitBox.Damaged.connect( TakeDamage )
	pass




func TakeDamage( _damage : int ) -> void:
	queue_free()
	pass
