extends Node2D

func snap(value, step):
	var div = round(value / step)
	return div * step
	

func _ready():
	var pos = Vector2(700, 0)
	var step = Vector2(333, 0)
	print(pos.snapped(step))
	print(snap(pos.x, step.x))
