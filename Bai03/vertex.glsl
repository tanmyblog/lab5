// PHONG SHADING: VERTEX SHADER 
varying vec3 N;         // vector pháp tuy?n n?i suy, chuy?n cho fragment shader 
varying vec3 v;         // v? trí c?a d?nh trong không gian góc nhìn 
 
void main(void) { 
    // tính t?a d? d?nh trong không gian góc nhìn 
    v = vec3(gl_ModelViewMatrix * gl_Vertex);        
    // n?i suy pháp tuy?n 
    N = normalize(gl_NormalMatrix * gl_Normal); 
    // tính t?a d? chi?u c?a d?nh 
    gl_Position = gl_ModelViewProjectionMatrix * gl_Vertex; 
} 