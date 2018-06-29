// NORMAL TO RGB MAPPING: VERTEX SHADER 
varying vec3 normal; // vector pháp tuyến nội suy được sử dụng cho fragment shader 
void main() { 
    normal = normalize(gl_NormalMatrix * gl_Normal);   
    gl_Position = gl_ModelViewProjectionMatrix * gl_Vertex; 
} 