import 'package:go_router/go_router.dart';
import 'package:marvel_mission_manager/features/auth/presentation/screens/login_screen.dart';

final router = GoRouter(
  routes: [GoRoute(path: '/', builder: (context, state) => LoginScreen())],
);
