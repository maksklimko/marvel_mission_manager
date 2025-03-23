import 'package:marvel_mission_manager/core/mappers/entity_convertable.dart';
import 'package:marvel_mission_manager/features/characters/data/models/mission_model.dart';
import 'package:marvel_mission_manager/features/characters/domain/entities/character.dart';

class CharacterModel with EntityConvertible<CharacterModel, Character> {
  final String id;
  final String name;
  final String imageUrl;
  final int fatigue;
  final List<MissionModel> missions;

  const CharacterModel(
    this.id,
    this.name,
    this.imageUrl,
    this.fatigue,
    this.missions,
  );

  factory CharacterModel.fromJson(Map<String, dynamic> json) {
    final missionsList =
        (json['missions'] as List<dynamic>)
            .map(
              (missionJson) =>
                  MissionModel.fromJson(missionJson as Map<String, dynamic>),
            )
            .toList();

    return CharacterModel(
      json['id'],
      json['name'],
      json['imageUrl'],
      json['fatigue'],
      missionsList,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'imageUrl': imageUrl,
      'fatigue': fatigue,
      'missions': missions.map((mission) => mission.toJson()).toList(),
    };
  }

  @override
  Character toEntity() {
    return Character(
      id,
      name,
      imageUrl,
      fatigue,
      missions.map((e) => e.toEntity()).toList(),
    );
  }
}
