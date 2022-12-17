class SignupWithEmailFailure {
  final String message;

  const SignupWithEmailFailure([this.message = "An Unknown error occurred."]);

  factory SignupWithEmailFailure.code(String code) {
    switch (code) {
      case 'weak-password':
        return const SignupWithEmailFailure(
            'Please enter a stronger password.');
      case 'invalid-email':
        return const SignupWithEmailFailure(
            'Email is not valid or badly formatted.');
      case 'email-already-in-use':
        return const SignupWithEmailFailure(
            'An account already exists for that email.');
      case 'operation-not-allowed':
        return const SignupWithEmailFailure(
            'Operation is not allowed. please contact support.');
      case 'user-disabled':
        return const SignupWithEmailFailure(
            'This user has been disabled. Please contract support for help.');
      default:
        return const SignupWithEmailFailure();
    }
  }
}
