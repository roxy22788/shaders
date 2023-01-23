shader_type canvas_item;

const vec3 colorA = vec3(0.149,0.141,0.912);
const vec3 colorB = vec3(1.000,0.833,0.224);

void fragment() {
	float pct = abs(fract(TIME));
	COLOR.rbg = mix(colorA, colorB, pct);
}