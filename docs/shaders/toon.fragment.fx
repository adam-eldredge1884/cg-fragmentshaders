#version 300 es
precision mediump float;

// Input
in vec2 model_uv;

// Uniforms
uniform sampler2D image;

// Output
out vec4 FragColor;

void main() {
    vec4 color = texture(image, model_uv);

    vec3 rounded_color = floor(color.rgb * 4.0) / 4.0;

    // Color
    FragColor = vec4(rounded_color, color.a);
}
