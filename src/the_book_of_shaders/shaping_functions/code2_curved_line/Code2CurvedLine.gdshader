shader_type canvas_item;

uniform vec2 u_resolution = vec2(1024.0, 600.0);
uniform float u_progress: hint_range(0.0, 10.0);

float plot(vec2 st, float pct){
	return smoothstep(0.02, 0.0, abs((st.y - pct)));
}

void fragment() {
	vec2 st = FRAGCOORD.xy / u_resolution;
	float y = pow(st.x, u_progress);
	
	vec3 color = vec3(y);
	float green = plot(st, y);
	color = (1.0 - green) * color + green * vec3(0.0, 1.0, 0.0);
	
	COLOR.rgb = color; 
}