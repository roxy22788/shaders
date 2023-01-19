shader_type canvas_item;

uniform float screen_width = 1080;
uniform float screen_height = 600;
uniform vec2 player_position = vec2(0.5f);

uniform float progress: hint_range(0, 1) = 0;

void fragment() {
	float ratio = screen_width / screen_height;
	if (distance(vec2(mix(player_position.x, UV.x, ratio), UV.y), player_position) < (1.0 - progress)) {
		COLOR.a = 0.0;
	}
}