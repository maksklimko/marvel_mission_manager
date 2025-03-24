import 'package:marvel_mission_manager/features/characters/domain/entities/mission.dart';

class Character {
  final String id;
  final String name;
  final String imageUrl;
  final int fatigue;
  final List<Mission> missions;

  const Character(
    this.id,
    this.name,
    this.imageUrl,
    this.fatigue,
    this.missions,
  );

  Character copyWith({List<Mission>? missions}) {
    return Character(id, name, imageUrl, fatigue, missions ?? this.missions);
  }
}
