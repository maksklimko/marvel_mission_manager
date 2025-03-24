import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:marvel_mission_manager/core/constants/failures.dart';
import 'package:marvel_mission_manager/core/usecase/usecase.dart';
import 'package:marvel_mission_manager/features/characters/domain/entities/mission.dart';
import 'package:marvel_mission_manager/features/characters/domain/repositories/missions_repository.dart';

@injectable
class AddMission implements UseCase<void, AddMissionParams> {
  final MissionsRepository missionsRepository;
  AddMission({required this.missionsRepository});
  @override
  Future<Either<Failure, void>> call(AddMissionParams params) async {
    return missionsRepository.addMission(params);
  }
}

class AddMissionParams {
  final String characterId;
  final Mission mission;
  AddMissionParams({required this.characterId, required this.mission});
}
