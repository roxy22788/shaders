shader_type canvas_item;

uniform vec2 u_resolution = vec2(1024.0, 600.0);

// pega a posição atual e verifica a distancia do x e o y,
// se a distancia for maior que o.02 retorna 0
// se a distancia for igual a 0.0, retorna 1 (pois é a posição central da linha)
// se a distancia for entre 0.02 e 0.0, faz interporlação suave


float plot(vec2 st) {
	return smoothstep(0.02, 0.0, abs(st.y - st.x));
}

void fragment() {
	// normaliza a posição atual do pixel
	vec2 st = FRAGCOORD.xy / u_resolution;
	// pega a posição x
	float y = st.x;
	
	// pinta a tela com base no X atual, indo do preto até o branco
	vec3 color = vec3(y);
	
	// se o pixel for um dos pixeis que passa a linha, pega aqui
	float green = plot(st);
	// aqui mistura o verde com a cor atual
	// caso o verde for 0, não faz nada, caso o verde for diferente de 0
	// reduz a cor cinza na msm intensidade do verde, e soma com a intensidade
	// do verde 
	color = (1.0 - green) * color + green * vec3(0.0, 1.0, 0.0);
	
	COLOR.rgb = color; 
}