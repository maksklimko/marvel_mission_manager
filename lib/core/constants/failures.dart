abstract class Failure {
  const Failure(this.message);
  final String message;
}

class AuthFailure extends Failure {
  static const String authUnknownError = 'Auth unknown error';
  static const String authInvalidCredentials = 'Invalid credentials';
  static const String authUserNotFound = 'User not found';
  static const String authUserDisabled = 'User disabled';
  static const String authTooManyRequests = 'Too many requests';
  static const String authInvalidEmail = 'Invalid email';

  AuthFailure.unknownError() : super(authUnknownError);
  AuthFailure.invalidCredentials() : super(authInvalidCredentials);
  AuthFailure.userNotFound() : super(authUserNotFound);
  AuthFailure.userDisabled() : super(authUserDisabled);
  AuthFailure.tooManyRequests() : super(authTooManyRequests);
  AuthFailure.invalidEmail() : super(authInvalidEmail);
}
