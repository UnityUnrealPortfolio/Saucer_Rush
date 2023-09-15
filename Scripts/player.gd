extends  RigidBody2D

#member variables
var input_value = Vector2.ZERO
var move_speed = 50.0

#engine call backs
func _ready() -> void:
	pass
	
func _process(delta: float) -> void:
	if Input.is_action_pressed("move_right"):
		input_value = Vector2(move_speed,input_value.y)
	if Input.is_action_pressed("move_left"):
		input_value = Vector2(-move_speed,input_value.y)
	if Input.is_action_pressed("move_up"):
		input_value = Vector2(input_value.x,-move_speed)
	if Input.is_action_pressed("move_down"):
		input_value = Vector2(input_value.x,move_speed)
	

func _physics_process(delta: float) -> void:
		apply_force(input_value)
