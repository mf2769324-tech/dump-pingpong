extends CharacterBody2D

var C1
const speed = 20

func center():
	position.y = 212  

func _ready() -> void:
	center()

func _process(delta):  
	if Input.get_action_strength("up_1") == 1:
		position.y = position.y-speed
	if Input.get_action_strength("down_1") == 1:
		position.y = position.y+speed
	position.y=clamp(position.y,-266,892) 
	
