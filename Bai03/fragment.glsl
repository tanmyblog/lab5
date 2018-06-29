// PHONG SHADING: FRAGMENT SHADER FOR ONE LIGHT 
uniform vec3 lightPosition; // v? tr� ngu?n s�ng, t? chuong tr�nh ch�nh 
uniform vec3 ambientColor;  // m�u ambient, t? chuong tr�nh ch�nh 
uniform vec3 diffuseColor;  // m�u diffuse, t? chuong tr�nh ch�nh 
uniform vec3 specularColor; // m�u specular, t? chuong tr�nh ch�nh 
uniform float Ka;           // h? s? ambient, t? chuong tr�nh ch�nh 
uniform float Kd;           // h? s? diffuse, t? chuong tr�nh ch�nh 
uniform float Ks;           // h? s? specular, t? chuong tr�nh ch�nh 
uniform float shininess;    // h? s? b�ng b? m?t, t? chuong tr�nh ch�nh 
varying vec3 N;             // ph�p tuy?n nh?n t? vertex shader 
varying vec3 v;             // t?a d? d?nh t? vertex shader 
 
void main (void) {   
    vec3 L = normalize(lightPosition.xyz - v);  // x�c d?nh vector hu?ng s�ng 
    vec3 E = normalize(-v);                     // x�c d?nh vector hu?ng nh�n 
    vec3 R = normalize(-reflect(L,N));          // x�c d?nh vector ph?n chi?u 
    // t�nh th�nh ph?n ambient 
    vec4 Iamb = vec4(ambientColor, 1.0); 
    // t�nh th�nh ph?n diffuse 
    vec4 Idiff = vec4(diffuseColor * max(dot(N, L), 0.0), 1.0); 
    // t�nh th�nh ph?n specular 
    vec4 Ispec = vec4(specularColor * pow(max(dot(R, E),0.0), shininess); 
    // c?p nh?t gi� tr? pixel d?a tr�n phuong tr�nh Phong 
    gl_FragColor = Ka * Iamb + Kd * Idiff + Ks * Ispec;      
} 