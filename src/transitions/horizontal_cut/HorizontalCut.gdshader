shader_type canvas_item;

uniform vec2 center = vec2(0.5f);
uniform float progress: hint_range(0.0, 0.5);

void fragment() {
	// se a distancia entre x do ponto atual e do centro for maior que o progresso da barra
	// pinta de preto
	if (abs(UV.x - center.x) > progress) {
		COLOR = vec4(0.0, 0.0, 0.0, 1.0);
	}
}