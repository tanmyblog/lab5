// POSITION TO RGB MAPPING: FRAGMENT SHADER 
varying vec4 color; // gi� tr? m�u d� t�nh t? vertex shader 
void main() { 
    // g�n gi� tr? m�u n�y cho pixel 
    gl_FragColor = color; 
}