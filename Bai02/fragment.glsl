// NORMAL TO RGB MAPPING: FRAGMENT SHADER 
varying vec3 normal;  // vector pháp tuy?n nh?n t? vertex shader 
void main() { 
    // ánh x? hu?ng pháp tuy?n vào không gian RGB 
    gl_FragColor = vec4(normal, 1.0); 
} 