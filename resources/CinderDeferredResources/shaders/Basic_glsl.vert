#version 120

varying vec2 uv;

void main(void)
{
    vec4 position = gl_Vertex;                  //in
    uv = gl_MultiTexCoord0.st;
    uv.y = 1.0 - uv.y; //flipping texture ... maybe there should be an if-statement
    
    gl_Position = vec4( sign( position.xy ), 0.0, 1.0 );
}