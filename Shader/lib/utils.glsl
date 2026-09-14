vec3 projectAndDivide(mat4 projectionMatrix, vec3 position) {
    vec4 homogenousPos = projectionMatrix * vec4(position, 1.0);
    return homogenousPos.xyz / homogenousPos.w;
}

float GetLinearDepth(float depth) {
    return (2.0 * near) / (far + near - depth * (far - near));
}
