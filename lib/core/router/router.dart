import 'package:go_router/go_router.dart';
import 'package:marvel_mission_manager/features/auth/presentation/screens/login_screen.dart';
import 'package:marvel_mission_manager/features/characters/domain/entities/character.dart';
import 'package:marvel_mission_manager/features/characters/presentation/screens/characters_screen.dart';
import 'package:marvel_mission_manager/features/characters/presentation/screens/missions_screen.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (context, state) => LoginScreen()),
    GoRoute(
      path: '/characters',
      builder: (context, state) => CharactersScreen(),
    ),
    GoRoute(
      path: '/missions/:characterId',
      builder:
          (context, state) =>
              MissionsScreen(character: state.extra as Character),
    ),
  ],
);
