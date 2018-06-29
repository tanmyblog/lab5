// POSITION TO RGB MAPPING: FRAGMENT SHADER 
varying vec4 color; // giá tr? màu dã tính t? vertex shader 
void main() { 
    // gán giá tr? màu này cho pixel 
    gl_FragColor = color; 
}