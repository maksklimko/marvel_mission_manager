import 'package:marvel_mission_manager/core/enums/mission_priority.dart';
import 'package:marvel_mission_manager/core/mappers/entity_convertable.dart';
import 'package:marvel_mission_manager/features/characters/data/models/mission_model.dart';

class Mission with ModelConvertible<Mission, MissionModel> {
  final String id;
  final String name;
  final bool isCompleted;
  final MissionPriority priority;

  const Mission(this.id, this.name, this.isCompleted, this.priority);

  @override
  MissionModel toModel() {
    return MissionModel(
      id: id,
      name: name,
      isCompleted: isCompleted,
      priority: priority,
    );
  }
}
