vec3 projectAndDivide(mat4 projectionMatrix, vec3 position) {
    vec4 homogenousPos = projectionMatrix * vec4(position, 1.0);
    return homogenousPos.xyz / homogenousPos.w;
}

float getLinearDepth(float depth) {
    float ndc = depth * 2.0 - 1.0;
    return (2.0 * near * far) / (far + near - ndc * (far - near));
}
