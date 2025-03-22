import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:marvel_mission_manager/core/constants/failures.dart';
import 'package:marvel_mission_manager/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:marvel_mission_manager/features/auth/domain/repositories/auth_repository.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource authRemoteDataSource;
  AuthRepositoryImpl(this.authRemoteDataSource);

  @override
  User? get currentUser => authRemoteDataSource.currentUser;

  @override
  Future<Either<AuthFailure, User>> loginWithEmailPassword({
    required String email,
    required String password,
  }) async {
    return authRemoteDataSource.loginWithEmailPassword(
      email: email,
      password: password,
    );
  }
}
