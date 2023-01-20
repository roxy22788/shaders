shader_type canvas_item;

uniform vec2 center = vec2(0.5f);
uniform float progress: hint_range(0.0, 0.5);

void fragment() {
	if (abs(UV.y - center.y) > progress) {
		COLOR = vec4(0.0, 0.0, 0.0, 1.0);
	}
}