// NORMAL TO RGB MAPPING: FRAGMENT SHADER 
varying vec3 normal;  // vector ph�p tuy?n nh?n t? vertex shader 
void main() { 
    // �nh x? hu?ng ph�p tuy?n v�o kh�ng gian RGB 
    gl_FragColor = vec4(normal, 1.0); 
} 