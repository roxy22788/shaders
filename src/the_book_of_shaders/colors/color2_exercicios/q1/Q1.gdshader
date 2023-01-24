shader_type canvas_item;

uniform vec2 u_resolution = vec2(1024.0, 600.0);

const vec3 colorA = vec3(0.149,0.141,0.912);
const vec3 colorB = vec3(1.000,0.833,0.224);

void fragment() {
	vec2 st = FRAGCOORD.xy / u_resolution;
	vec3 pct = vec3(st.y);
	
	vec3 color = mix(colorA, colorB, pct);
	
	COLOR.rgb = color;
}