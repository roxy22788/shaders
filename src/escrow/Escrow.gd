extends Node2D

func snap(value, step):
	var div = round(value / step)
	return div * step
	

func _ready():
	var v1 = Vector2(0.45, 0)
	var v2 = Vector2(0.10, 0)
	var dist = v1 - v2
	print(dist.dot(dist))
	print(v1.distance_to(v2))
