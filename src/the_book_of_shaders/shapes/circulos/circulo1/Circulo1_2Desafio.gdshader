shader_type canvas_item;

uniform vec2 u_resolution = vec2(1024.0, 600.0);
uniform float raio : hint_range(0.0, 0.5);

float circle(in vec2 _st, in float _radius){
    vec2 dist = _st-vec2(0.5); // vec2(-0.5)
	return 1.0 - smoothstep(_radius-(_radius*0.01), _radius+(_radius*0.01), dot(dist,dist));
} //////////////////////vec2(0,495),          vec2(0.505)

void fragment() {
	vec2 st = FRAGCOORD.xy / u_resolution;
	float pct;
	
	vec2 center = vec2(abs(sin(TIME)), abs(cos(TIME)));
	
	pct = distance(st, center);
	pct = 1.0 - step(raio, pct);
	

	COLOR.rgb = vec3(circle(st, 0.1));
}