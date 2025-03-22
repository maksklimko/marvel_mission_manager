import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@module
abstract class FirebaseModule {
  @singleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;
}
