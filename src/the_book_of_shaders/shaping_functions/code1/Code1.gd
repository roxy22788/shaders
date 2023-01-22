extends ColorRect

# Called when the node enters the scene tree for the first time.
func _ready():
	var st = Vector2(1.0, 1.0)
	var s = smoothstep(0.02, 0.0, abs(st.y - st.x))
	print(s)
