extends Node2D
 

func lerp(A, B, t):
	return A * (1 - t) + B * t
	
func _ready():
	var x = 0.0
	print(x - floor(x))
