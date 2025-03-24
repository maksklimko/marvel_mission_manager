import 'package:marvel_mission_manager/core/enums/mission_priority.dart';
import 'package:marvel_mission_manager/core/mappers/entity_convertable.dart';
import 'package:marvel_mission_manager/features/characters/domain/entities/mission.dart';

class MissionModel with EntityConvertible<MissionModel, Mission> {
  final String id;
  final String name;
  final bool isCompleted;
  final MissionPriority priority;

  const MissionModel({
    required this.id,
    required this.name,
    required this.isCompleted,
    required this.priority,
  });

  factory MissionModel.fromJson(Map<String, dynamic> json) {
    return MissionModel(
      id: json['id'],
      name: json['name'],
      isCompleted: json['isCompleted'],
      priority: MissionPriority.fromName(json['priority']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'isCompleted': isCompleted,
      'priority': priority.name,
    };
  }

  @override
  Mission toEntity() {
    return Mission(id, name, isCompleted, priority);
  }
}
