import 'package:marvel_mission_manager/core/enums/mission_priority.dart';

class Mission {
  final String id;
  final String name;
  final bool isCompleted;
  final int requiredFatigue;
  final MissionPriority priority;

  const Mission(
    this.id,
    this.name,
    this.isCompleted,
    this.requiredFatigue,
    this.priority,
  );
}
