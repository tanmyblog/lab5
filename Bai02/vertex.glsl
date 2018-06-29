// NORMAL TO RGB MAPPING: VERTEX SHADER 
varying vec3 normal; // vector pháp tuy?n n?i suy du?c s? d?ng cho fragment shader 
void main() { 
    normal = normalize(gl_NormalMatrix * gl_Normal);   
    gl_Position = gl_ModelViewProjectionMatrix * gl_Vertex; 
} 