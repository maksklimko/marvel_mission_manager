import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:marvel_mission_manager/core/constants/failures.dart';

abstract interface class AuthRepository {
  User? get currentUser;
  Future<Either<AuthFailure, User>> loginWithEmailPassword({
    required String email,
    required String password,
  });
}
