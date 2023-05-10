#version 300 es
precision mediump float;

// Input
in vec2 model_uv;

// Uniforms
uniform sampler2D image;

// Output
out vec4 FragColor;

void main() {
    vec2 uv = 2.0 * model_uv - 1.0;

    float theta = atan(uv.y, uv.x);
    float radius = length(uv);

    float r = pow(radius, 1.5);
    vec2 fishEyeUV = r * vec2(cos(theta), sin(theta));

    fishEyeUV = 0.5 * (fishEyeUV + 1.0);
    // Color
    FragColor = texture(image, fishEyeUV);
}
