shader_type canvas_item;

uniform vec2 motion = vec2(1, 1);
uniform float speed = 0.5;

void fragment() { 
	vec2 uv = UV + TIME * speed * motion;
	COLOR = texture(TEXTURE, uv);
}

