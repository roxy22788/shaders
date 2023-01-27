shader_type canvas_item;

uniform vec2 u_resolution = vec2(1024.0, 600.0);

void fragment() {
	vec2 st = FRAGCOORD.xy / u_resolution;
	float pct;
	
	// distancia da posição atual até o centro
	pct = distance(st, vec2(0.5));
	
	COLOR.rgb = vec3(pct);
}