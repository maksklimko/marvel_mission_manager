import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_mission_manager/features/missions/domain/models/mission_model.dart';

part 'character_model.freezed.dart';
part 'character_model.g.dart';

@freezed
abstract class CharacterModel with _$CharacterModel {
  const factory CharacterModel({
    required int id,
    required String name,
    required String imageUrl,
    required int fatigue,
    required List<MissionModel> missions,
  }) = _CharacterModel;

  factory CharacterModel.fromJson(Map<String, dynamic> json) =>
      _$CharacterModelFromJson(json);
}
