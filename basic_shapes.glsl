float circle( vec2 uv, float radius )
{
	return 1.0 -length( uv / radius );
}

float rect(vec2 uv, vec4 rect){
    vec2 hv = step(rect.xy, uv) * step(uv, rect.zw);
    return hv.x * hv.y;	
}

	float shape = circle(uv, 0.5);
	float shape2 = rect(uv, vec4(0.0, 0.0, 0.5, 0.5));