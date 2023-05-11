#version 300 es
precision mediump float;

// Input
in vec2 model_uv;

// Uniforms
uniform sampler2D image;

// Output
out vec4 FragColor;

void main() {
    

    vec4 left_color = texture(image, model_uv - vec2(0.007, 0.0)); // shift left by 1/140
    vec4 right_color = texture(image, model_uv + vec2(0.007, 0.0)); // shift right by 1/140

    // Create anaglyph effect
    FragColor = vec4(left_color.r, right_color.g, right_color.b, 1.0);
    
}
