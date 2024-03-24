class PasswordValidation {
  bool isPasswordValid(String password) {
    return password.isNotEmpty;
  }

  bool isConfirmPasswordValid(String password, String confirmPassword) {
    return confirmPassword.isNotEmpty && confirmPassword == password;
  }
}
