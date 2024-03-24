class RestApiValidationError {
  final String code;
  final dynamic params;

  RestApiValidationError({
    required this.code,
    required this.params,
  });

  factory RestApiValidationError.fromJson(Map<String, dynamic> json) {
    return RestApiValidationError(
      code: json['code'] as String,
      params: json['params'],
    );
  }
}
