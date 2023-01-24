shader_type canvas_item;

const float PI = 3.14159265359;

uniform vec2 u_resolution = vec2(1024.0, 600.0);
const vec3 colorA = vec3(0.149,0.141,0.912);
const vec3 colorB = vec3(1.000,0.833,0.224);

float plot(vec2 st, float pct) {
	return smoothstep(0.02, 0.0, abs(st.y - pct));
}

void fragment() {
	vec2 st = FRAGCOORD.xy / u_resolution;
	vec3 color = vec3(0.0);
	
	vec3 pct = vec3(st.x);
	
	pct.r = smoothstep(0.0, 1.0, st.x);
	//pct.g = abs(sin(st.x * PI));
	//pct.b = pow(st.x, 5.0);
	
	color = mix(colorA, colorB, pct);
	
	color = mix(color, vec3(1.0, 0.0, 0.0), plot(st, pct.r));
	color = mix(color, vec3(0.0, 1.0, 0.0), plot(st, pct.g));
	color = mix(color, vec3(0.0, 0.0, 1.0), plot(st, pct.b));
	
	COLOR.rgb = color;
}