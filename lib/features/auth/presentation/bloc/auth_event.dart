part of 'auth_bloc.dart';

@immutable
class AuthEvent {
  const AuthEvent();
}

@freezed
abstract class AuthLoginEvent extends AuthEvent with _$AuthLoginEvent {
  const AuthLoginEvent._() : super();
  const factory AuthLoginEvent({
    required String email,
    required String password,
  }) = _AuthLoginEvent;
}
