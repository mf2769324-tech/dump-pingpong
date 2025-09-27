extends CharacterBody2D

var speed = 1000
@export var lable:Label


var player1_score = 0
var player2_score = 0

func _ready():
	velocity = Vector2(574, 314).normalized() * speed

func _physics_process(delta):
	var collision = move_and_collide(velocity * delta)
	if collision:
		velocity = velocity.bounce(collision.get_normal())

	if position.x <= -606:
		player2_score += 1
		reset()

	if position.x >= 1732:
		player1_score += 1
		reset()
		
	lable.text= str(player1_score) + "--" + str(player2_score)

func reset():
	position = Vector2(574, 314)
	# Reset velocity to a new direction, for example:
	velocity = Vector2(574, 314).normalized() * speed
