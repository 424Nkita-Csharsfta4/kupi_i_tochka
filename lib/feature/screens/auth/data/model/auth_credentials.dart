class AuthCredentialsModel {
  final String jvtToken;

  AuthCredentialsModel({required this.jvtToken});

  factory AuthCredentialsModel.fromJson(Map<String, dynamic> json) {
    return AuthCredentialsModel(
      jvtToken: json['jvtToken'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'jvtToken': jvtToken,
    };
  }
}
