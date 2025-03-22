import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_mission_manager/core/enums/mission_priority.dart';

part 'mission_model.freezed.dart';
part 'mission_model.g.dart';

@freezed
abstract class MissionModel with _$MissionModel {
  const factory MissionModel({
    required int id,
    required String name,
    required bool isCompleted,
    required int requiredFatigue,
    required MissionPriority priority,
  }) = _MissionModel;

  factory MissionModel.fromJson(Map<String, dynamic> json) =>
      _$MissionModelFromJson(json);
}
