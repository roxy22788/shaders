shader_type canvas_item;

uniform vec2 u_resolution = vec2(1024.0, 600.0);
uniform float progress : hint_range(0.0, 0.5);

void fragment() {
	vec2 st = FRAGCOORD.xy / u_resolution;
	
	// esquerda baixo
	// se x for maior que o progresso, retorna 1. Caso contrário, 0
	// se y for maior que o progresso, retorna 1. Caso contrário, 0
	vec2 border = step(vec2(progress), st);
	float alpha = border.x * border.y;
	
	// alto direito
	// inverte o planto cartesiano para fazer a  mesma coisa que antes
	vec2 border2 = step(vec2(progress), 1.0 - st);
	alpha *= border2.x * border2.y;
	
	//depois dos calculos, teremos um retangulo invertido, então para ficar
	//na posição certa, precisamos inverter
	COLOR.a = 1.0 - alpha;
}