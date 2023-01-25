shader_type canvas_item;

uniform vec2 u_resolution = vec2(1024.0, 600.0);

void fragment() {
	vec2 st = FRAGCOORD.xy / u_resolution;
	
	
	vec2 borders = step(vec2(0.1), st);
	float pct = borders.x * borders.y;
	
	vec2 tr = step(vec2(0.1),1.0-st);
    pct *= tr.x * tr.y;
	
	COLOR.rgb = vec3(pct);
}