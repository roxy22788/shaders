shader_type canvas_item;

const float PI = 3.14159265359;

float easeInOutSine(float x) {
	return -(cos(PI * x) - 1.0) / 2.0;
}

const vec3 colorA = vec3(0.149,0.141,0.912);
const vec3 colorB = vec3(1.000,0.833,0.224);

void fragment() {
	float pct = easeInOutSine(TIME);
	COLOR.rbg = mix(colorA, colorB, pct);
}