//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float Border;
uniform float SmoothRadius;
uniform vec4 Color1;
uniform vec4 Color2;

vec4 ColorRamp(vec4 source, vec4 color1, vec4 color2, float border, float smooth)
{
    float l = (source.x + source.y + source.z) * 0.33;
    l = smoothstep(border - smooth, border + smooth, l);
    source.rgb = mix(color2.rgb, color1.rgb, l);
    source.a *= mix(color2.a, color1.a, l);
    return source;
}

void main(){
    vec4 FragColor = texture2D(gm_BaseTexture, v_vTexcoord);
    FragColor = ColorRamp(FragColor, Color1, Color2, Border, SmoothRadius);
    gl_FragColor = FragColor * v_vColour;
}

