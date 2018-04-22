extends Area2D
export(int, 9) var value
export(int) var id
export var turned_on = false
var t
var sprite 
var color

func _ready():
	sprite = $Sprite
	color = Color(randi())

func toggle(on):
	
	if on:
		$Sprite.self_modulate = color
		turned_on = true
	else:
		$Sprite.self_modulate = Color("000000")
		turned_on = false

func set_color(colorString):
	color = Color(colorString)

