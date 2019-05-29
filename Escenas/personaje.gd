extends KinematicBody2D
var vector = Vector2(0,-1)
var movimiento = Vector2()
var pantalla
func _ready():
	pantalla = get_viewport_rect().size
	position.x = clamp(position.x, 0, pantalla.x)
	position.y = clamp(position.y, 0, pantalla.y)

func _physics_process(delta):
	if Input.is_action_pressed("ui_left") and movimiento.x > -200:
		movimiento.x -=40;
	if Input.is_action_pressed("ui_right") and movimiento.x < +200:
		movimiento.x +=40;
	if Input.is_action_just_released("ui_left"):
		movimiento.x = 0
	if Input.is_action_just_released("ui_right"):
		movimiento.x = 0

	movimiento.y += 40
	
	if is_on_floor():
		movimiento.y = 40
	
	if Input.is_action_just_pressed("ui_up") and is_on_floor():
		movimiento.y -= 900 

	move_and_slide(movimiento, vector)


func _on_cuerpo_area_entered(area):
	print ("MORISTE")
	queue_free()