import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:marvel_mission_manager/core/constants/failures.dart';

abstract interface class AuthRemoteDataSource {
  User? get currentUser;
  Future<Either<AuthFailure, User>> loginWithEmailPassword({
    required String email,
    required String password,
  });
}

@Injectable(as: AuthRemoteDataSource)
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final FirebaseAuth firebaseAuth;
  AuthRemoteDataSourceImpl(this.firebaseAuth);

  @override
  User? get currentUser => firebaseAuth.currentUser;

  @override
  Future<Either<AuthFailure, User>> loginWithEmailPassword({
    required String email,
    required String password,
  }) async {
    try {
      final response = await firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (response.user == null) return left(AuthFailure.unknownError());

      return right(response.user!);
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'user-not-found':
          return left(AuthFailure.userNotFound());
        case 'user-disabled':
          return left(AuthFailure.userDisabled());
        case 'too-many-requests':
          return left(AuthFailure.tooManyRequests());
        case 'invalid-email':
          return left(AuthFailure.invalidEmail());
        case 'invalid-credential':
          return left(AuthFailure.invalidCredentials());
        default:
          return left(AuthFailure.unknownError());
      }
    }
  }
}
