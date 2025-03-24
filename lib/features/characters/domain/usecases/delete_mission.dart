import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:marvel_mission_manager/core/constants/failures.dart';
import 'package:marvel_mission_manager/core/usecase/usecase.dart';
import 'package:marvel_mission_manager/features/characters/domain/entities/mission.dart';
import 'package:marvel_mission_manager/features/characters/domain/repositories/missions_repository.dart';

@injectable
class DeleteMission implements UseCase<void, DeleteMissionParams> {
  final MissionsRepository missionsRepository;
  DeleteMission(this.missionsRepository);
  @override
  Future<Either<Failure, void>> call(DeleteMissionParams params) async {
    return missionsRepository.deleteMission(params);
  }
}

class DeleteMissionParams {
  final String characterId;
  final Mission mission;

  DeleteMissionParams({required this.characterId, required this.mission});
}
