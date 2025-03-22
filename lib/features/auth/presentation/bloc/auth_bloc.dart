import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_mission_manager/features/auth/domain/usecases/user_login.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final UserLogin userLogin;

  AuthBloc({required this.userLogin}) : super(_Initial()) {
    on<AuthLoginEvent>((event, emit) async {
      emit(const AuthState.loading());
      final result = await userLogin(
        UserLoginParams(email: event.email, password: event.password),
      );
      result.fold(
        (failure) => emit(AuthState.error()),
        (user) => emit(AuthState.authenticated(user: user)),
      );
    });
  }
}
