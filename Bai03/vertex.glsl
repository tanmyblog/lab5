// PHONG SHADING: VERTEX SHADER 
varying vec3 N;         // vector ph�p tuy?n n?i suy, chuy?n cho fragment shader 
varying vec3 v;         // v? tr� c?a d?nh trong kh�ng gian g�c nh�n 
 
void main(void) { 
    // t�nh t?a d? d?nh trong kh�ng gian g�c nh�n 
    v = vec3(gl_ModelViewMatrix * gl_Vertex);        
    // n?i suy ph�p tuy?n 
    N = normalize(gl_NormalMatrix * gl_Normal); 
    // t�nh t?a d? chi?u c?a d?nh 
    gl_Position = gl_ModelViewProjectionMatrix * gl_Vertex; 
} 