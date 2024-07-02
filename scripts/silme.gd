extends AnimatedSprite2D

const SPEED = 60

var direction = 1
@onready var ray_cast_right = $RayCastRight
@onready var ray_cast_left = $RayCastLeft
@onready var silme = $"."


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ray_cast_right.is_colliding():
		direction = -1
		silme.flip_h = true
	if ray_cast_left.is_colliding():
		direction = 1
		silme.flip_h = false
		
	position.x += direction * SPEED * delta
