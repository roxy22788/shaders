extends Node2D
 

func lerp(A, B, t):
	return A * (1 - t) + B * t
	
func _ready():
	var player = Vector2(0.5, 0.5)
	var ratio = 1024/600
	var test = lerp(0.5, 0.0, ratio)
	print(Vector2(test, 0).distance_to(player))
	print(test)
