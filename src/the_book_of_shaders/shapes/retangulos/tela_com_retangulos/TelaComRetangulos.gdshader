shader_type canvas_item;

uniform vec2 u_resolution = vec2(1024.0, 600.0);

float snap(float value, float ste) {
	float div = round(value / ste);
	return div * ste;
}

void fragment() {
	vec2 st = FRAGCOORD.xy / u_resolution;
	
	float largura_linha = 0.009;
	float total_linha = 25.0;
	
	float step_linhas = 1.0 / total_linha;
	float snap = snap(UV.x, step_linhas);
	
	if (abs(st.x - snap) <= largura_linha) {
		COLOR.rgb = vec3(0.0);
	} else {
		COLOR.rgb = vec3(1.0);
	}
}