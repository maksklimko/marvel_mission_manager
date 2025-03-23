import 'package:marvel_mission_manager/core/enums/mission_priority.dart';
import 'package:marvel_mission_manager/core/mappers/entity_convertable.dart';
import 'package:marvel_mission_manager/features/characters/domain/entities/mission.dart';

class MissionModel with EntityConvertible<MissionModel, Mission> {
  final String id;
  final String name;
  final bool isCompleted;
  final int requiredFatigue;
  final MissionPriority priority;

  const MissionModel({
    required this.id,
    required this.name,
    required this.isCompleted,
    required this.requiredFatigue,
    required this.priority,
  });

  factory MissionModel.fromJson(Map<String, dynamic> json) {
    return MissionModel(
      id: json['id'],
      name: json['name'],
      isCompleted: json['isCompleted'],
      requiredFatigue: json['requiredFatigue'],
      priority: MissionPriority.fromName(json['priority']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'isCompleted': isCompleted,
      'requiredFatigue': requiredFatigue,
      'priority': priority.index,
    };
  }

  @override
  Mission toEntity() {
    return Mission(id, name, isCompleted, requiredFatigue, priority);
  }
}
