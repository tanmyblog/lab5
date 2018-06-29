// PHONG SHADING: FRAGMENT SHADER FOR ONE LIGHT 
uniform vec3 lightPosition; // v? trí ngu?n sáng, t? chuong trình chính 
uniform vec3 ambientColor;  // màu ambient, t? chuong trình chính 
uniform vec3 diffuseColor;  // màu diffuse, t? chuong trình chính 
uniform vec3 specularColor; // màu specular, t? chuong trình chính 
uniform float Ka;           // h? s? ambient, t? chuong trình chính 
uniform float Kd;           // h? s? diffuse, t? chuong trình chính 
uniform float Ks;           // h? s? specular, t? chuong trình chính 
uniform float shininess;    // h? s? bóng b? m?t, t? chuong trình chính 
varying vec3 N;             // pháp tuy?n nh?n t? vertex shader 
varying vec3 v;             // t?a d? d?nh t? vertex shader 
 
void main (void) {   
    vec3 L = normalize(lightPosition.xyz - v);  // xác d?nh vector hu?ng sáng 
    vec3 E = normalize(-v);                     // xác d?nh vector hu?ng nhìn 
    vec3 R = normalize(-reflect(L,N));          // xác d?nh vector ph?n chi?u 
    // tính thành ph?n ambient 
    vec4 Iamb = vec4(ambientColor, 1.0); 
    // tính thành ph?n diffuse 
    vec4 Idiff = vec4(diffuseColor * max(dot(N, L), 0.0), 1.0); 
    // tính thành ph?n specular 
    vec4 Ispec = vec4(specularColor * pow(max(dot(R, E),0.0), shininess); 
    // c?p nh?t giá tr? pixel d?a trên phuong trình Phong 
    gl_FragColor = Ka * Iamb + Kd * Idiff + Ks * Ispec;      
} 