extends RigidBody2D
class_name Rat

@export var _speed: float = 50.0
@export var move_right: bool = false
@export var _explosion_VFX: CPUParticles2D

var _was_touched: bool = false
var _was_kicked: bool = false

func _physics_process(delta: float) -> void:
	if move_right:
		linear_velocity.x = _speed
	else:
		linear_velocity.x = -_speed
	
	move_and_collide(linear_velocity * delta)
	
func _on_body_shape_entered(body_rid: RID, body: Node, body_shape_index: int, local_shape_index: int) -> void:
	if body is Player and not _was_touched:
		_was_touched = true
		_explosion_VFX.emitting = true
		_explosion_VFX.reparent(get_parent())
		queue_free()
		
	if _was_kicked:
		_explosion_VFX.emitting = true
		
		_explosion_VFX.reparent(get_parent())
		
		queue_free()
